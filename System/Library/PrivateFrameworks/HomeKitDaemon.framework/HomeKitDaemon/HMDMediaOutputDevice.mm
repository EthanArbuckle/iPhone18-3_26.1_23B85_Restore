@interface HMDMediaOutputDevice
- (AVOutputDevice)av_OutputDevice;
- (BOOL)isAppleMediaAccessory;
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsHAP;
- (BOOL)supportsWHA;
- (HMDMediaOutputDevice)initWithOutputDevice:(id)device;
- (NSString)modelID;
- (id)description;
- (unsigned)deviceSubtype;
@end

@implementation HMDMediaOutputDevice

- (AVOutputDevice)av_OutputDevice
{
  outputDevice = [(HMDMediaOutputDevice *)self outputDevice];
  v3 = MRAVOutputDeviceGetAVOutputDevice();

  return v3;
}

- (BOOL)isAppleMediaAccessory
{
  modelID = [(HMDMediaOutputDevice *)self modelID];
  v3 = HMFProductClassFromString();

  return (v3 & 0xFFFFFFFFFFFFFFFDLL) == 4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  uniqueIdentifier = [(HMDMediaOutputDevice *)self uniqueIdentifier];
  outputDevice = [(HMDMediaOutputDevice *)self outputDevice];
  v6 = [v3 stringWithFormat:@"Output device(%@/%@)", uniqueIdentifier, outputDevice];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && (-[HMDMediaOutputDevice uniqueIdentifier](self, "uniqueIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), -[HMDMediaOutputDevice uniqueIdentifier](v6, "uniqueIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, (v9 & 1) == 0))
    {
      outputDevice = [(HMDMediaOutputDevice *)self outputDevice];
      outputDevice2 = [(HMDMediaOutputDevice *)v6 outputDevice];
      v10 = outputDevice == outputDevice2;
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
  outputDevice = [(HMDMediaOutputDevice *)self outputDevice];
  supportsHAP = [outputDevice supportsHAP];

  return supportsHAP;
}

- (BOOL)supportsWHA
{
  outputDevice = [(HMDMediaOutputDevice *)self outputDevice];
  supportsBufferedAirPlay = [outputDevice supportsBufferedAirPlay];

  return supportsBufferedAirPlay;
}

- (NSString)modelID
{
  outputDevice = [(HMDMediaOutputDevice *)self outputDevice];
  modelID = [outputDevice modelID];
  v4 = [modelID copy];

  return v4;
}

- (unsigned)deviceSubtype
{
  outputDevice = [(HMDMediaOutputDevice *)self outputDevice];
  deviceSubtype = [outputDevice deviceSubtype];

  return deviceSubtype;
}

- (HMDMediaOutputDevice)initWithOutputDevice:(id)device
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = HMDMediaOutputDevice;
  v6 = [(HMDMediaOutputDevice *)&v15 init];
  if (v6)
  {
    if (!deviceCopy)
    {
      goto LABEL_7;
    }

    v7 = [deviceCopy uid];
    v8 = [v7 copy];
    uniqueIdentifier = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = v8;

    name = [deviceCopy name];
    v11 = [name copy];
    name = v6->_name;
    v6->_name = v11;

    if (!v6->_name || !v6->_uniqueIdentifier)
    {
LABEL_7:
      v13 = 0;
      goto LABEL_8;
    }

    objc_storeStrong(&v6->_outputDevice, device);
  }

  v13 = v6;
LABEL_8:

  return v13;
}

@end