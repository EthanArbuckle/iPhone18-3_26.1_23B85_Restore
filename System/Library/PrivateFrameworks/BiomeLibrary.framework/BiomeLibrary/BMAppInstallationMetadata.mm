@interface BMAppInstallationMetadata
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppInstallationMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMAppInstallationMetadata)initWithOriginalInstallationDate:(id)a3 version:(id)a4 shortVersion:(id)a5 uniqueInstallID:(id)a6 installSessionID:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSDate)originalInstallationDate;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAppInstallationMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAppInstallationMetadata *)self originalInstallationDate];
    v7 = [v5 originalInstallationDate];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAppInstallationMetadata *)self originalInstallationDate];
      v10 = [v5 originalInstallationDate];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v13 = [(BMAppInstallationMetadata *)self version];
    v14 = [v5 version];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMAppInstallationMetadata *)self version];
      v17 = [v5 version];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v19 = [(BMAppInstallationMetadata *)self shortVersion];
    v20 = [v5 shortVersion];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMAppInstallationMetadata *)self shortVersion];
      v23 = [v5 shortVersion];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    v25 = [(BMAppInstallationMetadata *)self uniqueInstallID];
    v26 = [v5 uniqueInstallID];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMAppInstallationMetadata *)self uniqueInstallID];
      v29 = [v5 uniqueInstallID];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v31 = [(BMAppInstallationMetadata *)self installSessionID];
    v32 = [v5 installSessionID];
    if (v31 == v32)
    {
      v12 = 1;
    }

    else
    {
      v33 = [(BMAppInstallationMetadata *)self installSessionID];
      v34 = [v5 installSessionID];
      v12 = [v33 isEqual:v34];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (NSDate)originalInstallationDate
{
  if (self->_hasRaw_originalInstallationDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_originalInstallationDate];
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
  v28[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMAppInstallationMetadata *)self originalInstallationDate];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMAppInstallationMetadata *)self originalInstallationDate];
    [v5 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMAppInstallationMetadata *)self version];
  v8 = [(BMAppInstallationMetadata *)self shortVersion];
  v9 = [(BMAppInstallationMetadata *)self uniqueInstallID];
  v10 = [v9 base64EncodedStringWithOptions:0];

  v11 = [(BMAppInstallationMetadata *)self installSessionID];
  v12 = [v11 base64EncodedStringWithOptions:0];

  v23 = @"originalInstallationDate";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v13;
  v28[0] = v13;
  v24 = @"version";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v28[1] = v14;
  v25 = @"shortVersion";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v28[2] = v15;
  v26 = @"uniqueInstallID";
  v16 = v10;
  if (!v10)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v28[3] = v16;
  v27 = @"installSessionID";
  v17 = v12;
  if (!v12)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v28[4] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v23 count:{5, v21}];
  if (v12)
  {
    if (v10)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (v10)
    {
LABEL_16:
      if (v8)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  if (v8)
  {
LABEL_17:
    if (v7)
    {
      goto LABEL_18;
    }

LABEL_25:

    if (v6)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_24:

  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v6)
  {
    goto LABEL_19;
  }

LABEL_26:

LABEL_19:
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BMAppInstallationMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v64[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"originalInstallationDate"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v50 = 0;
LABEL_9:
    v15 = [v6 objectForKeyedSubscript:@"version"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v49 = 0;
          v22 = 0;
          goto LABEL_26;
        }

        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v61 = *MEMORY[0x1E696A578];
        v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"version"];
        v62 = v47;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v49 = 0;
        v22 = 0;
        *a4 = [v25 initWithDomain:v26 code:2 userInfo:v16];
        goto LABEL_25;
      }

      v49 = v15;
    }

    else
    {
      v49 = 0;
    }

    v16 = [v6 objectForKeyedSubscript:@"shortVersion"];
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v47 = 0;
          v22 = 0;
          goto LABEL_25;
        }

        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v59 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shortVersion"];
        v60 = v19;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v28 = v7;
        v18 = v29 = a4;
        v30 = [v48 initWithDomain:v27 code:2 userInfo:v18];
        v47 = 0;
        v22 = 0;
        *v29 = v30;
        v7 = v28;
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v46 = v7;
      v17 = a4;
      v47 = v16;
    }

    else
    {
      v46 = v7;
      v47 = 0;
      v17 = a4;
    }

    v18 = [v6 objectForKeyedSubscript:@"uniqueInstallID"];
    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = 0;
LABEL_18:
      v20 = [v6 objectForKeyedSubscript:@"installSessionID"];
      if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v21 = 0;
LABEL_21:
        v22 = [(BMAppInstallationMetadata *)self initWithOriginalInstallationDate:v50 version:v49 shortVersion:v47 uniqueInstallID:v19 installSessionID:v21];
        self = v22;
LABEL_22:

LABEL_23:
        v7 = v46;
        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
        goto LABEL_21;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v20 options:0];
        if (v21)
        {
          goto LABEL_21;
        }

        if (v17)
        {
          v45 = objc_alloc(MEMORY[0x1E696ABC0]);
          v43 = *MEMORY[0x1E698F240];
          v53 = *MEMORY[0x1E696A578];
          v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"installSessionID"];
          v54 = v35;
          v36 = MEMORY[0x1E695DF20];
          v37 = &v54;
          v38 = &v53;
