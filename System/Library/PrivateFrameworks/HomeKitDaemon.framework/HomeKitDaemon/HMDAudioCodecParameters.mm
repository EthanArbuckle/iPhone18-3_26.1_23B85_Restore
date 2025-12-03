@interface HMDAudioCodecParameters
- (BOOL)_parseFromTLVData;
- (HMDAudioCodecParameters)initWithChannelCount:(id)count bitRateSetting:(id)setting audioSampleRate:(id)rate rtpPtime:(id)ptime;
- (HMDAudioCodecParameters)initWithCoder:(id)coder;
- (NSData)tlvData;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDAudioCodecParameters

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  audioChannelCount = [(HMDAudioCodecParameters *)self audioChannelCount];
  [coderCopy encodeObject:audioChannelCount forKey:@"kAudioCodecParameters__AudioChannels"];

  bitRateSettings = [(HMDAudioCodecParameters *)self bitRateSettings];
  [coderCopy encodeObject:bitRateSettings forKey:@"kAudioCodecParameters__Bitrate"];

  audioSampleRates = [(HMDAudioCodecParameters *)self audioSampleRates];
  [coderCopy encodeObject:audioSampleRates forKey:@"kAudioCodecParameters__SampleRate"];

  rtpPtime = [(HMDAudioCodecParameters *)self rtpPtime];
  [coderCopy encodeObject:rtpPtime forKey:@"kAudioCodecParameters__RTPPtime"];
}

- (HMDAudioCodecParameters)initWithCoder:(id)coder
{
  v32[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = HMDAudioCodecParameters;
  v5 = [(HMDAudioCodecParameters *)&v28 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v32[0] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kAudioCodecParameters__AudioChannels"];
    audioChannelCount = v5->_audioChannelCount;
    v5->_audioChannelCount = v9;

    v11 = MEMORY[0x277CBEB98];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"kAudioCodecParameters__Bitrate"];
    bitRateSettings = v5->_bitRateSettings;
    v5->_bitRateSettings = v14;

    v16 = MEMORY[0x277CBEB98];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"kAudioCodecParameters__SampleRate"];
    audioSampleRates = v5->_audioSampleRates;
    v5->_audioSampleRates = v19;

    v21 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    v23 = [v21 setWithArray:v22];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"kAudioCodecParameters__RTPPtime"];
    rtpPtime = v5->_rtpPtime;
    v5->_rtpPtime = v24;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)description:(id)description indent:(id)indent
{
  indentCopy = indent;
  descriptionCopy = description;
  tlvDatablob = [(HAPTLVBase *)self tlvDatablob];
  [descriptionCopy appendFormat:@"\n %@ tlvDatablob = %@ ", indentCopy, tlvDatablob];

  audioChannelCount = [(HMDAudioCodecParameters *)self audioChannelCount];
  [descriptionCopy appendFormat:@"\n %@ audioChannelCount = %@ ", indentCopy, audioChannelCount];

  bitRateSettings = [(HMDAudioCodecParameters *)self bitRateSettings];
  v11 = arrayToString(bitRateSettings, indentCopy);
  [descriptionCopy appendFormat:@"\n %@ bitRateSetting = %@ ", indentCopy, v11];

  audioSampleRates = [(HMDAudioCodecParameters *)self audioSampleRates];
  v13 = arrayToString(audioSampleRates, indentCopy);
  [descriptionCopy appendFormat:@"\n %@ audioSampleRates = %@ ", indentCopy, v13];

  rtpPtime = [(HMDAudioCodecParameters *)self rtpPtime];
  [descriptionCopy appendFormat:@"\n %@ rtpPtime = %@ ", indentCopy, rtpPtime];
}

- (NSData)tlvData
{
  creator = [MEMORY[0x277CFEC80] creator];
  audioChannelCount = [(HMDAudioCodecParameters *)self audioChannelCount];
  [creator addTLV:1 number:audioChannelCount];

  v5 = MEMORY[0x277CCABB0];
  bitRateSettings = [(HMDAudioCodecParameters *)self bitRateSettings];
  v7 = [bitRateSettings objectAtIndex:0];
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v7, "bitrateSetting")}];
  [creator addTLV:2 number:v8];

  v9 = MEMORY[0x277CCABB0];
  audioSampleRates = [(HMDAudioCodecParameters *)self audioSampleRates];
  v11 = [audioSampleRates objectAtIndex:0];
  v12 = [v9 numberWithUnsignedInteger:{objc_msgSend(v11, "sampleRate")}];
  [creator addTLV:3 number:v12];

  rtpPtime = [(HMDAudioCodecParameters *)self rtpPtime];
  [creator addTLV:4 number:rtpPtime];

  serialize = [creator serialize];

  return serialize;
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
    field = [v3 field];
    audioChannelCount = self->_audioChannelCount;
    self->_audioChannelCount = field;

    field2 = [v4 field];
    bitRateSettings = self->_bitRateSettings;
    self->_bitRateSettings = field2;

    field3 = [v5 field];
    audioSampleRates = self->_audioSampleRates;
    self->_audioSampleRates = field3;

    field4 = [v6 field];
    rtpPtime = self->_rtpPtime;
    self->_rtpPtime = field4;
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

- (HMDAudioCodecParameters)initWithChannelCount:(id)count bitRateSetting:(id)setting audioSampleRate:(id)rate rtpPtime:(id)ptime
{
  countCopy = count;
  settingCopy = setting;
  rateCopy = rate;
  ptimeCopy = ptime;
  v18.receiver = self;
  v18.super_class = HMDAudioCodecParameters;
  v15 = [(HMDAudioCodecParameters *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_audioChannelCount, count);
    objc_storeStrong(&v16->_bitRateSettings, setting);
    objc_storeStrong(&v16->_audioSampleRates, rate);
    objc_storeStrong(&v16->_rtpPtime, ptime);
  }

  return v16;
}

@end