@interface BMContextualUnderstandingSoundAnalysisClassification
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMContextualUnderstandingSoundAnalysisClassification)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMContextualUnderstandingSoundAnalysisClassification)initWithSoundName:(id)name confidence:(id)confidence startOffsetInSecs:(id)secs durationInSecs:(id)inSecs;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMContextualUnderstandingSoundAnalysisClassification

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    soundName = [(BMContextualUnderstandingSoundAnalysisClassification *)self soundName];
    soundName2 = [v5 soundName];
    v8 = soundName2;
    if (soundName == soundName2)
    {
    }

    else
    {
      soundName3 = [(BMContextualUnderstandingSoundAnalysisClassification *)self soundName];
      soundName4 = [v5 soundName];
      v11 = [soundName3 isEqual:soundName4];

      if (!v11)
      {
        goto LABEL_22;
      }
    }

    if (!-[BMContextualUnderstandingSoundAnalysisClassification hasConfidence](self, "hasConfidence") && ![v5 hasConfidence] || -[BMContextualUnderstandingSoundAnalysisClassification hasConfidence](self, "hasConfidence") && objc_msgSend(v5, "hasConfidence") && (-[BMContextualUnderstandingSoundAnalysisClassification confidence](self, "confidence"), v14 = v13, objc_msgSend(v5, "confidence"), v14 == v15))
    {
      if (!-[BMContextualUnderstandingSoundAnalysisClassification hasStartOffsetInSecs](self, "hasStartOffsetInSecs") && ![v5 hasStartOffsetInSecs] || -[BMContextualUnderstandingSoundAnalysisClassification hasStartOffsetInSecs](self, "hasStartOffsetInSecs") && objc_msgSend(v5, "hasStartOffsetInSecs") && (v16 = -[BMContextualUnderstandingSoundAnalysisClassification startOffsetInSecs](self, "startOffsetInSecs"), v16 == objc_msgSend(v5, "startOffsetInSecs")))
      {
        if (!-[BMContextualUnderstandingSoundAnalysisClassification hasDurationInSecs](self, "hasDurationInSecs") && ![v5 hasDurationInSecs])
        {
          v12 = 1;
          goto LABEL_23;
        }

        if (-[BMContextualUnderstandingSoundAnalysisClassification hasDurationInSecs](self, "hasDurationInSecs") && [v5 hasDurationInSecs])
        {
          durationInSecs = [(BMContextualUnderstandingSoundAnalysisClassification *)self durationInSecs];
          v12 = durationInSecs == [v5 durationInSecs];
LABEL_23:

          goto LABEL_24;
        }
      }
    }

LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)jsonDictionary
{
  v17[4] = *MEMORY[0x1E69E9840];
  soundName = [(BMContextualUnderstandingSoundAnalysisClassification *)self soundName];
  if (![(BMContextualUnderstandingSoundAnalysisClassification *)self hasConfidence]|| ([(BMContextualUnderstandingSoundAnalysisClassification *)self confidence], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMContextualUnderstandingSoundAnalysisClassification *)self confidence];
    v5 = MEMORY[0x1E696AD98];
    [(BMContextualUnderstandingSoundAnalysisClassification *)self confidence];
    v6 = [v5 numberWithDouble:?];
  }

  if ([(BMContextualUnderstandingSoundAnalysisClassification *)self hasStartOffsetInSecs])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMContextualUnderstandingSoundAnalysisClassification startOffsetInSecs](self, "startOffsetInSecs")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMContextualUnderstandingSoundAnalysisClassification *)self hasDurationInSecs])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMContextualUnderstandingSoundAnalysisClassification durationInSecs](self, "durationInSecs")}];
  }

  else
  {
    v8 = 0;
  }

  v16[0] = @"soundName";
  null = soundName;
  if (!soundName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = null;
  v16[1] = @"confidence";
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null2;
  v16[2] = @"startOffsetInSecs";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = null3;
  v16[3] = @"durationInSecs";
  null4 = v8;
  if (!v8)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = null4;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (v7)
    {
LABEL_21:
      if (v6)
      {
        goto LABEL_22;
      }

LABEL_28:

      if (soundName)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }
  }

  if (!v6)
  {
    goto LABEL_28;
  }

LABEL_22:
  if (soundName)
  {
    goto LABEL_23;
  }

LABEL_29:

