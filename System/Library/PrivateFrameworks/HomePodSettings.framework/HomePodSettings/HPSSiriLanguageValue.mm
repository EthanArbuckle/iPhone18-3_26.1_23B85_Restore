@interface HPSSiriLanguageValue
+ (id)languageDefaultWithRecognitionLanguage:(id)language outputLanguage:(id)outputLanguage gender:(int64_t)gender voiceName:(id)name;
+ (id)languagesFromVoices:(id)voices forLanguage:(id)language;
- (BOOL)alignsWithVoice:(id)voice;
- (BOOL)isEqual:(id)equal;
- (HPSSiriLanguageValue)initWithCoder:(id)coder;
- (HPSSiriLanguageValue)initWithRecognitionLanguage:(id)language outputLanguage:(id)outputLanguage gender:(int64_t)gender voiceName:(id)name;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HPSSiriLanguageValue

- (HPSSiriLanguageValue)initWithRecognitionLanguage:(id)language outputLanguage:(id)outputLanguage gender:(int64_t)gender voiceName:(id)name
{
  languageCopy = language;
  outputLanguageCopy = outputLanguage;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = HPSSiriLanguageValue;
  v13 = [(HPSSiriLanguageValue *)&v19 init];
  if (v13)
  {
    v14 = [languageCopy copy];
    recognitionLanguage = v13->_recognitionLanguage;
    v13->_recognitionLanguage = v14;

    v16 = [outputLanguageCopy copy];
    outputLanguage = v13->_outputLanguage;
    v13->_outputLanguage = v16;

    v13->_gender = gender;
    objc_storeStrong(&v13->_voiceName, name);
  }

  return v13;
}

+ (id)languageDefaultWithRecognitionLanguage:(id)language outputLanguage:(id)outputLanguage gender:(int64_t)gender voiceName:(id)name
{
  nameCopy = name;
  outputLanguageCopy = outputLanguage;
  languageCopy = language;
  v13 = [[self alloc] initWithRecognitionLanguage:languageCopy outputLanguage:outputLanguageCopy gender:gender voiceName:nameCopy];

  v13[8] = 1;

  return v13;
}

