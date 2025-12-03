@interface CECFakeInterface
+ (id)defaultAudioSystemProperties;
+ (id)defaultPlaybackDeviceProperties;
+ (id)defaultTVProperties;
- (BOOL)errorIsNack:(id)nack;
- (CECFakeInterface)initWithInterfaceListener:(id)listener properties:(id)properties;
- (CECFrame)lastReceivedFrameWithOpcode:(SEL)opcode andHeader:(unsigned __int8)header;
- (void)dealloc;
- (void)fakePropertiesChanged:(id)changed;
- (void)fakeTerminated;
- (void)receivedFrame:(CECFrame *)frame;
- (void)scheduleWithDispatchQueue:(id)queue;
- (void)setBlockedMessages:(id)messages;
- (void)unscheduleFromDispatchQueue:(id)queue;
@end

@implementation CECFakeInterface

+ (id)defaultTVProperties
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"kCECInterfacePropertyIsValid";
  v4[1] = @"kCECInterfacePropertyHasLink";
  v5[0] = MEMORY[0x277CBEC38];
  v5[1] = MEMORY[0x277CBEC38];
  v4[2] = @"kCECInterfacePropertyPhysicalAddress";
  v5[2] = &unk_28593C258;
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)defaultPlaybackDeviceProperties
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"kCECInterfacePropertyIsValid";
  v4[1] = @"kCECInterfacePropertyHasLink";
  v5[0] = MEMORY[0x277CBEC38];
  v5[1] = MEMORY[0x277CBEC38];
  v4[2] = @"kCECInterfacePropertyPhysicalAddress";
  v5[2] = &unk_28593C270;
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)defaultAudioSystemProperties
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"kCECInterfacePropertyIsValid";
  v4[1] = @"kCECInterfacePropertyHasLink";
  v5[0] = MEMORY[0x277CBEC38];
  v5[1] = MEMORY[0x277CBEC38];
  v4[2] = @"kCECInterfacePropertyPhysicalAddress";
  v5[2] = &unk_28593C270;
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (CECFakeInterface)initWithInterfaceListener:(id)listener properties:(id)properties
{
  v11.receiver = self;
  v11.super_class = CECFakeInterface;
  v6 = [(CECInterface *)&v11 init];
  v7 = v6;
  if (v6)
  {
    [(CoreRCInterface *)v6 setListener:listener];
    v7->_properties = [properties mutableCopy];
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
    v7->_receivedFrames = v8;
    if (v7->_properties)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CECFakeInterface;
  [(CoreRCInterface *)&v3 dealloc];
}

- (BOOL)errorIsNack:(id)nack
{
  v4 = [objc_msgSend(nack "domain")];
  if (v4)
  {
    LOBYTE(v4) = [nack code] == 2;
  }

  return v4;
}

- (void)receivedFrame:(CECFrame *)frame
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(CECInterface *)self snoopingMode])
  {
LABEL_7:
    delegate = [(CECInterface *)self delegate];
    v8 = *frame->blocks;
    v9 = *(frame + 4);
    [(CECInterfaceDelegate *)delegate interface:self receivedFrame:&v8];
    goto LABEL_8;
  }

  if (~frame->blocks[0] & 0xF) == 0 || (([(CECInterface *)self addressMask]>> (frame->blocks[0] & 0xF)))
  {
    v8 = *frame->blocks;
    v9 = *(frame + 4);
    [(CECInterface *)self setLastReceivedFrame:&v8];
    if ([-[CECFakeInterface receivedFrames](self "receivedFrames")] >= 0x15)
    {
      [-[CECFakeInterface receivedFrames](self "receivedFrames")];
    }

    receivedFrames = [(CECFakeInterface *)self receivedFrames];
    [receivedFrames addObject:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytes:length:", frame, 20)}];
    goto LABEL_7;
  }

  if (gLogCategory_CoreRCInterface <= 90 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    [CECFakeInterface receivedFrame:frame];
  }

LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
}

- (CECFrame)lastReceivedFrameWithOpcode:(SEL)opcode andHeader:(unsigned __int8)header
{
  v5 = a5;
  headerCopy = header;
  v15 = *MEMORY[0x277D85DE8];
  *retstr->blocks = 0;
  *&retstr->blocks[8] = 0;
  *(retstr + 4) = 0;
  result = [(NSMutableArray *)self->_receivedFrames count];
  if (result)
  {
    reverseObjectEnumerator = [(NSMutableArray *)self->_receivedFrames reverseObjectEnumerator];
    for (i = reverseObjectEnumerator; ; reverseObjectEnumerator = i)
    {
      result = [reverseObjectEnumerator nextObject];
      if (!result)
      {
        break;
      }

      v13 = 0uLL;
      v14 = 0;
      result = [(CECFrame *)result getBytes:&v13 length:20];
      if (BYTE1(v13) == headerCopy && (v5 == 255 || v13 == v5))
      {
        *retstr->blocks = v13;
        *(retstr + 4) = v14;
        break;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)fakePropertiesChanged:(id)changed
{
  self->_properties = [changed mutableCopy];
  delegate = [(CECInterface *)self delegate];

  [(CECInterfaceDelegate *)delegate interfacePropertiesChanged:self];
}

- (void)fakeTerminated
{
  listener = [(CoreRCInterface *)self listener];

  [(CoreRCInterfaceListener *)listener removeInterface:self];
}

- (void)setBlockedMessages:(id)messages
{
  blockedMessages = self->_blockedMessages;
  if (blockedMessages)
  {
    messagesCopy = messages;

    messages = messagesCopy;
  }

  self->_blockedMessages = messages;

  MEMORY[0x2821F9888]();
}

- (void)scheduleWithDispatchQueue:(id)queue
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    queueCopy = queue;
    selfCopy = self;
    v5 = "[CECFakeInterface scheduleWithDispatchQueue:]";
    LogPrintF();
  }

  if (![(CoreRCInterface *)self serialQueue:v5])
  {

    [(CoreRCInterface *)self setSerialQueue:queue];
  }
}

- (void)unscheduleFromDispatchQueue:(id)queue
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    queueCopy = queue;
    selfCopy = self;
    v5 = "[CECFakeInterface unscheduleFromDispatchQueue:]";
    LogPrintF();
  }

  if ([(CoreRCInterface *)self serialQueue:v5]== queue)
  {

    [(CoreRCInterface *)self setSerialQueue:0];
  }
}

@end