LABEL_23:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMContextualUnderstandingSoundAnalysisClassification)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"soundName"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"confidence"];
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
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidence"];
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

    v10 = [dictionaryCopy objectForKeyedSubscript:@"startOffsetInSecs"];
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
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"startOffsetInSecs"];
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

    v13 = [dictionaryCopy objectForKeyedSubscript:@"durationInSecs"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      error = v32;
      v15 = [(BMContextualUnderstandingSoundAnalysisClassification *)selfCopy3 initWithSoundName:v8 confidence:v32 startOffsetInSecs:v12 durationInSecs:v14];
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
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"durationInSecs"];
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
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"soundName"];
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
  [(BMContextualUnderstandingSoundAnalysisClassification *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_soundName)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_hasConfidence)
  {
    confidence = self->_confidence;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }

  if (self->_hasStartOffsetInSecs)
  {
    startOffsetInSecs = self->_startOffsetInSecs;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }

  if (self->_hasDurationInSecs)
  {
    durationInSecs = self->_durationInSecs;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v38.receiver = self;
  v38.super_class = BMContextualUnderstandingSoundAnalysisClassification;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_61;
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
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v5->_hasStartOffsetInSecs = 1;
          while (1)
          {
            LOBYTE(v39) = 0;
            v30 = [fromCopy position] + 1;
            if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v29 |= (LOBYTE(v39) & 0x7F) << v27;
            if ((LOBYTE(v39) & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v13 = v28++ >= 9;
            if (v13)
            {
              v24 = 0;
              goto LABEL_54;
            }
          }

          if ([fromCopy hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v29;
          }

LABEL_54:
          v33 = 24;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_35:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_60;
            }

            goto LABEL_58;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          v5->_hasDurationInSecs = 1;
          while (1)
          {
            LOBYTE(v39) = 0;
            v21 = [fromCopy position] + 1;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (LOBYTE(v39) & 0x7F) << v18;
            if ((LOBYTE(v39) & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v13 = v19++ >= 9;
            if (v13)
            {
              v24 = 0;
              goto LABEL_50;
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

LABEL_50:
          v33 = 28;
        }

        *(&v5->super.super.isa + v33) = v24;
      }

      else if (v15 == 1)
      {
        v25 = PBReaderReadString();
        soundName = v5->_soundName;
        v5->_soundName = v25;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_35;
        }

        v5->_hasConfidence = 1;
        v39 = 0.0;
        v16 = [fromCopy position] + 8;
        if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 8, v17 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v39 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_confidence = v39;
      }

LABEL_58:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_60:
    v36 = 0;
  }

  else
  {
LABEL_61:
    v36 = v5;
  }

  return v36;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  soundName = [(BMContextualUnderstandingSoundAnalysisClassification *)self soundName];
  v5 = MEMORY[0x1E696AD98];
  [(BMContextualUnderstandingSoundAnalysisClassification *)self confidence];
  v6 = [v5 numberWithDouble:?];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMContextualUnderstandingSoundAnalysisClassification startOffsetInSecs](self, "startOffsetInSecs")}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMContextualUnderstandingSoundAnalysisClassification durationInSecs](self, "durationInSecs")}];
  v9 = [v3 initWithFormat:@"BMContextualUnderstandingSoundAnalysisClassification with soundName: %@, confidence: %@, startOffsetInSecs: %@, durationInSecs: %@", soundName, v6, v7, v8];

  return v9;
}

- (BMContextualUnderstandingSoundAnalysisClassification)initWithSoundName:(id)name confidence:(id)confidence startOffsetInSecs:(id)secs durationInSecs:(id)inSecs
{
  nameCopy = name;
  confidenceCopy = confidence;
  secsCopy = secs;
  inSecsCopy = inSecs;
  v20.receiver = self;
  v20.super_class = BMContextualUnderstandingSoundAnalysisClassification;
  v15 = [(BMEventBase *)&v20 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_soundName, name);
    if (confidenceCopy)
    {
      v15->_hasConfidence = 1;
      [confidenceCopy doubleValue];
    }

    else
    {
      v15->_hasConfidence = 0;
      v16 = -1.0;
    }

    v15->_confidence = v16;
    if (secsCopy)
    {
      v15->_hasStartOffsetInSecs = 1;
      unsignedIntValue = [secsCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v15->_hasStartOffsetInSecs = 0;
    }

    v15->_startOffsetInSecs = unsignedIntValue;
    if (inSecsCopy)
    {
      v15->_hasDurationInSecs = 1;
      unsignedIntValue2 = [inSecsCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v15->_hasDurationInSecs = 0;
    }

    v15->_durationInSecs = unsignedIntValue2;
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"soundName" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidence" number:2 type:0 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startOffsetInSecs" number:3 type:4 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"durationInSecs" number:4 type:4 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"soundName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidence" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startOffsetInSecs" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"durationInSecs" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
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

    v8 = [[BMContextualUnderstandingSoundAnalysisClassification alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end