+ (id)languagesFromVoices:(id)voices forLanguage:(id)language
{
  v28[1] = *MEMORY[0x277D85DE8];
  voicesCopy = voices;
  languageCopy = language;
  v27 = [voicesCopy count];
  if (v27)
  {
    firstObject = [voicesCopy firstObject];
    languageCode = [firstObject languageCode];
    gender = [firstObject gender];
    name = [firstObject name];
    v12 = [self languageDefaultWithRecognitionLanguage:languageCopy outputLanguage:languageCode gender:gender voiceName:name];

    if (v27 == 1)
    {
      v28[0] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v27];
      [v14 addObject:v12];
      v15 = 1;
      v26 = languageCopy;
      do
      {
        v16 = firstObject;
        v17 = v12;
        firstObject = [voicesCopy objectAtIndex:{v15, v26}];

        v18 = [self alloc];
        [firstObject languageCode];
        selfCopy = self;
        v21 = v20 = voicesCopy;
        gender2 = [firstObject gender];
        name2 = [firstObject name];
        v12 = [v18 initWithRecognitionLanguage:v26 outputLanguage:v21 gender:gender2 voiceName:name2];

        voicesCopy = v20;
        self = selfCopy;
        [v14 addObject:v12];
        ++v15;
      }

      while (v27 != v15);
      v13 = [v14 copy];

      languageCopy = v26;
    }
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)alignsWithVoice:(id)voice
{
  voiceCopy = voice;
  v5 = voiceCopy;
  if (voiceCopy)
  {
    languageCode = [voiceCopy languageCode];

    if (languageCode)
    {
      gender = [(HPSSiriLanguageValue *)self gender];
      if (gender == [v5 gender])
      {
        outputLanguage = [(HPSSiriLanguageValue *)self outputLanguage];
        languageCode2 = [v5 languageCode];
        LODWORD(languageCode) = [outputLanguage isEqualToString:languageCode2];
      }

      else
      {
        LODWORD(languageCode) = 0;
      }

      name = [v5 name];

      if (name)
      {
        name2 = [v5 name];
        voiceName = [(HPSSiriLanguageValue *)self voiceName];
        LODWORD(languageCode) = languageCode & [name2 isEqualToString:voiceName];
      }
    }
  }

  else
  {
    LOBYTE(languageCode) = 0;
  }

  return languageCode;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(HPSSiriLanguageValue *)self gender], v5 == [(HPSSiriLanguageValue *)equalCopy gender]))
    {
      recognitionLanguage = [(HPSSiriLanguageValue *)self recognitionLanguage];
      recognitionLanguage2 = [(HPSSiriLanguageValue *)equalCopy recognitionLanguage];
      if ([recognitionLanguage isEqual:recognitionLanguage2])
      {
        outputLanguage = [(HPSSiriLanguageValue *)self outputLanguage];
        outputLanguage2 = [(HPSSiriLanguageValue *)equalCopy outputLanguage];
        if ([outputLanguage isEqual:outputLanguage2])
        {
          voiceName = [(HPSSiriLanguageValue *)self voiceName];
          voiceName2 = [(HPSSiriLanguageValue *)equalCopy voiceName];
          v12 = [voiceName isEqual:voiceName2];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  recognitionLanguage = [(HPSSiriLanguageValue *)self recognitionLanguage];
  v4 = [recognitionLanguage hash];
  outputLanguage = [(HPSSiriLanguageValue *)self outputLanguage];
  v6 = [outputLanguage hash] ^ v4;
  voiceName = [(HPSSiriLanguageValue *)self voiceName];
  v8 = [voiceName hash];
  v9 = v8 ^ [(HPSSiriLanguageValue *)self gender];

  return v6 ^ v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  voiceName = [(HPSSiriLanguageValue *)self voiceName];
  gender = [(HPSSiriLanguageValue *)self gender];
  recognitionLanguage = [(HPSSiriLanguageValue *)self recognitionLanguage];
  outputLanguage = [(HPSSiriLanguageValue *)self outputLanguage];
  isDefault = [(HPSSiriLanguageValue *)self isDefault];
  v11 = "";
  if (isDefault)
  {
    v11 = ", isDefault";
  }

  v12 = [v3 stringWithFormat:@"<%@: %p, %@: Gender = %ld, Recognition = %@, Output = %@%s>", v5, self, voiceName, gender, recognitionLanguage, outputLanguage, v11];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  recognitionLanguage = [(HPSSiriLanguageValue *)self recognitionLanguage];
  [coderCopy encodeObject:recognitionLanguage forKey:@"value.recognition"];

  outputLanguage = [(HPSSiriLanguageValue *)self outputLanguage];
  [coderCopy encodeObject:outputLanguage forKey:@"value.output"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HPSSiriLanguageValue gender](self, "gender")}];
  [coderCopy encodeObject:v6 forKey:@"value.gender"];

  voiceName = [(HPSSiriLanguageValue *)self voiceName];
  [coderCopy encodeObject:voiceName forKey:@"value.name"];

  [coderCopy encodeBool:-[HPSSiriLanguageValue isDefault](self forKey:{"isDefault"), @"value.default"}];
}

- (HPSSiriLanguageValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HPSSiriLanguageValue;
  v5 = [(HPSSiriLanguageValue *)&v15 init];
  if (!v5)
  {
    goto LABEL_7;
  }

  v5->_languageDefault = [coderCopy decodeBoolForKey:@"value.default"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value.recognition"];
  recognitionLanguage = v5->_recognitionLanguage;
  v5->_recognitionLanguage = v6;

  if (!v5->_recognitionLanguage)
  {
    goto LABEL_8;
  }

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value.output"];
  outputLanguage = v5->_outputLanguage;
  v5->_outputLanguage = v8;

  if (!v5->_outputLanguage || ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value.name"], v10 = objc_claimAutoreleasedReturnValue(), voiceName = v5->_voiceName, v5->_voiceName = v10, voiceName, !v5->_voiceName))
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value.gender"];
  v13 = v12;
  if (v12)
  {
    v5->_gender = [(HPSSiriLanguageValue *)v12 integerValue];

LABEL_7:
    v13 = v5;
  }

LABEL_9:

  return v13;
}

@end