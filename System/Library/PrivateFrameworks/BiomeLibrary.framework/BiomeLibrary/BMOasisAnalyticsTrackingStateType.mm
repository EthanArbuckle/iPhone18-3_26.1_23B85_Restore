@interface BMOasisAnalyticsTrackingStateType
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMOasisAnalyticsTrackingStateType)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMOasisAnalyticsTrackingStateType)initWithMode:(int)a3 health:(id)a4 numberInlierPoints:(id)a5 numberOfRegularKeyframes:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMOasisAnalyticsTrackingStateType

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMOasisAnalyticsTrackingStateType *)self mode];
    if (v6 != [v5 mode])
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

      v10 = [(BMOasisAnalyticsTrackingStateType *)self numberInlierPoints];
      if (v10 != [v5 numberInlierPoints])
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
      v11 = [(BMOasisAnalyticsTrackingStateType *)self numberOfRegularKeyframes];
      v12 = v11 == [v5 numberOfRegularKeyframes];
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
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = v9;
  v16[1] = @"health";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = v10;
  v16[2] = @"numberInlierPoints";
  v11 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = v11;
  v16[3] = @"numberOfRegularKeyframes";
  v12 = v8;
  if (!v8)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = v12;
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

- (BMOasisAnalyticsTrackingStateType)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v45[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"mode"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v37 = 0;
LABEL_9:
    v9 = [v6 objectForKeyedSubscript:@"health"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v20 = 0;
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
        v20 = 0;
        *a4 = v23;
        goto LABEL_34;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"numberInlierPoints"];
    v36 = v7;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v15 = 0;
          v20 = 0;
          goto LABEL_34;
        }

        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v40 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numberInlierPoints"];
        v41 = v17;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v12 = v10;
        v13 = self;
        v16 = v25 = a4;
        v26 = [v34 initWithDomain:v24 code:2 userInfo:v16];
        v15 = 0;
        v20 = 0;
        *v25 = v26;
        goto LABEL_32;
      }

      v12 = v10;
      v13 = self;
      v14 = a4;
      v15 = v11;
    }

    else
    {
      v12 = v10;
      v13 = self;
      v14 = a4;
      v15 = 0;
    }

    v16 = [v6 objectForKeyedSubscript:@"numberOfRegularKeyframes"];
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = 0;
LABEL_18:
      v18 = [v37 intValue];
      v19 = v13;
      v10 = v12;
      self = [(BMOasisAnalyticsTrackingStateType *)v19 initWithMode:v18 health:v12 numberInlierPoints:v15 numberOfRegularKeyframes:v17];
      v20 = self;
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

    if (v14)
    {
      v35 = objc_alloc(MEMORY[0x1E696ABC0]);
      v33 = *MEMORY[0x1E698F240];
      v38 = *MEMORY[0x1E696A578];
      v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numberOfRegularKeyframes"];
      v39 = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      *v14 = [v35 initWithDomain:v33 code:2 userInfo:v28];
    }

    v17 = 0;
    v20 = 0;
LABEL_32:
    self = v13;
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

  if (!a4)
  {
    v37 = 0;
    v20 = 0;
    goto LABEL_36;
  }

  v31 = objc_alloc(MEMORY[0x1E696ABC0]);
  v32 = *MEMORY[0x1E698F240];
  v44 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"mode"];
  v45[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
  v37 = 0;
  v20 = 0;
  *a4 = [v31 initWithDomain:v32 code:2 userInfo:v9];
LABEL_35:

LABEL_36:
  v29 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsTrackingStateType *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  mode = self->_mode;
  v9 = v4;
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = BMOasisAnalyticsTrackingStateType;
  v5 = [(BMEventBase *)&v43 init];
  if (!v5)
  {
    goto LABEL_73;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v44) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
            v35 = [v4 position] + 1;
            if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
            {
              v37 = [v4 data];
              [v37 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
            v21 = [v4 position] + 1;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
            {
              v23 = [v4 data];
              [v23 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
          v28 = [v4 position] + 1;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:&v44 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        if (([v4 hasError] & 1) != 0 || v27 > 3)
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
        v16 = [v4 position] + 4;
        if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 4, v17 <= objc_msgSend(v4, "length")))
        {
          v39 = [v4 data];
          [v39 getBytes:&v44 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_health = v44;
      }

LABEL_70:
      v40 = [v4 position];
    }

    while (v40 < [v4 length]);
  }

  if ([v4 hasError])
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

- (BMOasisAnalyticsTrackingStateType)initWithMode:(int)a3 health:(id)a4 numberInlierPoints:(id)a5 numberOfRegularKeyframes:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = BMOasisAnalyticsTrackingStateType;
  v13 = [(BMEventBase *)&v18 init];
  if (v13)
  {
    v13->_dataVersion = [objc_opt_class() latestDataVersion];
    v13->_mode = a3;
    if (v10)
    {
      v13->_hasHealth = 1;
      [v10 floatValue];
    }

    else
    {
      v13->_hasHealth = 0;
      v14 = -1.0;
    }

    v13->_health = v14;
    if (v11)
    {
      v13->_hasNumberInlierPoints = 1;
      v15 = [v11 unsignedIntValue];
    }

    else
    {
      v15 = 0;
      v13->_hasNumberInlierPoints = 0;
    }

    v13->_numberInlierPoints = v15;
    if (v12)
    {
      v13->_hasNumberOfRegularKeyframes = 1;
      v16 = [v12 unsignedIntValue];
    }

    else
    {
      v16 = 0;
      v13->_hasNumberOfRegularKeyframes = 0;
    }

    v13->_numberOfRegularKeyframes = v16;
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

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