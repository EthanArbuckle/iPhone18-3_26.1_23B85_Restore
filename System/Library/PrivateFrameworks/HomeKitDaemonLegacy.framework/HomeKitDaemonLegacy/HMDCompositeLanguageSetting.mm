@interface HMDCompositeLanguageSetting
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualValue:(id)value;
- (HMDCompositeLanguageSetting)initWithInputLanguage:(id)language outputVoiceLanguageCode:(id)code outputVoiceGenderCode:(id)genderCode voiceName:(id)name readVersion:(id)version writeVersion:(id)writeVersion;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeLanguageSetting

- (id)attributeDescriptions
{
  v21[4] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = HMDCompositeLanguageSetting;
  attributeDescriptions = [(HMDCompositeSetting *)&v20 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  inputLanguageCode = [(HMDCompositeLanguageSetting *)self inputLanguageCode];
  v5 = [v4 initWithName:@"inputLanguageCode" value:inputLanguageCode];
  v21[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  outputVoiceGenderCode = [(HMDCompositeLanguageSetting *)self outputVoiceGenderCode];
  v8 = [v6 initWithName:@"outputVoiceGenderCode" value:outputVoiceGenderCode];
  v21[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  outputVoiceLanguageCode = [(HMDCompositeLanguageSetting *)self outputVoiceLanguageCode];
  v11 = [v9 initWithName:@"outputVoiceLanguageCode" value:outputVoiceLanguageCode];
  v21[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  voiceName = [(HMDCompositeLanguageSetting *)self voiceName];
  v14 = [v12 initWithName:@"voiceName" value:voiceName];
  v21[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  v16 = [attributeDescriptions arrayByAddingObjectsFromArray:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = v6;
    if (v6 && [(HMDCompositeLanguageSetting *)v6 isEqualValue:self])
    {
      v10.receiver = self;
      v10.super_class = HMDCompositeLanguageSetting;
      v8 = [(HMDCompositeSetting *)&v10 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)isEqualValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  if (valueCopy == self)
  {
    v19 = 1;
  }

  else
  {
    if ([(HMDCompositeLanguageSetting *)valueCopy conformsToProtocol:&unk_28667C8D8])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = v7;
    if (v7)
    {
      inputLanguageCode = [(HMDCompositeLanguageSetting *)v7 inputLanguageCode];
      inputLanguageCode2 = [(HMDCompositeLanguageSetting *)self inputLanguageCode];
      if ([inputLanguageCode isEqualToString:inputLanguageCode2])
      {
        outputVoiceGenderCode = [(HMDCompositeLanguageSetting *)v8 outputVoiceGenderCode];
        outputVoiceGenderCode2 = [(HMDCompositeLanguageSetting *)self outputVoiceGenderCode];
        if ([outputVoiceGenderCode isEqualToString:outputVoiceGenderCode2])
        {
          outputVoiceLanguageCode = [(HMDCompositeLanguageSetting *)v8 outputVoiceLanguageCode];
          outputVoiceLanguageCode2 = [(HMDCompositeLanguageSetting *)self outputVoiceLanguageCode];
          if ([outputVoiceLanguageCode isEqualToString:outputVoiceLanguageCode2])
          {
            voiceName = [(HMDCompositeLanguageSetting *)v8 voiceName];
            voiceName2 = [(HMDCompositeLanguageSetting *)self voiceName];
            if (voiceName == voiceName2)
            {
              v19 = 1;
            }

            else
            {
              v22 = voiceName2;
              [(HMDCompositeLanguageSetting *)v8 voiceName];
              v17 = v21 = outputVoiceLanguageCode;
              [(HMDCompositeLanguageSetting *)self voiceName];
              v18 = v23 = voiceName;
              v19 = [v17 isEqualToString:v18];

              voiceName = v23;
              outputVoiceLanguageCode = v21;
              voiceName2 = v22;
            }
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (HMDCompositeLanguageSetting)initWithInputLanguage:(id)language outputVoiceLanguageCode:(id)code outputVoiceGenderCode:(id)genderCode voiceName:(id)name readVersion:(id)version writeVersion:(id)writeVersion
{
  languageCopy = language;
  codeCopy = code;
  genderCodeCopy = genderCode;
  nameCopy = name;
  v22.receiver = self;
  v22.super_class = HMDCompositeLanguageSetting;
  v18 = [(HMDCompositeSetting *)&v22 initWithReadVersion:version writeVersion:writeVersion];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_outputVoiceGenderCode, genderCode);
    objc_storeStrong(&v19->_inputLanguageCode, language);
    objc_storeStrong(&v19->_outputVoiceLanguageCode, code);
    objc_storeStrong(&v19->_voiceName, name);
  }

  return v19;
}

@end