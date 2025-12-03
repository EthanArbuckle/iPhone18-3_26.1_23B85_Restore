@interface CoreIRDevice
- (BOOL)is3rdPartyRemote;
- (BOOL)pairAppleRemote:(id *)remote;
- (BOOL)setOSDName:(id)name error:(id *)error;
- (BOOL)unpairAppleRemote:(id *)remote;
- (CoreIRDevice)initWithCoder:(id)coder;
- (CoreIRDevice)initWithDevice:(id)device;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setLearningSession:(id)session;
@end

@implementation CoreIRDevice

- (BOOL)setOSDName:(id)name error:(id *)error
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreIRDevice setOSDName:error:];
  }

  [(CoreIRDevice *)self setOSDName:name];
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreIRDevice setOSDName:? error:?];
  }

  return 1;
}

- (void)dealloc
{
  [(CoreIRDevice *)self setLearningSession:0];

  v3.receiver = self;
  v3.super_class = CoreIRDevice;
  [(CoreRCDevice *)&v3 dealloc];
}

- (CoreIRDevice)initWithDevice:(id)device
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = CoreIRDevice;
    v5 = [(CoreRCDevice *)&v7 initWithDevice:device];
    if (v5)
    {
      v5->_isTransmitter = [device isTransmitter];
      v5->_isReceiver = [device isReceiver];
      v5->_vendorID = [device vendorID];
      v5->_buttons = [objc_msgSend(device "buttons")];
      v5->_OSDName = [objc_msgSend(device "OSDName")];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (CoreIRDevice)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CoreIRDevice;
  v4 = [(CoreRCDevice *)&v8 initWithCoder:?];
  if (v4)
  {
    v4->_isTransmitter = [coder decodeBoolForKey:@"isTransmitter"];
    v4->_isReceiver = [coder decodeBoolForKey:@"isReceiver"];
    v4->_vendorID = [coder decodeIntForKey:@"vendorID"];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v4->_buttons = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"buttons"}];
    v4->_OSDName = [coder decodeObjectOfClass:objc_opt_class() forKey:@"OSDName"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CoreIRDevice;
  [(CoreRCDevice *)&v5 encodeWithCoder:?];
  [coder encodeBool:self->_isTransmitter forKey:@"isTransmitter"];
  [coder encodeBool:self->_isReceiver forKey:@"isReceiver"];
  [coder encodeInt:LODWORD(self->_vendorID) forKey:@"isReceiver"];
  [coder encodeObject:self->_buttons forKey:@"buttons"];
  [coder encodeObject:self->_OSDName forKey:@"OSDName"];
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = CoreIRDevice;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[CoreRCDevice description](&v8, sel_description)}];
  v4 = v3;
  if (self->_isReceiver)
  {
    v5 = "Y";
  }

  else
  {
    v5 = "N";
  }

  [v3 appendFormat:@" Rx: %s;", v5];
  if (self->_isTransmitter)
  {
    v6 = "Y";
  }

  else
  {
    v6 = "N";
  }

  [v4 appendFormat:@" Tx: %s;", v6];
  [v4 appendFormat:@" VendorID: %u;", self->_vendorID];
  [v4 appendFormat:@" #Buttons: %u;", -[NSArray count](self->_buttons, "count")];
  [v4 appendFormat:@" Name: %@;", self->_OSDName];
  return v4;
}

- (id)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[CoreIRDevice description](self, "description")}];
  if ([(NSArray *)self->_buttons count])
  {
    [v3 appendFormat:@" Buttons:\n%@;", self->_buttons];
  }

  return v3;
}

- (BOOL)is3rdPartyRemote
{
  isTransmitter = [(CoreIRDevice *)self isTransmitter];
  if (isTransmitter)
  {
    if ([(CoreRCDevice *)self isLocalDevice])
    {
      LOBYTE(isTransmitter) = 0;
    }

    else
    {
      LOBYTE(isTransmitter) = ![(CoreIRDevice *)self isAppleRemote];
    }
  }

  return isTransmitter;
}

- (void)setLearningSession:(id)session
{
  sessionCopy = session;
  [(CoreIRLearningSession *)self->_learningSession setOwningDevice:0];

  self->_learningSession = session;

  [session setOwningDevice:self];
}

- (BOOL)pairAppleRemote:(id *)remote
{
  if (remote)
  {
    *remote = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6756 userInfo:0];
  }

  return 0;
}

- (BOOL)unpairAppleRemote:(id *)remote
{
  if (remote)
  {
    *remote = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6756 userInfo:0];
  }

  return 0;
}

@end