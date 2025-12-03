@interface HMDHAPMetadataAssistantCharacteristic
- (HMDHAPMetadataAssistantCharacteristic)init;
- (HMDHAPMetadataAssistantCharacteristic)initWithName:(id)name readHAPCharacteristic:(id)characteristic writeHAPCharacteristic:(id)pCharacteristic format:(id)format;
- (id)description;
@end

@implementation HMDHAPMetadataAssistantCharacteristic

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(HMDHAPMetadataAssistantCharacteristic *)self name];
  readHAPCharacteristicName = [(HMDHAPMetadataAssistantCharacteristic *)self readHAPCharacteristicName];
  writeHAPCharacteristicName = [(HMDHAPMetadataAssistantCharacteristic *)self writeHAPCharacteristicName];
  format = [(HMDHAPMetadataAssistantCharacteristic *)self format];
  v8 = [v3 stringWithFormat:@"Assistant characteristic %@: readHAP %@  writeHAP %@, format %@ supportsLocalization %ld", name, readHAPCharacteristicName, writeHAPCharacteristicName, format, -[HMDHAPMetadataAssistantCharacteristic supportsLocalization](self, "supportsLocalization")];

  return v8;
}

- (HMDHAPMetadataAssistantCharacteristic)initWithName:(id)name readHAPCharacteristic:(id)characteristic writeHAPCharacteristic:(id)pCharacteristic format:(id)format
{
  nameCopy = name;
  characteristicCopy = characteristic;
  pCharacteristicCopy = pCharacteristic;
  formatCopy = format;
  v25.receiver = self;
  v25.super_class = HMDHAPMetadataAssistantCharacteristic;
  v14 = [(HMDHAPMetadataAssistantCharacteristic *)&v25 init];
  v15 = v14;
  if (nameCopy && characteristicCopy | pCharacteristicCopy)
  {
    if (v14)
    {
      v16 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:nameCopy];
      name = v15->_name;
      v15->_name = v16;

      v18 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:characteristicCopy];
      readHAPCharacteristicName = v15->_readHAPCharacteristicName;
      v15->_readHAPCharacteristicName = v18;

      v20 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:pCharacteristicCopy];
      writeHAPCharacteristicName = v15->_writeHAPCharacteristicName;
      v15->_writeHAPCharacteristicName = v20;

      v22 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:formatCopy];
      format = v15->_format;
      v15->_format = v22;
    }

    else
    {
      format = 0;
    }
  }

  else
  {
    format = v14;
    v15 = 0;
  }

  return v15;
}

- (HMDHAPMetadataAssistantCharacteristic)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end