@interface HMDSetupEndPointWrite
- (BOOL)_parseFromTLVDataImpl;
- (BOOL)_parseFromTLVDataOnFailure;
- (HMDSetupEndPointWrite)initWithCoder:(id)a3;
- (HMDSetupEndPointWrite)initWithSessionIdentifier:(id)a3 address:(id)a4 videoSrtpParameters:(id)a5 audioSrtpParameters:(id)a6;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDSetupEndPointWrite

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDSetupEndPointWrite *)self sessionID];
  [v4 encodeObject:v5 forKey:@"kSetupEndPoint__SessionIdentifier"];

  v6 = [(HMDSetupEndPointWrite *)self videoSrtpParameters];
  [v4 encodeObject:v6 forKey:@"kSetupEndPoint__SRTPVideoParameters"];

  v7 = [(HMDSetupEndPointWrite *)self audioSrtpParameters];
  [v4 encodeObject:v7 forKey:@"kSetupEndPoint__SRTPAudioParameters"];
}

- (HMDSetupEndPointWrite)initWithCoder:(id)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = HMDSetupEndPointWrite;
  v5 = [(HMDSetupEndPointWrite *)&v25 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v28[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kSetupEndPoint__SessionIdentifier"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v9;

    v11 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kSetupEndPoint__SRTPVideoParameters"];
    videoSrtpParameters = v5->_videoSrtpParameters;
    v5->_videoSrtpParameters = v14;

    v16 = MEMORY[0x277CBEB98];
    v26 = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"kSetupEndPoint__SRTPAudioParameters"];
    audioSrtpParameters = v5->_audioSrtpParameters;
    v5->_audioSrtpParameters = v19;

    v21 = [[HMDEndPointAddress alloc] initWithIPAddress:&stru_286509E58 isIPv6Address:0 videoRTPPort:&unk_286627658 audioRTPPort:&unk_286627658];
    address = v5->_address;
    v5->_address = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDSetupEndPointWrite *)self sessionID];
  [v7 appendFormat:@"\n %@ sessionID = %@ ", v6, v8];

  v9 = [(HMDSetupEndPointWrite *)self address];
  v10 = [v9 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ deviceAddress = %@ ", v6, v10];

  v11 = [(HMDSetupEndPointWrite *)self videoSrtpParameters];
  v12 = [v11 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ videoSRTPParameters = %@ ", v6, v12];

  v14 = [(HMDSetupEndPointWrite *)self audioSrtpParameters];
  v13 = [v14 descriptionWithIndent:v6];
  [v7 appendFormat:@"\n %@ audioSRTPParameters = %@ ", v6, v13];
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
    v6 = [v3 field];
    sessionID = self->_sessionID;
    self->_sessionID = v6;
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
    v9 = [v3 field];
    sessionID = self->_sessionID;
    self->_sessionID = v9;

    v11 = [HMDEndPointAddress alloc];
    v12 = [v4 field];
    v13 = [(HAPTLVBase *)v11 initWithTLVData:v12];
    address = self->_address;
    self->_address = v13;

    v15 = [HMDSRTPParameters alloc];
    v16 = [v5 field];
    v17 = [(HAPTLVBase *)v15 initWithTLVData:v16];
    videoSrtpParameters = self->_videoSrtpParameters;
    self->_videoSrtpParameters = v17;

    v19 = [HMDSRTPParameters alloc];
    v20 = [v6 field];
    v21 = [(HAPTLVBase *)v19 initWithTLVData:v20];
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
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = [(HMDSetupEndPointWrite *)self sessionID];
  [v3 addTLV:1 uuid:v4];

  v5 = [(HMDSetupEndPointWrite *)self address];
  v6 = [v5 tlvData];

  [v3 addTLV:3 data:v6];
  v7 = [(HMDSetupEndPointWrite *)self videoSrtpParameters];
  v8 = [v7 tlvData];

  [v3 addTLV:4 data:v8];
  v9 = [(HMDSetupEndPointWrite *)self audioSrtpParameters];
  v10 = [v9 tlvData];

  [v3 addTLV:5 data:v10];
  v11 = [v3 serialize];

  return v11;
}

- (HMDSetupEndPointWrite)initWithSessionIdentifier:(id)a3 address:(id)a4 videoSrtpParameters:(id)a5 audioSrtpParameters:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDSetupEndPointWrite;
  v15 = [(HMDSetupEndPointWrite *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sessionID, a3);
    objc_storeStrong(&v16->_address, a4);
    objc_storeStrong(&v16->_videoSrtpParameters, a5);
    objc_storeStrong(&v16->_audioSrtpParameters, a6);
  }

  return v16;
}

@end