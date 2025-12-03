@interface BMSiriTaskAggregation
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriTaskAggregation)initWithAbsoluteTimestamp:(id)timestamp metadata:(id)metadata statistics:(id)statistics dimensions:(id)dimensions;
- (BMSiriTaskAggregation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriTaskAggregation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMSiriTaskAggregation hasAbsoluteTimestamp](self, "hasAbsoluteTimestamp") || [v5 hasAbsoluteTimestamp])
    {
      if (![(BMSiriTaskAggregation *)self hasAbsoluteTimestamp])
      {
        goto LABEL_14;
      }

      if (![v5 hasAbsoluteTimestamp])
      {
        goto LABEL_14;
      }

      [(BMSiriTaskAggregation *)self absoluteTimestamp];
      v7 = v6;
      [v5 absoluteTimestamp];
      if (v7 != v8)
      {
        goto LABEL_14;
      }
    }

    metadata = [(BMSiriTaskAggregation *)self metadata];
    metadata2 = [v5 metadata];
    v11 = metadata2;
    if (metadata == metadata2)
    {
    }

    else
    {
      metadata3 = [(BMSiriTaskAggregation *)self metadata];
      metadata4 = [v5 metadata];
      v14 = [metadata3 isEqual:metadata4];

      if (!v14)
      {
        goto LABEL_14;
      }
    }

    statistics = [(BMSiriTaskAggregation *)self statistics];
    statistics2 = [v5 statistics];
    v18 = statistics2;
    if (statistics == statistics2)
    {
    }

    else
    {
      statistics3 = [(BMSiriTaskAggregation *)self statistics];
      statistics4 = [v5 statistics];
      v21 = [statistics3 isEqual:statistics4];

      if (!v21)
      {
LABEL_14:
        v15 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    dimensions = [(BMSiriTaskAggregation *)self dimensions];
    dimensions2 = [v5 dimensions];
    if (dimensions == dimensions2)
    {
      v15 = 1;
    }

    else
    {
      dimensions3 = [(BMSiriTaskAggregation *)self dimensions];
      dimensions4 = [v5 dimensions];
      v15 = [dimensions3 isEqual:dimensions4];
    }

    goto LABEL_15;
  }

  v15 = 0;
LABEL_16:

  return v15;
}

- (id)jsonDictionary
{
  v20[4] = *MEMORY[0x1E69E9840];
  if (![(BMSiriTaskAggregation *)self hasAbsoluteTimestamp]|| ([(BMSiriTaskAggregation *)self absoluteTimestamp], fabs(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMSiriTaskAggregation *)self absoluteTimestamp];
    v4 = MEMORY[0x1E696AD98];
    [(BMSiriTaskAggregation *)self absoluteTimestamp];
    v5 = [v4 numberWithDouble:?];
  }

  metadata = [(BMSiriTaskAggregation *)self metadata];
  jsonDictionary = [metadata jsonDictionary];

  statistics = [(BMSiriTaskAggregation *)self statistics];
  jsonDictionary2 = [statistics jsonDictionary];

  dimensions = [(BMSiriTaskAggregation *)self dimensions];
  jsonDictionary3 = [dimensions jsonDictionary];

  v19[0] = @"absoluteTimestamp";
  null = v5;
  if (!v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20[0] = null;
  v19[1] = @"metadata";
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20[1] = null2;
  v19[2] = @"statistics";
  null3 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v20[2] = null3;
  v19[3] = @"dimensions";
  null4 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v20[3] = null4;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  if (jsonDictionary3)
  {
    if (jsonDictionary2)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (jsonDictionary2)
    {
LABEL_15:
      if (jsonDictionary)
      {
        goto LABEL_16;
      }

LABEL_22:

      if (v5)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }
  }

  if (!jsonDictionary)
  {
    goto LABEL_22;
  }

LABEL_16:
  if (v5)
  {
    goto LABEL_17;
  }

LABEL_23:

LABEL_17:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMSiriTaskAggregation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v44[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v7 = 0;
        v15 = 0;
        selfCopy6 = self;
        goto LABEL_48;
      }

      v19 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20 = *MEMORY[0x1E698F240];
      v43 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"absoluteTimestamp"];
      v44[0] = v16;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      v7 = 0;
      v15 = 0;
      *error = [v19 initWithDomain:v20 code:2 userInfo:v9];
      goto LABEL_35;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = 0;
LABEL_7:
    v10 = [dictionaryCopy objectForKeyedSubscript:@"statistics"];
    v32 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          selfCopy6 = self;
          goto LABEL_45;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v39 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"statistics"];
        v40 = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v15 = 0;
        *error = [v29 initWithDomain:v26 code:2 userInfo:v12];
        goto LABEL_43;
      }

      v12 = v10;
      v35 = 0;
      v11 = [[BMSiriTaskAggregationStatistics alloc] initWithJSONDictionary:v12 error:&v35];
      v18 = v35;
      if (v18)
      {
        if (error)
        {
          v18 = v18;
          *error = v18;
        }

LABEL_42:
        v15 = 0;
LABEL_43:
        selfCopy6 = self;
        goto LABEL_44;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"dimensions"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = 0;
LABEL_13:
      selfCopy6 = [(BMSiriTaskAggregation *)self initWithAbsoluteTimestamp:v32 metadata:v9 statistics:v11 dimensions:v13];
      v15 = selfCopy6;
LABEL_41:

LABEL_44:
LABEL_45:

      v16 = v8;
      v7 = v32;
      goto LABEL_46;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v12;
      v34 = 0;
      v13 = [[BMSiriTaskAggregationDimensions alloc] initWithJSONDictionary:v21 error:&v34];
      v22 = v34;
      if (!v22)
      {

        goto LABEL_13;
      }

      if (error)
      {
        v22 = v22;
        *error = v22;
      }

LABEL_40:
      v15 = 0;
      selfCopy6 = self;
      goto LABEL_41;
    }

    if (error)
    {
      v31 = objc_alloc(MEMORY[0x1E696ABC0]);
      v30 = *MEMORY[0x1E698F240];
      v37 = *MEMORY[0x1E696A578];
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"dimensions"];
      v38 = v13;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *error = [v31 initWithDomain:v30 code:2 userInfo:v21];
      goto LABEL_40;
    }

    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v8;
    v36 = 0;
    v9 = [[BMSiriTaskAggregationMetadata alloc] initWithJSONDictionary:v16 error:&v36];
    v17 = v36;
    if (!v17)
    {

      goto LABEL_7;
    }

    if (error)
    {
      v17 = v17;
      *error = v17;
    }

    v15 = 0;
  }

  else
  {
    if (!error)
    {
      v15 = 0;
      selfCopy6 = self;
      goto LABEL_47;
    }

    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = *MEMORY[0x1E698F240];
    v41 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"metadata"];
    v42 = v9;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    *error = [v23 initWithDomain:v24 code:2 userInfo:v25];

    v15 = 0;
    v16 = v8;
  }

