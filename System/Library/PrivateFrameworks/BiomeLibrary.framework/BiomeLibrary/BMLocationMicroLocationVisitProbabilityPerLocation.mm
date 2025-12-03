@interface BMLocationMicroLocationVisitProbabilityPerLocation
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMLocationMicroLocationVisitProbabilityPerLocation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMLocationMicroLocationVisitProbabilityPerLocation)initWithMicroLocationIdentifier:(id)identifier probability:(id)probability;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMLocationMicroLocationVisitProbabilityPerLocation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    microLocationIdentifier = [(BMLocationMicroLocationVisitProbabilityPerLocation *)self microLocationIdentifier];
    microLocationIdentifier2 = [v5 microLocationIdentifier];
    v8 = microLocationIdentifier2;
    if (microLocationIdentifier == microLocationIdentifier2)
    {
    }

    else
    {
      microLocationIdentifier3 = [(BMLocationMicroLocationVisitProbabilityPerLocation *)self microLocationIdentifier];
      microLocationIdentifier4 = [v5 microLocationIdentifier];
      v11 = [microLocationIdentifier3 isEqual:microLocationIdentifier4];

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (!-[BMLocationMicroLocationVisitProbabilityPerLocation hasProbability](self, "hasProbability") && ![v5 hasProbability])
    {
      v12 = 1;
      goto LABEL_13;
    }

    if (-[BMLocationMicroLocationVisitProbabilityPerLocation hasProbability](self, "hasProbability") && [v5 hasProbability])
    {
      [(BMLocationMicroLocationVisitProbabilityPerLocation *)self probability];
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
  microLocationIdentifier = [(BMLocationMicroLocationVisitProbabilityPerLocation *)self microLocationIdentifier];
  if (![(BMLocationMicroLocationVisitProbabilityPerLocation *)self hasProbability]|| ([(BMLocationMicroLocationVisitProbabilityPerLocation *)self probability], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMLocationMicroLocationVisitProbabilityPerLocation *)self probability];
    v5 = MEMORY[0x1E696AD98];
    [(BMLocationMicroLocationVisitProbabilityPerLocation *)self probability];
    v6 = [v5 numberWithDouble:?];
  }

  v12[0] = @"microLocationIdentifier";
  null = microLocationIdentifier;
  if (!microLocationIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = @"probability";
  v13[0] = null;
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (v6)
  {
    if (microLocationIdentifier)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (microLocationIdentifier)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMLocationMicroLocationVisitProbabilityPerLocation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"microLocationIdentifier"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v8 = 0;
        selfCopy = 0;
        goto LABEL_9;
      }

      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      v15 = *MEMORY[0x1E698F240];
      v23 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"microLocationIdentifier"];
      v24[0] = v10;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v16 = [v14 initWithDomain:v15 code:2 userInfo:v9];
      v8 = 0;
      selfCopy = 0;
      *error = v16;
      goto LABEL_8;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"probability"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v17 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v21 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"probability"];
        v22 = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        *error = [v17 initWithDomain:v18 code:2 userInfo:v20];
      }

      v10 = 0;
      selfCopy = 0;
      goto LABEL_8;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  self = [(BMLocationMicroLocationVisitProbabilityPerLocation *)self initWithMicroLocationIdentifier:v8 probability:v10];
  selfCopy = self;
LABEL_8:

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLocationMicroLocationVisitProbabilityPerLocation *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_microLocationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_hasProbability)
  {
    probability = self->_probability;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMLocationMicroLocationVisitProbabilityPerLocation;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_31;
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
        LOBYTE(v24) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      if ((v14 >> 3) == 2)
      {
        v5->_hasProbability = 1;
        v24 = 0.0;
        v17 = [fromCopy position] + 8;
        if (v17 >= [fromCopy position] && (v18 = objc_msgSend(fromCopy, "position") + 8, v18 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_probability = v24;
      }

      else if ((v14 >> 3) == 1)
      {
        v15 = PBReaderReadString();
        microLocationIdentifier = v5->_microLocationIdentifier;
        v5->_microLocationIdentifier = v15;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_30;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  microLocationIdentifier = [(BMLocationMicroLocationVisitProbabilityPerLocation *)self microLocationIdentifier];
  v5 = MEMORY[0x1E696AD98];
  [(BMLocationMicroLocationVisitProbabilityPerLocation *)self probability];
  v6 = [v5 numberWithDouble:?];
  v7 = [v3 initWithFormat:@"BMLocationMicroLocationVisitProbabilityPerLocation with microLocationIdentifier: %@, probability: %@", microLocationIdentifier, v6];

  return v7;
}

- (BMLocationMicroLocationVisitProbabilityPerLocation)initWithMicroLocationIdentifier:(id)identifier probability:(id)probability
{
  identifierCopy = identifier;
  probabilityCopy = probability;
  v12.receiver = self;
  v12.super_class = BMLocationMicroLocationVisitProbabilityPerLocation;
  v9 = [(BMEventBase *)&v12 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_microLocationIdentifier, identifier);
    if (probabilityCopy)
    {
      v9->_hasProbability = 1;
      [probabilityCopy doubleValue];
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
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"microLocationIdentifier" number:1 type:13 subMessageClass:0];
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
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"microLocationIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"probability" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
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

    v8 = [[BMLocationMicroLocationVisitProbabilityPerLocation alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end