@interface HMDAudioCodecParameters
- (BOOL)_parseFromTLVData;
- (HMDAudioCodecParameters)initWithChannelCount:(id)a3 bitRateSetting:(id)a4 audioSampleRate:(id)a5 rtpPtime:(id)a6;
- (HMDAudioCodecParameters)initWithCoder:(id)a3;
- (NSData)tlvData;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDAudioCodecParameters

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDAudioCodecParameters *)self audioChannelCount];
  [v4 encodeObject:v5 forKey:@"kAudioCodecParameters__AudioChannels"];

  v6 = [(HMDAudioCodecParameters *)self bitRateSettings];
  [v4 encodeObject:v6 forKey:@"kAudioCodecParameters__Bitrate"];

  v7 = [(HMDAudioCodecParameters *)self audioSampleRates];
  [v4 encodeObject:v7 forKey:@"kAudioCodecParameters__SampleRate"];

  v8 = [(HMDAudioCodecParameters *)self rtpPtime];
  [v4 encodeObject:v8 forKey:@"kAudioCodecParameters__RTPPtime"];
}

- (HMDAudioCodecParameters)initWithCoder:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = HMDAudioCodecParameters;
  v5 = [(HMDAudioCodecParameters *)&v28 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v32[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kAudioCodecParameters__AudioChannels"];
    audioChannelCount = v5->_audioChannelCount;
    v5->_audioChannelCount = v9;

    v11 = MEMORY[0x277CBEB98];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kAudioCodecParameters__Bitrate"];
    bitRateSettings = v5->_bitRateSettings;
    v5->_bitRateSettings = v14;

    v16 = MEMORY[0x277CBEB98];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"kAudioCodecParameters__SampleRate"];
    audioSampleRates = v5->_audioSampleRates;
    v5->_audioSampleRates = v19;

    v21 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    v23 = [v21 setWithArray:v22];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"kAudioCodecParameters__RTPPtime"];
    rtpPtime = v5->_rtpPtime;
    v5->_rtpPtime = v24;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)a3 indent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HAPTLVBase *)self tlvDatablob];
  [v7 appendFormat:@"\n %@ tlvDatablob = %@ ", v6, v8];

  v9 = [(HMDAudioCodecParameters *)self audioChannelCount];
  [v7 appendFormat:@"\n %@ audioChannelCount = %@ ", v6, v9];

  v10 = [(HMDAudioCodecParameters *)self bitRateSettings];
  v11 = arrayToString(v10, v6);
  [v7 appendFormat:@"\n %@ bitRateSetting = %@ ", v6, v11];

  v12 = [(HMDAudioCodecParameters *)self audioSampleRates];
  v13 = arrayToString(v12, v6);
  [v7 appendFormat:@"\n %@ audioSampleRates = %@ ", v6, v13];

  v14 = [(HMDAudioCodecParameters *)self rtpPtime];
  [v7 appendFormat:@"\n %@ rtpPtime = %@ ", v6, v14];
}

- (NSData)tlvData
{
  v3 = [MEMORY[0x277CFEC80] creator];
  v4 = [(HMDAudioCodecParameters *)self audioChannelCount];
  [v3 addTLV:1 number:v4];

  v5 = MEMORY[0x277CCABB0];
  v6 = [(HMDAudioCodecParameters *)self bitRateSettings];
  v7 = [v6 objectAtIndex:0];
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v7, "bitrateSetting")}];
  [v3 addTLV:2 number:v8];

  v9 = MEMORY[0x277CCABB0];
  v10 = [(HMDAudioCodecParameters *)self audioSampleRates];
  v11 = [v10 objectAtIndex:0];
  v12 = [v9 numberWithUnsignedInteger:{objc_msgSend(v11, "sampleRate")}];
  [v3 addTLV:3 number:v12];

  v13 = [(HMDAudioCodecParameters *)self rtpPtime];
  [v3 addTLV:4 number:v13];

  v14 = [v3 serialize];

  return v14;
}

- (BOOL)_parseFromTLVData
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFEC08] wrappertlv:1 name:@"kAudioCodecParameters__AudioChannels"];
  v4 = [MEMORY[0x277CFEA58] wrappertlv:2 name:@"kAudioCodecParameters__Bitrate" objectCreator:&__block_literal_global_399];
  v5 = [MEMORY[0x277CFEA58] wrappertlv:3 name:@"kAudioCodecParameters__SampleRate" objectCreator:&__block_literal_global_402];
  v6 = [MEMORY[0x277CFEC08] wrappertlv:4 name:@"kAudioCodecParameters__RTPPtime"];
  v21[0] = v3;
  v21[1] = v4;
  v21[2] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
  v20 = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v9 = [(HAPTLVBase *)self _parseMandatory:v7 optional:v8];
  if (v9)
  {
    v10 = [v3 field];
    audioChannelCount = self->_audioChannelCount;
    self->_audioChannelCount = v10;

    v12 = [v4 field];
    bitRateSettings = self->_bitRateSettings;
    self->_bitRateSettings = v12;

    v14 = [v5 field];
    audioSampleRates = self->_audioSampleRates;
    self->_audioSampleRates = v14;

    v16 = [v6 field];
    rtpPtime = self->_rtpPtime;
    self->_rtpPtime = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

HMDAudioSampleRate *__44__HMDAudioCodecParameters__parseFromTLVData__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDAudioSampleRate alloc] initWithTLVData:v2];

  return v3;
}

HMDBitRateSetting *__44__HMDAudioCodecParameters__parseFromTLVData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDBitRateSetting alloc] initWithTLVData:v2];

  return v3;
}

- (HMDAudioCodecParameters)initWithChannelCount:(id)a3 bitRateSetting:(id)a4 audioSampleRate:(id)a5 rtpPtime:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDAudioCodecParameters;
  v15 = [(HMDAudioCodecParameters *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_audioChannelCount, a3);
    objc_storeStrong(&v16->_bitRateSettings, a4);
    objc_storeStrong(&v16->_audioSampleRates, a5);
    objc_storeStrong(&v16->_rtpPtime, a6);
  }

  return v16;
}

@end