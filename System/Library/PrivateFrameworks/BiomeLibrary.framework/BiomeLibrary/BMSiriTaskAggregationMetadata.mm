@interface BMSiriTaskAggregationMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriTaskAggregationMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriTaskAggregationMetadata)initWithSchedule:(int)schedule aggregationWindowStartTimestamp:(id)timestamp aggregationWindowEndTimestamp:(id)endTimestamp odmId:(id)id;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriTaskAggregationMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    schedule = [(BMSiriTaskAggregationMetadata *)self schedule];
    if (schedule == [v5 schedule] && (!-[BMSiriTaskAggregationMetadata hasAggregationWindowStartTimestamp](self, "hasAggregationWindowStartTimestamp") && !objc_msgSend(v5, "hasAggregationWindowStartTimestamp") || -[BMSiriTaskAggregationMetadata hasAggregationWindowStartTimestamp](self, "hasAggregationWindowStartTimestamp") && objc_msgSend(v5, "hasAggregationWindowStartTimestamp") && (-[BMSiriTaskAggregationMetadata aggregationWindowStartTimestamp](self, "aggregationWindowStartTimestamp"), v8 = v7, objc_msgSend(v5, "aggregationWindowStartTimestamp"), v8 == v9)) && (!-[BMSiriTaskAggregationMetadata hasAggregationWindowEndTimestamp](self, "hasAggregationWindowEndTimestamp") && !objc_msgSend(v5, "hasAggregationWindowEndTimestamp") || -[BMSiriTaskAggregationMetadata hasAggregationWindowEndTimestamp](self, "hasAggregationWindowEndTimestamp") && objc_msgSend(v5, "hasAggregationWindowEndTimestamp") && (-[BMSiriTaskAggregationMetadata aggregationWindowEndTimestamp](self, "aggregationWindowEndTimestamp"), v11 = v10, objc_msgSend(v5, "aggregationWindowEndTimestamp"), v11 == v12)))
    {
      odmId = [(BMSiriTaskAggregationMetadata *)self odmId];
      odmId2 = [v5 odmId];
      if (odmId == odmId2)
      {
        v17 = 1;
      }

      else
      {
        odmId3 = [(BMSiriTaskAggregationMetadata *)self odmId];
        odmId4 = [v5 odmId];
        v17 = [odmId3 isEqual:odmId4];
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)jsonDictionary
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriTaskAggregationMetadata schedule](self, "schedule")}];
  if (![(BMSiriTaskAggregationMetadata *)self hasAggregationWindowStartTimestamp]|| ([(BMSiriTaskAggregationMetadata *)self aggregationWindowStartTimestamp], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMSiriTaskAggregationMetadata *)self aggregationWindowStartTimestamp];
    v5 = MEMORY[0x1E696AD98];
    [(BMSiriTaskAggregationMetadata *)self aggregationWindowStartTimestamp];
    v6 = [v5 numberWithDouble:?];
  }

  if (![(BMSiriTaskAggregationMetadata *)self hasAggregationWindowEndTimestamp]|| ([(BMSiriTaskAggregationMetadata *)self aggregationWindowEndTimestamp], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMSiriTaskAggregationMetadata *)self aggregationWindowEndTimestamp];
    v8 = MEMORY[0x1E696AD98];
    [(BMSiriTaskAggregationMetadata *)self aggregationWindowEndTimestamp];
    v9 = [v8 numberWithDouble:?];
  }

  odmId = [(BMSiriTaskAggregationMetadata *)self odmId];
  v18[0] = @"schedule";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = null;
  v18[1] = @"aggregationWindowStartTimestamp";
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = null2;
  v18[2] = @"aggregationWindowEndTimestamp";
  null3 = v9;
  if (!v9)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = null3;
  v18[3] = @"odmId";
  null4 = odmId;
  if (!odmId)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v19[3] = null4;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  if (odmId)
  {
    if (v9)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (v9)
    {
LABEL_19:
      if (v6)
      {
        goto LABEL_20;
      }

LABEL_26:

      if (v3)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }
  }

  if (!v6)
  {
    goto LABEL_26;
  }

LABEL_20:
  if (v3)
  {
    goto LABEL_21;
  }

LABEL_27:

