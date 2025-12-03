@interface HFSiriLanguageOption
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)equal;
- (HFSiriLanguageOption)init;
- (HFSiriLanguageOption)initWithHomeKitSettingLanguageValue:(id)value;
- (HFSiriLanguageOption)initWithRecognitionLanguage:(id)language outputLanguage:(id)outputLanguage outputGender:(int64_t)gender voiceName:(id)name defaultVoiceForRecognitionLanguage:(BOOL)recognitionLanguage;
- (HFSiriLanguageOption)initWithSerializedRepresentation:(id)representation;
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithRecognitionLanguage_outputLanguage_outputGender_voiceName_defaultVoiceForRecognitionLanguage_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFSiriLanguageOption.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HFSiriLanguageOption init]", v5}];

  return 0;
}

- (HFSiriLanguageOption)initWithRecognitionLanguage:(id)language outputLanguage:(id)outputLanguage outputGender:(int64_t)gender voiceName:(id)name defaultVoiceForRecognitionLanguage:(BOOL)recognitionLanguage
{
  languageCopy = language;
  outputLanguageCopy = outputLanguage;
  nameCopy = name;
  if (languageCopy)
  {
    if (outputLanguageCopy)
    {
      goto LABEL_3;
    }

LABEL_11:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFSiriLanguageOption.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"outputLanguage"}];

    if (!nameCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFSiriLanguageOption.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"recognitionLanguage"}];

  if (!outputLanguageCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!nameCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
  v17 = [mEMORY[0x277CEF2D8] voiceNamesForOutputLanguageCode:outputLanguageCopy gender:gender];
  firstObject = [v17 firstObject];

  if ([firstObject isEqualToString:nameCopy])
  {

    nameCopy = 0;
  }

LABEL_7:
  v27.receiver = self;
  v27.super_class = HFSiriLanguageOption;
  v19 = [(HFSiriLanguageOption *)&v27 init];
  if (v19)
  {
    v20 = [languageCopy copy];
    recognitionLanguage = v19->_recognitionLanguage;
    v19->_recognitionLanguage = v20;

    v22 = [outputLanguageCopy copy];
    outputLanguage = v19->_outputLanguage;
    v19->_outputLanguage = v22;

    v19->_outputGender = gender;
    v19->_defaultVoiceForRecognitionLanguage = recognitionLanguage;
    objc_storeStrong(&v19->_serializableVoiceName, nameCopy);
  }

  return v19;
}

- (HFSiriLanguageOption)initWithHomeKitSettingLanguageValue:(id)value
{
  valueCopy = value;
  v6 = [HFUtilities voiceInfoFromSettingLanguageValue:valueCopy];
  inputLanguageCode = [valueCopy inputLanguageCode];
  outputVoiceLanguageCode = [valueCopy outputVoiceLanguageCode];
  gender = [v6 gender];
  name = [v6 name];
  v11 = [(HFSiriLanguageOption *)self initWithRecognitionLanguage:inputLanguageCode outputLanguage:outputVoiceLanguageCode outputGender:gender voiceName:name defaultVoiceForRecognitionLanguage:1];

  if (v11)
  {
    objc_storeStrong(&v11->_settingLanguageValue, value);
  }

  return v11;
}

