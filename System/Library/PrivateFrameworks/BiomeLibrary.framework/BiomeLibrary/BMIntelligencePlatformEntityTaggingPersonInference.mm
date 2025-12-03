@interface BMIntelligencePlatformEntityTaggingPersonInference
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMIntelligencePlatformEntityTaggingPersonInference)initWithEntityIdentifier:(id)identifier entityTagID:(int)d score:(id)score feedbackEventID:(id)iD;
- (BMIntelligencePlatformEntityTaggingPersonInference)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMIntelligencePlatformEntityTaggingPersonInference

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"entityIdentifier" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:5 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"entityTagID" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"score" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"feedbackEventID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ((!-[BMIntelligencePlatformEntityTaggingPersonInference hasEntityIdentifier](self, "hasEntityIdentifier") && ![v5 hasEntityIdentifier] || -[BMIntelligencePlatformEntityTaggingPersonInference hasEntityIdentifier](self, "hasEntityIdentifier") && objc_msgSend(v5, "hasEntityIdentifier") && (v6 = -[BMIntelligencePlatformEntityTaggingPersonInference entityIdentifier](self, "entityIdentifier"), v6 == objc_msgSend(v5, "entityIdentifier"))) && (v7 = -[BMIntelligencePlatformEntityTaggingPersonInference entityTagID](self, "entityTagID"), v7 == objc_msgSend(v5, "entityTagID")) && (!-[BMIntelligencePlatformEntityTaggingPersonInference hasScore](self, "hasScore") && !objc_msgSend(v5, "hasScore") || -[BMIntelligencePlatformEntityTaggingPersonInference hasScore](self, "hasScore") && objc_msgSend(v5, "hasScore") && (-[BMIntelligencePlatformEntityTaggingPersonInference score](self, "score"), v9 = v8, objc_msgSend(v5, "score"), v9 == v10)))
    {
      feedbackEventID = [(BMIntelligencePlatformEntityTaggingPersonInference *)self feedbackEventID];
      feedbackEventID2 = [v5 feedbackEventID];
      if (feedbackEventID == feedbackEventID2)
      {
        v15 = 1;
      }

      else
      {
        feedbackEventID3 = [(BMIntelligencePlatformEntityTaggingPersonInference *)self feedbackEventID];
        feedbackEventID4 = [v5 feedbackEventID];
        v15 = [feedbackEventID3 isEqual:feedbackEventID4];
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)jsonDictionary
{
  v17[4] = *MEMORY[0x1E69E9840];
  if ([(BMIntelligencePlatformEntityTaggingPersonInference *)self hasEntityIdentifier])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMIntelligencePlatformEntityTaggingPersonInference entityIdentifier](self, "entityIdentifier")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMIntelligencePlatformEntityTaggingPersonInference entityTagID](self, "entityTagID")}];
  if (![(BMIntelligencePlatformEntityTaggingPersonInference *)self hasScore]|| ([(BMIntelligencePlatformEntityTaggingPersonInference *)self score], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMIntelligencePlatformEntityTaggingPersonInference *)self score];
    v6 = MEMORY[0x1E696AD98];
    [(BMIntelligencePlatformEntityTaggingPersonInference *)self score];
    v7 = [v6 numberWithDouble:?];
  }

  feedbackEventID = [(BMIntelligencePlatformEntityTaggingPersonInference *)self feedbackEventID];
  v16[0] = @"entityIdentifier";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = null;
  v16[1] = @"entityTagID";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null2;
  v16[2] = @"score";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = null3;
  v16[3] = @"feedbackEventID";
  null4 = feedbackEventID;
  if (!feedbackEventID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = null4;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (feedbackEventID)
  {
    if (v7)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v7)
    {
LABEL_18:
      if (v4)
      {
        goto LABEL_19;
      }

LABEL_25:

      if (v3)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

  if (!v4)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v3)
  {
    goto LABEL_20;
  }

LABEL_26:

LABEL_20:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMIntelligencePlatformEntityTaggingPersonInference)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"entityIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v32 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"entityTagID"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v31 = 0;
            selfCopy4 = 0;
            goto LABEL_35;
          }

          v26 = objc_alloc(MEMORY[0x1E696ABC0]);
          v27 = *MEMORY[0x1E698F240];
          v37 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"entityTagID"];
          v38 = v16;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          v31 = 0;
          selfCopy4 = 0;
          *error = [v26 initWithDomain:v27 code:2 userInfo:v13];
          goto LABEL_34;
        }

        v9 = [MEMORY[0x1E696AD98] numberWithInt:BMIntelligencePlatformEntityTaggingPersonInferenceEntityTagIDFromString(v8)];
      }

      v31 = v9;
    }

    else
    {
      v31 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v16 = 0;
          selfCopy4 = 0;
          goto LABEL_34;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v35 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"score"];
        v36 = v18;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        selfCopy3 = self;
        v17 = v20 = error;
        v21 = [v29 initWithDomain:v19 code:2 userInfo:v17];
        v16 = 0;
        selfCopy4 = 0;
        *v20 = v21;
        goto LABEL_32;
      }

      selfCopy3 = self;
      errorCopy2 = error;
      v16 = v13;
    }

    else
    {
      selfCopy3 = self;
      errorCopy2 = error;
      v16 = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"feedbackEventID"];
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v18 = 0;
LABEL_22:
      self = -[BMIntelligencePlatformEntityTaggingPersonInference initWithEntityIdentifier:entityTagID:score:feedbackEventID:](selfCopy3, "initWithEntityIdentifier:entityTagID:score:feedbackEventID:", v32, [v31 intValue], v16, v18);
      selfCopy4 = self;
