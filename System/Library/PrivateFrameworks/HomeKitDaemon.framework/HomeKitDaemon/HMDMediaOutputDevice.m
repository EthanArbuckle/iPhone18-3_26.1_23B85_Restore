@interface HMDMediaOutputDevice
- (AVOutputDevice)av_OutputDevice;
- (BOOL)isAppleMediaAccessory;
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsHAP;
- (BOOL)supportsWHA;
- (HMDMediaOutputDevice)initWithOutputDevice:(id)a3;
- (NSString)modelID;
- (id)description;
- (unsigned)deviceSubtype;
@end

@implementation HMDMediaOutputDevice

- (AVOutputDevice)av_OutputDevice
{
  v2 = [(HMDMediaOutputDevice *)self outputDevice];
  v3 = MRAVOutputDeviceGetAVOutputDevice();

  return v3;
}

- (BOOL)isAppleMediaAccessory
{
  v2 = [(HMDMediaOutputDevice *)self modelID];
  v3 = HMFProductClassFromString();

  return (v3 & 0xFFFFFFFFFFFFFFFDLL) == 4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDMediaOutputDevice *)self uniqueIdentifier];
  v5 = [(HMDMediaOutputDevice *)self outputDevice];
  v6 = [v3 stringWithFormat:@"Output device(%@/%@)", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && (-[HMDMediaOutputDevice uniqueIdentifier](self, "uniqueIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), -[HMDMediaOutputDevice uniqueIdentifier](v6, "uniqueIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, (v9 & 1) == 0))
    {
      v11 = [(HMDMediaOutputDevice *)self outputDevice];
      v12 = [(HMDMediaOutputDevice *)v6 outputDevice];
      v10 = v11 == v12;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)supportsHAP
{
  v2 = [(HMDMediaOutputDevice *)self outputDevice];
  v3 = [v2 supportsHAP];

  return v3;
}

- (BOOL)supportsWHA
{
  v2 = [(HMDMediaOutputDevice *)self outputDevice];
  v3 = [v2 supportsBufferedAirPlay];

  return v3;
}

- (NSString)modelID
{
  v2 = [(HMDMediaOutputDevice *)self outputDevice];
  v3 = [v2 modelID];
  v4 = [v3 copy];

  return v4;
}

- (unsigned)deviceSubtype
{
  v2 = [(HMDMediaOutputDevice *)self outputDevice];
  v3 = [v2 deviceSubtype];

  return v3;
}

- (HMDMediaOutputDevice)initWithOutputDevice:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = HMDMediaOutputDevice;
  v6 = [(HMDMediaOutputDevice *)&v15 init];
  if (v6)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v7 = [v5 uid];
    v8 = [v7 copy];
    uniqueIdentifier = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = v8;

    v10 = [v5 name];
    v11 = [v10 copy];
    name = v6->_name;
    v6->_name = v11;

    if (!v6->_name || !v6->_uniqueIdentifier)
    {
LABEL_7:
      v13 = 0;
      goto LABEL_8;
    }

    objc_storeStrong(&v6->_outputDevice, a3);
  }

  v13 = v6;
LABEL_8:

  return v13;
}

@end