- (HFSiriLanguageOption)initWithSerializedRepresentation:(id)representation
{
  v20 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v5 = [representationCopy componentsSeparatedByString:{@", "}];
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

    selfCopy = self;
  }

  else
  {
    v6 = HFLogForCategory(0x3EuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = representationCopy;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Unexpected Siri language format %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return selfCopy;
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

  isDefaultVoiceForRecognitionLanguage = [(HFSiriLanguageOption *)self isDefaultVoiceForRecognitionLanguage];
  v6 = @"n";
  if (isDefaultVoiceForRecognitionLanguage)
  {
    v6 = @"d";
  }

  v7 = v6;
  v8 = MEMORY[0x277CBEB18];
  recognitionLanguage = [(HFSiriLanguageOption *)self recognitionLanguage];
  v16[0] = recognitionLanguage;
  outputLanguage = [(HFSiriLanguageOption *)self outputLanguage];
  v16[1] = outputLanguage;
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
  recognitionLanguage = [(HFSiriLanguageOption *)self recognitionLanguage];
  v31[0] = recognitionLanguage;
  outputLanguage = [(HFSiriLanguageOption *)self outputLanguage];
  v31[1] = outputLanguage;
  v31[2] = v5;
  v31[3] = v7;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  v14 = [v10 arrayWithArray:v13];

  v15 = MEMORY[0x277CBEB18];
  recognitionLanguage2 = [(HFSiriLanguageOption *)self recognitionLanguage];
  v30[0] = recognitionLanguage2;
  outputLanguage2 = [(HFSiriLanguageOption *)self outputLanguage];
  v30[1] = outputLanguage2;
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

    voiceName = [(HFSiriLanguageOption *)self voiceName];

    if (!voiceName)
    {
      goto LABEL_15;
    }

    voiceName2 = [(HFSiriLanguageOption *)self voiceName];
    [v14 addObject:voiceName2];

    voiceName3 = [(HFSiriLanguageOption *)self voiceName];
    [v19 addObject:voiceName3];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  recognitionLanguage = [(HFSiriLanguageOption *)self recognitionLanguage];
  [v3 appendString:recognitionLanguage withName:@"recognitionLanguage"];

  outputLanguage = [(HFSiriLanguageOption *)self outputLanguage];
  [v3 appendString:outputLanguage withName:@"outputLanguage"];

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
  serializableVoiceName = [(HFSiriLanguageOption *)self serializableVoiceName];
  v9 = [HFSiriLanguageOptionSerializableVoiceName copy];
  [v3 appendString:serializableVoiceName withName:v9];

  voiceName = [(HFSiriLanguageOption *)self voiceName];
  v11 = [HFSiriLanguageOptionVoiceName copy];
  [v3 appendString:voiceName withName:v11];

  v12 = [v3 appendBool:-[HFSiriLanguageOption isDefaultVoiceForRecognitionLanguage](self withName:{"isDefaultVoiceForRecognitionLanguage"), @"defaultVoice"}];
  build = [v3 build];

  return build;
}

- (NSString)localizedRecognitionLanguage
{
  mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
  recognitionLanguage = [(HFSiriLanguageOption *)self recognitionLanguage];
  v5 = [mEMORY[0x277CEF2D8] localizedNameForSiriLanguage:recognitionLanguage inDisplayLanguage:0];

  if (![v5 length])
  {
    v6 = _HFLocalizedStringWithDefaultValue(@"HFSiriRecognitionLanguageUnknownName", @"HFSiriRecognitionLanguageUnknownName", 1);
    if (+[HFUtilities isInternalInstall])
    {
      v7 = MEMORY[0x277CCACA8];
      recognitionLanguage2 = [(HFSiriLanguageOption *)self recognitionLanguage];
      v9 = [v7 stringWithFormat:@"%@ (%@)", v6, recognitionLanguage2];

      v5 = recognitionLanguage2;
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
  voiceNameWithDefaultFallback = [(HFSiriLanguageOption *)self voiceNameWithDefaultFallback];
  mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
  outputLanguage = [(HFSiriLanguageOption *)self outputLanguage];
  v6 = [mEMORY[0x277CEF2D8] outputVoiceDescriptorForOutputLanguageCode:outputLanguage voiceName:voiceNameWithDefaultFallback];
  localizedDisplayWithRegion = [v6 localizedDisplayWithRegion];

  if (![localizedDisplayWithRegion length])
  {
    v8 = _HFLocalizedStringWithDefaultValue(@"HFSiriOutputVoiceUnknownName", @"HFSiriOutputVoiceUnknownName", 1);
    if (+[HFUtilities isInternalInstall])
    {
      v9 = MEMORY[0x277CCACA8];
      voiceName = [(HFSiriLanguageOption *)self voiceName];
      v11 = [v9 stringWithFormat:@"%@ (%@, %@)", v8, voiceName, voiceNameWithDefaultFallback];

      localizedDisplayWithRegion = voiceName;
    }

    else
    {
      v11 = v8;
    }

    localizedDisplayWithRegion = v11;
  }

  return localizedDisplayWithRegion;
}

- (NSString)localizedOutputVoiceAccent
{
  mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
  outputVoice = [(HFSiriLanguageOption *)self outputVoice];
  v5 = [mEMORY[0x277CEF2D8] localizedNameOfOutputVoice:outputVoice inDisplayLanguage:0];

  return v5;
}

- (id)outputVoice
{
  voiceNameWithDefaultFallback = [(HFSiriLanguageOption *)self voiceNameWithDefaultFallback];
  v4 = objc_alloc(MEMORY[0x277CEF528]);
  outputLanguage = [(HFSiriLanguageOption *)self outputLanguage];
  v6 = [v4 initWithLanguageCode:outputLanguage gender:-[HFSiriLanguageOption outputGender](self isCustom:"outputGender") name:0 footprint:voiceNameWithDefaultFallback contentVersion:0 masteredVersion:{0, 0}];

  return v6;
}

- (NSString)localizedOutputVoiceColor
{
  voiceNameWithDefaultFallback = [(HFSiriLanguageOption *)self voiceNameWithDefaultFallback];
  mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
  outputLanguage = [(HFSiriLanguageOption *)self outputLanguage];
  v6 = [mEMORY[0x277CEF2D8] outputVoiceDescriptorForOutputLanguageCode:outputLanguage voiceName:voiceNameWithDefaultFallback];
  localizedDisplay = [v6 localizedDisplay];

  return localizedDisplay;
}

- (NSString)voiceNameWithDefaultFallback
{
  firstObject = self->_serializableVoiceName;
  if (!firstObject)
  {
    mEMORY[0x277CEF2D8] = [MEMORY[0x277CEF2D8] sharedInstance];
    outputLanguage = [(HFSiriLanguageOption *)self outputLanguage];
    v6 = [mEMORY[0x277CEF2D8] voiceNamesForOutputLanguageCode:outputLanguage gender:{-[HFSiriLanguageOption outputGender](self, "outputGender")}];
    firstObject = [v6 firstObject];
  }

  return firstObject;
}

@end