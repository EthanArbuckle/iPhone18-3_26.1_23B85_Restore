@interface HMDSRTPParameters
- (BOOL)_parseFromTLVData;
- (BOOL)isCompatibleWithRemoteSRTPParameters:(id)a3;
- (HMDSRTPParameters)initWithCoder:(id)a3;
- (HMDSRTPParameters)initWithCryptoSuite:(id)a3 masterKey:(id)a4 masterSalt:(id)a5;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDSRTPParameters

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDSRTPParameters *)self srtpCryptoSuite];
  [v4 encodeObject:v5 forKey:@"kSRTPParameters_SRTPCryptoSuite"];

  v6 = [(HMDSRTPParameters *)self srtpMasterKey];
  [v4 encodeObject:v6 forKey:@"kSRTPParameters_SRTPMasterKey"];

  v7 = [(HMDSRTPParameters *)self srtpMasterSalt];
  [v4 encodeObject:v7 forKey:@"kSRTPParameters_SRTPMasterSalt"];
}

- (HMDSRTPParameters)initWithCoder:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HMDSRTPParameters;
  v5 = [(HMDSRTPParameters *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v26[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kSRTPParameters_SRTPCryptoSuite"];
    srtpCryptoSuite = v5->_srtpCryptoSuite;
    v5->_srtpCryptoSuite = v9;

    v11 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kSRTPParameters_SRTPMasterKey"];
    srtpMasterKey = v5->_srtpMasterKey;
    v5->_srtpMasterKey = v14;

    v16 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"kSRTPParameters_SRTPMasterSalt"];
    srtpMasterSalt = v5->_srtpMasterSalt;
    v5->_srtpMasterSalt = v19;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n %@ tlvDatablob = %@ ", v6, v8];

  v9 = [(HMDSRTPParameters *)self srtpMasterKey];
  [v7 appendFormat:@"\n %@ srtpMasterKey = %@ ", v6, v9];

  v10 = [(HMDSRTPParameters *)self srtpMasterSalt];
  [v7 appendFormat:@"\n %@ srtpMasterSalt = %@ ", v6, v10];

  v11 = [(HMDSRTPParameters *)self srtpCryptoSuite];
  [v7 appendFormat:@"\n %@ srtpCryptoSuite = %@ ", v6, v11];
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
    v8 = [v5 field];
    v9 = [v8 unsignedIntegerValue];

    v10 = [[HMDSRTPCryptoSuite alloc] initWithCryptoSuite:v9];
    srtpCryptoSuite = self->_srtpCryptoSuite;
    self->_srtpCryptoSuite = v10;

    if (v9 < 2)
    {
      v12 = [v3 field];
      srtpMasterKey = self->_srtpMasterKey;
      self->_srtpMasterKey = v12;

      v14 = [v4 field];
LABEL_6:
      srtpMasterSalt = self->_srtpMasterSalt;
      self->_srtpMasterSalt = v14;

      goto LABEL_7;
    }

    if (v9 == 2)
    {
      v15 = [MEMORY[0x277CBEA90] data];
      v16 = self->_srtpMasterKey;
      self->_srtpMasterKey = v15;

      v14 = [MEMORY[0x277CBEA90] data];
      goto LABEL_6;
    }
  }

LABEL_7:

  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = [(HMDSRTPParameters *)self srtpMasterKey];
  [v3 addTLV:2 data:v4];

  v5 = [(HMDSRTPParameters *)self srtpMasterSalt];
  [v3 addTLV:3 data:v5];

  v6 = MEMORY[0x277CCABB0];
  v7 = [(HMDSRTPParameters *)self srtpCryptoSuite];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "srtpCryptoSuite")}];
  [v3 addTLV:1 number:v8];

  v9 = [v3 serialize];

  return v9;
}

- (BOOL)isCompatibleWithRemoteSRTPParameters:(id)a3
{
  v4 = a3;
  v5 = [(HMDSRTPParameters *)self srtpCryptoSuite];
  v6 = [v4 srtpCryptoSuite];
  v7 = HMFEqualObjects();

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [(HMDSRTPParameters *)self srtpMasterKey];
  v9 = [v8 length];
  v10 = [v4 srtpMasterKey];
  v11 = [v10 length];

  if (v9 == v11)
  {
    v12 = [(HMDSRTPParameters *)self srtpMasterSalt];
    v13 = [v12 length];
    v14 = [v4 srtpMasterSalt];
    v15 = v13 == [v14 length];
  }

  else
  {
LABEL_4:
    v15 = 0;
  }

  return v15;
}

- (HMDSRTPParameters)initWithCryptoSuite:(id)a3 masterKey:(id)a4 masterSalt:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDSRTPParameters;
  v12 = [(HMDSRTPParameters *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_srtpCryptoSuite, a3);
    objc_storeStrong(&v13->_srtpMasterKey, a4);
    objc_storeStrong(&v13->_srtpMasterSalt, a5);
  }

  return v13;
}

@end