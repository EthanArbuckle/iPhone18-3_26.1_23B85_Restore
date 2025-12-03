@interface BMMomentsNotificationsPrediction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsNotificationsPrediction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMomentsNotificationsPrediction)initWithVailabilityProbability:(id)probability locationFilterProbability:(id)filterProbability predictionDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (NSDate)predictionDate;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsNotificationsPrediction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ((!-[BMMomentsNotificationsPrediction hasVailabilityProbability](self, "hasVailabilityProbability") && ![v5 hasVailabilityProbability] || -[BMMomentsNotificationsPrediction hasVailabilityProbability](self, "hasVailabilityProbability") && objc_msgSend(v5, "hasVailabilityProbability") && (-[BMMomentsNotificationsPrediction vailabilityProbability](self, "vailabilityProbability"), v7 = v6, objc_msgSend(v5, "vailabilityProbability"), v7 == v8)) && (!-[BMMomentsNotificationsPrediction hasLocationFilterProbability](self, "hasLocationFilterProbability") && !objc_msgSend(v5, "hasLocationFilterProbability") || -[BMMomentsNotificationsPrediction hasLocationFilterProbability](self, "hasLocationFilterProbability") && objc_msgSend(v5, "hasLocationFilterProbability") && (-[BMMomentsNotificationsPrediction locationFilterProbability](self, "locationFilterProbability"), v10 = v9, objc_msgSend(v5, "locationFilterProbability"), v10 == v11)))
    {
      predictionDate = [(BMMomentsNotificationsPrediction *)self predictionDate];
      predictionDate2 = [v5 predictionDate];
      if (predictionDate == predictionDate2)
      {
        v16 = 1;
      }

      else
      {
        predictionDate3 = [(BMMomentsNotificationsPrediction *)self predictionDate];
        predictionDate4 = [v5 predictionDate];
        v16 = [predictionDate3 isEqual:predictionDate4];
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (NSDate)predictionDate
{
  if (self->_hasRaw_predictionDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_predictionDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v20[3] = *MEMORY[0x1E69E9840];
  if (![(BMMomentsNotificationsPrediction *)self hasVailabilityProbability]|| ([(BMMomentsNotificationsPrediction *)self vailabilityProbability], fabs(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMMomentsNotificationsPrediction *)self vailabilityProbability];
    v4 = MEMORY[0x1E696AD98];
    [(BMMomentsNotificationsPrediction *)self vailabilityProbability];
    v5 = [v4 numberWithDouble:?];
  }

  if (![(BMMomentsNotificationsPrediction *)self hasLocationFilterProbability]|| ([(BMMomentsNotificationsPrediction *)self locationFilterProbability], fabs(v6) == INFINITY))
  {
    v8 = 0;
  }

  else
  {
    [(BMMomentsNotificationsPrediction *)self locationFilterProbability];
    v7 = MEMORY[0x1E696AD98];
    [(BMMomentsNotificationsPrediction *)self locationFilterProbability];
    v8 = [v7 numberWithDouble:?];
  }

  predictionDate = [(BMMomentsNotificationsPrediction *)self predictionDate];
  if (predictionDate)
  {
    v10 = MEMORY[0x1E696AD98];
    predictionDate2 = [(BMMomentsNotificationsPrediction *)self predictionDate];
    [predictionDate2 timeIntervalSince1970];
    v12 = [v10 numberWithDouble:?];
  }

  else
  {
    v12 = 0;
  }

  v19[0] = @"vailabilityProbability";
  null = v5;
  if (!v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20[0] = null;
  v19[1] = @"locationFilterProbability";
  null2 = v8;
  if (!v8)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20[1] = null2;
  v19[2] = @"predictionDate";
  null3 = v12;
  if (!v12)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v20[2] = null3;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  if (v12)
  {
    if (v8)
    {
      goto LABEL_20;
    }

LABEL_25:

    if (v5)
    {
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  if (!v8)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (v5)
  {
    goto LABEL_21;
  }

LABEL_26:

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMMomentsNotificationsPrediction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v37[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"vailabilityProbability"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"locationFilterProbability"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          selfCopy = 0;
          goto LABEL_25;
        }

        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v34 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"locationFilterProbability"];
        v35 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v23 = [v30 initWithDomain:v22 code:2 userInfo:v11];
        v10 = 0;
        selfCopy = 0;
        *error = v23;
        goto LABEL_24;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"predictionDate"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = MEMORY[0x1E695DF00];
        v14 = v11;
        v15 = [v13 alloc];
        [v14 doubleValue];
        v17 = v16;

        v18 = [v15 initWithTimeIntervalSince1970:v17];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v12 = [v24 dateFromString:v11];

          goto LABEL_23;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v31 = objc_alloc(MEMORY[0x1E696ABC0]);
            v29 = *MEMORY[0x1E698F240];
            v32 = *MEMORY[0x1E696A578];
            v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"predictionDate"];
            v33 = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
            *error = [v31 initWithDomain:v29 code:2 userInfo:v28];
          }

          v12 = 0;
          selfCopy = 0;
          goto LABEL_24;
        }

        v18 = v11;
      }

      v12 = v18;
    }

    else
    {
      v12 = 0;
    }

LABEL_23:
    self = [(BMMomentsNotificationsPrediction *)self initWithVailabilityProbability:v8 locationFilterProbability:v10 predictionDate:v12];
    selfCopy = self;
LABEL_24:

    goto LABEL_25;
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
    goto LABEL_26;
  }

  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  v20 = *MEMORY[0x1E698F240];
  v36 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"vailabilityProbability"];
  v37[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v19 initWithDomain:v20 code:2 userInfo:v9];
