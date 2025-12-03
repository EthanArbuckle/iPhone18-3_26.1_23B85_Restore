@interface BMNanoSettingsControlCenterUsage
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMNanoSettingsControlCenterUsage)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMNanoSettingsControlCenterUsage)initWithTransition:(int)transition statusDetailTransition:(int)detailTransition buttonID:(id)d buttonPress:(int)press;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMNanoSettingsControlCenterUsage

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    transition = [(BMNanoSettingsControlCenterUsage *)self transition];
    if (transition == [v5 transition] && (v7 = -[BMNanoSettingsControlCenterUsage statusDetailTransition](self, "statusDetailTransition"), v7 == objc_msgSend(v5, "statusDetailTransition")) && (!-[BMNanoSettingsControlCenterUsage hasButtonID](self, "hasButtonID") && !objc_msgSend(v5, "hasButtonID") || -[BMNanoSettingsControlCenterUsage hasButtonID](self, "hasButtonID") && objc_msgSend(v5, "hasButtonID") && (v8 = -[BMNanoSettingsControlCenterUsage buttonID](self, "buttonID"), v8 == objc_msgSend(v5, "buttonID"))))
    {
      buttonPress = [(BMNanoSettingsControlCenterUsage *)self buttonPress];
      v10 = buttonPress == [v5 buttonPress];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMNanoSettingsControlCenterUsage transition](self, "transition")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMNanoSettingsControlCenterUsage statusDetailTransition](self, "statusDetailTransition")}];
  if ([(BMNanoSettingsControlCenterUsage *)self hasButtonID])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMNanoSettingsControlCenterUsage buttonID](self, "buttonID")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMNanoSettingsControlCenterUsage buttonPress](self, "buttonPress")}];
  v14[0] = @"transition";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"statusDetailTransition";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"buttonID";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"buttonPress";
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
      goto LABEL_14;
    }
  }

  else
  {

    if (v5)
    {
LABEL_14:
      if (v4)
      {
        goto LABEL_15;
      }

LABEL_21:

      if (v3)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_22:

LABEL_16:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMNanoSettingsControlCenterUsage)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v42[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"transition"];
  selfCopy = self;
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v34 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"statusDetailTransition"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v8;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v9 = 0;
            selfCopy2 = 0;
            goto LABEL_34;
          }

          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v25 = *MEMORY[0x1E698F240];
          v39 = *MEMORY[0x1E696A578];
          v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"statusDetailTransition"];
          v40 = v13;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
          v26 = [v24 initWithDomain:v25 code:2 userInfo:v11];
          v9 = 0;
          selfCopy2 = 0;
          *error = v26;
          goto LABEL_33;
        }

        v10 = [MEMORY[0x1E696AD98] numberWithInt:BMNanoSettingsControlCenterUsageStatusDetailTransitionTypeFromString(v8)];
      }

      v9 = v10;
    }

    else
    {
      v9 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"buttonID"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v13 = 0;
          selfCopy2 = 0;
          goto LABEL_33;
        }

        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = *MEMORY[0x1E698F240];
        v37 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"buttonID"];
        v38 = v15;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v14 = v30 = error;
        v18 = [v33 initWithDomain:v17 code:2 userInfo:v14];
        v13 = 0;
        selfCopy2 = 0;
        *v30 = v18;
        goto LABEL_32;
      }

      errorCopy2 = error;
      v13 = v11;
    }

    else
    {
      errorCopy2 = error;
      v13 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"buttonPress"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v14;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy2)
          {
            v31 = objc_alloc(MEMORY[0x1E696ABC0]);
            v29 = *MEMORY[0x1E698F240];
            v35 = *MEMORY[0x1E696A578];
            v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"buttonPress"];
            v36 = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
            *errorCopy2 = [v31 initWithDomain:v29 code:2 userInfo:v28];
          }

          v15 = 0;
          selfCopy2 = 0;
          self = selfCopy;
          goto LABEL_32;
        }

        v16 = [MEMORY[0x1E696AD98] numberWithInt:BMNanoSettingsControlCenterUsageButtonPressTypeFromString(v14)];
      }

      v15 = v16;
    }

    else
    {
      v15 = 0;
    }

    self = -[BMNanoSettingsControlCenterUsage initWithTransition:statusDetailTransition:buttonID:buttonPress:](selfCopy, "initWithTransition:statusDetailTransition:buttonID:buttonPress:", [v34 intValue], objc_msgSend(v9, "intValue"), v13, objc_msgSend(v15, "intValue"));
    selfCopy2 = self;
LABEL_32:

LABEL_33:
    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v7;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = [MEMORY[0x1E696AD98] numberWithInt:BMNanoSettingsControlCenterUsageTransitionTypeFromString(v7)];
    goto LABEL_4;
  }

  if (!error)
  {
    v34 = 0;
    selfCopy2 = 0;
    goto LABEL_35;
  }

  v22 = objc_alloc(MEMORY[0x1E696ABC0]);
  v23 = *MEMORY[0x1E698F240];
  v41 = *MEMORY[0x1E696A578];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"transition"];
  v42[0] = v9;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  v34 = 0;
  selfCopy2 = 0;
  *error = [v22 initWithDomain:v23 code:2 userInfo:v8];
