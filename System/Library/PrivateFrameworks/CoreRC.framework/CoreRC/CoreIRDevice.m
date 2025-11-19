@interface CoreIRDevice
- (BOOL)is3rdPartyRemote;
- (BOOL)pairAppleRemote:(id *)a3;
- (BOOL)setOSDName:(id)a3 error:(id *)a4;
- (BOOL)unpairAppleRemote:(id *)a3;
- (CoreIRDevice)initWithCoder:(id)a3;
- (CoreIRDevice)initWithDevice:(id)a3;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setLearningSession:(id)a3;
@end

@implementation CoreIRDevice

- (BOOL)setOSDName:(id)a3 error:(id *)a4
{
  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [CoreIRDevice setOSDName:error:];
  }

  [(CoreIRDevice *)self setOSDName:a3];
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

- (CoreIRDevice)initWithDevice:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = CoreIRDevice;
    v5 = [(CoreRCDevice *)&v7 initWithDevice:a3];
    if (v5)
    {
      v5->_isTransmitter = [a3 isTransmitter];
      v5->_isReceiver = [a3 isReceiver];
      v5->_vendorID = [a3 vendorID];
      v5->_buttons = [objc_msgSend(a3 "buttons")];
      v5->_OSDName = [objc_msgSend(a3 "OSDName")];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (CoreIRDevice)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CoreIRDevice;
  v4 = [(CoreRCDevice *)&v8 initWithCoder:?];
  if (v4)
  {
    v4->_isTransmitter = [a3 decodeBoolForKey:@"isTransmitter"];
    v4->_isReceiver = [a3 decodeBoolForKey:@"isReceiver"];
    v4->_vendorID = [a3 decodeIntForKey:@"vendorID"];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v4->_buttons = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"buttons"}];
    v4->_OSDName = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"OSDName"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CoreIRDevice;
  [(CoreRCDevice *)&v5 encodeWithCoder:?];
  [a3 encodeBool:self->_isTransmitter forKey:@"isTransmitter"];
  [a3 encodeBool:self->_isReceiver forKey:@"isReceiver"];
  [a3 encodeInt:LODWORD(self->_vendorID) forKey:@"isReceiver"];
  [a3 encodeObject:self->_buttons forKey:@"buttons"];
  [a3 encodeObject:self->_OSDName forKey:@"OSDName"];
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
  v3 = [(CoreIRDevice *)self isTransmitter];
  if (v3)
  {
    if ([(CoreRCDevice *)self isLocalDevice])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(CoreIRDevice *)self isAppleRemote];
    }
  }

  return v3;
}

- (void)setLearningSession:(id)a3
{
  v5 = a3;
  [(CoreIRLearningSession *)self->_learningSession setOwningDevice:0];

  self->_learningSession = a3;

  [a3 setOwningDevice:self];
}

- (BOOL)pairAppleRemote:(id *)a3
{
  if (a3)
  {
    *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6756 userInfo:0];
  }

  return 0;
}

- (BOOL)unpairAppleRemote:(id *)a3
{
  if (a3)
  {
    *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6756 userInfo:0];
  }

  return 0;
}

@end