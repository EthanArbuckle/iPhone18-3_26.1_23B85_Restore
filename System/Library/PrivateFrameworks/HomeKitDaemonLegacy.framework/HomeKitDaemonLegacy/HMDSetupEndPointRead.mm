@interface HMDSetupEndPointRead
- (BOOL)_parseFromTLVData;
- (BOOL)_parseFromTLVDataOnFailure;
- (BOOL)_parseFromTLVDataOnSuccess;
- (HMDSetupEndPointRead)initWithCoder:(id)a3;
- (HMDSetupEndPointRead)initWithSessionIdentifier:(id)a3 address:(id)a4 videoSrtpParameters:(id)a5 audioSrtpParameters:(id)a6 responseStatus:(unint64_t)a7 videoSSRC:(id)a8 audioSSRC:(id)a9;
- (id)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDSetupEndPointRead

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = HMDSetupEndPointRead;
  v4 = a3;
  [(HMDSetupEndPointWrite *)&v7 encodeWithCoder:v4];
  [v4 encodeInt32:-[HMDSetupEndPointRead responseStatus](self forKey:{"responseStatus", v7.receiver, v7.super_class), @"kSetupEndPointRead__Status"}];
  v5 = [(HMDSetupEndPointRead *)self videoSSRC];
  [v4 encodeObject:v5 forKey:@"kSetupEndPointRead__VideoSSRC"];

  v6 = [(HMDSetupEndPointRead *)self audioSSRC];
  [v4 encodeObject:v6 forKey:@"kSetupEndPointRead__AudioSSRC"];
}

- (HMDSetupEndPointRead)initWithCoder:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HMDSetupEndPointRead;
  v5 = [(HMDSetupEndPointWrite *)&v18 initWithCoder:v4];
  if (v5)
  {
    v5->_responseStatus = [v4 decodeInt32ForKey:@"kSetupEndPointRead__Status"];
    v6 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kSetupEndPointRead__VideoSSRC"];
    videoSSRC = v5->_videoSSRC;
    v5->_videoSSRC = v9;

    v11 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kSetupEndPointRead__AudioSSRC"];
    audioSSRC = v5->_audioSSRC;
    v5->_audioSSRC = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v11.receiver = self;
  v11.super_class = HMDSetupEndPointRead;
  v6 = a4;
  v7 = a3;
  [(HMDSetupEndPointWrite *)&v11 description:v7 indent:v6];
  v8 = [(HMDSetupEndPointRead *)self videoSSRC];
  [v7 appendFormat:@"\n %@ videoSSRC = %@ ", v6, v8, v11.receiver, v11.super_class];

  v9 = [(HMDSetupEndPointRead *)self audioSSRC];
  [v7 appendFormat:@"\n %@ audioSSRC = %@ ", v6, v9];

  v10 = HMDStreamControlPointResponseStatusAsString([(HMDSetupEndPointRead *)self responseStatus]);
  [v7 appendFormat:@"\n %@ responseStatus = %@ ", v6, v10];
}

- (BOOL)_parseFromTLVDataOnFailure
{
  v3.receiver = self;
  v3.super_class = HMDSetupEndPointRead;
  return [(HMDSetupEndPointWrite *)&v3 _parseFromTLVDataOnFailure];
}

- (BOOL)_parseFromTLVDataOnSuccess
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:6 name:@"kSetupEndPointRead__VideoSSRC"];
  v4 = [MEMORY[0x277CFEC08] wrappertlv:7 name:@"kSetupEndPointRead__AudioSSRC"];
  v15[0] = v3;
  v15[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v6 = [(HAPTLVBase *)self _parse:v5];

  if (v6 && (v14.receiver = self, v14.super_class = HMDSetupEndPointRead, [(HMDSetupEndPointWrite *)&v14 _parseFromTLVDataOnSuccess]))
  {
    v7 = [v3 field];
    videoSSRC = self->_videoSSRC;
    self->_videoSSRC = v7;

    v9 = [v4 field];
    audioSSRC = self->_audioSSRC;
    self->_audioSSRC = v9;

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_parseFromTLVData
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFECA8] wrappertlv:1 name:@"kSetupEndPoint__SessionIdentifier"];
  v4 = [MEMORY[0x277CFEC08] wrappertlv:2 name:@"kSetupEndPointRead__Status"];
  v12[0] = v3;
  v12[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v6 = [(HAPTLVBase *)self _parse:v5];

  if (v6)
  {
    v7 = [v4 field];
    self->_responseStatus = [v7 unsignedIntegerValue];

    if (self->_responseStatus)
    {
      v8 = [(HMDSetupEndPointRead *)self _parseFromTLVDataOnFailure];
    }

    else
    {
      v8 = [(HMDSetupEndPointRead *)self _parseFromTLVDataOnSuccess];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)tlvData
{
  v12.receiver = self;
  v12.super_class = HMDSetupEndPointRead;
  v3 = [(HMDSetupEndPointWrite *)&v12 tlvData];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CFEC80] creator];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSetupEndPointRead responseStatus](self, "responseStatus")}];
  [v5 addTLV:2 number:v6];

  v7 = [(HMDSetupEndPointRead *)self videoSSRC];
  [v5 addTLV:6 length:4 number:v7];

  v8 = [(HMDSetupEndPointRead *)self audioSSRC];
  [v5 addTLV:7 length:4 number:v8];

  v9 = [v5 serialize];
  [v4 appendData:v9];

  v10 = [v4 copy];

  return v10;
}

- (HMDSetupEndPointRead)initWithSessionIdentifier:(id)a3 address:(id)a4 videoSrtpParameters:(id)a5 audioSrtpParameters:(id)a6 responseStatus:(unint64_t)a7 videoSSRC:(id)a8 audioSSRC:(id)a9
{
  v16 = a8;
  v17 = a9;
  v21.receiver = self;
  v21.super_class = HMDSetupEndPointRead;
  v18 = [(HMDSetupEndPointWrite *)&v21 initWithSessionIdentifier:a3 address:a4 videoSrtpParameters:a5 audioSrtpParameters:a6];
  v19 = v18;
  if (v18)
  {
    v18->_responseStatus = a7;
    objc_storeStrong(&v18->_videoSSRC, a8);
    objc_storeStrong(&v19->_audioSSRC, a9);
  }

  return v19;
}

@end