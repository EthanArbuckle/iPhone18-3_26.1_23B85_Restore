@interface CECFakeInterface
+ (id)defaultAudioSystemProperties;
+ (id)defaultPlaybackDeviceProperties;
+ (id)defaultTVProperties;
- (BOOL)errorIsNack:(id)a3;
- (CECFakeInterface)initWithInterfaceListener:(id)a3 properties:(id)a4;
- (CECFrame)lastReceivedFrameWithOpcode:(SEL)a3 andHeader:(unsigned __int8)a4;
- (void)dealloc;
- (void)fakePropertiesChanged:(id)a3;
- (void)fakeTerminated;
- (void)receivedFrame:(CECFrame *)a3;
- (void)scheduleWithDispatchQueue:(id)a3;
- (void)setBlockedMessages:(id)a3;
- (void)unscheduleFromDispatchQueue:(id)a3;
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

- (CECFakeInterface)initWithInterfaceListener:(id)a3 properties:(id)a4
{
  v11.receiver = self;
  v11.super_class = CECFakeInterface;
  v6 = [(CECInterface *)&v11 init];
  v7 = v6;
  if (v6)
  {
    [(CoreRCInterface *)v6 setListener:a3];
    v7->_properties = [a4 mutableCopy];
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

- (BOOL)errorIsNack:(id)a3
{
  v4 = [objc_msgSend(a3 "domain")];
  if (v4)
  {
    LOBYTE(v4) = [a3 code] == 2;
  }

  return v4;
}

- (void)receivedFrame:(CECFrame *)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(CECInterface *)self snoopingMode])
  {
LABEL_7:
    v6 = [(CECInterface *)self delegate];
    v8 = *a3->blocks;
    v9 = *(a3 + 4);
    [(CECInterfaceDelegate *)v6 interface:self receivedFrame:&v8];
    goto LABEL_8;
  }

  if (~a3->blocks[0] & 0xF) == 0 || (([(CECInterface *)self addressMask]>> (a3->blocks[0] & 0xF)))
  {
    v8 = *a3->blocks;
    v9 = *(a3 + 4);
    [(CECInterface *)self setLastReceivedFrame:&v8];
    if ([-[CECFakeInterface receivedFrames](self "receivedFrames")] >= 0x15)
    {
      [-[CECFakeInterface receivedFrames](self "receivedFrames")];
    }

    v5 = [(CECFakeInterface *)self receivedFrames];
    [v5 addObject:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytes:length:", a3, 20)}];
    goto LABEL_7;
  }

  if (gLogCategory_CoreRCInterface <= 90 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    [CECFakeInterface receivedFrame:a3];
  }

LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
}

- (CECFrame)lastReceivedFrameWithOpcode:(SEL)a3 andHeader:(unsigned __int8)a4
{
  v5 = a5;
  v6 = a4;
  v15 = *MEMORY[0x277D85DE8];
  *retstr->blocks = 0;
  *&retstr->blocks[8] = 0;
  *(retstr + 4) = 0;
  result = [(NSMutableArray *)self->_receivedFrames count];
  if (result)
  {
    v10 = [(NSMutableArray *)self->_receivedFrames reverseObjectEnumerator];
    for (i = v10; ; v10 = i)
    {
      result = [v10 nextObject];
      if (!result)
      {
        break;
      }

      v13 = 0uLL;
      v14 = 0;
      result = [(CECFrame *)result getBytes:&v13 length:20];
      if (BYTE1(v13) == v6 && (v5 == 255 || v13 == v5))
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

- (void)fakePropertiesChanged:(id)a3
{
  self->_properties = [a3 mutableCopy];
  v5 = [(CECInterface *)self delegate];

  [(CECInterfaceDelegate *)v5 interfacePropertiesChanged:self];
}

- (void)fakeTerminated
{
  v3 = [(CoreRCInterface *)self listener];

  [(CoreRCInterfaceListener *)v3 removeInterface:self];
}

- (void)setBlockedMessages:(id)a3
{
  blockedMessages = self->_blockedMessages;
  if (blockedMessages)
  {
    v5 = a3;

    a3 = v5;
  }

  self->_blockedMessages = a3;

  MEMORY[0x2821F9888]();
}

- (void)scheduleWithDispatchQueue:(id)a3
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    v6 = a3;
    v7 = self;
    v5 = "[CECFakeInterface scheduleWithDispatchQueue:]";
    LogPrintF();
  }

  if (![(CoreRCInterface *)self serialQueue:v5])
  {

    [(CoreRCInterface *)self setSerialQueue:a3];
  }
}

- (void)unscheduleFromDispatchQueue:(id)a3
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    v6 = a3;
    v7 = self;
    v5 = "[CECFakeInterface unscheduleFromDispatchQueue:]";
    LogPrintF();
  }

  if ([(CoreRCInterface *)self serialQueue:v5]== a3)
  {

    [(CoreRCInterface *)self setSerialQueue:0];
  }
}

@end