@interface HMDCameraRecordingAudioCodecParameters
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingAudioCodecParameters)initWithChannelCount:(id)count bitRateModes:(id)modes audioSampleRates:(id)rates maxAudioBitRate:(id)rate;
- (HMDCameraRecordingAudioCodecParameters)initWithCoder:(id)coder;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDCameraRecordingAudioCodecParameters

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  audioChannelCount = [(HMDCameraRecordingAudioCodecParameters *)self audioChannelCount];
  [coderCopy encodeObject:audioChannelCount forKey:@"kAudioCodecParametersChannels"];

  bitRateModes = [(HMDCameraRecordingAudioCodecParameters *)self bitRateModes];
  [coderCopy encodeObject:bitRateModes forKey:@"kAudioCodecParametersBitRateModes"];

  audioSampleRates = [(HMDCameraRecordingAudioCodecParameters *)self audioSampleRates];
  [coderCopy encodeObject:audioSampleRates forKey:@"kAudioCodecParametersSampleRates"];

  maxAudioBitRate = [(HMDCameraRecordingAudioCodecParameters *)self maxAudioBitRate];
  [coderCopy encodeObject:maxAudioBitRate forKey:@"kAudioCodecParametersMaxAudioBitrate"];
}

- (HMDCameraRecordingAudioCodecParameters)initWithCoder:(id)coder
{
  v24[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = HMDCameraRecordingAudioCodecParameters;
  v5 = [(HMDCameraRecordingAudioCodecParameters *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAudioCodecParametersChannels"];
    audioChannelCount = v5->_audioChannelCount;
    v5->_audioChannelCount = v6;

    v8 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"kAudioCodecParametersBitRateModes"];
    bitRateModes = v5->_bitRateModes;
    v5->_bitRateModes = v11;

    v13 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"kAudioCodecParametersSampleRates"];
    audioSampleRates = v5->_audioSampleRates;
    v5->_audioSampleRates = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAudioCodecParametersMaxAudioBitrate"];
    maxAudioBitRate = v5->_maxAudioBitRate;
    v5->_maxAudioBitRate = v18;
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

  audioChannelCount = [(HMDCameraRecordingAudioCodecParameters *)self audioChannelCount];
  [descriptionCopy appendFormat:@"\n%@channels = %@ ", indentCopy, audioChannelCount];

  bitRateModes = [(HMDCameraRecordingAudioCodecParameters *)self bitRateModes];
  v11 = HAPTLVCreateParseArrayToString();
  [descriptionCopy appendFormat:@"\n%@bitRateModes = %@", indentCopy, v11];

  audioSampleRates = [(HMDCameraRecordingAudioCodecParameters *)self audioSampleRates];
  v13 = HAPTLVCreateParseArrayToString();
  [descriptionCopy appendFormat:@"\n%@audioSampleRates = %@", indentCopy, v13];

  maxAudioBitRate = [(HMDCameraRecordingAudioCodecParameters *)self maxAudioBitRate];
  [descriptionCopy appendFormat:@"\n%@maxAudioBitRate = %@", indentCopy, maxAudioBitRate];
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  audioChannelCount = [(HMDCameraRecordingAudioCodecParameters *)self audioChannelCount];
  [creator addTLV:1 length:1 number:audioChannelCount];

  v5 = MEMORY[0x277CCABB0];
  bitRateModes = [(HMDCameraRecordingAudioCodecParameters *)self bitRateModes];
  firstObject = [bitRateModes firstObject];
  v8 = [v5 numberWithInteger:{objc_msgSend(firstObject, "type")}];
  [creator addTLV:2 length:1 number:v8];

  v9 = MEMORY[0x277CCABB0];
  audioSampleRates = [(HMDCameraRecordingAudioCodecParameters *)self audioSampleRates];
  firstObject2 = [audioSampleRates firstObject];
  v12 = [v9 numberWithInteger:{objc_msgSend(firstObject2, "type")}];
  [creator addTLV:3 length:1 number:v12];

  maxAudioBitRate = [(HMDCameraRecordingAudioCodecParameters *)self maxAudioBitRate];
  [creator addTLV:4 length:4 number:maxAudioBitRate];

  serialize = [creator serialize];

  return serialize;
}

- (BOOL)_parseFromTLVData
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kAudioCodecParametersChannels"];
  v4 = [MEMORY[0x277CFEA58] wrappertlv:2 name:@"kAudioCodecParametersBitRateModes" objectCreator:&__block_literal_global_188727];
  v5 = [MEMORY[0x277CFEA58] wrappertlv:3 name:@"kAudioCodecParametersSampleRates" objectCreator:&__block_literal_global_118_188728];
  v6 = [MEMORY[0x277CFEC08] wrappertlv:4 name:@"kAudioCodecParametersMaxAudioBitrate"];
  v21[0] = v3;
  v21[1] = v4;
  v21[2] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v20 = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v9 = [(HAPTLVBase *)self _parseMandatory:v7 optional:v8];
  if (v9)
  {
    field = [v4 field];
    bitRateModes = self->_bitRateModes;
    self->_bitRateModes = field;

    field2 = [v5 field];
    audioSampleRates = self->_audioSampleRates;
    self->_audioSampleRates = field2;

    field3 = [v3 field];
    audioChannelCount = self->_audioChannelCount;
    self->_audioChannelCount = field3;
  }

  field4 = [v6 field];
  maxAudioBitRate = self->_maxAudioBitRate;
  self->_maxAudioBitRate = field4;

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

HMDCameraRecordingAudioSampleRate *__59__HMDCameraRecordingAudioCodecParameters__parseFromTLVData__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDCameraRecordingAudioSampleRate alloc] initWithTLVData:v2];

  return v3;
}

HMDCameraRecordingAudioBitRateMode *__59__HMDCameraRecordingAudioCodecParameters__parseFromTLVData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDCameraRecordingAudioBitRateMode alloc] initWithTLVData:v2];

  return v3;
}

- (HMDCameraRecordingAudioCodecParameters)initWithChannelCount:(id)count bitRateModes:(id)modes audioSampleRates:(id)rates maxAudioBitRate:(id)rate
{
  countCopy = count;
  modesCopy = modes;
  ratesCopy = rates;
  rateCopy = rate;
  v18.receiver = self;
  v18.super_class = HMDCameraRecordingAudioCodecParameters;
  v15 = [(HMDCameraRecordingAudioCodecParameters *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_audioChannelCount, count);
    objc_storeStrong(&v16->_bitRateModes, modes);
    objc_storeStrong(&v16->_audioSampleRates, rates);
    objc_storeStrong(&v16->_maxAudioBitRate, rate);
  }

  return v16;
}

@end