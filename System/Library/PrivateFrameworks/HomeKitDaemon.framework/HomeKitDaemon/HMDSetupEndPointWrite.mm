@interface HMDSetupEndPointWrite
- (BOOL)_parseFromTLVDataImpl;
- (BOOL)_parseFromTLVDataOnFailure;
- (HMDSetupEndPointWrite)initWithCoder:(id)coder;
- (HMDSetupEndPointWrite)initWithSessionIdentifier:(id)identifier address:(id)address videoSrtpParameters:(id)parameters audioSrtpParameters:(id)srtpParameters;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDSetupEndPointWrite

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sessionID = [(HMDSetupEndPointWrite *)self sessionID];
  [coderCopy encodeObject:sessionID forKey:@"kSetupEndPoint__SessionIdentifier"];

  videoSrtpParameters = [(HMDSetupEndPointWrite *)self videoSrtpParameters];
  [coderCopy encodeObject:videoSrtpParameters forKey:@"kSetupEndPoint__SRTPVideoParameters"];

  audioSrtpParameters = [(HMDSetupEndPointWrite *)self audioSrtpParameters];
  [coderCopy encodeObject:audioSrtpParameters forKey:@"kSetupEndPoint__SRTPAudioParameters"];
}

- (HMDSetupEndPointWrite)initWithCoder:(id)coder
{
  v28[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = HMDSetupEndPointWrite;
  v5 = [(HMDSetupEndPointWrite *)&v25 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v28[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kSetupEndPoint__SessionIdentifier"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v9;

    v11 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kSetupEndPoint__SRTPVideoParameters"];
    videoSrtpParameters = v5->_videoSrtpParameters;
    v5->_videoSrtpParameters = v14;

    v16 = MEMORY[0x277CBEB98];
    v26 = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"kSetupEndPoint__SRTPAudioParameters"];
    audioSrtpParameters = v5->_audioSrtpParameters;
    v5->_audioSrtpParameters = v19;

    v21 = [[HMDEndPointAddress alloc] initWithIPAddress:&stru_283CF9D50 isIPv6Address:0 videoRTPPort:&unk_283E71828 audioRTPPort:&unk_283E71828];
    address = v5->_address;
    v5->_address = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  sessionID = [(HMDSetupEndPointWrite *)self sessionID];
  [descriptionCopy appendFormat:@"\n %@ sessionID = %@ ", indentCopy, sessionID];

  address = [(HMDSetupEndPointWrite *)self address];
  v10 = [address descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ deviceAddress = %@ ", indentCopy, v10];

  videoSrtpParameters = [(HMDSetupEndPointWrite *)self videoSrtpParameters];
  v12 = [videoSrtpParameters descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ videoSRTPParameters = %@ ", indentCopy, v12];

  audioSrtpParameters = [(HMDSetupEndPointWrite *)self audioSrtpParameters];
  v13 = [audioSrtpParameters descriptionWithIndent:indentCopy];
  [descriptionCopy appendFormat:@"\n %@ audioSRTPParameters = %@ ", indentCopy, v13];
}

- (BOOL)_parseFromTLVDataOnFailure
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFECA8] wrappertlv:1 name:@"kSetupEndPoint__SessionIdentifier"];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v5 = [(HAPTLVBase *)self _parse:v4];

  if (v5)
  {
    field = [v3 field];
    sessionID = self->_sessionID;
    self->_sessionID = field;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_parseFromTLVDataImpl
{
  v34[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFECA8] wrappertlv:1 name:@"kSetupEndPoint__SessionIdentifier"];
  v4 = [MEMORY[0x277CFEB38] wrappertlv:3 name:@"kSetupEndPoint__ControllerAddress"];
  v5 = [MEMORY[0x277CFEB38] wrappertlv:4 name:@"kSetupEndPoint__SRTPVideoParameters"];
  v6 = [MEMORY[0x277CFEB38] wrappertlv:5 name:@"kSetupEndPoint__SRTPAudioParameters"];
  v34[0] = v3;
  v34[1] = v4;
  v34[2] = v5;
  v34[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  v8 = [(HAPTLVBase *)self _parse:v7];

  if (v8)
  {
    field = [v3 field];
    sessionID = self->_sessionID;
    self->_sessionID = field;

    v11 = [HMDEndPointAddress alloc];
    field2 = [v4 field];
    v13 = [(HAPTLVBase *)v11 initWithTLVData:field2];
    address = self->_address;
    self->_address = v13;

    v15 = [HMDSRTPParameters alloc];
    field3 = [v5 field];
    v17 = [(HAPTLVBase *)v15 initWithTLVData:field3];
    videoSrtpParameters = self->_videoSrtpParameters;
    self->_videoSrtpParameters = v17;

    v19 = [HMDSRTPParameters alloc];
    field4 = [v6 field];
    v21 = [(HAPTLVBase *)v19 initWithTLVData:field4];
    audioSrtpParameters = self->_audioSrtpParameters;
    self->_audioSrtpParameters = v21;

    v33 = self->_audioSrtpParameters;
    v30 = checkForParseResult(3, v23, v24, v25, v26, v27, v28, v29, self->_address, self->_videoSrtpParameters);
  }

  else
  {
    v30 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  sessionID = [(HMDSetupEndPointWrite *)self sessionID];
  [creator addTLV:1 uuid:sessionID];

  address = [(HMDSetupEndPointWrite *)self address];
  tlvData = [address tlvData];

  [creator addTLV:3 data:tlvData];
  videoSrtpParameters = [(HMDSetupEndPointWrite *)self videoSrtpParameters];
  tlvData2 = [videoSrtpParameters tlvData];

  [creator addTLV:4 data:tlvData2];
  audioSrtpParameters = [(HMDSetupEndPointWrite *)self audioSrtpParameters];
  tlvData3 = [audioSrtpParameters tlvData];

  [creator addTLV:5 data:tlvData3];
  serialize = [creator serialize];

  return serialize;
}

- (HMDSetupEndPointWrite)initWithSessionIdentifier:(id)identifier address:(id)address videoSrtpParameters:(id)parameters audioSrtpParameters:(id)srtpParameters
{
  identifierCopy = identifier;
  addressCopy = address;
  parametersCopy = parameters;
  srtpParametersCopy = srtpParameters;
  v18.receiver = self;
  v18.super_class = HMDSetupEndPointWrite;
  v15 = [(HMDSetupEndPointWrite *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sessionID, identifier);
    objc_storeStrong(&v16->_address, address);
    objc_storeStrong(&v16->_videoSrtpParameters, parameters);
    objc_storeStrong(&v16->_audioSrtpParameters, srtpParameters);
  }

  return v16;
}

@end