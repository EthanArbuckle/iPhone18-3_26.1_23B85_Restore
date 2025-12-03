@interface BMSiriAssistantSuggestionFeaturesiCloudFeatures
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriAssistantSuggestionFeaturesiCloudFeatures)initWithDaysSinceAccountCreated:(id)created isInFamily:(id)family isHeadOfFamily:(id)ofFamily subscriptionStatus:(id)status;
- (BMSiriAssistantSuggestionFeaturesiCloudFeatures)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriAssistantSuggestionFeaturesiCloudFeatures

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ((!-[BMSiriAssistantSuggestionFeaturesiCloudFeatures hasDaysSinceAccountCreated](self, "hasDaysSinceAccountCreated") && ![v5 hasDaysSinceAccountCreated] || -[BMSiriAssistantSuggestionFeaturesiCloudFeatures hasDaysSinceAccountCreated](self, "hasDaysSinceAccountCreated") && objc_msgSend(v5, "hasDaysSinceAccountCreated") && (v6 = -[BMSiriAssistantSuggestionFeaturesiCloudFeatures daysSinceAccountCreated](self, "daysSinceAccountCreated"), v6 == objc_msgSend(v5, "daysSinceAccountCreated"))) && (!-[BMSiriAssistantSuggestionFeaturesiCloudFeatures hasIsInFamily](self, "hasIsInFamily") && !objc_msgSend(v5, "hasIsInFamily") || -[BMSiriAssistantSuggestionFeaturesiCloudFeatures hasIsInFamily](self, "hasIsInFamily") && objc_msgSend(v5, "hasIsInFamily") && (v7 = -[BMSiriAssistantSuggestionFeaturesiCloudFeatures isInFamily](self, "isInFamily"), v7 == objc_msgSend(v5, "isInFamily"))) && (!-[BMSiriAssistantSuggestionFeaturesiCloudFeatures hasIsHeadOfFamily](self, "hasIsHeadOfFamily") && !objc_msgSend(v5, "hasIsHeadOfFamily") || -[BMSiriAssistantSuggestionFeaturesiCloudFeatures hasIsHeadOfFamily](self, "hasIsHeadOfFamily") && objc_msgSend(v5, "hasIsHeadOfFamily") && (v8 = -[BMSiriAssistantSuggestionFeaturesiCloudFeatures isHeadOfFamily](self, "isHeadOfFamily"), v8 == objc_msgSend(v5, "isHeadOfFamily"))))
    {
      subscriptionStatus = [(BMSiriAssistantSuggestionFeaturesiCloudFeatures *)self subscriptionStatus];
      subscriptionStatus2 = [v5 subscriptionStatus];
      if (subscriptionStatus == subscriptionStatus2)
      {
        v9 = 1;
      }

      else
      {
        subscriptionStatus3 = [(BMSiriAssistantSuggestionFeaturesiCloudFeatures *)self subscriptionStatus];
        subscriptionStatus4 = [v5 subscriptionStatus];
        v9 = [subscriptionStatus3 isEqual:subscriptionStatus4];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  if ([(BMSiriAssistantSuggestionFeaturesiCloudFeatures *)self hasDaysSinceAccountCreated])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesiCloudFeatures daysSinceAccountCreated](self, "daysSinceAccountCreated")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesiCloudFeatures *)self hasIsInFamily])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesiCloudFeatures isInFamily](self, "isInFamily")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMSiriAssistantSuggestionFeaturesiCloudFeatures *)self hasIsHeadOfFamily])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesiCloudFeatures isHeadOfFamily](self, "isHeadOfFamily")}];
  }

  else
  {
    v5 = 0;
  }

  subscriptionStatus = [(BMSiriAssistantSuggestionFeaturesiCloudFeatures *)self subscriptionStatus];
  v14[0] = @"daysSinceAccountCreated";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"isInFamily";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"isHeadOfFamily";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"subscriptionStatus";
  null4 = subscriptionStatus;
  if (!subscriptionStatus)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (subscriptionStatus)
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
      if (v4)
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

  if (!v4)
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

- (BMSiriAssistantSuggestionFeaturesiCloudFeatures)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"daysSinceAccountCreated"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"isInFamily"];
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
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isInFamily"];
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

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isHeadOfFamily"];
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
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isHeadOfFamily"];
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

    v13 = [dictionaryCopy objectForKeyedSubscript:@"subscriptionStatus"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      error = v32;
      v15 = [(BMSiriAssistantSuggestionFeaturesiCloudFeatures *)selfCopy3 initWithDaysSinceAccountCreated:v8 isInFamily:v32 isHeadOfFamily:v12 subscriptionStatus:v14];
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
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subscriptionStatus"];
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
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"daysSinceAccountCreated"];
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
  [(BMSiriAssistantSuggestionFeaturesiCloudFeatures *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_hasDaysSinceAccountCreated)
  {
    daysSinceAccountCreated = self->_daysSinceAccountCreated;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_hasIsInFamily)
  {
    isInFamily = self->_isInFamily;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_hasIsHeadOfFamily)
  {
    isHeadOfFamily = self->_isHeadOfFamily;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_subscriptionStatus)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v42.receiver = self;
  v42.super_class = BMSiriAssistantSuggestionFeaturesiCloudFeatures;
  v5 = [(BMEventBase *)&v42 init];
  if (!v5)
  {
    goto LABEL_65;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_63;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v43 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v43 & 0x7F) << v7;
        if ((v43 & 0x80) == 0)
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
        goto LABEL_63;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      if (v15 == 3)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v5->_hasIsHeadOfFamily = 1;
        while (1)
        {
          v43 = 0;
          v35 = [fromCopy position] + 1;
          if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v34 |= (v43 & 0x7F) << v32;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v13 = v33++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_60;
          }
        }

        v22 = (v34 != 0) & ~[fromCopy hasError];
