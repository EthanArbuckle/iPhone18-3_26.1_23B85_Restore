@interface BMMobileAssetInstrumentationEvent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMobileAssetInstrumentationEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMobileAssetInstrumentationEvent)initWithSubSystemName:(id)a3 eventType:(int)a4 maDownloadResult:(id)a5 maSecureDetail:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMobileAssetInstrumentationEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMobileAssetInstrumentationEvent *)self subSystemName];
    v7 = [v5 subSystemName];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMobileAssetInstrumentationEvent *)self subSystemName];
      v10 = [v5 subSystemName];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_10;
      }
    }

    v13 = [(BMMobileAssetInstrumentationEvent *)self eventType];
    if (v13 == [v5 eventType])
    {
      v14 = [(BMMobileAssetInstrumentationEvent *)self maDownloadResult];
      v15 = [v5 maDownloadResult];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMMobileAssetInstrumentationEvent *)self maDownloadResult];
        v18 = [v5 maDownloadResult];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_10;
        }
      }

      v20 = [(BMMobileAssetInstrumentationEvent *)self maSecureDetail];
      v21 = [v5 maSecureDetail];
      if (v20 == v21)
      {
        v12 = 1;
      }

      else
      {
        v22 = [(BMMobileAssetInstrumentationEvent *)self maSecureDetail];
        v23 = [v5 maSecureDetail];
        v12 = [v22 isEqual:v23];
      }

      goto LABEL_16;
    }

LABEL_10:
    v12 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (id)jsonDictionary
{
  v17[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMMobileAssetInstrumentationEvent *)self subSystemName];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMobileAssetInstrumentationEvent eventType](self, "eventType")}];
  v5 = [(BMMobileAssetInstrumentationEvent *)self maDownloadResult];
  v6 = [v5 jsonDictionary];

  v7 = [(BMMobileAssetInstrumentationEvent *)self maSecureDetail];
  v8 = [v7 jsonDictionary];

  v16[0] = @"subSystemName";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = v9;
  v16[1] = @"eventType";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = v10;
  v16[2] = @"maDownloadResult";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = v11;
  v16[3] = @"maSecureDetail";
  v12 = v8;
  if (!v8)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (v8)
  {
    if (v6)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v6)
    {
LABEL_11:
      if (v4)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (v3)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (v3)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMMobileAssetInstrumentationEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v45[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"subSystemName"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"eventType"];
    v10 = v9;
    v35 = self;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = 0;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v10;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v13 = 0;
              v14 = 0;
              goto LABEL_42;
            }

            v34 = objc_alloc(MEMORY[0x1E696ABC0]);
            v28 = *MEMORY[0x1E698F240];
            v42 = *MEMORY[0x1E696A578];
            v29 = a4;
            v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"eventType"];
            v43 = v20;
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
            v14 = 0;
            *v29 = [v34 initWithDomain:v28 code:2 userInfo:v17];
            v13 = 0;
            goto LABEL_40;
          }

          v9 = [MEMORY[0x1E696AD98] numberWithInt:BMMAEventTypeFromString(v10)];
        }
      }
    }

    v33 = v9;
    v15 = [v6 objectForKeyedSubscript:@"maDownloadResult"];
    v16 = a4;
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = 0;
LABEL_18:
      v18 = [v6 objectForKeyedSubscript:@"maSecureDetail"];
      if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v19 = 0;
LABEL_21:
        v13 = v33;
        v14 = -[BMMobileAssetInstrumentationEvent initWithSubSystemName:eventType:maDownloadResult:maSecureDetail:](v35, "initWithSubSystemName:eventType:maDownloadResult:maSecureDetail:", v8, [v33 intValue], v17, v19);
        v35 = v14;
LABEL_38:

LABEL_39:
        v20 = v15;
        goto LABEL_40;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v18;
        v36 = 0;
        v19 = [[BMMASecureDetailEvent alloc] initWithJSONDictionary:v22 error:&v36];
        v23 = v36;
        if (!v23)
        {

          goto LABEL_21;
        }

        if (v16)
        {
          v23 = v23;
          *v16 = v23;
        }
      }

      else
      {
        if (!v16)
        {
          v14 = 0;
          v13 = v33;
          goto LABEL_39;
        }

        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v38 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"maSecureDetail"];
        v39 = v19;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        *v16 = [v32 initWithDomain:v30 code:2 userInfo:v22];
      }

      v14 = 0;
      v13 = v33;
      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v15;
      v37 = 0;
      v17 = [[BMMADownloadResultEvent alloc] initWithJSONDictionary:v20 error:&v37];
      v21 = v37;
      if (!v21)
      {

        goto LABEL_18;
      }

      if (v16)
      {
        v21 = v21;
        *v16 = v21;
      }

      v14 = 0;
    }

    else
    {
      if (!a4)
      {
        v14 = 0;
        v13 = v33;
        goto LABEL_41;
      }

      v31 = objc_alloc(MEMORY[0x1E696ABC0]);
      v24 = *MEMORY[0x1E698F240];
      v40 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"maDownloadResult"];
      v41 = v17;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      *a4 = [v31 initWithDomain:v24 code:2 userInfo:v25];

      v14 = 0;
      v20 = v15;
    }

    v13 = v33;
