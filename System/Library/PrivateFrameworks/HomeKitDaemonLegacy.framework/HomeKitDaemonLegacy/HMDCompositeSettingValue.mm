@interface HMDCompositeSettingValue
+ (id)compositeSettingValueFromImmutableSettingsValue:(id)value;
- (BOOL)isEqualValue:(id)value;
- (HMDCompositeSettingValue)init;
@end

@implementation HMDCompositeSettingValue

- (BOOL)isEqualValue:(id)value
{
  valueCopy = value;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (HMDCompositeSettingValue)init
{
  v3.receiver = self;
  v3.super_class = HMDCompositeSettingValue;
  return [(HMDCompositeSettingValue *)&v3 init];
}

+ (id)compositeSettingValueFromImmutableSettingsValue:(id)value
{
  v40 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = valueCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = -[HMDCompositeSettingBoolValue initWithValue:]([HMDCompositeSettingBoolValue alloc], "initWithValue:", [v6 BOOLValue]);
    goto LABEL_30;
  }

  v8 = valueCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    v13 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      v16 = [HMDCompositeSettingStringValue alloc];
      stringValue = [v15 stringValue];
      v7 = [(HMDCompositeSettingStringValue *)v16 initWithValue:stringValue];

LABEL_28:
      goto LABEL_29;
    }

    v18 = v13;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (v20)
    {
      v21 = [HMDCompositeSettingLanguageValue alloc];
      inputLanguageCode = [v20 inputLanguageCode];
      outputVoiceLanguageCode = [v20 outputVoiceLanguageCode];
      outputVoiceGenderCode = [v20 outputVoiceGenderCode];
      voiceName = [v20 voiceName];
      v7 = [(HMDCompositeSettingLanguageValue *)v21 initWithInputLanguage:inputLanguageCode outputVoiceLanguageCode:outputVoiceLanguageCode outputVoiceGenderCode:outputVoiceGenderCode voiceName:voiceName];
    }

    else
    {
      v26 = v18;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      inputLanguageCode = v27;

      if (!inputLanguageCode)
      {
        v31 = objc_autoreleasePoolPush();
        selfCopy = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v34 = v35 = v31;
          *buf = 138543618;
          v37 = v34;
          v38 = 2112;
          v39 = v26;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to get a composite setting value from immutable settings value: %@", buf, 0x16u);

          v31 = v35;
        }

        objc_autoreleasePoolPop(v31);
        v7 = 0;
        goto LABEL_27;
      }

      v28 = [HMDCompositeSettingVersionValue alloc];
      outputVoiceLanguageCode = [inputLanguageCode version];
      v7 = -[HMDCompositeSettingVersionValue initWithVersion:type:](v28, "initWithVersion:type:", outputVoiceLanguageCode, [inputLanguageCode type]);
    }

LABEL_27:
    goto LABEL_28;
  }

  v11 = [HMDCompositeSettingNumberValue alloc];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "integerValue")}];
  v7 = [(HMDCompositeSettingNumberValue *)v11 initWithValue:v12];

LABEL_29:
LABEL_30:

  v29 = *MEMORY[0x277D85DE8];

  return v7;
}

@end