LABEL_25:

LABEL_26:
  v25 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsNotificationsPrediction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_hasVailabilityProbability)
  {
    vailabilityProbability = self->_vailabilityProbability;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }

  if (self->_hasLocationFilterProbability)
  {
    locationFilterProbability = self->_locationFilterProbability;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }

  if (self->_hasRaw_predictionDate)
  {
    raw_predictionDate = self->_raw_predictionDate;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v30.receiver = self;
  v30.super_class = BMMomentsNotificationsPrediction;
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

        v9 |= (v31 & 0x7F) << v7;
        if ((v31 & 0x80) == 0)
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
        v5->_hasRaw_predictionDate = 1;
        v31 = 0;
        v20 = [fromCopy position] + 8;
        if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 8, v21 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v31 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v23 = v31;
        v24 = &OBJC_IVAR___BMMomentsNotificationsPrediction__raw_predictionDate;
      }

      else if (v15 == 2)
      {
        v5->_hasLocationFilterProbability = 1;
        v31 = 0;
        v18 = [fromCopy position] + 8;
        if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v31 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v23 = v31;
        v24 = &OBJC_IVAR___BMMomentsNotificationsPrediction__locationFilterProbability;
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

        v5->_hasVailabilityProbability = 1;
        v31 = 0;
        v16 = [fromCopy position] + 8;
        if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 8, v17 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v31 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v23 = v31;
        v24 = &OBJC_IVAR___BMMomentsNotificationsPrediction__vailabilityProbability;
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
  [(BMMomentsNotificationsPrediction *)self vailabilityProbability];
  v5 = [v4 numberWithDouble:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMMomentsNotificationsPrediction *)self locationFilterProbability];
  v7 = [v6 numberWithDouble:?];
  predictionDate = [(BMMomentsNotificationsPrediction *)self predictionDate];
  v9 = [v3 initWithFormat:@"BMMomentsNotificationsPrediction with vailabilityProbability: %@, locationFilterProbability: %@, predictionDate: %@", v5, v7, predictionDate];

  return v9;
}

- (BMMomentsNotificationsPrediction)initWithVailabilityProbability:(id)probability locationFilterProbability:(id)filterProbability predictionDate:(id)date
{
  probabilityCopy = probability;
  filterProbabilityCopy = filterProbability;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = BMMomentsNotificationsPrediction;
  v11 = [(BMEventBase *)&v16 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    if (probabilityCopy)
    {
      v11->_hasVailabilityProbability = 1;
      [probabilityCopy doubleValue];
    }

    else
    {
      v11->_hasVailabilityProbability = 0;
      v12 = -1.0;
    }

    v11->_vailabilityProbability = v12;
    if (filterProbabilityCopy)
    {
      v11->_hasLocationFilterProbability = 1;
      [filterProbabilityCopy doubleValue];
    }

    else
    {
      v11->_hasLocationFilterProbability = 0;
      v13 = -1.0;
    }

    v11->_locationFilterProbability = v13;
    if (dateCopy)
    {
      v11->_hasRaw_predictionDate = 1;
      [dateCopy timeIntervalSince1970];
    }

    else
    {
      v11->_hasRaw_predictionDate = 0;
      v14 = -1.0;
    }

    v11->_raw_predictionDate = v14;
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"vailabilityProbability" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locationFilterProbability" number:2 type:0 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predictionDate" number:3 type:0 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"vailabilityProbability" dataType:1 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"locationFilterProbability" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predictionDate" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
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

    v8 = [[BMMomentsNotificationsPrediction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end