LABEL_21:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMSiriTaskAggregationMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v45[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"schedule"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v37 = 0;
LABEL_9:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"aggregationWindowStartTimestamp"];
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
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"aggregationWindowStartTimestamp"];
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

    v11 = [dictionaryCopy objectForKeyedSubscript:@"aggregationWindowEndTimestamp"];
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
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"aggregationWindowEndTimestamp"];
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

    v16 = [dictionaryCopy objectForKeyedSubscript:@"odmId"];
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = 0;
LABEL_18:
      intValue = [v37 intValue];
      v19 = selfCopy3;
      v10 = v12;
      self = [(BMSiriTaskAggregationMetadata *)v19 initWithSchedule:intValue aggregationWindowStartTimestamp:v12 aggregationWindowEndTimestamp:v15 odmId:v17];
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
      v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"odmId"];
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
    v8 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriTaskAggregationMetadataScheduleFromString(v7)];
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
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"schedule"];
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
  [(BMSiriTaskAggregationMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  schedule = self->_schedule;
  v9 = toCopy;
  PBDataWriterWriteUint32Field();
  if (self->_hasAggregationWindowStartTimestamp)
  {
    aggregationWindowStartTimestamp = self->_aggregationWindowStartTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasAggregationWindowEndTimestamp)
  {
    aggregationWindowEndTimestamp = self->_aggregationWindowEndTimestamp;
    PBDataWriterWriteDoubleField();
  }

  v8 = v9;
  if (self->_odmId)
  {
    PBDataWriterWriteStringField();
    v8 = v9;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v36.receiver = self;
  v36.super_class = BMSiriTaskAggregationMetadata;
  v5 = [(BMEventBase *)&v36 init];
  if (!v5)
  {
    goto LABEL_53;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_51;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v37) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v37 & 0x7F) << v7;
        if ((v37 & 0x80) == 0)
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
        goto LABEL_51;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      if (v15 == 3)
      {
        v5->_hasAggregationWindowEndTimestamp = 1;
        v37 = 0;
        v27 = [fromCopy position] + 8;
        if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 8, v28 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v30 = v37;
        v31 = 40;
LABEL_49:
        *(&v5->super.super.isa + v31) = v30;
        goto LABEL_50;
      }

      if (v15 != 4)
      {
LABEL_27:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v18 = PBReaderReadString();
      odmId = v5->_odmId;
      v5->_odmId = v18;

LABEL_50:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_51;
      }
    }

    if (v15 == 1)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      while (1)
      {
        LOBYTE(v37) = 0;
        v23 = [fromCopy position] + 1;
        if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v22 |= (v37 & 0x7F) << v20;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v20 += 7;
        if (v21++ > 8)
        {
          goto LABEL_43;
        }
      }

      if (([fromCopy hasError] & 1) != 0 || v22 > 3)
      {
LABEL_43:
        LODWORD(v22) = 0;
      }

      v5->_schedule = v22;
      goto LABEL_50;
    }

    if (v15 != 2)
    {
      goto LABEL_27;
    }

    v5->_hasAggregationWindowStartTimestamp = 1;
    v37 = 0;
    v16 = [fromCopy position] + 8;
    if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 8, v17 <= objc_msgSend(fromCopy, "length")))
    {
      data4 = [fromCopy data];
      [data4 getBytes:&v37 range:{objc_msgSend(fromCopy, "position"), 8}];

      [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
    }

    else
    {
      [fromCopy _setError];
    }

    v30 = v37;
    v31 = 32;
    goto LABEL_49;
  }

LABEL_51:
  if ([fromCopy hasError])
  {
LABEL_52:
    v34 = 0;
  }

  else
  {
LABEL_53:
    v34 = v5;
  }

  return v34;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMSiriTaskAggregationMetadataScheduleAsString([(BMSiriTaskAggregationMetadata *)self schedule]);
  v5 = MEMORY[0x1E696AD98];
  [(BMSiriTaskAggregationMetadata *)self aggregationWindowStartTimestamp];
  v6 = [v5 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [(BMSiriTaskAggregationMetadata *)self aggregationWindowEndTimestamp];
  v8 = [v7 numberWithDouble:?];
  odmId = [(BMSiriTaskAggregationMetadata *)self odmId];
  v10 = [v3 initWithFormat:@"BMSiriTaskAggregationMetadata with schedule: %@, aggregationWindowStartTimestamp: %@, aggregationWindowEndTimestamp: %@, odmId: %@", v4, v6, v8, odmId];

  return v10;
}

- (BMSiriTaskAggregationMetadata)initWithSchedule:(int)schedule aggregationWindowStartTimestamp:(id)timestamp aggregationWindowEndTimestamp:(id)endTimestamp odmId:(id)id
{
  timestampCopy = timestamp;
  endTimestampCopy = endTimestamp;
  idCopy = id;
  v17.receiver = self;
  v17.super_class = BMSiriTaskAggregationMetadata;
  v13 = [(BMEventBase *)&v17 init];
  if (v13)
  {
    v13->_dataVersion = [objc_opt_class() latestDataVersion];
    v13->_schedule = schedule;
    if (timestampCopy)
    {
      v13->_hasAggregationWindowStartTimestamp = 1;
      [timestampCopy doubleValue];
    }

    else
    {
      v13->_hasAggregationWindowStartTimestamp = 0;
      v14 = -1.0;
    }

    v13->_aggregationWindowStartTimestamp = v14;
    if (endTimestampCopy)
    {
      v13->_hasAggregationWindowEndTimestamp = 1;
      [endTimestampCopy doubleValue];
    }

    else
    {
      v13->_hasAggregationWindowEndTimestamp = 0;
      v15 = -1.0;
    }

    v13->_aggregationWindowEndTimestamp = v15;
    objc_storeStrong(&v13->_odmId, id);
  }

  return v13;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"schedule" number:1 type:4 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aggregationWindowStartTimestamp" number:2 type:0 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aggregationWindowEndTimestamp" number:3 type:0 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"odmId" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"schedule" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"aggregationWindowStartTimestamp" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"aggregationWindowEndTimestamp" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"odmId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
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

    v8 = [[BMSiriTaskAggregationMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end