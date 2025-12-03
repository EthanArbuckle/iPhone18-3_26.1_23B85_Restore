@interface BMContextualUnderstandingAmbientLight
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMContextualUnderstandingAmbientLight)initWithAmbientLightColorComponent0:(id)component0 ambientLightColorComponent1:(id)component1 ambientLightColorComponent2:(id)component2;
- (BMContextualUnderstandingAmbientLight)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMContextualUnderstandingAmbientLight

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMContextualUnderstandingAmbientLight *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ambientLightColorComponent0" dataType:1 requestOnly:0 fieldNumber:1 protoDataType:1 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ambientLightColorComponent1" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:1 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ambientLightColorComponent2" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:1 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMContextualUnderstandingAmbientLight hasAmbientLightColorComponent0](self, "hasAmbientLightColorComponent0") || [v5 hasAmbientLightColorComponent0])
    {
      if (![(BMContextualUnderstandingAmbientLight *)self hasAmbientLightColorComponent0])
      {
        goto LABEL_18;
      }

      if (![v5 hasAmbientLightColorComponent0])
      {
        goto LABEL_18;
      }

      [(BMContextualUnderstandingAmbientLight *)self ambientLightColorComponent0];
      v7 = v6;
      [v5 ambientLightColorComponent0];
      if (v7 != v8)
      {
        goto LABEL_18;
      }
    }

    if (-[BMContextualUnderstandingAmbientLight hasAmbientLightColorComponent1](self, "hasAmbientLightColorComponent1") || [v5 hasAmbientLightColorComponent1])
    {
      if (![(BMContextualUnderstandingAmbientLight *)self hasAmbientLightColorComponent1])
      {
        goto LABEL_18;
      }

      if (![v5 hasAmbientLightColorComponent1])
      {
        goto LABEL_18;
      }

      [(BMContextualUnderstandingAmbientLight *)self ambientLightColorComponent1];
      v10 = v9;
      [v5 ambientLightColorComponent1];
      if (v10 != v11)
      {
        goto LABEL_18;
      }
    }

    if (!-[BMContextualUnderstandingAmbientLight hasAmbientLightColorComponent2](self, "hasAmbientLightColorComponent2") && ![v5 hasAmbientLightColorComponent2])
    {
      v15 = 1;
      goto LABEL_19;
    }

    if (-[BMContextualUnderstandingAmbientLight hasAmbientLightColorComponent2](self, "hasAmbientLightColorComponent2") && [v5 hasAmbientLightColorComponent2])
    {
      [(BMContextualUnderstandingAmbientLight *)self ambientLightColorComponent2];
      v13 = v12;
      [v5 ambientLightColorComponent2];
      v15 = v13 == v14;
    }

    else
    {
LABEL_18:
      v15 = 0;
    }

LABEL_19:

    goto LABEL_20;
  }

  v15 = 0;
LABEL_20:

  return v15;
}

- (id)jsonDictionary
{
  v19[3] = *MEMORY[0x1E69E9840];
  if (![(BMContextualUnderstandingAmbientLight *)self hasAmbientLightColorComponent0]|| ([(BMContextualUnderstandingAmbientLight *)self ambientLightColorComponent0], fabs(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMContextualUnderstandingAmbientLight *)self ambientLightColorComponent0];
    v4 = MEMORY[0x1E696AD98];
    [(BMContextualUnderstandingAmbientLight *)self ambientLightColorComponent0];
    v5 = [v4 numberWithDouble:?];
  }

  if (![(BMContextualUnderstandingAmbientLight *)self hasAmbientLightColorComponent1]|| ([(BMContextualUnderstandingAmbientLight *)self ambientLightColorComponent1], fabs(v6) == INFINITY))
  {
    v8 = 0;
  }

  else
  {
    [(BMContextualUnderstandingAmbientLight *)self ambientLightColorComponent1];
    v7 = MEMORY[0x1E696AD98];
    [(BMContextualUnderstandingAmbientLight *)self ambientLightColorComponent1];
    v8 = [v7 numberWithDouble:?];
  }

  if (![(BMContextualUnderstandingAmbientLight *)self hasAmbientLightColorComponent2]|| ([(BMContextualUnderstandingAmbientLight *)self ambientLightColorComponent2], fabs(v9) == INFINITY))
  {
    v11 = 0;
  }

  else
  {
    [(BMContextualUnderstandingAmbientLight *)self ambientLightColorComponent2];
    v10 = MEMORY[0x1E696AD98];
    [(BMContextualUnderstandingAmbientLight *)self ambientLightColorComponent2];
    v11 = [v10 numberWithDouble:?];
  }

  v18[0] = @"ambientLightColorComponent0";
  null = v5;
  if (!v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = null;
  v18[1] = @"ambientLightColorComponent1";
  null2 = v8;
  if (!v8)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = null2;
  v18[2] = @"ambientLightColorComponent2";
  null3 = v11;
  if (!v11)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = null3;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  if (v11)
  {
    if (v8)
    {
      goto LABEL_21;
    }

LABEL_26:

    if (v5)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  if (!v8)
  {
    goto LABEL_26;
  }

LABEL_21:
  if (v5)
  {
    goto LABEL_22;
  }

LABEL_27:

LABEL_22:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMContextualUnderstandingAmbientLight)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"ambientLightColorComponent0"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"ambientLightColorComponent1"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          selfCopy = 0;
          goto LABEL_12;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v27 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"ambientLightColorComponent1"];
        v28 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v19 = [v23 initWithDomain:v18 code:2 userInfo:v11];
        v10 = 0;
        selfCopy = 0;
        *error = v19;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"ambientLightColorComponent2"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v25 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"ambientLightColorComponent2"];
          v26 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *error = [v24 initWithDomain:v22 code:2 userInfo:v21];
        }

        v12 = 0;
        selfCopy = 0;
        goto LABEL_11;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(BMContextualUnderstandingAmbientLight *)self initWithAmbientLightColorComponent0:v8 ambientLightColorComponent1:v10 ambientLightColorComponent2:v12];
    selfCopy = self;
