@interface BMGeneratedImageFailureReason
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMGeneratedImageFailureReason)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMGeneratedImageFailureReason)initWithTimestamp:(id)a3 identifier:(id)a4 userInterfaceLanguage:(id)a5 userSetRegionFormat:(id)a6 reason:(int)a7 feature:(int)a8;
- (BOOL)isEqual:(id)a3;
- (NSDate)timestamp;
- (NSString)description;
- (NSUUID)identifier;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMGeneratedImageFailureReason

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:6 requestOnly:0 fieldNumber:2 protoDataType:14 convertedType:3];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userInterfaceLanguage" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userSetRegionFormat" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reason" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"feature" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMGeneratedImageFailureReason *)self timestamp];
    v7 = [v5 timestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMGeneratedImageFailureReason *)self timestamp];
      v10 = [v5 timestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    v13 = [(BMGeneratedImageFailureReason *)self identifier];
    v14 = [v5 identifier];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMGeneratedImageFailureReason *)self identifier];
      v17 = [v5 identifier];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    v19 = [(BMGeneratedImageFailureReason *)self userInterfaceLanguage];
    v20 = [v5 userInterfaceLanguage];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMGeneratedImageFailureReason *)self userInterfaceLanguage];
      v23 = [v5 userInterfaceLanguage];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    v25 = [(BMGeneratedImageFailureReason *)self userSetRegionFormat];
    v26 = [v5 userSetRegionFormat];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMGeneratedImageFailureReason *)self userSetRegionFormat];
      v29 = [v5 userSetRegionFormat];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_21;
      }
    }

    v31 = [(BMGeneratedImageFailureReason *)self reason];
    if (v31 == [v5 reason])
    {
      v32 = [(BMGeneratedImageFailureReason *)self feature];
      v12 = v32 == [v5 feature];
LABEL_22:

      goto LABEL_23;
    }

LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (NSUUID)identifier
{
  raw_identifier = self->_raw_identifier;
  if (raw_identifier)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_identifier toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)timestamp
{
  if (self->_hasRaw_timestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_timestamp];
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
  v27[6] = *MEMORY[0x1E69E9840];
  v3 = [(BMGeneratedImageFailureReason *)self timestamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMGeneratedImageFailureReason *)self timestamp];
    [v5 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMGeneratedImageFailureReason *)self identifier];
  v8 = [v7 UUIDString];

  v9 = [(BMGeneratedImageFailureReason *)self userInterfaceLanguage];
  v10 = [(BMGeneratedImageFailureReason *)self userSetRegionFormat];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGeneratedImageFailureReason reason](self, "reason")}];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMGeneratedImageFailureReason feature](self, "feature")}];
  v26[0] = @"timestamp";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v13;
  v25 = v6;
  v27[0] = v13;
  v26[1] = @"identifier";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v14;
  v27[1] = v14;
  v26[2] = @"userInterfaceLanguage";
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v27[2] = v15;
  v26[3] = @"userSetRegionFormat";
  v16 = v10;
  if (!v10)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v27[3] = v16;
  v26[4] = @"reason";
  v17 = v11;
  if (!v11)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = v17;
  v26[5] = @"feature";
  v18 = v12;
  if (!v12)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v27[5] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:{6, v22}];
  if (v12)
  {
    if (v11)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v11)
    {
LABEL_18:
      if (v10)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }
  }

  if (v10)
  {
LABEL_19:
    if (v9)
    {
      goto LABEL_20;
    }

LABEL_29:

    if (v8)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_28:

  if (!v9)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (v8)
  {
    goto LABEL_21;
  }

LABEL_30:

LABEL_21:
  if (!v25)
  {
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BMGeneratedImageFailureReason)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v83[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"timestamp"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = MEMORY[0x1E695DF00];
      v10 = v7;
      v11 = [v9 alloc];
      [v10 doubleValue];
      v13 = v12;

      v14 = [v11 initWithTimeIntervalSince1970:v13];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v8 = [v15 dateFromString:v7];

        goto LABEL_9;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v8 = 0;
          v32 = 0;
          goto LABEL_58;
        }

        v53 = objc_alloc(MEMORY[0x1E696ABC0]);
        v54 = a4;
        v55 = *MEMORY[0x1E698F240];
        v82 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
        v83[0] = v16;
        v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:&v82 count:1];
        v57 = v53;
        v17 = v56;
        v8 = 0;
        v32 = 0;
        *v54 = [v57 initWithDomain:v55 code:2 userInfo:v56];
        goto LABEL_56;
      }

      v14 = v7;
    }

    v8 = v14;
  }

  else
  {
    v8 = 0;
  }

