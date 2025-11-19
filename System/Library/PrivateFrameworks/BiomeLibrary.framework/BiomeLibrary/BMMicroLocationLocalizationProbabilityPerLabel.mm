@interface BMMicroLocationLocalizationProbabilityPerLabel
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMicroLocationLocalizationProbabilityPerLabel)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMicroLocationLocalizationProbabilityPerLabel)initWithLabel:(id)a3 probability:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMicroLocationLocalizationProbabilityPerLabel

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMicroLocationLocalizationProbabilityPerLabel *)self label];
    v7 = [v5 label];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMicroLocationLocalizationProbabilityPerLabel *)self label];
      v10 = [v5 label];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (!-[BMMicroLocationLocalizationProbabilityPerLabel hasProbability](self, "hasProbability") && ![v5 hasProbability])
    {
      v12 = 1;
      goto LABEL_13;
    }

    if (-[BMMicroLocationLocalizationProbabilityPerLabel hasProbability](self, "hasProbability") && [v5 hasProbability])
    {
      [(BMMicroLocationLocalizationProbabilityPerLabel *)self probability];
      v14 = v13;
      [v5 probability];
      v12 = v14 == v15;
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (id)jsonDictionary
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [(BMMicroLocationLocalizationProbabilityPerLabel *)self label];
  if (![(BMMicroLocationLocalizationProbabilityPerLabel *)self hasProbability]|| ([(BMMicroLocationLocalizationProbabilityPerLabel *)self probability], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMMicroLocationLocalizationProbabilityPerLabel *)self probability];
    v5 = MEMORY[0x1E696AD98];
    [(BMMicroLocationLocalizationProbabilityPerLabel *)self probability];
    v6 = [v5 numberWithDouble:?];
  }

  v12[0] = @"label";
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = @"probability";
  v13[0] = v7;
  v8 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (v6)
  {
    if (v3)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMMicroLocationLocalizationProbabilityPerLabel)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"label"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v8 = 0;
        v11 = 0;
        goto LABEL_9;
      }

      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      v15 = *MEMORY[0x1E698F240];
      v23 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"label"];
      v24[0] = v10;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v16 = [v14 initWithDomain:v15 code:2 userInfo:v9];
      v8 = 0;
      v11 = 0;
      *a4 = v16;
      goto LABEL_8;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"probability"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v17 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v21 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"probability"];
        v22 = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        *a4 = [v17 initWithDomain:v18 code:2 userInfo:v20];
      }

      v10 = 0;
      v11 = 0;
      goto LABEL_8;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  self = [(BMMicroLocationLocalizationProbabilityPerLabel *)self initWithLabel:v8 probability:v10];
  v11 = self;
LABEL_8:

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMicroLocationLocalizationProbabilityPerLabel *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_label)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_hasProbability)
  {
    probability = self->_probability;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = BMMicroLocationLocalizationProbabilityPerLabel;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_31;
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
        LOBYTE(v24) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v24 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v24) & 0x7F) << v7;
        if ((LOBYTE(v24) & 0x80) == 0)
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      if ((v14 >> 3) == 2)
      {
        v5->_hasProbability = 1;
        v24 = 0.0;
        v17 = [v4 position] + 8;
        if (v17 >= [v4 position] && (v18 = objc_msgSend(v4, "position") + 8, v18 <= objc_msgSend(v4, "length")))
        {
          v19 = [v4 data];
          [v19 getBytes:&v24 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_probability = v24;
      }

      else if ((v14 >> 3) == 1)
      {
        v15 = PBReaderReadString();
        label = v5->_label;
        v5->_label = v15;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_30;
      }

      v20 = [v4 position];
    }

    while (v20 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_30:
    v21 = 0;
  }

  else
  {
LABEL_31:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMicroLocationLocalizationProbabilityPerLabel *)self label];
  v5 = MEMORY[0x1E696AD98];
  [(BMMicroLocationLocalizationProbabilityPerLabel *)self probability];
  v6 = [v5 numberWithDouble:?];
  v7 = [v3 initWithFormat:@"BMMicroLocationLocalizationProbabilityPerLabel with label: %@, probability: %@", v4, v6];

  return v7;
}

- (BMMicroLocationLocalizationProbabilityPerLabel)initWithLabel:(id)a3 probability:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BMMicroLocationLocalizationProbabilityPerLabel;
  v9 = [(BMEventBase *)&v12 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_label, a3);
    if (v8)
    {
      v9->_hasProbability = 1;
      [v8 doubleValue];
    }

    else
    {
      v9->_hasProbability = 0;
      v10 = -1.0;
    }

    v9->_probability = v10;
  }

  return v9;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"label" number:1 type:13 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"probability" number:2 type:0 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"label" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"probability" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMMicroLocationLocalizationProbabilityPerLabel alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[5] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end