@interface HPSSiriLanguageValue
+ (id)languageDefaultWithRecognitionLanguage:(id)a3 outputLanguage:(id)a4 gender:(int64_t)a5 voiceName:(id)a6;
+ (id)languagesFromVoices:(id)a3 forLanguage:(id)a4;
- (BOOL)alignsWithVoice:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HPSSiriLanguageValue)initWithCoder:(id)a3;
- (HPSSiriLanguageValue)initWithRecognitionLanguage:(id)a3 outputLanguage:(id)a4 gender:(int64_t)a5 voiceName:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HPSSiriLanguageValue

- (HPSSiriLanguageValue)initWithRecognitionLanguage:(id)a3 outputLanguage:(id)a4 gender:(int64_t)a5 voiceName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = HPSSiriLanguageValue;
  v13 = [(HPSSiriLanguageValue *)&v19 init];
  if (v13)
  {
    v14 = [v10 copy];
    recognitionLanguage = v13->_recognitionLanguage;
    v13->_recognitionLanguage = v14;

    v16 = [v11 copy];
    outputLanguage = v13->_outputLanguage;
    v13->_outputLanguage = v16;

    v13->_gender = a5;
    objc_storeStrong(&v13->_voiceName, a6);
  }

  return v13;
}

+ (id)languageDefaultWithRecognitionLanguage:(id)a3 outputLanguage:(id)a4 gender:(int64_t)a5 voiceName:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] initWithRecognitionLanguage:v12 outputLanguage:v11 gender:a5 voiceName:v10];

  v13[8] = 1;

  return v13;
}

+ (id)languagesFromVoices:(id)a3 forLanguage:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v27 = [v6 count];
  if (v27)
  {
    v8 = [v6 firstObject];
    v9 = [v8 languageCode];
    v10 = [v8 gender];
    v11 = [v8 name];
    v12 = [a1 languageDefaultWithRecognitionLanguage:v7 outputLanguage:v9 gender:v10 voiceName:v11];

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
      v26 = v7;
      do
      {
        v16 = v8;
        v17 = v12;
        v8 = [v6 objectAtIndex:{v15, v26}];

        v18 = [a1 alloc];
        [v8 languageCode];
        v19 = a1;
        v21 = v20 = v6;
        v22 = [v8 gender];
        v23 = [v8 name];
        v12 = [v18 initWithRecognitionLanguage:v26 outputLanguage:v21 gender:v22 voiceName:v23];

        v6 = v20;
        a1 = v19;
        [v14 addObject:v12];
        ++v15;
      }

      while (v27 != v15);
      v13 = [v14 copy];

      v7 = v26;
    }
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)alignsWithVoice:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 languageCode];

    if (v6)
    {
      v7 = [(HPSSiriLanguageValue *)self gender];
      if (v7 == [v5 gender])
      {
        v8 = [(HPSSiriLanguageValue *)self outputLanguage];
        v9 = [v5 languageCode];
        LODWORD(v6) = [v8 isEqualToString:v9];
      }

      else
      {
        LODWORD(v6) = 0;
      }

      v10 = [v5 name];

      if (v10)
      {
        v11 = [v5 name];
        v12 = [(HPSSiriLanguageValue *)self voiceName];
        LODWORD(v6) = v6 & [v11 isEqualToString:v12];
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(HPSSiriLanguageValue *)self gender], v5 == [(HPSSiriLanguageValue *)v4 gender]))
    {
      v6 = [(HPSSiriLanguageValue *)self recognitionLanguage];
      v7 = [(HPSSiriLanguageValue *)v4 recognitionLanguage];
      if ([v6 isEqual:v7])
      {
        v8 = [(HPSSiriLanguageValue *)self outputLanguage];
        v9 = [(HPSSiriLanguageValue *)v4 outputLanguage];
        if ([v8 isEqual:v9])
        {
          v10 = [(HPSSiriLanguageValue *)self voiceName];
          v11 = [(HPSSiriLanguageValue *)v4 voiceName];
          v12 = [v10 isEqual:v11];
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
  v3 = [(HPSSiriLanguageValue *)self recognitionLanguage];
  v4 = [v3 hash];
  v5 = [(HPSSiriLanguageValue *)self outputLanguage];
  v6 = [v5 hash] ^ v4;
  v7 = [(HPSSiriLanguageValue *)self voiceName];
  v8 = [v7 hash];
  v9 = v8 ^ [(HPSSiriLanguageValue *)self gender];

  return v6 ^ v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HPSSiriLanguageValue *)self voiceName];
  v7 = [(HPSSiriLanguageValue *)self gender];
  v8 = [(HPSSiriLanguageValue *)self recognitionLanguage];
  v9 = [(HPSSiriLanguageValue *)self outputLanguage];
  v10 = [(HPSSiriLanguageValue *)self isDefault];
  v11 = "";
  if (v10)
  {
    v11 = ", isDefault";
  }

  v12 = [v3 stringWithFormat:@"<%@: %p, %@: Gender = %ld, Recognition = %@, Output = %@%s>", v5, self, v6, v7, v8, v9, v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(HPSSiriLanguageValue *)self recognitionLanguage];
  [v8 encodeObject:v4 forKey:@"value.recognition"];

  v5 = [(HPSSiriLanguageValue *)self outputLanguage];
  [v8 encodeObject:v5 forKey:@"value.output"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HPSSiriLanguageValue gender](self, "gender")}];
  [v8 encodeObject:v6 forKey:@"value.gender"];

  v7 = [(HPSSiriLanguageValue *)self voiceName];
  [v8 encodeObject:v7 forKey:@"value.name"];

  [v8 encodeBool:-[HPSSiriLanguageValue isDefault](self forKey:{"isDefault"), @"value.default"}];
}

- (HPSSiriLanguageValue)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HPSSiriLanguageValue;
  v5 = [(HPSSiriLanguageValue *)&v15 init];
  if (!v5)
  {
    goto LABEL_7;
  }

  v5->_languageDefault = [v4 decodeBoolForKey:@"value.default"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value.recognition"];
  recognitionLanguage = v5->_recognitionLanguage;
  v5->_recognitionLanguage = v6;

  if (!v5->_recognitionLanguage)
  {
    goto LABEL_8;
  }

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value.output"];
  outputLanguage = v5->_outputLanguage;
  v5->_outputLanguage = v8;

  if (!v5->_outputLanguage || ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"value.name"], v10 = objc_claimAutoreleasedReturnValue(), voiceName = v5->_voiceName, v5->_voiceName = v10, voiceName, !v5->_voiceName))
  {
LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value.gender"];
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