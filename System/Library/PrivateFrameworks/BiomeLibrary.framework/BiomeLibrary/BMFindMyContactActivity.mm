@interface BMFindMyContactActivity
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMFindMyContactActivity)initWithHandle:(id)a3 actionType:(int)a4 eventTimestampBegin:(id)a5 eventTimestampEnd:(id)a6 bundleID:(id)a7;
- (BMFindMyContactActivity)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)eventTimestampBegin;
- (NSDate)eventTimestampEnd;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMFindMyContactActivity

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"handle" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"actionType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventTimestampBegin" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventTimestampEnd" dataType:3 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:2];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMFindMyContactActivity *)self handle];
    v7 = [v5 handle];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMFindMyContactActivity *)self handle];
      v10 = [v5 handle];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_14;
      }
    }

    v13 = [(BMFindMyContactActivity *)self actionType];
    if (v13 == [v5 actionType])
    {
      v14 = [(BMFindMyContactActivity *)self eventTimestampBegin];
      v15 = [v5 eventTimestampBegin];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMFindMyContactActivity *)self eventTimestampBegin];
        v18 = [v5 eventTimestampBegin];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_14;
        }
      }

      v20 = [(BMFindMyContactActivity *)self eventTimestampEnd];
      v21 = [v5 eventTimestampEnd];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMFindMyContactActivity *)self eventTimestampEnd];
        v24 = [v5 eventTimestampEnd];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_14;
        }
      }

      v27 = [(BMFindMyContactActivity *)self bundleID];
      v28 = [v5 bundleID];
      if (v27 == v28)
      {
        v12 = 1;
      }

      else
      {
        v29 = [(BMFindMyContactActivity *)self bundleID];
        v30 = [v5 bundleID];
        v12 = [v29 isEqual:v30];
      }

      goto LABEL_15;
    }

LABEL_14:
    v12 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (NSDate)eventTimestampEnd
{
  if (self->_hasRaw_eventTimestampEnd)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_eventTimestampEnd];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)eventTimestampBegin
{
  if (self->_hasRaw_eventTimestampBegin)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_eventTimestampBegin];
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
  v29[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMFindMyContactActivity *)self handle];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFindMyContactActivity actionType](self, "actionType")}];
  v5 = [(BMFindMyContactActivity *)self eventTimestampBegin];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(BMFindMyContactActivity *)self eventTimestampBegin];
    [v7 timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BMFindMyContactActivity *)self eventTimestampEnd];
  if (v9)
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = [(BMFindMyContactActivity *)self eventTimestampEnd];
    [v11 timeIntervalSince1970];
    v12 = [v10 numberWithDouble:?];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(BMFindMyContactActivity *)self bundleID];
  v24 = @"handle";
  v14 = v3;
  if (!v3)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v14;
  v29[0] = v14;
  v25 = @"actionType";
  v15 = v4;
  if (!v4)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v29[1] = v15;
  v26 = @"eventTimestampBegin";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v29[2] = v16;
  v27 = @"eventTimestampEnd";
  v17 = v12;
  if (!v12)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v29[3] = v17;
  v28 = @"bundleID";
  v18 = v13;
  if (!v13)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v24 count:{5, v22}];
  if (v13)
  {
    if (v12)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (v12)
    {
LABEL_19:
      if (v8)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  if (v8)
  {
LABEL_20:
    if (v4)
    {
      goto LABEL_21;
    }

LABEL_28:

    if (v3)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_27:

  if (!v4)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v3)
  {
    goto LABEL_22;
  }

LABEL_29:

LABEL_22:
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BMFindMyContactActivity)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v61[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"handle"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v51 = 0;
LABEL_4:
    v8 = [v6 objectForKeyedSubscript:@"actionType"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v50 = 0;
            v12 = 0;
            goto LABEL_39;
          }

          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v37 = *MEMORY[0x1E698F240];
          v58 = *MEMORY[0x1E696A578];
          v38 = a4;
          a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"actionType"];
          v59 = a4;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          v50 = 0;
          v12 = 0;
          *v38 = [v36 initWithDomain:v37 code:2 userInfo:v13];
          goto LABEL_38;
        }

        v9 = [MEMORY[0x1E696AD98] numberWithInt:BMFindMyContactActivityEventTypeFromString(v8)];
      }

      v50 = v9;
    }

    else
    {
      v50 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"eventTimestampBegin"];
    v48 = a4;
    v49 = v7;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = MEMORY[0x1E695DF00];
        v15 = v13;
        v16 = [v14 alloc];
        [v15 doubleValue];
        v18 = v17;

        v19 = [v16 initWithTimeIntervalSince1970:v18];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = objc_alloc_init(MEMORY[0x1E696AC80]);
          a4 = [v20 dateFromString:v13];

          goto LABEL_24;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v12 = 0;
            goto LABEL_38;
          }

          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v56 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"eventTimestampBegin"];
          v57 = v22;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v41 = [v39 initWithDomain:v40 code:2 userInfo:v21];
          v42 = a4;
          a4 = 0;
          v12 = 0;
          *v42 = v41;
