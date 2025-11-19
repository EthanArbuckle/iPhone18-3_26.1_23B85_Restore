@interface HMDCompositeLanguageSetting
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualValue:(id)a3;
- (HMDCompositeLanguageSetting)initWithInputLanguage:(id)a3 outputVoiceLanguageCode:(id)a4 outputVoiceGenderCode:(id)a5 voiceName:(id)a6 readVersion:(id)a7 writeVersion:(id)a8;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeLanguageSetting

- (id)attributeDescriptions
{
  v21[4] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = HMDCompositeLanguageSetting;
  v3 = [(HMDCompositeSetting *)&v20 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v19 = [(HMDCompositeLanguageSetting *)self inputLanguageCode];
  v5 = [v4 initWithName:@"inputLanguageCode" value:v19];
  v21[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDCompositeLanguageSetting *)self outputVoiceGenderCode];
  v8 = [v6 initWithName:@"outputVoiceGenderCode" value:v7];
  v21[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDCompositeLanguageSetting *)self outputVoiceLanguageCode];
  v11 = [v9 initWithName:@"outputVoiceLanguageCode" value:v10];
  v21[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMDCompositeLanguageSetting *)self voiceName];
  v14 = [v12 initWithName:@"voiceName" value:v13];
  v21[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  v16 = [v3 arrayByAddingObjectsFromArray:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (BOOL)isEqualValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v19 = 1;
  }

  else
  {
    if ([(HMDCompositeLanguageSetting *)v4 conformsToProtocol:&unk_283EDAE88])
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
      v9 = [(HMDCompositeLanguageSetting *)v7 inputLanguageCode];
      v10 = [(HMDCompositeLanguageSetting *)self inputLanguageCode];
      if ([v9 isEqualToString:v10])
      {
        v11 = [(HMDCompositeLanguageSetting *)v8 outputVoiceGenderCode];
        v12 = [(HMDCompositeLanguageSetting *)self outputVoiceGenderCode];
        if ([v11 isEqualToString:v12])
        {
          v13 = [(HMDCompositeLanguageSetting *)v8 outputVoiceLanguageCode];
          v14 = [(HMDCompositeLanguageSetting *)self outputVoiceLanguageCode];
          if ([v13 isEqualToString:v14])
          {
            v15 = [(HMDCompositeLanguageSetting *)v8 voiceName];
            v16 = [(HMDCompositeLanguageSetting *)self voiceName];
            if (v15 == v16)
            {
              v19 = 1;
            }

            else
            {
              v22 = v16;
              [(HMDCompositeLanguageSetting *)v8 voiceName];
              v17 = v21 = v13;
              [(HMDCompositeLanguageSetting *)self voiceName];
              v18 = v23 = v15;
              v19 = [v17 isEqualToString:v18];

              v15 = v23;
              v13 = v21;
              v16 = v22;
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

- (HMDCompositeLanguageSetting)initWithInputLanguage:(id)a3 outputVoiceLanguageCode:(id)a4 outputVoiceGenderCode:(id)a5 voiceName:(id)a6 readVersion:(id)a7 writeVersion:(id)a8
{
  v21 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v22.receiver = self;
  v22.super_class = HMDCompositeLanguageSetting;
  v18 = [(HMDCompositeSetting *)&v22 initWithReadVersion:a7 writeVersion:a8];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_outputVoiceGenderCode, a5);
    objc_storeStrong(&v19->_inputLanguageCode, a3);
    objc_storeStrong(&v19->_outputVoiceLanguageCode, a4);
    objc_storeStrong(&v19->_voiceName, a6);
  }

  return v19;
}

@end