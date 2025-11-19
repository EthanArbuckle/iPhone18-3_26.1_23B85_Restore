@interface HMDFetchedSettingsUtilities
+ (id)_outputGenderStringFromAFVoiceGender:(int64_t)a3;
+ (id)languageValueFromHPLanguageValue:(id)a3;
+ (id)transformHPLanguageItemsToLanguageListValue:(id)a3;
+ (int64_t)_outputGenderFromString:(id)a3;
@end

@implementation HMDFetchedSettingsUtilities

+ (id)transformHPLanguageItemsToLanguageListValue:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 na_map:&__block_literal_global_195291];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Empty language item list", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = MEMORY[0x277CBEBF8];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)languageValueFromHPLanguageValue:(id)a3
{
  v3 = MEMORY[0x277CD1A20];
  v4 = MEMORY[0x277CD1DC0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 recognitionLanguage];
  v8 = [v5 outputLanguage];
  v9 = +[HMDFetchedSettingsUtilities _outputGenderStringFromAFVoiceGender:](HMDFetchedSettingsUtilities, "_outputGenderStringFromAFVoiceGender:", [v5 gender]);
  v10 = [v5 voiceName];

  v11 = [v6 initWithInputLanguageCode:v7 outputVoiceLanguageCode:v8 outputVoiceGenderCode:v9 voiceName:v10];
  v12 = [v3 cachedInstanceForLanguageSettingValue:v11];

  return v12;
}

+ (id)_outputGenderStringFromAFVoiceGender:(int64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if ((a3 - 1) >= 3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = a1;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Unknown Voice Gender Value", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    result = @"?";
  }

  else
  {
    result = off_279735D70[a3 - 1];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

+ (int64_t)_outputGenderFromString:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"m"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"f"])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"n"])
  {
    v5 = 3;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = a1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unknown gender option %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

@end