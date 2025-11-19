@interface HFSiriLanguageOption
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)a3;
- (HFSiriLanguageOption)init;
- (HFSiriLanguageOption)initWithHomeKitSettingLanguageValue:(id)a3;
- (HFSiriLanguageOption)initWithRecognitionLanguage:(id)a3 outputLanguage:(id)a4 outputGender:(int64_t)a5 voiceName:(id)a6 defaultVoiceForRecognitionLanguage:(BOOL)a7;
- (HFSiriLanguageOption)initWithSerializedRepresentation:(id)a3;
- (NSString)description;
- (NSString)localizedOutputVoice;
- (NSString)localizedOutputVoiceAccent;
- (NSString)localizedOutputVoiceColor;
- (NSString)localizedRecognitionLanguage;
- (NSString)voiceNameWithDefaultFallback;
- (id)allSerializedRepresentations;
- (id)outputVoice;
- (id)serializedRepresentation;
- (unint64_t)hash;
@end

@implementation HFSiriLanguageOption

- (HFSiriLanguageOption)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithRecognitionLanguage_outputLanguage_outputGender_voiceName_defaultVoiceForRecognitionLanguage_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFSiriLanguageOption.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HFSiriLanguageOption init]", v5}];

  return 0;
}

- (HFSiriLanguageOption)initWithRecognitionLanguage:(id)a3 outputLanguage:(id)a4 outputGender:(int64_t)a5 voiceName:(id)a6 defaultVoiceForRecognitionLanguage:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_11:
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"HFSiriLanguageOption.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"outputLanguage"}];

    if (!v15)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v25 = [MEMORY[0x277CCA890] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"HFSiriLanguageOption.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"recognitionLanguage"}];

  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_4:
  v16 = [MEMORY[0x277CEF2D8] sharedInstance];
  v17 = [v16 voiceNamesForOutputLanguageCode:v14 gender:a5];
  v18 = [v17 firstObject];

  if ([v18 isEqualToString:v15])
  {

    v15 = 0;
  }

LABEL_7:
  v27.receiver = self;
  v27.super_class = HFSiriLanguageOption;
  v19 = [(HFSiriLanguageOption *)&v27 init];
  if (v19)
  {
    v20 = [v13 copy];
    recognitionLanguage = v19->_recognitionLanguage;
    v19->_recognitionLanguage = v20;

    v22 = [v14 copy];
    outputLanguage = v19->_outputLanguage;
    v19->_outputLanguage = v22;

    v19->_outputGender = a5;
    v19->_defaultVoiceForRecognitionLanguage = a7;
    objc_storeStrong(&v19->_serializableVoiceName, v15);
  }

  return v19;
}

- (HFSiriLanguageOption)initWithHomeKitSettingLanguageValue:(id)a3
{
  v5 = a3;
  v6 = [HFUtilities voiceInfoFromSettingLanguageValue:v5];
  v7 = [v5 inputLanguageCode];
  v8 = [v5 outputVoiceLanguageCode];
  v9 = [v6 gender];
  v10 = [v6 name];
  v11 = [(HFSiriLanguageOption *)self initWithRecognitionLanguage:v7 outputLanguage:v8 outputGender:v9 voiceName:v10 defaultVoiceForRecognitionLanguage:1];

  if (v11)
  {
    objc_storeStrong(&v11->_settingLanguageValue, a3);
  }

  return v11;
}

- (HFSiriLanguageOption)initWithSerializedRepresentation:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 componentsSeparatedByString:{@", "}];
  if ([v5 count] > 3)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v8 = [v5 objectAtIndexedSubscript:1];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __57__HFSiriLanguageOption_initWithSerializedRepresentation___block_invoke;
    v16[3] = &unk_277DFA520;
    v9 = v5;
    v17 = v9;
    v10 = __57__HFSiriLanguageOption_initWithSerializedRepresentation___block_invoke(v16);
    v11 = [v9 objectAtIndexedSubscript:3];
    v12 = [v11 isEqualToString:@"d"];

    v13 = 0;
    if ([v9 count] >= 5)
    {
      v13 = [v9 objectAtIndexedSubscript:4];
    }

    self = [(HFSiriLanguageOption *)self initWithRecognitionLanguage:v6 outputLanguage:v8 outputGender:v10 voiceName:v13 defaultVoiceForRecognitionLanguage:v12];

    v7 = self;
  }

  else
  {
    v6 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v4;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Unexpected Siri language format %@", buf, 0xCu);
    }

    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __57__HFSiriLanguageOption_initWithSerializedRepresentation___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) objectAtIndexedSubscript:2];
  if ([v1 isEqualToString:@"m"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"f"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"n"])
  {
    v2 = 3;
  }

  else
  {
    if (([v1 isEqualToString:@"?"] & 1) == 0)
    {
      NSLog(&cfstr_UnknownGenderO.isa, v1);
    }

    v2 = 0;
  }

  return v2;
}