LABEL_56:
          v40 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:1];
          *v17 = [v45 initWithDomain:v43 code:2 userInfo:v40];
        }
      }

      else if (v17)
      {
        v45 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = *MEMORY[0x1E698F240];
        v51 = *MEMORY[0x1E696A578];
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"installSessionID"];
        v52 = v35;
        v36 = MEMORY[0x1E695DF20];
        v37 = &v52;
        v38 = &v51;
        goto LABEL_56;
      }

      v21 = 0;
      v22 = 0;
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v18 options:0];
      if (v19)
      {
        goto LABEL_18;
      }

      if (v17)
      {
        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v57 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"uniqueInstallID"];
        v58 = v21;
        v32 = MEMORY[0x1E695DF20];
        v33 = &v58;
        v34 = &v57;
LABEL_53:
        v20 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:1];
        v39 = [v44 initWithDomain:v31 code:2 userInfo:v20];
        v19 = 0;
        v22 = 0;
        *v17 = v39;
        goto LABEL_22;
      }
    }

    else if (v17)
    {
      v44 = objc_alloc(MEMORY[0x1E696ABC0]);
      v31 = *MEMORY[0x1E698F240];
      v55 = *MEMORY[0x1E696A578];
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"uniqueInstallID"];
      v56 = v21;
      v32 = MEMORY[0x1E695DF20];
      v33 = &v56;
      v34 = &v55;
      goto LABEL_53;
    }

    v19 = 0;
    v22 = 0;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v7;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSince1970:v12];
LABEL_6:
    v50 = v13;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v50 = [v14 dateFromString:v7];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v7;
    goto LABEL_6;
  }

  if (!a4)
  {
    v50 = 0;
    v22 = 0;
    goto LABEL_27;
  }

  v41 = objc_alloc(MEMORY[0x1E696ABC0]);
  v42 = *MEMORY[0x1E698F240];
  v63 = *MEMORY[0x1E696A578];
  v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"originalInstallationDate"];
  v64[0] = v49;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
  v50 = 0;
  v22 = 0;
  *a4 = [v41 initWithDomain:v42 code:2 userInfo:v15];
LABEL_26:

LABEL_27:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppInstallationMetadata *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_hasRaw_originalInstallationDate)
  {
    raw_originalInstallationDate = self->_raw_originalInstallationDate;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_version)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_shortVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_uniqueInstallID)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_installSessionID)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BMAppInstallationMetadata;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_40;
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
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v5->_hasRaw_originalInstallationDate = 1;
          v26 = 0.0;
          v20 = [v4 position] + 8;
          if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 8, v21 <= objc_msgSend(v4, "length")))
          {
            v22 = [v4 data];
            [v22 getBytes:&v26 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_raw_originalInstallationDate = v26;
          goto LABEL_29;
        }

        if (v15 == 2)
        {
          v16 = PBReaderReadString();
          v17 = 40;
          goto LABEL_28;
        }
      }

      else
      {
        switch(v15)
        {
          case 3:
            v16 = PBReaderReadString();
            v17 = 48;
            goto LABEL_28;
          case 4:
            v16 = PBReaderReadData();
            v17 = 56;
            goto LABEL_28;
          case 5:
            v16 = PBReaderReadData();
            v17 = 64;
LABEL_28:
            v18 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            goto LABEL_29;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_39;
      }

LABEL_29:
      v19 = [v4 position];
    }

    while (v19 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_39:
    v23 = 0;
  }

  else
  {
LABEL_40:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMAppInstallationMetadata *)self originalInstallationDate];
  v5 = [(BMAppInstallationMetadata *)self version];
  v6 = [(BMAppInstallationMetadata *)self shortVersion];
  v7 = [(BMAppInstallationMetadata *)self uniqueInstallID];
  v8 = [(BMAppInstallationMetadata *)self installSessionID];
  v9 = [v3 initWithFormat:@"BMAppInstallationMetadata with originalInstallationDate: %@, version: %@, shortVersion: %@, uniqueInstallID: %@, installSessionID: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMAppInstallationMetadata)initWithOriginalInstallationDate:(id)a3 version:(id)a4 shortVersion:(id)a5 uniqueInstallID:(id)a6 installSessionID:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMAppInstallationMetadata;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v12)
    {
      v17->_hasRaw_originalInstallationDate = 1;
      [v12 timeIntervalSince1970];
    }

    else
    {
      v17->_hasRaw_originalInstallationDate = 0;
      v18 = -1.0;
    }

    v17->_raw_originalInstallationDate = v18;
    objc_storeStrong(&v17->_version, a4);
    objc_storeStrong(&v17->_shortVersion, a5);
    objc_storeStrong(&v17->_uniqueInstallID, a6);
    objc_storeStrong(&v17->_installSessionID, a7);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"originalInstallationDate" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shortVersion" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueInstallID" number:4 type:14 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"installSessionID" number:5 type:14 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"originalInstallationDate" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shortVersion" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueInstallID" dataType:4 requestOnly:0 fieldNumber:4 protoDataType:14 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"installSessionID" dataType:4 requestOnly:0 fieldNumber:5 protoDataType:14 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
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

    v8 = [[BMAppInstallationMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end