LABEL_34:

LABEL_35:
  v20 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMNanoSettingsControlCenterUsage *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  transition = self->_transition;
  PBDataWriterWriteUint32Field();
  statusDetailTransition = self->_statusDetailTransition;
  PBDataWriterWriteUint32Field();
  if (self->_hasButtonID)
  {
    buttonID = self->_buttonID;
    PBDataWriterWriteInt32Field();
  }

  buttonPress = self->_buttonPress;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v45.receiver = self;
  v45.super_class = BMNanoSettingsControlCenterUsage;
  v5 = [(BMEventBase *)&v45 init];
  if (!v5)
  {
    goto LABEL_81;
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
        v46 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v46 & 0x7F) << v7;
        if ((v46 & 0x80) == 0)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v5->_hasButtonID = 1;
          while (1)
          {
            v46 = 0;
            v38 = [fromCopy position] + 1;
            if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v37 |= (v46 & 0x7F) << v35;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v22 = v36++ > 8;
            if (v22)
            {
              LODWORD(v31) = 0;
              goto LABEL_76;
            }
          }

          if ([fromCopy hasError])
          {
            LODWORD(v31) = 0;
          }

          else
          {
            LODWORD(v31) = v37;
          }

LABEL_76:
          v41 = &OBJC_IVAR___BMNanoSettingsControlCenterUsage__buttonID;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_41:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_80;
            }

            goto LABEL_78;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            v46 = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 |= (v46 & 0x7F) << v23;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v22 = v24++ > 8;
            if (v22)
            {
              goto LABEL_67;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || (LODWORD(v31) = v25, v25 > 2))
          {
LABEL_67:
            LODWORD(v31) = 0;
          }

          v41 = &OBJC_IVAR___BMNanoSettingsControlCenterUsage__buttonPress;
        }
      }

      else if (v15 == 1)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          v46 = 0;
          v32 = [fromCopy position] + 1;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v31 |= (v46 & 0x7F) << v29;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v22 = v30++ > 8;
          if (v22)
          {
            goto LABEL_71;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v31 > 3)
        {
LABEL_71:
          LODWORD(v31) = 0;
        }

        v41 = &OBJC_IVAR___BMNanoSettingsControlCenterUsage__transition;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_41;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v46 = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v46 & 0x7F) << v16;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v22 = v17++ > 8;
          if (v22)
          {
            goto LABEL_63;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || (LODWORD(v31) = v18, v18 > 2))
        {
LABEL_63:
          LODWORD(v31) = 0;
        }

        v41 = &OBJC_IVAR___BMNanoSettingsControlCenterUsage__statusDetailTransition;
      }

      *(&v5->super.super.isa + *v41) = v31;
LABEL_78:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_80:
    v43 = 0;
  }

  else
  {
LABEL_81:
    v43 = v5;
  }

  return v43;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMNanoSettingsControlCenterUsageTransitionTypeAsString([(BMNanoSettingsControlCenterUsage *)self transition]);
  v5 = BMNanoSettingsControlCenterUsageStatusDetailTransitionTypeAsString([(BMNanoSettingsControlCenterUsage *)self statusDetailTransition]);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMNanoSettingsControlCenterUsage buttonID](self, "buttonID")}];
  v7 = BMNanoSettingsControlCenterUsageButtonPressTypeAsString([(BMNanoSettingsControlCenterUsage *)self buttonPress]);
  v8 = [v3 initWithFormat:@"BMNanoSettingsControlCenterUsage with transition: %@, statusDetailTransition: %@, buttonID: %@, buttonPress: %@", v4, v5, v6, v7];

  return v8;
}

- (BMNanoSettingsControlCenterUsage)initWithTransition:(int)transition statusDetailTransition:(int)detailTransition buttonID:(id)d buttonPress:(int)press
{
  dCopy = d;
  v14.receiver = self;
  v14.super_class = BMNanoSettingsControlCenterUsage;
  v11 = [(BMEventBase *)&v14 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    v11->_transition = transition;
    v11->_statusDetailTransition = detailTransition;
    if (dCopy)
    {
      v11->_hasButtonID = 1;
      intValue = [dCopy intValue];
    }

    else
    {
      v11->_hasButtonID = 0;
      intValue = -1;
    }

    v11->_buttonID = intValue;
    v11->_buttonPress = press;
  }

  return v11;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transition" number:1 type:4 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"statusDetailTransition" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"buttonID" number:3 type:2 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"buttonPress" number:4 type:4 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"transition" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"statusDetailTransition" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"buttonID" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"buttonPress" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
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

    v8 = [[BMNanoSettingsControlCenterUsage alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end