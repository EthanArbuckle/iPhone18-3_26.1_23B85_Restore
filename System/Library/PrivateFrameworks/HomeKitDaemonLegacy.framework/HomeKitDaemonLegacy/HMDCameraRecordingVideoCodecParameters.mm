@interface HMDCameraRecordingVideoCodecParameters
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingVideoCodecParameters)initWithCoder:(id)coder;
- (HMDCameraRecordingVideoCodecParameters)initWithProfiles:(id)profiles levels:(id)levels bitRate:(id)rate iFrameInterval:(id)interval;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCameraRecordingVideoCodecParameters

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  profiles = [(HMDCameraRecordingVideoCodecParameters *)self profiles];
  [coderCopy encodeObject:profiles forKey:@"kVideoCodecParametersProfileID"];

  levels = [(HMDCameraRecordingVideoCodecParameters *)self levels];
  [coderCopy encodeObject:levels forKey:@"kVideoCodecParametersLevel"];

  bitRate = [(HMDCameraRecordingVideoCodecParameters *)self bitRate];
  [coderCopy encodeObject:bitRate forKey:@"kVideoCodecParameters"];

  iFrameInterval = [(HMDCameraRecordingVideoCodecParameters *)self iFrameInterval];
  [coderCopy encodeObject:iFrameInterval forKey:@"kVideoCodecParameters"];
}

- (HMDCameraRecordingVideoCodecParameters)initWithCoder:(id)coder
{
  v24[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
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
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kVideoCodecParametersProfileID"];
    profiles = v5->_profiles;
    v5->_profiles = v9;

    v11 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kVideoCodecParametersLevel"];
    levels = v5->_levels;
    v5->_levels = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kVideoCodecParameters"];
    bitRate = v5->_bitRate;
    v5->_bitRate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kVideoCodecParameters"];
    iFrameInterval = v5->_iFrameInterval;
    v5->_iFrameInterval = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n%@tlvDatablob = %@ ", indentCopy, tlvDatablob];

  profiles = [(HMDCameraRecordingVideoCodecParameters *)self profiles];
  v10 = [indentCopy indentationByLevels:1];
  v11 = HAPTLVCreateParseArrayToString();
  [descriptionCopy appendFormat:@"\n%@h264Profile = %@ ", indentCopy, v11];

  levels = [(HMDCameraRecordingVideoCodecParameters *)self levels];
  v13 = [indentCopy indentationByLevels:1];
  v14 = HAPTLVCreateParseArrayToString();
  [descriptionCopy appendFormat:@"\n%@levels = %@", indentCopy, v14];

  bitRate = [(HMDCameraRecordingVideoCodecParameters *)self bitRate];
  [descriptionCopy appendFormat:@"\n%@bitRate = %@", indentCopy, bitRate];

  iFrameInterval = [(HMDCameraRecordingVideoCodecParameters *)self iFrameInterval];
  [descriptionCopy appendFormat:@"\n%@iFrameInterval = %@", indentCopy, iFrameInterval];
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  v4 = MEMORY[0x277CCABB0];
  profiles = [(HMDCameraRecordingVideoCodecParameters *)self profiles];
  firstObject = [profiles firstObject];
  v7 = [v4 numberWithInteger:{objc_msgSend(firstObject, "h264Profile")}];
  [creator addTLV:1 length:1 number:v7];

  v8 = MEMORY[0x277CCABB0];
  levels = [(HMDCameraRecordingVideoCodecParameters *)self levels];
  firstObject2 = [levels firstObject];
  v11 = [v8 numberWithInteger:{objc_msgSend(firstObject2, "h264Level")}];
  [creator addTLV:2 length:1 number:v11];

  bitRate = [(HMDCameraRecordingVideoCodecParameters *)self bitRate];
  [creator addTLV:3 length:4 number:bitRate];

  iFrameInterval = [(HMDCameraRecordingVideoCodecParameters *)self iFrameInterval];
  [creator addTLV:4 length:4 number:iFrameInterval];

  serialize = [creator serialize];

  return serialize;
}

- (BOOL)_parseFromTLVData
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEA58] wrappertlv:1 name:@"kVideoCodecParametersProfileID" objectCreator:&__block_literal_global_137101];
  v4 = [MEMORY[0x277CFEA58] wrappertlv:2 name:@"kVideoCodecParametersLevel" objectCreator:&__block_literal_global_196_137102];
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
    field = [v3 field];
    profiles = self->_profiles;
    self->_profiles = field;

    field2 = [v4 field];
    levels = self->_levels;
    self->_levels = field2;
  }

  field3 = [v5 field];
  bitRate = self->_bitRate;
  self->_bitRate = field3;

  field4 = [v6 field];
  iFrameInterval = self->_iFrameInterval;
  self->_iFrameInterval = field4;

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

- (HMDCameraRecordingVideoCodecParameters)initWithProfiles:(id)profiles levels:(id)levels bitRate:(id)rate iFrameInterval:(id)interval
{
  profilesCopy = profiles;
  levelsCopy = levels;
  rateCopy = rate;
  intervalCopy = interval;
  v18.receiver = self;
  v18.super_class = HMDCameraRecordingVideoCodecParameters;
  v15 = [(HMDCameraRecordingVideoCodecParameters *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_profiles, profiles);
    objc_storeStrong(&v16->_levels, levels);
    objc_storeStrong(&v16->_bitRate, rate);
    objc_storeStrong(&v16->_iFrameInterval, interval);
  }

  return v16;
}

@end