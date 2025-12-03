@interface BMOasisAnalyticsTrackingStateType
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMOasisAnalyticsTrackingStateType)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMOasisAnalyticsTrackingStateType)initWithMode:(int)mode health:(id)health numberInlierPoints:(id)points numberOfRegularKeyframes:(id)keyframes;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMOasisAnalyticsTrackingStateType

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    mode = [(BMOasisAnalyticsTrackingStateType *)self mode];
    if (mode != [v5 mode])
    {
      goto LABEL_19;
    }

    if (-[BMOasisAnalyticsTrackingStateType hasHealth](self, "hasHealth") || [v5 hasHealth])
    {
      if (![(BMOasisAnalyticsTrackingStateType *)self hasHealth])
      {
        goto LABEL_19;
      }

      if (![v5 hasHealth])
      {
        goto LABEL_19;
      }

      [(BMOasisAnalyticsTrackingStateType *)self health];
      v8 = v7;
      [v5 health];
      if (v8 != v9)
      {
        goto LABEL_19;
      }
    }

    if (-[BMOasisAnalyticsTrackingStateType hasNumberInlierPoints](self, "hasNumberInlierPoints") || [v5 hasNumberInlierPoints])
    {
      if (![(BMOasisAnalyticsTrackingStateType *)self hasNumberInlierPoints])
      {
        goto LABEL_19;
      }

      if (![v5 hasNumberInlierPoints])
      {
        goto LABEL_19;
      }

      numberInlierPoints = [(BMOasisAnalyticsTrackingStateType *)self numberInlierPoints];
      if (numberInlierPoints != [v5 numberInlierPoints])
      {
        goto LABEL_19;
      }
    }

    if (!-[BMOasisAnalyticsTrackingStateType hasNumberOfRegularKeyframes](self, "hasNumberOfRegularKeyframes") && ![v5 hasNumberOfRegularKeyframes])
    {
      v12 = 1;
      goto LABEL_20;
    }

    if (-[BMOasisAnalyticsTrackingStateType hasNumberOfRegularKeyframes](self, "hasNumberOfRegularKeyframes") && [v5 hasNumberOfRegularKeyframes])
    {
      numberOfRegularKeyframes = [(BMOasisAnalyticsTrackingStateType *)self numberOfRegularKeyframes];
      v12 = numberOfRegularKeyframes == [v5 numberOfRegularKeyframes];
    }

    else
    {
LABEL_19:
      v12 = 0;
    }

LABEL_20:

    goto LABEL_21;
  }

  v12 = 0;
LABEL_21:

  return v12;
}

- (id)jsonDictionary
{
  v17[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMOasisAnalyticsTrackingStateType mode](self, "mode")}];
  if (![(BMOasisAnalyticsTrackingStateType *)self hasHealth]|| ([(BMOasisAnalyticsTrackingStateType *)self health], fabsf(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMOasisAnalyticsTrackingStateType *)self health];
    v5 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsTrackingStateType *)self health];
    v6 = [v5 numberWithFloat:?];
  }

  if ([(BMOasisAnalyticsTrackingStateType *)self hasNumberInlierPoints])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMOasisAnalyticsTrackingStateType numberInlierPoints](self, "numberInlierPoints")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMOasisAnalyticsTrackingStateType *)self hasNumberOfRegularKeyframes])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMOasisAnalyticsTrackingStateType numberOfRegularKeyframes](self, "numberOfRegularKeyframes")}];
  }

  else
  {
    v8 = 0;
  }

  v16[0] = @"mode";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = null;
  v16[1] = @"health";
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null2;
  v16[2] = @"numberInlierPoints";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = null3;
  v16[3] = @"numberOfRegularKeyframes";
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

      if (v3)
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
  if (v3)
  {
    goto LABEL_23;
  }

LABEL_29:

LABEL_23:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMOasisAnalyticsTrackingStateType)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v45[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"mode"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v37 = 0;
LABEL_9:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"health"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          selfCopy4 = 0;
          goto LABEL_35;
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v42 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"health"];
        v43 = v15;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v23 = [v21 initWithDomain:v22 code:2 userInfo:v11];
        v10 = 0;
        selfCopy4 = 0;
        *error = v23;
        goto LABEL_34;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"numberInlierPoints"];
    v36 = v7;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          selfCopy4 = 0;
          goto LABEL_34;
        }

        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v40 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numberInlierPoints"];
        v41 = v17;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v12 = v10;
        selfCopy3 = self;
        v16 = v25 = error;
        v26 = [v34 initWithDomain:v24 code:2 userInfo:v16];
        v15 = 0;
        selfCopy4 = 0;
        *v25 = v26;
        goto LABEL_32;
      }

      v12 = v10;
      selfCopy3 = self;
      errorCopy2 = error;
      v15 = v11;
    }

    else
    {
      v12 = v10;
      selfCopy3 = self;
      errorCopy2 = error;
      v15 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"numberOfRegularKeyframes"];
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = 0;
LABEL_18:
      intValue = [v37 intValue];
      v19 = selfCopy3;
      v10 = v12;
      self = [(BMOasisAnalyticsTrackingStateType *)v19 initWithMode:intValue health:v12 numberInlierPoints:v15 numberOfRegularKeyframes:v17];
      selfCopy4 = self;
LABEL_33:

      v7 = v36;
LABEL_34:

      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
      goto LABEL_18;
    }

    if (errorCopy2)
    {
      v35 = objc_alloc(MEMORY[0x1E696ABC0]);
      v33 = *MEMORY[0x1E698F240];
      v38 = *MEMORY[0x1E696A578];
      v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numberOfRegularKeyframes"];
      v39 = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      *errorCopy2 = [v35 initWithDomain:v33 code:2 userInfo:v28];
    }

    v17 = 0;
    selfCopy4 = 0;