- (id)serializedRepresentation
{
  v16[4] = *MEMORY[0x277D85DE8];
  v3 = [(HFSiriLanguageOption *)self outputGender:MEMORY[0x277D85DD0]]- 1;
  if (v3 > 2)
  {
    v4 = @"?";
  }

  else
  {
    v4 = off_277E02508[v3];
  }

  v5 = [(HFSiriLanguageOption *)self isDefaultVoiceForRecognitionLanguage];
  v6 = @"n";
  if (v5)
  {
    v6 = @"d";
  }

  v7 = v6;
  v8 = MEMORY[0x277CBEB18];
  v9 = [(HFSiriLanguageOption *)self recognitionLanguage];
  v16[0] = v9;
  v10 = [(HFSiriLanguageOption *)self outputLanguage];
  v16[1] = v10;
  v16[2] = v4;
  v16[3] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
  v12 = [v8 arrayWithArray:v11];

  if (self->_serializableVoiceName)
  {
    [v12 addObject:?];
  }

  v13 = [v12 componentsJoinedByString:{@", "}];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

__CFString *__48__HFSiriLanguageOption_serializedRepresentation__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) outputGender];
  if ((v1 - 1) > 2)
  {
    return @"?";
  }

  else
  {
    return off_277E02508[v1 - 1];
  }
}

- (id)allSerializedRepresentations
{
  v31[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(HFSiriLanguageOption *)self outputGender]- 1;
  if (v4 > 2)
  {
    v5 = @"?";
  }

  else
  {
    v5 = off_277E02508[v4];
  }

  if ([(HFSiriLanguageOption *)self isDefaultVoiceForRecognitionLanguage])
  {
    v6 = @"d";
  }

  else
  {
    v6 = @"n";
  }

  v7 = v6;
  if ([(HFSiriLanguageOption *)self isDefaultVoiceForRecognitionLanguage])
  {
    v8 = @"n";
  }

  else
  {
    v8 = @"d";
  }

  v9 = v8;
  v10 = MEMORY[0x277CBEB18];
  v11 = [(HFSiriLanguageOption *)self recognitionLanguage];
  v31[0] = v11;
  v12 = [(HFSiriLanguageOption *)self outputLanguage];
  v31[1] = v12;
  v31[2] = v5;
  v31[3] = v7;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  v14 = [v10 arrayWithArray:v13];

  v15 = MEMORY[0x277CBEB18];
  v16 = [(HFSiriLanguageOption *)self recognitionLanguage];
  v30[0] = v16;
  v17 = [(HFSiriLanguageOption *)self outputLanguage];
  v30[1] = v17;
  v30[2] = v5;
  v30[3] = v9;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  v19 = [v15 arrayWithArray:v18];

  if (self->_serializableVoiceName)
  {
    [v14 addObject:?];
    [v19 addObject:self->_serializableVoiceName];
  }

  else
  {
    v20 = [v14 componentsJoinedByString:{@", "}];
    [v3 addObject:v20];

    v21 = [v19 componentsJoinedByString:{@", "}];
    [v3 addObject:v21];

    v22 = [(HFSiriLanguageOption *)self voiceName];

    if (!v22)
    {
      goto LABEL_15;
    }

    v23 = [(HFSiriLanguageOption *)self voiceName];
    [v14 addObject:v23];

    v24 = [(HFSiriLanguageOption *)self voiceName];
    [v19 addObject:v24];
  }

  v25 = [v14 componentsJoinedByString:{@", "}];
  [v3 addObject:v25];

  v26 = [v19 componentsJoinedByString:{@", "}];
  [v3 addObject:v26];

LABEL_15:
  v27 = [v3 copy];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

__CFString *__52__HFSiriLanguageOption_allSerializedRepresentations__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) outputGender];
  if ((v1 - 1) > 2)
  {
    return @"?";
  }

  else
  {
    return off_277E02508[v1 - 1];
  }
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_326 != -1)
  {
    dispatch_once(&_MergedGlobals_326, &__block_literal_global_51_5);
  }

  v3 = qword_280E03DA8;

  return v3;
}

void __35__HFSiriLanguageOption_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_58_4];
  v2 = [v0 appendCharacteristic:&__block_literal_global_60_2];
  v3 = [v0 appendCharacteristic:&__block_literal_global_62_0];
  v4 = [v0 appendCharacteristic:&__block_literal_global_65_4];
  v5 = [v0 appendCharacteristic:&__block_literal_global_67_4];
  v6 = [v0 build];

  v7 = qword_280E03DA8;
  qword_280E03DA8 = v6;
}

uint64_t __35__HFSiriLanguageOption_na_identity__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 outputGender];

  return [v2 numberWithInteger:v3];
}

