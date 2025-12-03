@interface HMDCompositeSettingLanguageValue
- (HMDCompositeSettingLanguageValue)initWithInputLanguage:(id)language outputVoiceLanguageCode:(id)code outputVoiceGenderCode:(id)genderCode voiceName:(id)name;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeSettingLanguageValue

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  inputLanguageCode = [(HMDCompositeSettingLanguageValue *)self inputLanguageCode];
  v5 = [v3 initWithName:@"inputLanguageCode" value:inputLanguageCode];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  outputVoiceGenderCode = [(HMDCompositeSettingLanguageValue *)self outputVoiceGenderCode];
  v8 = [v6 initWithName:@"outputVoiceGenderCode" value:outputVoiceGenderCode];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  outputVoiceLanguageCode = [(HMDCompositeSettingLanguageValue *)self outputVoiceLanguageCode];
  v11 = [v9 initWithName:@"outputVoiceLanguageCode" value:outputVoiceLanguageCode];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  voiceName = [(HMDCompositeSettingLanguageValue *)self voiceName];
  v14 = [v12 initWithName:@"voiceName" value:voiceName];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (HMDCompositeSettingLanguageValue)initWithInputLanguage:(id)language outputVoiceLanguageCode:(id)code outputVoiceGenderCode:(id)genderCode voiceName:(id)name
{
  languageCopy = language;
  codeCopy = code;
  genderCodeCopy = genderCode;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = HMDCompositeSettingLanguageValue;
  v15 = [(HMDCompositeSettingValue *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_inputLanguageCode, language);
    objc_storeStrong(&v16->_outputVoiceLanguageCode, code);
    objc_storeStrong(&v16->_outputVoiceGenderCode, genderCode);
    objc_storeStrong(&v16->_voiceName, name);
  }

  return v16;
}

@end