@interface BMSiriRequestContextContentRestriction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriRequestContextContentRestriction)initWithAppRestriction:(id)restriction countryCode:(id)code movieRestriction:(id)movieRestriction tvRestriction:(id)tvRestriction;
- (BMSiriRequestContextContentRestriction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriRequestContextContentRestriction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMSiriRequestContextContentRestriction hasAppRestriction](self, "hasAppRestriction") || [v5 hasAppRestriction])
    {
      if (![(BMSiriRequestContextContentRestriction *)self hasAppRestriction])
      {
        goto LABEL_22;
      }

      if (![v5 hasAppRestriction])
      {
        goto LABEL_22;
      }

      appRestriction = [(BMSiriRequestContextContentRestriction *)self appRestriction];
      if (appRestriction != [v5 appRestriction])
      {
        goto LABEL_22;
      }
    }

    countryCode = [(BMSiriRequestContextContentRestriction *)self countryCode];
    countryCode2 = [v5 countryCode];
    v9 = countryCode2;
    if (countryCode == countryCode2)
    {
    }

    else
    {
      countryCode3 = [(BMSiriRequestContextContentRestriction *)self countryCode];
      countryCode4 = [v5 countryCode];
      v12 = [countryCode3 isEqual:countryCode4];

      if (!v12)
      {
        goto LABEL_22;
      }
    }

    if (!-[BMSiriRequestContextContentRestriction hasMovieRestriction](self, "hasMovieRestriction") && ![v5 hasMovieRestriction] || -[BMSiriRequestContextContentRestriction hasMovieRestriction](self, "hasMovieRestriction") && objc_msgSend(v5, "hasMovieRestriction") && (v14 = -[BMSiriRequestContextContentRestriction movieRestriction](self, "movieRestriction"), v14 == objc_msgSend(v5, "movieRestriction")))
    {
      if (!-[BMSiriRequestContextContentRestriction hasTvRestriction](self, "hasTvRestriction") && ![v5 hasTvRestriction])
      {
        v13 = 1;
        goto LABEL_23;
      }

      if (-[BMSiriRequestContextContentRestriction hasTvRestriction](self, "hasTvRestriction") && [v5 hasTvRestriction])
      {
        tvRestriction = [(BMSiriRequestContextContentRestriction *)self tvRestriction];
        v13 = tvRestriction == [v5 tvRestriction];
LABEL_23:

        goto LABEL_24;
      }
    }

LABEL_22:
    v13 = 0;
    goto LABEL_23;
  }

  v13 = 0;
LABEL_24:

  return v13;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  if ([(BMSiriRequestContextContentRestriction *)self hasAppRestriction])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriRequestContextContentRestriction appRestriction](self, "appRestriction")}];
  }

  else
  {
    v3 = 0;
  }

  countryCode = [(BMSiriRequestContextContentRestriction *)self countryCode];
  if ([(BMSiriRequestContextContentRestriction *)self hasMovieRestriction])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriRequestContextContentRestriction movieRestriction](self, "movieRestriction")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMSiriRequestContextContentRestriction *)self hasTvRestriction])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriRequestContextContentRestriction tvRestriction](self, "tvRestriction")}];
  }

  else
  {
    v6 = 0;
  }

  v14[0] = @"appRestriction";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"countryCode";
  null2 = countryCode;
  if (!countryCode)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"movieRestriction";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"tvRestriction";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (v6)
  {
    if (v5)
    {
      goto LABEL_20;
    }
  }

  else
  {

    if (v5)
    {
LABEL_20:
      if (countryCode)
      {
        goto LABEL_21;
      }

LABEL_27:

      if (v3)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }
  }

  if (!countryCode)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (v3)
  {
    goto LABEL_22;
  }

LABEL_28:

LABEL_22:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMSiriRequestContextContentRestriction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"appRestriction"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"countryCode"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          goto LABEL_34;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v20 = *MEMORY[0x1E698F240];
        v38 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"countryCode"];
        v39 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
        error = 0;
        v15 = 0;
        *errorCopy = v21;
        goto LABEL_33;
      }

      v32 = v9;
    }

    else
    {
      v32 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"movieRestriction"];
    v31 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v12 = 0;
          v15 = 0;
          error = v32;
          goto LABEL_33;
        }

        selfCopy3 = self;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v36 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"movieRestriction"];
        v37 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v23 = [v29 initWithDomain:v22 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        *error = v23;
        goto LABEL_31;
      }

      selfCopy3 = self;
      v12 = v10;
    }

    else
    {
      selfCopy3 = self;
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"tvRestriction"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      error = v32;
      v15 = [(BMSiriRequestContextContentRestriction *)selfCopy3 initWithAppRestriction:v8 countryCode:v32 movieRestriction:v12 tvRestriction:v14];
      selfCopy3 = v15;
LABEL_32:

      self = selfCopy3;
      v7 = v31;
LABEL_33:

      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
      goto LABEL_13;
    }

    if (error)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v34 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tvRestriction"];
      v35 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *error = [v30 initWithDomain:v28 code:2 userInfo:v25];
    }

    v14 = 0;
    v15 = 0;
