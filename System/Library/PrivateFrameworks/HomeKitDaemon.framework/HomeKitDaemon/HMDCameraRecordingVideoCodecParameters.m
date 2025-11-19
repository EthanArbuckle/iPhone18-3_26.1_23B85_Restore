@interface HMDCameraRecordingVideoCodecParameters
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingVideoCodecParameters)initWithCoder:(id)a3;
- (HMDCameraRecordingVideoCodecParameters)initWithProfiles:(id)a3 levels:(id)a4 bitRate:(id)a5 iFrameInterval:(id)a6;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCameraRecordingVideoCodecParameters

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingVideoCodecParameters *)self profiles];
  [v4 encodeObject:v5 forKey:@"kVideoCodecParametersProfileID"];

  v6 = [(HMDCameraRecordingVideoCodecParameters *)self levels];
  [v4 encodeObject:v6 forKey:@"kVideoCodecParametersLevel"];

  v7 = [(HMDCameraRecordingVideoCodecParameters *)self bitRate];
  [v4 encodeObject:v7 forKey:@"kVideoCodecParameters"];

  v8 = [(HMDCameraRecordingVideoCodecParameters *)self iFrameInterval];
  [v4 encodeObject:v8 forKey:@"kVideoCodecParameters"];
}

- (HMDCameraRecordingVideoCodecParameters)initWithCoder:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = HMDCameraRecordingVideoCodecParameters;
  v5 = [(HMDCameraRecordingVideoCodecParameters *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kVideoCodecParametersProfileID"];
    profiles = v5->_profiles;
    v5->_profiles = v9;

    v11 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kVideoCodecParametersLevel"];
    levels = v5->_levels;
    v5->_levels = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kVideoCodecParameters"];
    bitRate = v5->_bitRate;
    v5->_bitRate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kVideoCodecParameters"];
    iFrameInterval = v5->_iFrameInterval;
    v5->_iFrameInterval = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n%@tlvDatablob = %@ ", v6, v8];

  v9 = [(HMDCameraRecordingVideoCodecParameters *)self profiles];
  v10 = [v6 indentationByLevels:1];
  v11 = HAPTLVCreateParseArrayToString();
  [v7 appendFormat:@"\n%@h264Profile = %@ ", v6, v11];

  v12 = [(HMDCameraRecordingVideoCodecParameters *)self levels];
  v13 = [v6 indentationByLevels:1];
  v14 = HAPTLVCreateParseArrayToString();
  [v7 appendFormat:@"\n%@levels = %@", v6, v14];

  v15 = [(HMDCameraRecordingVideoCodecParameters *)self bitRate];
  [v7 appendFormat:@"\n%@bitRate = %@", v6, v15];

  v16 = [(HMDCameraRecordingVideoCodecParameters *)self iFrameInterval];
  [v7 appendFormat:@"\n%@iFrameInterval = %@", v6, v16];
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(HMDCameraRecordingVideoCodecParameters *)self profiles];
  v6 = [v5 firstObject];
  v7 = [v4 numberWithInteger:{objc_msgSend(v6, "h264Profile")}];
  [v3 addTLV:1 length:1 number:v7];

  v8 = MEMORY[0x277CCABB0];
  v9 = [(HMDCameraRecordingVideoCodecParameters *)self levels];
  v10 = [v9 firstObject];
  v11 = [v8 numberWithInteger:{objc_msgSend(v10, "h264Level")}];
  [v3 addTLV:2 length:1 number:v11];

  v12 = [(HMDCameraRecordingVideoCodecParameters *)self bitRate];
  [v3 addTLV:3 length:4 number:v12];

  v13 = [(HMDCameraRecordingVideoCodecParameters *)self iFrameInterval];
  [v3 addTLV:4 length:4 number:v13];

  v14 = [v3 serialize];

  return v14;
}

- (BOOL)_parseFromTLVData
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEA58] wrappertlv:1 name:@"kVideoCodecParametersProfileID" objectCreator:&__block_literal_global_205767];
  v4 = [MEMORY[0x277CFEA58] wrappertlv:2 name:@"kVideoCodecParametersLevel" objectCreator:&__block_literal_global_196_205768];
  v5 = [MEMORY[0x277CFEC08] wrappertlv:3 name:@"kVideoCodecParameters"];
  v6 = [MEMORY[0x277CFEC08] wrappertlv:4 name:@"kVideoCodecParameters"];
  v21[0] = v3;
  v21[1] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v20[0] = v5;
  v20[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v9 = [(HAPTLVBase *)self _parseMandatory:v7 optional:v8];
  if (v9)
  {
    v10 = [v3 field];
    profiles = self->_profiles;
    self->_profiles = v10;

    v12 = [v4 field];
    levels = self->_levels;
    self->_levels = v12;
  }

  v14 = [v5 field];
  bitRate = self->_bitRate;
  self->_bitRate = v14;

  v16 = [v6 field];
  iFrameInterval = self->_iFrameInterval;
  self->_iFrameInterval = v16;

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

HMDCameraRecordingH264Level *__59__HMDCameraRecordingVideoCodecParameters__parseFromTLVData__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDCameraRecordingH264Level alloc] initWithTLVData:v2];

  return v3;
}

HMDCameraRecordingH264Profile *__59__HMDCameraRecordingVideoCodecParameters__parseFromTLVData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDCameraRecordingH264Profile alloc] initWithTLVData:v2];

  return v3;
}

- (HMDCameraRecordingVideoCodecParameters)initWithProfiles:(id)a3 levels:(id)a4 bitRate:(id)a5 iFrameInterval:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDCameraRecordingVideoCodecParameters;
  v15 = [(HMDCameraRecordingVideoCodecParameters *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_profiles, a3);
    objc_storeStrong(&v16->_levels, a4);
    objc_storeStrong(&v16->_bitRate, a5);
    objc_storeStrong(&v16->_iFrameInterval, a6);
  }

  return v16;
}

@end