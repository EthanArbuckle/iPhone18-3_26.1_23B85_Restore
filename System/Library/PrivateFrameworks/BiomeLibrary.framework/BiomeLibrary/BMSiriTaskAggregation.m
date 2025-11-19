@interface BMSiriTaskAggregation
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriTaskAggregation)initWithAbsoluteTimestamp:(id)a3 metadata:(id)a4 statistics:(id)a5 dimensions:(id)a6;
- (BMSiriTaskAggregation)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriTaskAggregation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

    v9 = [(BMSiriTaskAggregation *)self metadata];
    v10 = [v5 metadata];
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v12 = [(BMSiriTaskAggregation *)self metadata];
      v13 = [v5 metadata];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
        goto LABEL_14;
      }
    }

    v16 = [(BMSiriTaskAggregation *)self statistics];
    v17 = [v5 statistics];
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      v19 = [(BMSiriTaskAggregation *)self statistics];
      v20 = [v5 statistics];
      v21 = [v19 isEqual:v20];

      if (!v21)
      {
LABEL_14:
        v15 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v23 = [(BMSiriTaskAggregation *)self dimensions];
    v24 = [v5 dimensions];
    if (v23 == v24)
    {
      v15 = 1;
    }

    else
    {
      v25 = [(BMSiriTaskAggregation *)self dimensions];
      v26 = [v5 dimensions];
      v15 = [v25 isEqual:v26];
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

  v6 = [(BMSiriTaskAggregation *)self metadata];
  v7 = [v6 jsonDictionary];

  v8 = [(BMSiriTaskAggregation *)self statistics];
  v9 = [v8 jsonDictionary];

  v10 = [(BMSiriTaskAggregation *)self dimensions];
  v11 = [v10 jsonDictionary];

  v19[0] = @"absoluteTimestamp";
  v12 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v20[0] = v12;
  v19[1] = @"metadata";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v20[1] = v13;
  v19[2] = @"statistics";
  v14 = v9;
  if (!v9)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v20[2] = v14;
  v19[3] = @"dimensions";
  v15 = v11;
  if (!v11)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v20[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  if (v11)
  {
    if (v9)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (v9)
    {
LABEL_15:
      if (v7)
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

  if (!v7)
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

- (BMSiriTaskAggregation)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v44[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"absoluteTimestamp"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v7 = 0;
        v15 = 0;
        v14 = self;
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
      *a4 = [v19 initWithDomain:v20 code:2 userInfo:v9];
      goto LABEL_35;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"metadata"];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = 0;
LABEL_7:
    v10 = [v5 objectForKeyedSubscript:@"statistics"];
    v32 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v15 = 0;
          v14 = self;
          goto LABEL_45;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v39 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"statistics"];
        v40 = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v15 = 0;
        *a4 = [v29 initWithDomain:v26 code:2 userInfo:v12];
        goto LABEL_43;
      }

      v12 = v10;
      v35 = 0;
      v11 = [[BMSiriTaskAggregationStatistics alloc] initWithJSONDictionary:v12 error:&v35];
      v18 = v35;
      if (v18)
      {
        if (a4)
        {
          v18 = v18;
          *a4 = v18;
        }

LABEL_42:
        v15 = 0;
LABEL_43:
        v14 = self;
        goto LABEL_44;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = [v5 objectForKeyedSubscript:@"dimensions"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = 0;
LABEL_13:
      v14 = [(BMSiriTaskAggregation *)self initWithAbsoluteTimestamp:v32 metadata:v9 statistics:v11 dimensions:v13];
      v15 = v14;
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

      if (a4)
      {
        v22 = v22;
        *a4 = v22;
      }

LABEL_40:
      v15 = 0;
      v14 = self;
      goto LABEL_41;
    }

    if (a4)
    {
      v31 = objc_alloc(MEMORY[0x1E696ABC0]);
      v30 = *MEMORY[0x1E698F240];
      v37 = *MEMORY[0x1E696A578];
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"dimensions"];
      v38 = v13;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *a4 = [v31 initWithDomain:v30 code:2 userInfo:v21];
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

    if (a4)
    {
      v17 = v17;
      *a4 = v17;
    }

    v15 = 0;
  }

  else
  {
    if (!a4)
    {
      v15 = 0;
      v14 = self;
      goto LABEL_47;
    }

    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = *MEMORY[0x1E698F240];
    v41 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"metadata"];
    v42 = v9;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    *a4 = [v23 initWithDomain:v24 code:2 userInfo:v25];

    v15 = 0;
    v16 = v8;
  }

LABEL_35:
  v14 = self;
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
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_hasAbsoluteTimestamp)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_metadata)
  {
    PBDataWriterPlaceMark();
    [(BMSiriTaskAggregationMetadata *)self->_metadata writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_statistics)
  {
    PBDataWriterPlaceMark();
    [(BMSiriTaskAggregationStatistics *)self->_statistics writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_dimensions)
  {
    PBDataWriterPlaceMark();
    [(BMSiriTaskAggregationDimensions *)self->_dimensions writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BMSiriTaskAggregation;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_43;
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
        LOBYTE(v26) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v26 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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
          v26 = 0.0;
          v27 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_42;
          }

          v16 = [[BMSiriTaskAggregationStatistics alloc] initByReadFrom:v4];
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

          v16 = [[BMSiriTaskAggregationDimensions alloc] initByReadFrom:v4];
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
          v18 = [v4 position] + 8;
          if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 8, v19 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v26 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
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

        v16 = [[BMSiriTaskAggregationMetadata alloc] initByReadFrom:v4];
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
      v22 = [v4 position];
    }

    while (v22 < [v4 length]);
  }

  if ([v4 hasError])
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
  v6 = [(BMSiriTaskAggregation *)self metadata];
  v7 = [(BMSiriTaskAggregation *)self statistics];
  v8 = [(BMSiriTaskAggregation *)self dimensions];
  v9 = [v3 initWithFormat:@"BMSiriTaskAggregation with absoluteTimestamp: %@, metadata: %@, statistics: %@, dimensions: %@", v5, v6, v7, v8];

  return v9;
}

- (BMSiriTaskAggregation)initWithAbsoluteTimestamp:(id)a3 metadata:(id)a4 statistics:(id)a5 dimensions:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = BMSiriTaskAggregation;
  v14 = [(BMEventBase *)&v17 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v10)
    {
      v14->_hasAbsoluteTimestamp = 1;
      [v10 doubleValue];
    }

    else
    {
      v14->_hasAbsoluteTimestamp = 0;
      v15 = -1.0;
    }

    v14->_absoluteTimestamp = v15;
    objc_storeStrong(&v14->_metadata, a4);
    objc_storeStrong(&v14->_statistics, a5);
    objc_storeStrong(&v14->_dimensions, a6);
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