LABEL_31:
    error = v32;
    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v15 = 0;
    goto LABEL_35;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v40 = *MEMORY[0x1E696A578];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"appRestriction"];
  v41[0] = v18;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v8 = 0;
  v15 = 0;
  *error = [v16 initWithDomain:v17 code:2 userInfo:v9];
  error = v18;
LABEL_34:

LABEL_35:
  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriRequestContextContentRestriction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasAppRestriction)
  {
    appRestriction = self->_appRestriction;
    PBDataWriterWriteInt32Field();
  }

  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasMovieRestriction)
  {
    movieRestriction = self->_movieRestriction;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasTvRestriction)
  {
    tvRestriction = self->_tvRestriction;
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v41.receiver = self;
  v41.super_class = BMSiriRequestContextContentRestriction;
  v5 = [(BMEventBase *)&v41 init];
  if (!v5)
  {
    goto LABEL_69;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_67;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v42 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v42 & 0x7F) << v7;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        goto LABEL_67;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 2)
      {
        break;
      }

      if (v15 == 1)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasAppRestriction = 1;
        while (1)
        {
          v42 = 0;
          v28 = [fromCopy position] + 1;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v27 |= (v42 & 0x7F) << v25;
          if ((v42 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v13 = v26++ >= 9;
          if (v13)
          {
            v24 = 0;
            goto LABEL_60;
          }
        }

        if ([fromCopy hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v27;
        }

LABEL_60:
        v37 = 24;
LABEL_65:
        *(&v5->super.super.isa + v37) = v24;
        goto LABEL_66;
      }

      if (v15 != 2)
      {
        goto LABEL_33;
      }

      v16 = PBReaderReadString();
      countryCode = v5->_countryCode;
      v5->_countryCode = v16;

LABEL_66:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_67;
      }
    }

    if (v15 == 3)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v5->_hasMovieRestriction = 1;
      while (1)
      {
        v42 = 0;
        v34 = [fromCopy position] + 1;
        if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v33 |= (v42 & 0x7F) << v31;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v13 = v32++ >= 9;
        if (v13)
        {
          v24 = 0;
          goto LABEL_64;
        }
      }

      if ([fromCopy hasError])
      {
        v24 = 0;
      }

      else
      {
        v24 = v33;
      }

LABEL_64:
      v37 = 28;
    }

    else
    {
      if (v15 != 4)
      {
LABEL_33:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_68;
        }

        goto LABEL_66;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      v5->_hasTvRestriction = 1;
      while (1)
      {
        v42 = 0;
        v21 = [fromCopy position] + 1;
        if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v20 |= (v42 & 0x7F) << v18;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        v13 = v19++ >= 9;
        if (v13)
        {
          v24 = 0;
          goto LABEL_56;
        }
      }

      if ([fromCopy hasError])
      {
        v24 = 0;
      }

      else
      {
        v24 = v20;
      }

LABEL_56:
      v37 = 32;
    }

    goto LABEL_65;
  }

LABEL_67:
  if ([fromCopy hasError])
  {
LABEL_68:
    v39 = 0;
  }

  else
  {
LABEL_69:
    v39 = v5;
  }

  return v39;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriRequestContextContentRestriction appRestriction](self, "appRestriction")}];
  countryCode = [(BMSiriRequestContextContentRestriction *)self countryCode];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriRequestContextContentRestriction movieRestriction](self, "movieRestriction")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriRequestContextContentRestriction tvRestriction](self, "tvRestriction")}];
  v8 = [v3 initWithFormat:@"BMSiriRequestContextContentRestriction with appRestriction: %@, countryCode: %@, movieRestriction: %@, tvRestriction: %@", v4, countryCode, v6, v7];

  return v8;
}

- (BMSiriRequestContextContentRestriction)initWithAppRestriction:(id)restriction countryCode:(id)code movieRestriction:(id)movieRestriction tvRestriction:(id)tvRestriction
{
  restrictionCopy = restriction;
  codeCopy = code;
  movieRestrictionCopy = movieRestriction;
  tvRestrictionCopy = tvRestriction;
  v19.receiver = self;
  v19.super_class = BMSiriRequestContextContentRestriction;
  v14 = [(BMEventBase *)&v19 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (restrictionCopy)
    {
      v14->_hasAppRestriction = 1;
      intValue = [restrictionCopy intValue];
    }

    else
    {
      v14->_hasAppRestriction = 0;
      intValue = -1;
    }

    v14->_appRestriction = intValue;
    objc_storeStrong(&v14->_countryCode, code);
    if (movieRestrictionCopy)
    {
      v14->_hasMovieRestriction = 1;
      intValue2 = [movieRestrictionCopy intValue];
    }

    else
    {
      v14->_hasMovieRestriction = 0;
      intValue2 = -1;
    }

    v14->_movieRestriction = intValue2;
    if (tvRestrictionCopy)
    {
      v14->_hasTvRestriction = 1;
      intValue3 = [tvRestrictionCopy intValue];
    }

    else
    {
      v14->_hasTvRestriction = 0;
      intValue3 = -1;
    }

    v14->_tvRestriction = intValue3;
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appRestriction" number:1 type:2 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"countryCode" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"movieRestriction" number:3 type:2 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tvRestriction" number:4 type:2 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appRestriction" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"countryCode" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"movieRestriction" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tvRestriction" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
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

    v8 = [[BMSiriRequestContextContentRestriction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end