LABEL_32:
    self = selfCopy3;
    v10 = v12;
    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_8:
    v37 = v8;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:BMOasisAnalyticsTrackingStateTrackingModeFromString(v7)];
    goto LABEL_8;
  }

  if (!error)
  {
    v37 = 0;
    selfCopy4 = 0;
    goto LABEL_36;
  }

  v31 = objc_alloc(MEMORY[0x1E696ABC0]);
  v32 = *MEMORY[0x1E698F240];
  v44 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"mode"];
  v45[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
  v37 = 0;
  selfCopy4 = 0;
  *error = [v31 initWithDomain:v32 code:2 userInfo:v9];
LABEL_35:

LABEL_36:
  v29 = *MEMORY[0x1E69E9840];
  return selfCopy4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsTrackingStateType *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  mode = self->_mode;
  v9 = toCopy;
  PBDataWriterWriteUint32Field();
  if (self->_hasHealth)
  {
    health = self->_health;
    PBDataWriterWriteFloatField();
  }

  if (self->_hasNumberInlierPoints)
  {
    numberInlierPoints = self->_numberInlierPoints;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasNumberOfRegularKeyframes)
  {
    numberOfRegularKeyframes = self->_numberOfRegularKeyframes;
    PBDataWriterWriteUint32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v43.receiver = self;
  v43.super_class = BMOasisAnalyticsTrackingStateType;
  v5 = [(BMEventBase *)&v43 init];
  if (!v5)
  {
    goto LABEL_73;
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
        LOBYTE(v44) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v44) & 0x7F) << v7;
        if ((LOBYTE(v44) & 0x80) == 0)
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
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v5->_hasNumberInlierPoints = 1;
          while (1)
          {
            LOBYTE(v44) = 0;
            v35 = [fromCopy position] + 1;
            if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v34 |= (LOBYTE(v44) & 0x7F) << v32;
            if ((LOBYTE(v44) & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v13 = v33++ >= 9;
            if (v13)
            {
              v24 = 0;
              goto LABEL_66;
            }
          }

          if ([fromCopy hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v34;
          }

LABEL_66:
          v38 = 32;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_35:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_72;
            }

            goto LABEL_70;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          v5->_hasNumberOfRegularKeyframes = 1;
          while (1)
          {
            LOBYTE(v44) = 0;
            v21 = [fromCopy position] + 1;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (LOBYTE(v44) & 0x7F) << v18;
            if ((LOBYTE(v44) & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v13 = v19++ >= 9;
            if (v13)
            {
              v24 = 0;
              goto LABEL_58;
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

LABEL_58:
          v38 = 36;
        }

        *(&v5->super.super.isa + v38) = v24;
      }

      else if (v15 == 1)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        while (1)
        {
          LOBYTE(v44) = 0;
          v28 = [fromCopy position] + 1;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v27 |= (LOBYTE(v44) & 0x7F) << v25;
          if ((LOBYTE(v44) & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          if (v26++ > 8)
          {
            goto LABEL_61;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v27 > 3)
        {
LABEL_61:
          LODWORD(v27) = 0;
        }

        v5->_mode = v27;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_35;
        }

        v5->_hasHealth = 1;
        v44 = 0.0;
        v16 = [fromCopy position] + 4;
        if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 4, v17 <= objc_msgSend(fromCopy, "length")))
        {
          data5 = [fromCopy data];
          [data5 getBytes:&v44 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_health = v44;
      }

LABEL_70:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_72:
    v41 = 0;
  }

  else
  {
LABEL_73:
    v41 = v5;
  }

  return v41;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMOasisAnalyticsTrackingStateTrackingModeAsString([(BMOasisAnalyticsTrackingStateType *)self mode]);
  v5 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsTrackingStateType *)self health];
  v6 = [v5 numberWithFloat:?];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMOasisAnalyticsTrackingStateType numberInlierPoints](self, "numberInlierPoints")}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMOasisAnalyticsTrackingStateType numberOfRegularKeyframes](self, "numberOfRegularKeyframes")}];
  v9 = [v3 initWithFormat:@"BMOasisAnalyticsTrackingStateType with mode: %@, health: %@, numberInlierPoints: %@, numberOfRegularKeyframes: %@", v4, v6, v7, v8];

  return v9;
}

- (BMOasisAnalyticsTrackingStateType)initWithMode:(int)mode health:(id)health numberInlierPoints:(id)points numberOfRegularKeyframes:(id)keyframes
{
  healthCopy = health;
  pointsCopy = points;
  keyframesCopy = keyframes;
  v18.receiver = self;
  v18.super_class = BMOasisAnalyticsTrackingStateType;
  v13 = [(BMEventBase *)&v18 init];
  if (v13)
  {
    v13->_dataVersion = [objc_opt_class() latestDataVersion];
    v13->_mode = mode;
    if (healthCopy)
    {
      v13->_hasHealth = 1;
      [healthCopy floatValue];
    }

    else
    {
      v13->_hasHealth = 0;
      v14 = -1.0;
    }

    v13->_health = v14;
    if (pointsCopy)
    {
      v13->_hasNumberInlierPoints = 1;
      unsignedIntValue = [pointsCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v13->_hasNumberInlierPoints = 0;
    }

    v13->_numberInlierPoints = unsignedIntValue;
    if (keyframesCopy)
    {
      v13->_hasNumberOfRegularKeyframes = 1;
      unsignedIntValue2 = [keyframesCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v13->_hasNumberOfRegularKeyframes = 0;
    }

    v13->_numberOfRegularKeyframes = unsignedIntValue2;
  }

  return v13;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mode" number:1 type:4 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"health" number:2 type:1 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberInlierPoints" number:3 type:4 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfRegularKeyframes" number:4 type:4 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mode" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"health" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:1 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberInlierPoints" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberOfRegularKeyframes" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
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

    v8 = [[BMOasisAnalyticsTrackingStateType alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end