LABEL_37:

          v7 = v49;
LABEL_38:

          goto LABEL_39;
        }

        v19 = v13;
      }

      a4 = v19;
    }

    else
    {
      a4 = 0;
    }

LABEL_24:
    v21 = [v6 objectForKeyedSubscript:@"eventTimestampEnd"];
    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = MEMORY[0x1E695DF00];
        v24 = v21;
        v25 = [v23 alloc];
        [v24 doubleValue];
        v27 = v26;

        v28 = [v25 initWithTimeIntervalSince1970:v27];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v22 = [v29 dateFromString:v21];

          goto LABEL_32;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v48)
          {
            v22 = 0;
            v12 = 0;
            goto LABEL_37;
          }

          v47 = objc_alloc(MEMORY[0x1E696ABC0]);
          v43 = *MEMORY[0x1E698F240];
          v54 = *MEMORY[0x1E696A578];
          v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"eventTimestampEnd"];
          v55 = v31;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
          v44 = [v47 initWithDomain:v43 code:2 userInfo:v30];
          v22 = 0;
          v12 = 0;
          *v48 = v44;
          goto LABEL_36;
        }

        v28 = v21;
      }

      v22 = v28;
    }

    else
    {
      v22 = 0;
    }

LABEL_32:
    v30 = [v6 objectForKeyedSubscript:@"bundleID"];
    if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v48)
        {
          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = *MEMORY[0x1E698F240];
          v52 = *MEMORY[0x1E696A578];
          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
          v53 = v34;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          *v48 = [v46 initWithDomain:v45 code:2 userInfo:v35];
        }

        v31 = 0;
        v12 = 0;
        goto LABEL_36;
      }

      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v12 = -[BMFindMyContactActivity initWithHandle:actionType:eventTimestampBegin:eventTimestampEnd:bundleID:](self, "initWithHandle:actionType:eventTimestampBegin:eventTimestampEnd:bundleID:", v51, [v50 intValue], a4, v22, v31);
    self = v12;
LABEL_36:

    goto LABEL_37;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v51 = 0;
    v12 = 0;
    goto LABEL_40;
  }

  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = *MEMORY[0x1E698F240];
  v60 = *MEMORY[0x1E696A578];
  v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"handle"];
  v61[0] = v50;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
  v51 = 0;
  v12 = 0;
  *a4 = [v10 initWithDomain:v11 code:2 userInfo:v8];
LABEL_39:

LABEL_40:
  v32 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFindMyContactActivity *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (self->_handle)
  {
    PBDataWriterWriteStringField();
  }

  actionType = self->_actionType;
  PBDataWriterWriteUint32Field();
  if (self->_hasRaw_eventTimestampBegin)
  {
    raw_eventTimestampBegin = self->_raw_eventTimestampBegin;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_eventTimestampEnd)
  {
    raw_eventTimestampEnd = self->_raw_eventTimestampEnd;
    PBDataWriterWriteDoubleField();
  }

  v7 = v8;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = BMFindMyContactActivity;
  v5 = [(BMEventBase *)&v37 init];
  if (!v5)
  {
    goto LABEL_56;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_54;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v38) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v38 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v38 & 0x7F) << v7;
        if ((v38 & 0x80) == 0)
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
        goto LABEL_54;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 2)
      {
        break;
      }

      if (v15 == 1)
      {
        v16 = PBReaderReadString();
        v17 = 56;
LABEL_41:
        v29 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        goto LABEL_53;
      }

      if (v15 != 2)
      {
LABEL_42:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        LOBYTE(v38) = 0;
        v21 = [v4 position] + 1;
        if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
        {
          v23 = [v4 data];
          [v23 getBytes:&v38 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v20 |= (v38 & 0x7F) << v18;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        if (v19++ > 8)
        {
          goto LABEL_46;
        }
      }

      if (([v4 hasError] & 1) != 0 || v20 > 3)
      {
LABEL_46:
        LODWORD(v20) = 0;
      }

      v5->_actionType = v20;
LABEL_53:
      v34 = [v4 position];
      if (v34 >= [v4 length])
      {
        goto LABEL_54;
      }
    }

    if (v15 == 3)
    {
      v5->_hasRaw_eventTimestampBegin = 1;
      v38 = 0;
      v25 = [v4 position] + 8;
      if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 8, v26 <= objc_msgSend(v4, "length")))
      {
        v30 = [v4 data];
        [v30 getBytes:&v38 range:{objc_msgSend(v4, "position"), 8}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
      }

      else
      {
        [v4 _setError];
      }

      v31 = v38;
      v32 = 24;
      goto LABEL_52;
    }

    if (v15 == 4)
    {
      v5->_hasRaw_eventTimestampEnd = 1;
      v38 = 0;
      v27 = [v4 position] + 8;
      if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 8, v28 <= objc_msgSend(v4, "length")))
      {
        v33 = [v4 data];
        [v33 getBytes:&v38 range:{objc_msgSend(v4, "position"), 8}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
      }

      else
      {
        [v4 _setError];
      }

      v31 = v38;
      v32 = 40;
LABEL_52:
      *(&v5->super.super.isa + v32) = v31;
      goto LABEL_53;
    }

    if (v15 != 5)
    {
      goto LABEL_42;
    }

    v16 = PBReaderReadString();
    v17 = 64;
    goto LABEL_41;
  }

LABEL_54:
  if ([v4 hasError])
  {
LABEL_55:
    v35 = 0;
  }

  else
  {
LABEL_56:
    v35 = v5;
  }

  return v35;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMFindMyContactActivity *)self handle];
  v5 = BMFindMyContactActivityEventTypeAsString([(BMFindMyContactActivity *)self actionType]);
  v6 = [(BMFindMyContactActivity *)self eventTimestampBegin];
  v7 = [(BMFindMyContactActivity *)self eventTimestampEnd];
  v8 = [(BMFindMyContactActivity *)self bundleID];
  v9 = [v3 initWithFormat:@"BMFindMyContactActivity with handle: %@, actionType: %@, eventTimestampBegin: %@, eventTimestampEnd: %@, bundleID: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMFindMyContactActivity)initWithHandle:(id)a3 actionType:(int)a4 eventTimestampBegin:(id)a5 eventTimestampEnd:(id)a6 bundleID:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = BMFindMyContactActivity;
  v17 = [(BMEventBase *)&v21 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_handle, a3);
    v17->_actionType = a4;
    if (v14)
    {
      v17->_hasRaw_eventTimestampBegin = 1;
      [v14 timeIntervalSince1970];
    }

    else
    {
      v17->_hasRaw_eventTimestampBegin = 0;
      v18 = -1.0;
    }

    v17->_raw_eventTimestampBegin = v18;
    if (v15)
    {
      v17->_hasRaw_eventTimestampEnd = 1;
      [v15 timeIntervalSince1970];
    }

    else
    {
      v17->_hasRaw_eventTimestampEnd = 0;
      v19 = -1.0;
    }

    v17->_raw_eventTimestampEnd = v19;
    objc_storeStrong(&v17->_bundleID, a7);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"handle" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actionType" number:2 type:4 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventTimestampBegin" number:3 type:0 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventTimestampEnd" number:4 type:0 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:5 type:13 subMessageClass:0];
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

    v8 = [[BMFindMyContactActivity alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[12] = 0;
    }
  }

  return v4;
}

@end