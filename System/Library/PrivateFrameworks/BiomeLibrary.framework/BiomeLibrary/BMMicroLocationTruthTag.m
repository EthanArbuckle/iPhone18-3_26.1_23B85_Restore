@interface BMMicroLocationTruthTag
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMicroLocationTruthTag)initWithAbsoluteTimestamp:(id)a3 truthTagID:(id)a4 recordingRequestID:(id)a5 clientBundleID:(id)a6;
- (BMMicroLocationTruthTag)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMicroLocationTruthTag

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMicroLocationTruthTag *)self absoluteTimestamp];
    v7 = [v5 absoluteTimestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMicroLocationTruthTag *)self absoluteTimestamp];
      v10 = [v5 absoluteTimestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    v13 = [(BMMicroLocationTruthTag *)self truthTagID];
    v14 = [v5 truthTagID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMMicroLocationTruthTag *)self truthTagID];
      v17 = [v5 truthTagID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    v19 = [(BMMicroLocationTruthTag *)self recordingRequestID];
    v20 = [v5 recordingRequestID];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMMicroLocationTruthTag *)self recordingRequestID];
      v23 = [v5 recordingRequestID];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v25 = [(BMMicroLocationTruthTag *)self clientBundleID];
    v26 = [v5 clientBundleID];
    if (v25 == v26)
    {
      v12 = 1;
    }

    else
    {
      v27 = [(BMMicroLocationTruthTag *)self clientBundleID];
      v28 = [v5 clientBundleID];
      v12 = [v27 isEqual:v28];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMMicroLocationTruthTag *)self absoluteTimestamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMMicroLocationTruthTag *)self absoluteTimestamp];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMMicroLocationTruthTag *)self truthTagID];
  v8 = [(BMMicroLocationTruthTag *)self recordingRequestID];
  v9 = [(BMMicroLocationTruthTag *)self clientBundleID];
  v17[0] = @"absoluteTimestamp";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v10;
  v17[1] = @"truthTagID";
  v11 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v11;
  v17[2] = @"recordingRequestID";
  v12 = v8;
  if (!v8)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v12;
  v17[3] = @"clientBundleID";
  v13 = v9;
  if (!v9)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v8)
    {
LABEL_14:
      if (v7)
      {
        goto LABEL_15;
      }

LABEL_21:

      if (v6)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  if (!v7)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v6)
  {
    goto LABEL_16;
  }

LABEL_22:

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMMicroLocationTruthTag)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v47[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"absoluteTimestamp"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = MEMORY[0x1E695DF00];
      v8 = v6;
      v9 = [v7 alloc];
      [v8 doubleValue];
      v11 = v10;

      v12 = [v9 initWithTimeIntervalSinceReferenceDate:v11];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v39 = [v13 dateFromString:v6];

        goto LABEL_9;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v39 = 0;
          v21 = 0;
          v20 = self;
          goto LABEL_36;
        }

        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E698F240];
        v46 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
        v47[0] = v15;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
        v39 = 0;
        v21 = 0;
        *a4 = [v33 initWithDomain:v34 code:2 userInfo:v14];
        goto LABEL_44;
      }

      v12 = v6;
    }

    v39 = v12;
  }

  else
  {
    v39 = 0;
  }

LABEL_9:
  v14 = [v5 objectForKeyedSubscript:@"truthTagID"];
  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
        goto LABEL_12;
      }

      if (a4)
      {
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v44 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"truthTagID"];
        v45 = v18;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v24 = [v22 initWithDomain:v23 code:2 userInfo:v16];
        v15 = 0;
        v21 = 0;
        *a4 = v24;
        goto LABEL_41;
      }

      v15 = 0;
      v21 = 0;
LABEL_44:
      v20 = self;
      goto LABEL_35;
    }
  }

  v15 = 0;
LABEL_12:
  v16 = [v5 objectForKeyedSubscript:@"recordingRequestID"];
  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = a4;
        v18 = v16;
        goto LABEL_15;
      }

      if (a4)
      {
        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v42 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"recordingRequestID"];
        v43 = v17;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v19 = v26 = a4;
        v27 = [v36 initWithDomain:v25 code:2 userInfo:v19];
        v18 = 0;
        v21 = 0;
        *v26 = v27;
        goto LABEL_32;
      }

      v18 = 0;
      v21 = 0;
LABEL_41:
      v20 = self;
      goto LABEL_34;
    }
  }

  v17 = a4;
  v18 = 0;
LABEL_15:
  v19 = [v5 objectForKeyedSubscript:@"clientBundleID"];
  if (v19)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v19;
        goto LABEL_18;
      }

      if (v17)
      {
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v40 = *MEMORY[0x1E696A578];
        v28 = v17;
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientBundleID"];
        v41 = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        *v28 = [v37 initWithDomain:v35 code:2 userInfo:v30];

        v17 = 0;
      }

      v21 = 0;
LABEL_32:
      v20 = self;
      goto LABEL_33;
    }
  }

  v17 = 0;
LABEL_18:
  v20 = [(BMMicroLocationTruthTag *)self initWithAbsoluteTimestamp:v39 truthTagID:v15 recordingRequestID:v18 clientBundleID:v17];
  v21 = v20;
LABEL_33:

LABEL_34:
LABEL_35:

LABEL_36:
  v31 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMicroLocationTruthTag *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_truthTagID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_recordingRequestID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_clientBundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BMMicroLocationTruthTag;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_37;
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
          v16 = PBReaderReadString();
          v17 = 48;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_25:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_36;
            }

            goto LABEL_34;
          }

          v16 = PBReaderReadString();
          v17 = 56;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v5->_hasRaw_absoluteTimestamp = 1;
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

          v5->_raw_absoluteTimestamp = v26;
          goto LABEL_34;
        }

        if (v15 != 2)
        {
          goto LABEL_25;
        }

        v16 = PBReaderReadString();
        v17 = 40;
      }

      v20 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_34:
      v22 = [v4 position];
    }

    while (v22 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_36:
    v23 = 0;
  }

  else
  {
LABEL_37:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMicroLocationTruthTag *)self absoluteTimestamp];
  v5 = [(BMMicroLocationTruthTag *)self truthTagID];
  v6 = [(BMMicroLocationTruthTag *)self recordingRequestID];
  v7 = [(BMMicroLocationTruthTag *)self clientBundleID];
  v8 = [v3 initWithFormat:@"BMMicroLocationTruthTag with absoluteTimestamp: %@, truthTagID: %@, recordingRequestID: %@, clientBundleID: %@", v4, v5, v6, v7];

  return v8;
}

- (BMMicroLocationTruthTag)initWithAbsoluteTimestamp:(id)a3 truthTagID:(id)a4 recordingRequestID:(id)a5 clientBundleID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = BMMicroLocationTruthTag;
  v14 = [(BMEventBase *)&v17 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v10)
    {
      v14->_hasRaw_absoluteTimestamp = 1;
      [v10 timeIntervalSinceReferenceDate];
    }

    else
    {
      v14->_hasRaw_absoluteTimestamp = 0;
      v15 = -1.0;
    }

    v14->_raw_absoluteTimestamp = v15;
    objc_storeStrong(&v14->_truthTagID, a4);
    objc_storeStrong(&v14->_recordingRequestID, a5);
    objc_storeStrong(&v14->_clientBundleID, a6);
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"truthTagID" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recordingRequestID" number:3 type:13 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientBundleID" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"truthTagID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recordingRequestID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientBundleID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
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
  if (a4 == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMMicroLocationTruthTag alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[8] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end