LABEL_33:

LABEL_34:
      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
      goto LABEL_22;
    }

    if (errorCopy2)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v33 = *MEMORY[0x1E696A578];
      v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"feedbackEventID"];
      v34 = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      *errorCopy2 = [v30 initWithDomain:v28 code:2 userInfo:v23];
    }

    v18 = 0;
    selfCopy4 = 0;
LABEL_32:
    self = selfCopy3;
    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v32 = 0;
    selfCopy4 = 0;
    goto LABEL_36;
  }

  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = *MEMORY[0x1E698F240];
  v39 = *MEMORY[0x1E696A578];
  v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"entityIdentifier"];
  v40[0] = v31;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v32 = 0;
  selfCopy4 = 0;
  *error = [v10 initWithDomain:v11 code:2 userInfo:v8];
LABEL_35:

LABEL_36:
  v24 = *MEMORY[0x1E69E9840];
  return selfCopy4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligencePlatformEntityTaggingPersonInference *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasEntityIdentifier)
  {
    entityIdentifier = self->_entityIdentifier;
    PBDataWriterWriteUint64Field();
  }

  entityTagID = self->_entityTagID;
  PBDataWriterWriteUint32Field();
  if (self->_hasScore)
  {
    score = self->_score;
    PBDataWriterWriteDoubleField();
  }

  v7 = toCopy;
  if (self->_feedbackEventID)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v38.receiver = self;
  v38.super_class = BMIntelligencePlatformEntityTaggingPersonInference;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_60;
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
        LOBYTE(v39) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v39) & 0x7F) << v7;
        if ((LOBYTE(v39) & 0x80) == 0)
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
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v5->_hasScore = 1;
          v39 = 0.0;
          v32 = [fromCopy position] + 8;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 8, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_score = v39;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_33:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_59;
            }

            goto LABEL_57;
          }

          v23 = PBReaderReadString();
          feedbackEventID = v5->_feedbackEventID;
          v5->_feedbackEventID = v23;
        }
      }

      else if (v15 == 1)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasEntityIdentifier = 1;
        while (1)
        {
          LOBYTE(v39) = 0;
          v28 = [fromCopy position] + 1;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v27 |= (LOBYTE(v39) & 0x7F) << v25;
          if ((LOBYTE(v39) & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v13 = v26++ >= 9;
          if (v13)
          {
            v31 = 0;
            goto LABEL_54;
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

LABEL_54:
        v5->_entityIdentifier = v31;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_33;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v39) = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (LOBYTE(v39) & 0x7F) << v16;
          if ((LOBYTE(v39) & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_49;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 0x18)
        {
LABEL_49:
          LODWORD(v18) = 0;
        }

        v5->_entityTagID = v18;
      }

LABEL_57:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_59:
    v36 = 0;
  }

  else
  {
LABEL_60:
    v36 = v5;
  }

  return v36;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMIntelligencePlatformEntityTaggingPersonInference entityIdentifier](self, "entityIdentifier")}];
  v5 = BMIntelligencePlatformEntityTaggingPersonInferenceEntityTagIDAsString([(BMIntelligencePlatformEntityTaggingPersonInference *)self entityTagID]);
  v6 = MEMORY[0x1E696AD98];
  [(BMIntelligencePlatformEntityTaggingPersonInference *)self score];
  v7 = [v6 numberWithDouble:?];
  feedbackEventID = [(BMIntelligencePlatformEntityTaggingPersonInference *)self feedbackEventID];
  v9 = [v3 initWithFormat:@"BMIntelligencePlatformEntityTaggingPersonInference with entityIdentifier: %@, entityTagID: %@, score: %@, feedbackEventID: %@", v4, v5, v7, feedbackEventID];

  return v9;
}

- (BMIntelligencePlatformEntityTaggingPersonInference)initWithEntityIdentifier:(id)identifier entityTagID:(int)d score:(id)score feedbackEventID:(id)iD
{
  identifierCopy = identifier;
  scoreCopy = score;
  iDCopy = iD;
  v17.receiver = self;
  v17.super_class = BMIntelligencePlatformEntityTaggingPersonInference;
  v13 = [(BMEventBase *)&v17 init];
  if (v13)
  {
    v13->_dataVersion = [objc_opt_class() latestDataVersion];
    if (identifierCopy)
    {
      v13->_hasEntityIdentifier = 1;
      unsignedLongLongValue = [identifierCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v13->_hasEntityIdentifier = 0;
    }

    v13->_entityIdentifier = unsignedLongLongValue;
    v13->_entityTagID = d;
    if (scoreCopy)
    {
      v13->_hasScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v13->_hasScore = 0;
      v15 = -1.0;
    }

    v13->_score = v15;
    objc_storeStrong(&v13->_feedbackEventID, iD);
  }

  return v13;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entityIdentifier" number:1 type:5 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entityTagID" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"score" number:3 type:0 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"feedbackEventID" number:4 type:13 subMessageClass:0];
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

    v8 = [[BMIntelligencePlatformEntityTaggingPersonInference alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end