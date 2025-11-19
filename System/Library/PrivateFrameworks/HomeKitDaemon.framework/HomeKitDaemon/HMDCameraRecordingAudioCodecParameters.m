@interface HMDCameraRecordingAudioCodecParameters
- (BOOL)_parseFromTLVData;
- (HMDCameraRecordingAudioCodecParameters)initWithChannelCount:(id)a3 bitRateModes:(id)a4 audioSampleRates:(id)a5 maxAudioBitRate:(id)a6;
- (HMDCameraRecordingAudioCodecParameters)initWithCoder:(id)a3;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDCameraRecordingAudioCodecParameters

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraRecordingAudioCodecParameters *)self audioChannelCount];
  [v4 encodeObject:v5 forKey:@"kAudioCodecParametersChannels"];

  v6 = [(HMDCameraRecordingAudioCodecParameters *)self bitRateModes];
  [v4 encodeObject:v6 forKey:@"kAudioCodecParametersBitRateModes"];

  v7 = [(HMDCameraRecordingAudioCodecParameters *)self audioSampleRates];
  [v4 encodeObject:v7 forKey:@"kAudioCodecParametersSampleRates"];

  v8 = [(HMDCameraRecordingAudioCodecParameters *)self maxAudioBitRate];
  [v4 encodeObject:v8 forKey:@"kAudioCodecParametersMaxAudioBitrate"];
}

- (HMDCameraRecordingAudioCodecParameters)initWithCoder:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = HMDCameraRecordingAudioCodecParameters;
  v5 = [(HMDCameraRecordingAudioCodecParameters *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAudioCodecParametersChannels"];
    audioChannelCount = v5->_audioChannelCount;
    v5->_audioChannelCount = v6;

    v8 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"kAudioCodecParametersBitRateModes"];
    bitRateModes = v5->_bitRateModes;
    v5->_bitRateModes = v11;

    v13 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"kAudioCodecParametersSampleRates"];
    audioSampleRates = v5->_audioSampleRates;
    v5->_audioSampleRates = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAudioCodecParametersMaxAudioBitrate"];
    maxAudioBitRate = v5->_maxAudioBitRate;
    v5->_maxAudioBitRate = v18;
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

  v9 = [(HMDCameraRecordingAudioCodecParameters *)self audioChannelCount];
  [v7 appendFormat:@"\n%@channels = %@ ", v6, v9];

  v10 = [(HMDCameraRecordingAudioCodecParameters *)self bitRateModes];
  v11 = HAPTLVCreateParseArrayToString();
  [v7 appendFormat:@"\n%@bitRateModes = %@", v6, v11];

  v12 = [(HMDCameraRecordingAudioCodecParameters *)self audioSampleRates];
  v13 = HAPTLVCreateParseArrayToString();
  [v7 appendFormat:@"\n%@audioSampleRates = %@", v6, v13];

  v14 = [(HMDCameraRecordingAudioCodecParameters *)self maxAudioBitRate];
  [v7 appendFormat:@"\n%@maxAudioBitRate = %@", v6, v14];
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = [(HMDCameraRecordingAudioCodecParameters *)self audioChannelCount];
  [v3 addTLV:1 length:1 number:v4];

  v5 = MEMORY[0x277CCABB0];
  v6 = [(HMDCameraRecordingAudioCodecParameters *)self bitRateModes];
  v7 = [v6 firstObject];
  v8 = [v5 numberWithInteger:{objc_msgSend(v7, "type")}];
  [v3 addTLV:2 length:1 number:v8];

  v9 = MEMORY[0x277CCABB0];
  v10 = [(HMDCameraRecordingAudioCodecParameters *)self audioSampleRates];
  v11 = [v10 firstObject];
  v12 = [v9 numberWithInteger:{objc_msgSend(v11, "type")}];
  [v3 addTLV:3 length:1 number:v12];

  v13 = [(HMDCameraRecordingAudioCodecParameters *)self maxAudioBitRate];
  [v3 addTLV:4 length:4 number:v13];

  v14 = [v3 serialize];

  return v14;
}

- (BOOL)_parseFromTLVData
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kAudioCodecParametersChannels"];
  v4 = [MEMORY[0x277CFEA58] wrappertlv:2 name:@"kAudioCodecParametersBitRateModes" objectCreator:&__block_literal_global_275787];
  v5 = [MEMORY[0x277CFEA58] wrappertlv:3 name:@"kAudioCodecParametersSampleRates" objectCreator:&__block_literal_global_118_275788];
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
    v10 = [v4 field];
    bitRateModes = self->_bitRateModes;
    self->_bitRateModes = v10;

    v12 = [v5 field];
    audioSampleRates = self->_audioSampleRates;
    self->_audioSampleRates = v12;

    v14 = [v3 field];
    audioChannelCount = self->_audioChannelCount;
    self->_audioChannelCount = v14;
  }

  v16 = [v6 field];
  maxAudioBitRate = self->_maxAudioBitRate;
  self->_maxAudioBitRate = v16;

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

- (HMDCameraRecordingAudioCodecParameters)initWithChannelCount:(id)a3 bitRateModes:(id)a4 audioSampleRates:(id)a5 maxAudioBitRate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDCameraRecordingAudioCodecParameters;
  v15 = [(HMDCameraRecordingAudioCodecParameters *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_audioChannelCount, a3);
    objc_storeStrong(&v16->_bitRateModes, a4);
    objc_storeStrong(&v16->_audioSampleRates, a5);
    objc_storeStrong(&v16->_maxAudioBitRate, a6);
  }

  return v16;
}

@end