LABEL_9:
  v16 = [v6 objectForKeyedSubscript:@"identifier"];
  if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v69 = v8;
    v17 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v68 = self;
    v23 = v16;
    v24 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v23];
    if (!v24)
    {
      if (a4)
      {
        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = a4;
        v48 = *MEMORY[0x1E698F240];
        v80 = *MEMORY[0x1E696A578];
        v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"identifier"];
        v81 = v49;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        *v47 = [v46 initWithDomain:v48 code:2 userInfo:v50];
      }

      v32 = 0;
      v17 = v23;
      v16 = v23;
      self = v68;
      goto LABEL_56;
    }

    v17 = v24;
    v69 = v8;

    self = v68;
LABEL_12:
    v18 = [v6 objectForKeyedSubscript:@"userInterfaceLanguage"];
    v63 = a4;
    v64 = v7;
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v67 = 0;
          v32 = 0;
          goto LABEL_55;
        }

        v33 = self;
        v34 = v17;
        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v76 = *MEMORY[0x1E696A578];
        v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userInterfaceLanguage"];
        v77 = v66;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
        v37 = v35;
        v17 = v34;
        self = v33;
        v67 = 0;
        v32 = 0;
        *v63 = [v37 initWithDomain:v36 code:2 userInfo:v19];
LABEL_54:

        v7 = v64;
LABEL_55:

        v8 = v69;
        goto LABEL_56;
      }

      v67 = v18;
    }

    else
    {
      v67 = 0;
    }

    v19 = [v6 objectForKeyedSubscript:@"userSetRegionFormat"];
    v65 = v17;
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v66 = 0;
          v32 = 0;
          goto LABEL_53;
        }

        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v74 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userSetRegionFormat"];
        v75 = v22;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        v40 = [v38 initWithDomain:v39 code:2 userInfo:v20];
        v66 = 0;
        v32 = 0;
        *v63 = v40;
LABEL_52:

LABEL_53:
        v17 = v65;
        goto LABEL_54;
      }

      v66 = v19;
    }

    else
    {
      v66 = 0;
    }

    v20 = [v6 objectForKeyedSubscript:@"reason"];
    if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v21 = self;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = v20;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v63)
          {
            v22 = 0;
            v32 = 0;
            goto LABEL_51;
          }

          v61 = objc_alloc(MEMORY[0x1E696ABC0]);
          v51 = *MEMORY[0x1E698F240];
          v72 = *MEMORY[0x1E696A578];
          v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"reason"];
          v73 = v42;
          v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
          v52 = [v61 initWithDomain:v51 code:2 userInfo:v41];
          v22 = 0;
          v32 = 0;
          *v63 = v52;
          goto LABEL_50;
        }

        v25 = [MEMORY[0x1E696AD98] numberWithInt:BMGeneratedImageFailureReasonReasonFromString(v20)];
      }

      v22 = v25;
    }

    else
    {
      v21 = self;
      v22 = 0;
    }

    v41 = [v6 objectForKeyedSubscript:@"feature"];
    if (v41 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = v41;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v63)
          {
            v62 = objc_alloc(MEMORY[0x1E696ABC0]);
            v60 = *MEMORY[0x1E698F240];
            v70 = *MEMORY[0x1E696A578];
            v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"feature"];
            v71 = v58;
            v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
            *v63 = [v62 initWithDomain:v60 code:2 userInfo:v59];
          }

          v42 = 0;
          v32 = 0;
          goto LABEL_50;
        }

        v43 = [MEMORY[0x1E696AD98] numberWithInt:BMGeneratedImageFailureReasonFeatureFromString(v41)];
      }

      v42 = v43;
    }

    else
    {
      v42 = 0;
    }

    v32 = -[BMGeneratedImageFailureReason initWithTimestamp:identifier:userInterfaceLanguage:userSetRegionFormat:reason:feature:](v21, "initWithTimestamp:identifier:userInterfaceLanguage:userSetRegionFormat:reason:feature:", v69, v65, v67, v66, [v22 intValue], objc_msgSend(v42, "intValue"));
    v21 = v32;
LABEL_50:

LABEL_51:
    self = v21;
    goto LABEL_52;
  }

  if (!a4)
  {
    v32 = 0;
    goto LABEL_57;
  }

  v26 = objc_alloc(MEMORY[0x1E696ABC0]);
  v27 = a4;
  v28 = *MEMORY[0x1E698F240];
  v78 = *MEMORY[0x1E696A578];
  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
  v79 = v29;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
  v31 = v26;
  v17 = v29;
  *v27 = [v31 initWithDomain:v28 code:2 userInfo:v30];

  v32 = 0;
LABEL_56:

LABEL_57:
LABEL_58:

  v44 = *MEMORY[0x1E69E9840];
  return v32;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMGeneratedImageFailureReason *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_raw_identifier)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_userInterfaceLanguage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userSetRegionFormat)
  {
    PBDataWriterWriteStringField();
  }

  reason = self->_reason;
  PBDataWriterWriteUint32Field();
  feature = self->_feature;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = BMGeneratedImageFailureReason;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_68;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_66;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v40) & 0x7F) << v7;
        if ((LOBYTE(v40) & 0x80) == 0)
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
        goto LABEL_66;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        break;
      }

      switch(v15)
      {
        case 4:
          v16 = PBReaderReadString();
          v17 = 64;
          goto LABEL_39;
        case 5:
          v29 = 0;
          v30 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v40) = 0;
            v31 = [v4 position] + 1;
            if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 1, v32 <= objc_msgSend(v4, "length")))
            {
              v33 = [v4 data];
              [v33 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v20 |= (LOBYTE(v40) & 0x7F) << v29;
            if ((LOBYTE(v40) & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v24 = v30++ > 8;
            if (v24)
            {
              goto LABEL_60;
            }
          }

          if (([v4 hasError] & 1) != 0 || v20 > 0xE)
          {
LABEL_60:
            LODWORD(v20) = 0;
          }

          v34 = 44;
          break;
        case 6:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v40) = 0;
            v21 = [v4 position] + 1;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
            {
              v23 = [v4 data];
              [v23 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v20 |= (LOBYTE(v40) & 0x7F) << v18;
            if ((LOBYTE(v40) & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v24 = v19++ > 8;
            if (v24)
            {
              goto LABEL_56;
            }
          }

          if (([v4 hasError] & 1) != 0 || v20 > 3)
          {
LABEL_56:
            LODWORD(v20) = 0;
          }

          v34 = 48;
          break;
        default:
LABEL_40:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_65;
      }

      *(&v5->super.super.isa + v34) = v20;
LABEL_65:
      v36 = [v4 position];
      if (v36 >= [v4 length])
      {
        goto LABEL_66;
      }
    }

    switch(v15)
    {
      case 1:
        v5->_hasRaw_timestamp = 1;
        v40 = 0.0;
        v25 = [v4 position] + 8;
        if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 8, v26 <= objc_msgSend(v4, "length")))
        {
          v35 = [v4 data];
          [v35 getBytes:&v40 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_timestamp = v40;
        goto LABEL_65;
      case 2:
        v28 = PBReaderReadData();
        if ([(NSData *)v28 length]!= 16)
        {

          goto LABEL_67;
        }

        raw_identifier = v5->_raw_identifier;
        v5->_raw_identifier = v28;
        break;
      case 3:
        v16 = PBReaderReadString();
        v17 = 56;
LABEL_39:
        raw_identifier = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
        break;
      default:
        goto LABEL_40;
    }

    goto LABEL_65;
  }

LABEL_66:
  if ([v4 hasError])
  {
LABEL_67:
    v37 = 0;
  }

  else
  {
LABEL_68:
    v37 = v5;
  }

  return v37;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMGeneratedImageFailureReason *)self timestamp];
  v5 = [(BMGeneratedImageFailureReason *)self identifier];
  v6 = [(BMGeneratedImageFailureReason *)self userInterfaceLanguage];
  v7 = [(BMGeneratedImageFailureReason *)self userSetRegionFormat];
  v8 = BMGeneratedImageFailureReasonReasonAsString([(BMGeneratedImageFailureReason *)self reason]);
  v9 = BMGeneratedImageFailureReasonFeatureAsString([(BMGeneratedImageFailureReason *)self feature]);
  v10 = [v3 initWithFormat:@"BMGeneratedImageFailureReason with timestamp: %@, identifier: %@, userInterfaceLanguage: %@, userSetRegionFormat: %@, reason: %@, feature: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMGeneratedImageFailureReason)initWithTimestamp:(id)a3 identifier:(id)a4 userInterfaceLanguage:(id)a5 userSetRegionFormat:(id)a6 reason:(int)a7 feature:(int)a8
{
  v25[2] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v24.receiver = self;
  v24.super_class = BMGeneratedImageFailureReason;
  v18 = [(BMEventBase *)&v24 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v14)
    {
      v18->_hasRaw_timestamp = 1;
      [v14 timeIntervalSince1970];
    }

    else
    {
      v18->_hasRaw_timestamp = 0;
      v19 = -1.0;
    }

    v18->_raw_timestamp = v19;
    if (v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      [v15 getUUIDBytes:v25];
      v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v25 length:16];
      raw_identifier = v18->_raw_identifier;
      v18->_raw_identifier = v20;
    }

    else
    {
      raw_identifier = v18->_raw_identifier;
      v18->_raw_identifier = 0;
    }

    objc_storeStrong(&v18->_userInterfaceLanguage, a5);
    objc_storeStrong(&v18->_userSetRegionFormat, a6);
    v18->_reason = a7;
    v18->_feature = a8;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:1 type:0 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:2 type:14 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userInterfaceLanguage" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userSetRegionFormat" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reason" number:5 type:4 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"feature" number:6 type:4 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
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

    v8 = [[BMGeneratedImageFailureReason alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end