LABEL_35:
  selfCopy6 = self;
LABEL_46:

  v8 = v16;
LABEL_47:

LABEL_48:
  v27 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriTaskAggregation *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasAbsoluteTimestamp)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_metadata)
  {
    PBDataWriterPlaceMark();
    [(BMSiriTaskAggregationMetadata *)self->_metadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_statistics)
  {
    PBDataWriterPlaceMark();
    [(BMSiriTaskAggregationStatistics *)self->_statistics writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_dimensions)
  {
    PBDataWriterPlaceMark();
    [(BMSiriTaskAggregationDimensions *)self->_dimensions writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v25.receiver = self;
  v25.super_class = BMSiriTaskAggregation;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_43;
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
        LOBYTE(v26) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v26) & 0x7F) << v7;
        if ((LOBYTE(v26) & 0x80) == 0)
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
          v26 = 0.0;
          v27 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_42;
          }

          v16 = [[BMSiriTaskAggregationStatistics alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_42;
          }

          v17 = 40;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_29:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_40;
          }

          v26 = 0.0;
          v27 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_42;
          }

          v16 = [[BMSiriTaskAggregationDimensions alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_42;
          }

          v17 = 48;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v5->_hasAbsoluteTimestamp = 1;
          v26 = 0.0;
          v18 = [fromCopy position] + 8;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_absoluteTimestamp = v26;
          goto LABEL_40;
        }

        if (v15 != 2)
        {
          goto LABEL_29;
        }

        v26 = 0.0;
        v27 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_42;
        }

        v16 = [[BMSiriTaskAggregationMetadata alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_42;
        }

        v17 = 32;
      }

      v20 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

      PBReaderRecallMark();
LABEL_40:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_42:
    v23 = 0;
  }

  else
  {
LABEL_43:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMSiriTaskAggregation *)self absoluteTimestamp];
  v5 = [v4 numberWithDouble:?];
  metadata = [(BMSiriTaskAggregation *)self metadata];
  statistics = [(BMSiriTaskAggregation *)self statistics];
  dimensions = [(BMSiriTaskAggregation *)self dimensions];
  v9 = [v3 initWithFormat:@"BMSiriTaskAggregation with absoluteTimestamp: %@, metadata: %@, statistics: %@, dimensions: %@", v5, metadata, statistics, dimensions];

  return v9;
}

- (BMSiriTaskAggregation)initWithAbsoluteTimestamp:(id)timestamp metadata:(id)metadata statistics:(id)statistics dimensions:(id)dimensions
{
  timestampCopy = timestamp;
  metadataCopy = metadata;
  statisticsCopy = statistics;
  dimensionsCopy = dimensions;
  v17.receiver = self;
  v17.super_class = BMSiriTaskAggregation;
  v14 = [(BMEventBase *)&v17 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v14->_hasAbsoluteTimestamp = 1;
      [timestampCopy doubleValue];
    }

    else
    {
      v14->_hasAbsoluteTimestamp = 0;
      v15 = -1.0;
    }

    v14->_absoluteTimestamp = v15;
    objc_storeStrong(&v14->_metadata, metadata);
    objc_storeStrong(&v14->_statistics, statistics);
    objc_storeStrong(&v14->_dimensions, dimensions);
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"metadata" number:2 type:14 subMessageClass:objc_opt_class()];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"statistics" number:3 type:14 subMessageClass:objc_opt_class()];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dimensions" number:4 type:14 subMessageClass:objc_opt_class()];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:1 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"metadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_318_74146];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"statistics_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_320];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"dimensions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_322];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __32__BMSiriTaskAggregation_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 dimensions];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __32__BMSiriTaskAggregation_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 statistics];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __32__BMSiriTaskAggregation_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 metadata];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

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

    v8 = [[BMSiriTaskAggregation alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end