@interface BMSiriOnDeviceDigestExperimentMetricsISOLocale
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriOnDeviceDigestExperimentMetricsISOLocale)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriOnDeviceDigestExperimentMetricsISOLocale)initWithLanguageCode:(id)code countryCode:(id)countryCode;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriOnDeviceDigestExperimentMetricsISOLocale

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMSiriOnDeviceDigestExperimentMetricsISOLocale hasLanguageCode](self, "hasLanguageCode") || [v5 hasLanguageCode])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsISOLocale *)self hasLanguageCode])
      {
        goto LABEL_13;
      }

      if (![v5 hasLanguageCode])
      {
        goto LABEL_13;
      }

      languageCode = [(BMSiriOnDeviceDigestExperimentMetricsISOLocale *)self languageCode];
      if (languageCode != [v5 languageCode])
      {
        goto LABEL_13;
      }
    }

    if (!-[BMSiriOnDeviceDigestExperimentMetricsISOLocale hasCountryCode](self, "hasCountryCode") && ![v5 hasCountryCode])
    {
      v8 = 1;
      goto LABEL_14;
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsISOLocale hasCountryCode](self, "hasCountryCode") && [v5 hasCountryCode])
    {
      countryCode = [(BMSiriOnDeviceDigestExperimentMetricsISOLocale *)self countryCode];
      v8 = countryCode == [v5 countryCode];
    }

    else
    {
LABEL_13:
      v8 = 0;
    }

LABEL_14:

    goto LABEL_15;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ([(BMSiriOnDeviceDigestExperimentMetricsISOLocale *)self hasLanguageCode])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsISOLocale languageCode](self, "languageCode")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsISOLocale *)self hasCountryCode])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsISOLocale countryCode](self, "countryCode")}];
  }

  else
  {
    v4 = 0;
  }

  v10[0] = @"languageCode";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"countryCode";
  v11[0] = null;
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (v4)
  {
    if (v3)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_13;
    }
  }

LABEL_13:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BMSiriOnDeviceDigestExperimentMetricsISOLocale)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"languageCode"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v8 = 0;
        selfCopy = 0;
        goto LABEL_9;
      }

      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      v15 = *MEMORY[0x1E698F240];
      v23 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"languageCode"];
      v24[0] = v10;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v16 = [v14 initWithDomain:v15 code:2 userInfo:v9];
      v8 = 0;
      selfCopy = 0;
      *error = v16;
      goto LABEL_8;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"countryCode"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v17 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v21 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"countryCode"];
        v22 = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        *error = [v17 initWithDomain:v18 code:2 userInfo:v20];
      }

      v10 = 0;
      selfCopy = 0;
      goto LABEL_8;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  self = [(BMSiriOnDeviceDigestExperimentMetricsISOLocale *)self initWithLanguageCode:v8 countryCode:v10];
  selfCopy = self;
LABEL_8:

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriOnDeviceDigestExperimentMetricsISOLocale *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_hasLanguageCode)
  {
    languageCode = self->_languageCode;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_hasCountryCode)
  {
    countryCode = self->_countryCode;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v32.receiver = self;
  v32.super_class = BMSiriOnDeviceDigestExperimentMetricsISOLocale;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_49;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v33 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v33 & 0x7F) << v7;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      if ((v14 >> 3) == 13)
      {
        v24 = 0;
        v25 = 0;
        v17 = 0;
        v5->_hasCountryCode = 1;
        while (1)
        {
          v33 = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v33 & 0x7F) << v24;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v21 = v25++ > 8;
          if (v21)
          {
            v22 = 0;
            v23 = &OBJC_IVAR___BMSiriOnDeviceDigestExperimentMetricsISOLocale__countryCode;
            goto LABEL_45;
          }
        }

        v23 = &OBJC_IVAR___BMSiriOnDeviceDigestExperimentMetricsISOLocale__countryCode;
      }

      else
      {
        if ((v14 >> 3) != 12)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_46;
        }

        v15 = 0;
        v16 = 0;
        v17 = 0;
        v5->_hasLanguageCode = 1;
        while (1)
        {
          v33 = 0;
          v18 = [fromCopy position] + 1;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v33 & 0x7F) << v15;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v21 = v16++ > 8;
          if (v21)
          {
            v22 = 0;
            v23 = &OBJC_IVAR___BMSiriOnDeviceDigestExperimentMetricsISOLocale__languageCode;
            goto LABEL_45;
          }
        }

        v23 = &OBJC_IVAR___BMSiriOnDeviceDigestExperimentMetricsISOLocale__languageCode;
      }

      if ([fromCopy hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v17;
      }

LABEL_45:
      *(&v5->super.super.isa + *v23) = v22;
LABEL_46:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_48:
    v30 = 0;
  }

  else
  {
LABEL_49:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsISOLocale languageCode](self, "languageCode")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriOnDeviceDigestExperimentMetricsISOLocale countryCode](self, "countryCode")}];
  v6 = [v3 initWithFormat:@"BMSiriOnDeviceDigestExperimentMetricsISOLocale with languageCode: %@, countryCode: %@", v4, v5];

  return v6;
}

- (BMSiriOnDeviceDigestExperimentMetricsISOLocale)initWithLanguageCode:(id)code countryCode:(id)countryCode
{
  codeCopy = code;
  countryCodeCopy = countryCode;
  v12.receiver = self;
  v12.super_class = BMSiriOnDeviceDigestExperimentMetricsISOLocale;
  v8 = [(BMEventBase *)&v12 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    if (codeCopy)
    {
      v8->_hasLanguageCode = 1;
      intValue = [codeCopy intValue];
    }

    else
    {
      v8->_hasLanguageCode = 0;
      intValue = -1;
    }

    v8->_languageCode = intValue;
    if (countryCodeCopy)
    {
      v8->_hasCountryCode = 1;
      intValue2 = [countryCodeCopy intValue];
    }

    else
    {
      v8->_hasCountryCode = 0;
      intValue2 = -1;
    }

    v8->_countryCode = intValue2;
  }

  return v8;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"languageCode" number:12 type:2 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"countryCode" number:13 type:2 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"languageCode" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"countryCode" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:2 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMSiriOnDeviceDigestExperimentMetricsISOLocale alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end