uint64_t __35__HFSiriLanguageOption_na_identity__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 isDefaultVoiceForRecognitionLanguage];

  return [v2 numberWithBool:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFSiriLanguageOption *)self recognitionLanguage];
  [v3 appendString:v4 withName:@"recognitionLanguage"];

  v5 = [(HFSiriLanguageOption *)self outputLanguage];
  [v3 appendString:v5 withName:@"outputLanguage"];

  v6 = [(HFSiriLanguageOption *)self outputGender]- 1;
  if (v6 > 2)
  {
    v7 = @"Any";
  }

  else
  {
    v7 = off_277E02520[v6];
  }

  [v3 appendString:v7 withName:@"outputGender"];
  v8 = [(HFSiriLanguageOption *)self serializableVoiceName];
  v9 = [HFSiriLanguageOptionSerializableVoiceName copy];
  [v3 appendString:v8 withName:v9];

  v10 = [(HFSiriLanguageOption *)self voiceName];
  v11 = [HFSiriLanguageOptionVoiceName copy];
  [v3 appendString:v10 withName:v11];

  v12 = [v3 appendBool:-[HFSiriLanguageOption isDefaultVoiceForRecognitionLanguage](self withName:{"isDefaultVoiceForRecognitionLanguage"), @"defaultVoice"}];
  v13 = [v3 build];

  return v13;
}

- (NSString)localizedRecognitionLanguage
{
  v3 = [MEMORY[0x277CEF2D8] sharedInstance];
  v4 = [(HFSiriLanguageOption *)self recognitionLanguage];
  v5 = [v3 localizedNameForSiriLanguage:v4 inDisplayLanguage:0];

  if (![v5 length])
  {
    v6 = _HFLocalizedStringWithDefaultValue(@"HFSiriRecognitionLanguageUnknownName", @"HFSiriRecognitionLanguageUnknownName", 1);
    if (+[HFUtilities isInternalInstall])
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [(HFSiriLanguageOption *)self recognitionLanguage];
      v9 = [v7 stringWithFormat:@"%@ (%@)", v6, v8];

      v5 = v8;
    }

    else
    {
      v9 = v6;
    }

    v5 = v9;
  }

  return v5;
}

- (NSString)localizedOutputVoice
{
  v3 = [(HFSiriLanguageOption *)self voiceNameWithDefaultFallback];
  v4 = [MEMORY[0x277CEF2D8] sharedInstance];
  v5 = [(HFSiriLanguageOption *)self outputLanguage];
  v6 = [v4 outputVoiceDescriptorForOutputLanguageCode:v5 voiceName:v3];
  v7 = [v6 localizedDisplayWithRegion];

  if (![v7 length])
  {
    v8 = _HFLocalizedStringWithDefaultValue(@"HFSiriOutputVoiceUnknownName", @"HFSiriOutputVoiceUnknownName", 1);
    if (+[HFUtilities isInternalInstall])
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [(HFSiriLanguageOption *)self voiceName];
      v11 = [v9 stringWithFormat:@"%@ (%@, %@)", v8, v10, v3];

      v7 = v10;
    }

    else
    {
      v11 = v8;
    }

    v7 = v11;
  }

  return v7;
}

- (NSString)localizedOutputVoiceAccent
{
  v3 = [MEMORY[0x277CEF2D8] sharedInstance];
  v4 = [(HFSiriLanguageOption *)self outputVoice];
  v5 = [v3 localizedNameOfOutputVoice:v4 inDisplayLanguage:0];

  return v5;
}

- (id)outputVoice
{
  v3 = [(HFSiriLanguageOption *)self voiceNameWithDefaultFallback];
  v4 = objc_alloc(MEMORY[0x277CEF528]);
  v5 = [(HFSiriLanguageOption *)self outputLanguage];
  v6 = [v4 initWithLanguageCode:v5 gender:-[HFSiriLanguageOption outputGender](self isCustom:"outputGender") name:0 footprint:v3 contentVersion:0 masteredVersion:{0, 0}];

  return v6;
}

- (NSString)localizedOutputVoiceColor
{
  v3 = [(HFSiriLanguageOption *)self voiceNameWithDefaultFallback];
  v4 = [MEMORY[0x277CEF2D8] sharedInstance];
  v5 = [(HFSiriLanguageOption *)self outputLanguage];
  v6 = [v4 outputVoiceDescriptorForOutputLanguageCode:v5 voiceName:v3];
  v7 = [v6 localizedDisplay];

  return v7;
}

- (NSString)voiceNameWithDefaultFallback
{
  v3 = self->_serializableVoiceName;
  if (!v3)
  {
    v4 = [MEMORY[0x277CEF2D8] sharedInstance];
    v5 = [(HFSiriLanguageOption *)self outputLanguage];
    v6 = [v4 voiceNamesForOutputLanguageCode:v5 gender:{-[HFSiriLanguageOption outputGender](self, "outputGender")}];
    v3 = [v6 firstObject];
  }

  return v3;
}

@end