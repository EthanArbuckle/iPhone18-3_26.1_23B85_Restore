@interface BMMomentsEventDataAction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsEventDataAction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMomentsEventDataAction)initWithType:(int)type actionName:(id)name actionNameConfidence:(id)confidence;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsEventDataAction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = [(BMMomentsEventDataAction *)self type];
    if (type == [v5 type])
    {
      actionName = [(BMMomentsEventDataAction *)self actionName];
      actionName2 = [v5 actionName];
      v9 = actionName2;
      if (actionName == actionName2)
      {
      }

      else
      {
        actionName3 = [(BMMomentsEventDataAction *)self actionName];
        actionName4 = [v5 actionName];
        v12 = [actionName3 isEqual:actionName4];

        if (!v12)
        {
          goto LABEL_13;
        }
      }

      if (!-[BMMomentsEventDataAction hasActionNameConfidence](self, "hasActionNameConfidence") && ![v5 hasActionNameConfidence])
      {
        v13 = 1;
        goto LABEL_14;
      }

      if (-[BMMomentsEventDataAction hasActionNameConfidence](self, "hasActionNameConfidence") && [v5 hasActionNameConfidence])
      {
        [(BMMomentsEventDataAction *)self actionNameConfidence];
        v15 = v14;
        [v5 actionNameConfidence];
        v13 = v15 == v16;
LABEL_14:

        goto LABEL_15;
      }
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)jsonDictionary
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataAction type](self, "type")}];
  actionName = [(BMMomentsEventDataAction *)self actionName];
  if (![(BMMomentsEventDataAction *)self hasActionNameConfidence]|| ([(BMMomentsEventDataAction *)self actionNameConfidence], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMMomentsEventDataAction *)self actionNameConfidence];
    v6 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataAction *)self actionNameConfidence];
    v7 = [v6 numberWithDouble:?];
  }

  v14[0] = @"type";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"actionName";
  null2 = actionName;
  if (!actionName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"actionNameConfidence";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (v7)
  {
    if (actionName)
    {
      goto LABEL_13;
    }

LABEL_18:

    if (v3)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (!actionName)
  {
    goto LABEL_18;
  }

LABEL_13:
  if (v3)
  {
    goto LABEL_14;
  }

LABEL_19:

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMMomentsEventDataAction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [dictionaryCopy objectForKeyedSubscript:@"actionName"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v11 = 0;
          selfCopy = 0;
          goto LABEL_17;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = *MEMORY[0x1E698F240];
        v28 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"actionName"];
        v29 = v13;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v18 = [v24 initWithDomain:v17 code:2 userInfo:v12];
        v11 = 0;
        selfCopy = 0;
        *error = v18;
        goto LABEL_16;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"actionNameConfidence"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v26 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"actionNameConfidence"];
          v27 = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          *error = [v25 initWithDomain:v23 code:2 userInfo:v20];
        }

        v13 = 0;
        selfCopy = 0;
        goto LABEL_16;
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    self = -[BMMomentsEventDataAction initWithType:actionName:actionNameConfidence:](self, "initWithType:actionName:actionNameConfidence:", [v8 intValue], v11, v13);
    selfCopy = self;
LABEL_16:

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataActionTypeFromString(v7)];
    goto LABEL_8;
  }

  if (!error)
  {
    v8 = 0;
    selfCopy = 0;
    goto LABEL_18;
  }

  v21 = objc_alloc(MEMORY[0x1E696ABC0]);
  v22 = *MEMORY[0x1E698F240];
  v30 = *MEMORY[0x1E696A578];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
  v31[0] = v11;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v21 initWithDomain:v22 code:2 userInfo:v10];
LABEL_17:

LABEL_18:
  v15 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEventDataAction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  type = self->_type;
  v7 = toCopy;
  PBDataWriterWriteUint32Field();
  if (self->_actionName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasActionNameConfidence)
  {
    actionNameConfidence = self->_actionNameConfidence;
    PBDataWriterWriteFloatField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMMomentsEventDataAction;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_45;
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
        LOBYTE(v32) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v32) & 0x7F) << v7;
        if ((LOBYTE(v32) & 0x80) == 0)
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
      if ((v14 >> 3) == 3)
      {
        v5->_hasActionNameConfidence = 1;
        v32 = 0.0;
        v25 = [fromCopy position] + 4;
        if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 4, v26 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_actionNameConfidence = v32;
      }

      else if (v15 == 2)
      {
        v23 = PBReaderReadString();
        actionName = v5->_actionName;
        v5->_actionName = v23;
      }

      else if (v15 == 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v32) = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (LOBYTE(v32) & 0x7F) << v16;
          if ((LOBYTE(v32) & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_38;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 0xC)
        {
LABEL_38:
          LODWORD(v18) = 0;
        }

        v5->_type = v18;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_44;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_44:
    v29 = 0;
  }

  else
  {
LABEL_45:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMMomentsEventDataActionTypeAsString([(BMMomentsEventDataAction *)self type]);
  actionName = [(BMMomentsEventDataAction *)self actionName];
  v6 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataAction *)self actionNameConfidence];
  v7 = [v6 numberWithDouble:?];
  v8 = [v3 initWithFormat:@"BMMomentsEventDataAction with type: %@, actionName: %@, actionNameConfidence: %@", v4, actionName, v7];

  return v8;
}

- (BMMomentsEventDataAction)initWithType:(int)type actionName:(id)name actionNameConfidence:(id)confidence
{
  nameCopy = name;
  confidenceCopy = confidence;
  v15.receiver = self;
  v15.super_class = BMMomentsEventDataAction;
  v11 = [(BMEventBase *)&v15 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    v11->_type = type;
    objc_storeStrong(&v11->_actionName, name);
    if (confidenceCopy)
    {
      v11->_hasActionNameConfidence = 1;
      [confidenceCopy floatValue];
      v13 = v12;
    }

    else
    {
      v11->_hasActionNameConfidence = 0;
      v13 = -1.0;
    }

    v11->_actionNameConfidence = v13;
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actionName" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actionNameConfidence" number:3 type:1 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"actionName" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"actionNameConfidence" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:1 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
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

    v8 = [[BMMomentsEventDataAction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end