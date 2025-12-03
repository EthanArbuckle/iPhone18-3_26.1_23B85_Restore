@interface HMDSRTPParameters
- (BOOL)_parseFromTLVData;
- (BOOL)isCompatibleWithRemoteSRTPParameters:(id)parameters;
- (HMDSRTPParameters)initWithCoder:(id)coder;
- (HMDSRTPParameters)initWithCryptoSuite:(id)suite masterKey:(id)key masterSalt:(id)salt;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDSRTPParameters

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  srtpCryptoSuite = [(HMDSRTPParameters *)self srtpCryptoSuite];
  [coderCopy encodeObject:srtpCryptoSuite forKey:@"kSRTPParameters_SRTPCryptoSuite"];

  srtpMasterKey = [(HMDSRTPParameters *)self srtpMasterKey];
  [coderCopy encodeObject:srtpMasterKey forKey:@"kSRTPParameters_SRTPMasterKey"];

  srtpMasterSalt = [(HMDSRTPParameters *)self srtpMasterSalt];
  [coderCopy encodeObject:srtpMasterSalt forKey:@"kSRTPParameters_SRTPMasterSalt"];
}

- (HMDSRTPParameters)initWithCoder:(id)coder
{
  v26[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = HMDSRTPParameters;
  v5 = [(HMDSRTPParameters *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v26[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kSRTPParameters_SRTPCryptoSuite"];
    srtpCryptoSuite = v5->_srtpCryptoSuite;
    v5->_srtpCryptoSuite = v9;

    v11 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kSRTPParameters_SRTPMasterKey"];
    srtpMasterKey = v5->_srtpMasterKey;
    v5->_srtpMasterKey = v14;

    v16 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"kSRTPParameters_SRTPMasterSalt"];
    srtpMasterSalt = v5->_srtpMasterSalt;
    v5->_srtpMasterSalt = v19;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n %@ tlvDatablob = %@ ", indentCopy, tlvDatablob];

  srtpMasterKey = [(HMDSRTPParameters *)self srtpMasterKey];
  [descriptionCopy appendFormat:@"\n %@ srtpMasterKey = %@ ", indentCopy, srtpMasterKey];

  srtpMasterSalt = [(HMDSRTPParameters *)self srtpMasterSalt];
  [descriptionCopy appendFormat:@"\n %@ srtpMasterSalt = %@ ", indentCopy, srtpMasterSalt];

  srtpCryptoSuite = [(HMDSRTPParameters *)self srtpCryptoSuite];
  [descriptionCopy appendFormat:@"\n %@ srtpCryptoSuite = %@ ", indentCopy, srtpCryptoSuite];
}

- (BOOL)_parseFromTLVData
{
  v20[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEB38] wrappertlv:2 name:@"kSRTPParameters_SRTPMasterKey"];
  v4 = [MEMORY[0x277CFEB38] wrappertlv:3 name:@"kSRTPParameters_SRTPMasterSalt"];
  v5 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kSRTPParameters_SRTPCryptoSuite"];
  v20[0] = v3;
  v20[1] = v4;
  v20[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v7 = [(HAPTLVBase *)self _parse:v6];
  if (v7)
  {
    field = [v5 field];
    unsignedIntegerValue = [field unsignedIntegerValue];

    v10 = [[HMDSRTPCryptoSuite alloc] initWithCryptoSuite:unsignedIntegerValue];
    srtpCryptoSuite = self->_srtpCryptoSuite;
    self->_srtpCryptoSuite = v10;

    if (unsignedIntegerValue < 2)
    {
      field2 = [v3 field];
      srtpMasterKey = self->_srtpMasterKey;
      self->_srtpMasterKey = field2;

      field3 = [v4 field];
LABEL_6:
      srtpMasterSalt = self->_srtpMasterSalt;
      self->_srtpMasterSalt = field3;

      goto LABEL_7;
    }

    if (unsignedIntegerValue == 2)
    {
      data = [MEMORY[0x277CBEA90] data];
      v16 = self->_srtpMasterKey;
      self->_srtpMasterKey = data;

      field3 = [MEMORY[0x277CBEA90] data];
      goto LABEL_6;
    }
  }

LABEL_7:

  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  srtpMasterKey = [(HMDSRTPParameters *)self srtpMasterKey];
  [creator addTLV:2 data:srtpMasterKey];

  srtpMasterSalt = [(HMDSRTPParameters *)self srtpMasterSalt];
  [creator addTLV:3 data:srtpMasterSalt];

  v6 = MEMORY[0x277CCABB0];
  srtpCryptoSuite = [(HMDSRTPParameters *)self srtpCryptoSuite];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(srtpCryptoSuite, "srtpCryptoSuite")}];
  [creator addTLV:1 number:v8];

  serialize = [creator serialize];

  return serialize;
}

- (BOOL)isCompatibleWithRemoteSRTPParameters:(id)parameters
{
  parametersCopy = parameters;
  srtpCryptoSuite = [(HMDSRTPParameters *)self srtpCryptoSuite];
  srtpCryptoSuite2 = [parametersCopy srtpCryptoSuite];
  v7 = HMFEqualObjects();

  if (!v7)
  {
    goto LABEL_4;
  }

  srtpMasterKey = [(HMDSRTPParameters *)self srtpMasterKey];
  v9 = [srtpMasterKey length];
  srtpMasterKey2 = [parametersCopy srtpMasterKey];
  v11 = [srtpMasterKey2 length];

  if (v9 == v11)
  {
    srtpMasterSalt = [(HMDSRTPParameters *)self srtpMasterSalt];
    v13 = [srtpMasterSalt length];
    srtpMasterSalt2 = [parametersCopy srtpMasterSalt];
    v15 = v13 == [srtpMasterSalt2 length];
  }

  else
  {
LABEL_4:
    v15 = 0;
  }

  return v15;
}

- (HMDSRTPParameters)initWithCryptoSuite:(id)suite masterKey:(id)key masterSalt:(id)salt
{
  suiteCopy = suite;
  keyCopy = key;
  saltCopy = salt;
  v15.receiver = self;
  v15.super_class = HMDSRTPParameters;
  v12 = [(HMDSRTPParameters *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_srtpCryptoSuite, suite);
    objc_storeStrong(&v13->_srtpMasterKey, key);
    objc_storeStrong(&v13->_srtpMasterSalt, salt);
  }

  return v13;
}

@end