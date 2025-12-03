@interface HMDSetupEndPointRead
- (BOOL)_parseFromTLVData;
- (BOOL)_parseFromTLVDataOnFailure;
- (BOOL)_parseFromTLVDataOnSuccess;
- (HMDSetupEndPointRead)initWithCoder:(id)coder;
- (HMDSetupEndPointRead)initWithSessionIdentifier:(id)identifier address:(id)address videoSrtpParameters:(id)parameters audioSrtpParameters:(id)srtpParameters responseStatus:(unint64_t)status videoSSRC:(id)c audioSSRC:(id)rC;
- (id)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDSetupEndPointRead

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = HMDSetupEndPointRead;
  coderCopy = coder;
  [(HMDSetupEndPointWrite *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:-[HMDSetupEndPointRead responseStatus](self forKey:{"responseStatus", v7.receiver, v7.super_class), @"kSetupEndPointRead__Status"}];
  videoSSRC = [(HMDSetupEndPointRead *)self videoSSRC];
  [coderCopy encodeObject:videoSSRC forKey:@"kSetupEndPointRead__VideoSSRC"];

  audioSSRC = [(HMDSetupEndPointRead *)self audioSSRC];
  [coderCopy encodeObject:audioSSRC forKey:@"kSetupEndPointRead__AudioSSRC"];
}

- (HMDSetupEndPointRead)initWithCoder:(id)coder
{
  v20[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = HMDSetupEndPointRead;
  v5 = [(HMDSetupEndPointWrite *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_responseStatus = [coderCopy decodeInt32ForKey:@"kSetupEndPointRead__Status"];
    v6 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kSetupEndPointRead__VideoSSRC"];
    videoSSRC = v5->_videoSSRC;
    v5->_videoSSRC = v9;

    v11 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kSetupEndPointRead__AudioSSRC"];
    audioSSRC = v5->_audioSSRC;
    v5->_audioSSRC = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  v11.receiver = self;
  v11.super_class = HMDSetupEndPointRead;
  indentCopy = indent;
  descriptionCopy = description;
  [(HMDSetupEndPointWrite *)&v11 description:descriptionCopy indent:indentCopy];
  videoSSRC = [(HMDSetupEndPointRead *)self videoSSRC];
  [descriptionCopy appendFormat:@"\n %@ videoSSRC = %@ ", indentCopy, videoSSRC, v11.receiver, v11.super_class];

  audioSSRC = [(HMDSetupEndPointRead *)self audioSSRC];
  [descriptionCopy appendFormat:@"\n %@ audioSSRC = %@ ", indentCopy, audioSSRC];

  v10 = HMDStreamControlPointResponseStatusAsString([(HMDSetupEndPointRead *)self responseStatus]);
  [descriptionCopy appendFormat:@"\n %@ responseStatus = %@ ", indentCopy, v10];
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
    field = [v3 field];
    videoSSRC = self->_videoSSRC;
    self->_videoSSRC = field;

    field2 = [v4 field];
    audioSSRC = self->_audioSSRC;
    self->_audioSSRC = field2;

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
    field = [v4 field];
    self->_responseStatus = [field unsignedIntegerValue];

    if (self->_responseStatus)
    {
      _parseFromTLVDataOnFailure = [(HMDSetupEndPointRead *)self _parseFromTLVDataOnFailure];
    }

    else
    {
      _parseFromTLVDataOnFailure = [(HMDSetupEndPointRead *)self _parseFromTLVDataOnSuccess];
    }

    v9 = _parseFromTLVDataOnFailure;
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
  tlvData = [(HMDSetupEndPointWrite *)&v12 tlvData];
  v4 = [tlvData mutableCopy];

  creator = [MEMORY[0x277CFEC80] creator];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSetupEndPointRead responseStatus](self, "responseStatus")}];
  [creator addTLV:2 number:v6];

  videoSSRC = [(HMDSetupEndPointRead *)self videoSSRC];
  [creator addTLV:6 length:4 number:videoSSRC];

  audioSSRC = [(HMDSetupEndPointRead *)self audioSSRC];
  [creator addTLV:7 length:4 number:audioSSRC];

  serialize = [creator serialize];
  [v4 appendData:serialize];

  v10 = [v4 copy];

  return v10;
}

- (HMDSetupEndPointRead)initWithSessionIdentifier:(id)identifier address:(id)address videoSrtpParameters:(id)parameters audioSrtpParameters:(id)srtpParameters responseStatus:(unint64_t)status videoSSRC:(id)c audioSSRC:(id)rC
{
  cCopy = c;
  rCCopy = rC;
  v21.receiver = self;
  v21.super_class = HMDSetupEndPointRead;
  v18 = [(HMDSetupEndPointWrite *)&v21 initWithSessionIdentifier:identifier address:address videoSrtpParameters:parameters audioSrtpParameters:srtpParameters];
  v19 = v18;
  if (v18)
  {
    v18->_responseStatus = status;
    objc_storeStrong(&v18->_videoSSRC, c);
    objc_storeStrong(&v19->_audioSSRC, rC);
  }

  return v19;
}

@end