LABEL_11:

    goto LABEL_12;
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
    selfCopy = 0;
    goto LABEL_13;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v29 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"ambientLightColorComponent0"];
  v30[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v16 initWithDomain:v17 code:2 userInfo:v9];
LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_hasAmbientLightColorComponent0)
  {
    ambientLightColorComponent0 = self->_ambientLightColorComponent0;
    PBDataWriterWriteFloatField();
    toCopy = v8;
  }

  if (self->_hasAmbientLightColorComponent1)
  {
    ambientLightColorComponent1 = self->_ambientLightColorComponent1;
    PBDataWriterWriteFloatField();
    toCopy = v8;
  }

  if (self->_hasAmbientLightColorComponent2)
  {
    ambientLightColorComponent2 = self->_ambientLightColorComponent2;
    PBDataWriterWriteFloatField();
    toCopy = v8;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v30.receiver = self;
  v30.super_class = BMContextualUnderstandingAmbientLight;
  v5 = [(BMEventBase *)&v30 init];
  if (!v5)
  {
    goto LABEL_42;
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
        LOBYTE(v31) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v31 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v31) & 0x7F) << v7;
        if ((LOBYTE(v31) & 0x80) == 0)
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
        v5->_hasAmbientLightColorComponent2 = 1;
        v31 = 0.0;
        v20 = [fromCopy position] + 4;
        if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 4, v21 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v31 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v23 = v31;
        v24 = &OBJC_IVAR___BMContextualUnderstandingAmbientLight__ambientLightColorComponent2;
      }

      else if (v15 == 2)
      {
        v5->_hasAmbientLightColorComponent1 = 1;
        v31 = 0.0;
        v18 = [fromCopy position] + 4;
        if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 4, v19 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v31 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v23 = v31;
        v24 = &OBJC_IVAR___BMContextualUnderstandingAmbientLight__ambientLightColorComponent1;
      }

      else
      {
        if (v15 != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_41;
          }

          goto LABEL_39;
        }

        v5->_hasAmbientLightColorComponent0 = 1;
        v31 = 0.0;
        v16 = [fromCopy position] + 4;
        if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 4, v17 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v31 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v23 = v31;
        v24 = &OBJC_IVAR___BMContextualUnderstandingAmbientLight__ambientLightColorComponent0;
      }

      *(&v5->super.super.isa + *v24) = v23;
LABEL_39:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_41:
    v28 = 0;
  }

  else
  {
LABEL_42:
    v28 = v5;
  }

  return v28;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMContextualUnderstandingAmbientLight *)self ambientLightColorComponent0];
  v5 = [v4 numberWithDouble:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMContextualUnderstandingAmbientLight *)self ambientLightColorComponent1];
  v7 = [v6 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(BMContextualUnderstandingAmbientLight *)self ambientLightColorComponent2];
  v9 = [v8 numberWithDouble:?];
  v10 = [v3 initWithFormat:@"BMContextualUnderstandingAmbientLight with ambientLightColorComponent0: %@, ambientLightColorComponent1: %@, ambientLightColorComponent2: %@", v5, v7, v9];

  return v10;
}

- (BMContextualUnderstandingAmbientLight)initWithAmbientLightColorComponent0:(id)component0 ambientLightColorComponent1:(id)component1 ambientLightColorComponent2:(id)component2
{
  component0Copy = component0;
  component1Copy = component1;
  component2Copy = component2;
  v19.receiver = self;
  v19.super_class = BMContextualUnderstandingAmbientLight;
  v11 = [(BMEventBase *)&v19 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    if (component0Copy)
    {
      v11->_hasAmbientLightColorComponent0 = 1;
      [component0Copy floatValue];
      v13 = v12;
    }

    else
    {
      v11->_hasAmbientLightColorComponent0 = 0;
      v13 = -1.0;
    }

    v11->_ambientLightColorComponent0 = v13;
    if (component1Copy)
    {
      v11->_hasAmbientLightColorComponent1 = 1;
      [component1Copy floatValue];
      v15 = v14;
    }

    else
    {
      v11->_hasAmbientLightColorComponent1 = 0;
      v15 = -1.0;
    }

    v11->_ambientLightColorComponent1 = v15;
    if (component2Copy)
    {
      v11->_hasAmbientLightColorComponent2 = 1;
      [component2Copy floatValue];
      v17 = v16;
    }

    else
    {
      v11->_hasAmbientLightColorComponent2 = 0;
      v17 = -1.0;
    }

    v11->_ambientLightColorComponent2 = v17;
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ambientLightColorComponent0" number:1 type:1 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ambientLightColorComponent1" number:2 type:1 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ambientLightColorComponent2" number:3 type:1 subMessageClass:0];
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

    v8 = [[BMContextualUnderstandingAmbientLight alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end