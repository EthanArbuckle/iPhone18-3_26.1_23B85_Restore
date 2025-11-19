@interface HMDCompositeSettingLanguageValue
- (HMDCompositeSettingLanguageValue)initWithInputLanguage:(id)a3 outputVoiceLanguageCode:(id)a4 outputVoiceGenderCode:(id)a5 voiceName:(id)a6;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeSettingLanguageValue

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCompositeSettingLanguageValue *)self inputLanguageCode];
  v5 = [v3 initWithName:@"inputLanguageCode" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDCompositeSettingLanguageValue *)self outputVoiceGenderCode];
  v8 = [v6 initWithName:@"outputVoiceGenderCode" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDCompositeSettingLanguageValue *)self outputVoiceLanguageCode];
  v11 = [v9 initWithName:@"outputVoiceLanguageCode" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMDCompositeSettingLanguageValue *)self voiceName];
  v14 = [v12 initWithName:@"voiceName" value:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (HMDCompositeSettingLanguageValue)initWithInputLanguage:(id)a3 outputVoiceLanguageCode:(id)a4 outputVoiceGenderCode:(id)a5 voiceName:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDCompositeSettingLanguageValue;
  v15 = [(HMDCompositeSettingValue *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_inputLanguageCode, a3);
    objc_storeStrong(&v16->_outputVoiceLanguageCode, a4);
    objc_storeStrong(&v16->_outputVoiceGenderCode, a5);
    objc_storeStrong(&v16->_voiceName, a6);
  }

  return v16;
}

@end