LABEL_60:
        v38 = 19;
LABEL_61:
        *(&v5->super.super.isa + v38) = v22;
        goto LABEL_62;
      }

      if (v15 != 4)
      {
LABEL_33:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      v23 = PBReaderReadString();
      subscriptionStatus = v5->_subscriptionStatus;
      v5->_subscriptionStatus = v23;

LABEL_62:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_63;
      }
    }

    if (v15 == 1)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v5->_hasDaysSinceAccountCreated = 1;
      while (1)
      {
        v43 = 0;
        v28 = [fromCopy position] + 1;
        if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v27 |= (v43 & 0x7F) << v25;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v25 += 7;
        v13 = v26++ >= 9;
        if (v13)
        {
          v31 = 0;
          goto LABEL_58;
        }
      }

      if ([fromCopy hasError])
      {
        v31 = 0;
      }

      else
      {
        v31 = v27;
      }

LABEL_58:
      v5->_daysSinceAccountCreated = v31;
      goto LABEL_62;
    }

    if (v15 != 2)
    {
      goto LABEL_33;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v5->_hasIsInFamily = 1;
    while (1)
    {
      v43 = 0;
      v19 = [fromCopy position] + 1;
      if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
      {
        data4 = [fromCopy data];
        [data4 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v18 |= (v43 & 0x7F) << v16;
      if ((v43 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      v13 = v17++ >= 9;
      if (v13)
      {
        LOBYTE(v22) = 0;
        goto LABEL_54;
      }
    }

    v22 = (v18 != 0) & ~[fromCopy hasError];
LABEL_54:
    v38 = 17;
    goto LABEL_61;
  }

LABEL_63:
  if ([fromCopy hasError])
  {
LABEL_64:
    v40 = 0;
  }

  else
  {
LABEL_65:
    v40 = v5;
  }

  return v40;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriAssistantSuggestionFeaturesiCloudFeatures daysSinceAccountCreated](self, "daysSinceAccountCreated")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesiCloudFeatures isInFamily](self, "isInFamily")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriAssistantSuggestionFeaturesiCloudFeatures isHeadOfFamily](self, "isHeadOfFamily")}];
  subscriptionStatus = [(BMSiriAssistantSuggestionFeaturesiCloudFeatures *)self subscriptionStatus];
  v8 = [v3 initWithFormat:@"BMSiriAssistantSuggestionFeaturesiCloudFeatures with daysSinceAccountCreated: %@, isInFamily: %@, isHeadOfFamily: %@, subscriptionStatus: %@", v4, v5, v6, subscriptionStatus];

  return v8;
}

- (BMSiriAssistantSuggestionFeaturesiCloudFeatures)initWithDaysSinceAccountCreated:(id)created isInFamily:(id)family isHeadOfFamily:(id)ofFamily subscriptionStatus:(id)status
{
  createdCopy = created;
  familyCopy = family;
  ofFamilyCopy = ofFamily;
  statusCopy = status;
  v17.receiver = self;
  v17.super_class = BMSiriAssistantSuggestionFeaturesiCloudFeatures;
  v14 = [(BMEventBase *)&v17 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (createdCopy)
    {
      v14->_hasDaysSinceAccountCreated = 1;
      intValue = [createdCopy intValue];
    }

    else
    {
      v14->_hasDaysSinceAccountCreated = 0;
      intValue = -1;
    }

    v14->_daysSinceAccountCreated = intValue;
    if (familyCopy)
    {
      v14->_hasIsInFamily = 1;
      v14->_isInFamily = [familyCopy BOOLValue];
    }

    else
    {
      v14->_hasIsInFamily = 0;
      v14->_isInFamily = 0;
    }

    if (ofFamilyCopy)
    {
      v14->_hasIsHeadOfFamily = 1;
      v14->_isHeadOfFamily = [ofFamilyCopy BOOLValue];
    }

    else
    {
      v14->_hasIsHeadOfFamily = 0;
      v14->_isHeadOfFamily = 0;
    }

    objc_storeStrong(&v14->_subscriptionStatus, status);
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"daysSinceAccountCreated" number:1 type:2 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isInFamily" number:2 type:12 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isHeadOfFamily" number:3 type:12 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subscriptionStatus" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"daysSinceAccountCreated" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isInFamily" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isHeadOfFamily" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subscriptionStatus" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
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

    v8 = [[BMSiriAssistantSuggestionFeaturesiCloudFeatures alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end