LABEL_40:

    v15 = v20;
    self = v35;
LABEL_41:

    goto LABEL_42;
  }

  if (!a4)
  {
    v8 = 0;
    v14 = 0;
    goto LABEL_43;
  }

  v11 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = *MEMORY[0x1E698F240];
  v44 = *MEMORY[0x1E696A578];
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subSystemName"];
  v45[0] = v13;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
  v8 = 0;
  v14 = 0;
  *a4 = [v11 initWithDomain:v12 code:2 userInfo:v10];
LABEL_42:

LABEL_43:
  v26 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMobileAssetInstrumentationEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_subSystemName)
  {
    PBDataWriterWriteStringField();
  }

  eventType = self->_eventType;
  PBDataWriterWriteUint32Field();
  if (self->_maDownloadResult)
  {
    PBDataWriterPlaceMark();
    [(BMMADownloadResultEvent *)self->_maDownloadResult writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_maSecureDetail)
  {
    PBDataWriterPlaceMark();
    [(BMMASecureDetailEvent *)self->_maSecureDetail writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BMMobileAssetInstrumentationEvent;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_49;
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
        LOBYTE(v32) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v32 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v32 & 0x7F) << v7;
        if ((v32 & 0x80) == 0)
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
          v32 = 0;
          v33 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_48;
          }

          v23 = [[BMMADownloadResultEvent alloc] initByReadFrom:v4];
          if (!v23)
          {
            goto LABEL_48;
          }

          v24 = 32;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_35:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_48;
            }

            goto LABEL_46;
          }

          v32 = 0;
          v33 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_48;
          }

          v23 = [[BMMASecureDetailEvent alloc] initByReadFrom:v4];
          if (!v23)
          {
            goto LABEL_48;
          }

          v24 = 40;
        }

        v27 = *(&v5->super.super.isa + v24);
        *(&v5->super.super.isa + v24) = v23;

        PBReaderRecallMark();
      }

      else if (v15 == 1)
      {
        v25 = PBReaderReadString();
        subSystemName = v5->_subSystemName;
        v5->_subSystemName = v25;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_35;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v32) = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:&v32 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v32 & 0x7F) << v16;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_44;
          }
        }

        if (([v4 hasError] & 1) != 0 || v18 > 2)
        {
LABEL_44:
          LODWORD(v18) = 0;
        }

        v5->_eventType = v18;
      }

LABEL_46:
      v28 = [v4 position];
    }

    while (v28 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_48:
    v29 = 0;
  }

  else
  {
LABEL_49:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMobileAssetInstrumentationEvent *)self subSystemName];
  v5 = BMMAEventTypeAsString([(BMMobileAssetInstrumentationEvent *)self eventType]);
  v6 = [(BMMobileAssetInstrumentationEvent *)self maDownloadResult];
  v7 = [(BMMobileAssetInstrumentationEvent *)self maSecureDetail];
  v8 = [v3 initWithFormat:@"BMMobileAssetInstrumentationEvent with subSystemName: %@, eventType: %@, maDownloadResult: %@, maSecureDetail: %@", v4, v5, v6, v7];

  return v8;
}

- (BMMobileAssetInstrumentationEvent)initWithSubSystemName:(id)a3 eventType:(int)a4 maDownloadResult:(id)a5 maSecureDetail:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v16.receiver = self;
  v16.super_class = BMMobileAssetInstrumentationEvent;
  v14 = [(BMEventBase *)&v16 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v14->_subSystemName, a3);
    v14->_eventType = a4;
    objc_storeStrong(&v14->_maDownloadResult, a5);
    objc_storeStrong(&v14->_maSecureDetail, a6);
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subSystemName" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventType" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maDownloadResult" number:3 type:14 subMessageClass:objc_opt_class()];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maSecureDetail" number:4 type:14 subMessageClass:objc_opt_class()];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subSystemName" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"maDownloadResult_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_77_110972];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"maSecureDetail_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_79_110973];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __44__BMMobileAssetInstrumentationEvent_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 maSecureDetail];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __44__BMMobileAssetInstrumentationEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 maDownloadResult];
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

    v8 = [[BMMobileAssetInstrumentationEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end