@interface BMMobileAssetInstrumentationEvent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMobileAssetInstrumentationEvent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMobileAssetInstrumentationEvent)initWithSubSystemName:(id)name eventType:(int)type maDownloadResult:(id)result maSecureDetail:(id)detail;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMobileAssetInstrumentationEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    subSystemName = [(BMMobileAssetInstrumentationEvent *)self subSystemName];
    subSystemName2 = [v5 subSystemName];
    v8 = subSystemName2;
    if (subSystemName == subSystemName2)
    {
    }

    else
    {
      subSystemName3 = [(BMMobileAssetInstrumentationEvent *)self subSystemName];
      subSystemName4 = [v5 subSystemName];
      v11 = [subSystemName3 isEqual:subSystemName4];

      if (!v11)
      {
        goto LABEL_10;
      }
    }

    eventType = [(BMMobileAssetInstrumentationEvent *)self eventType];
    if (eventType == [v5 eventType])
    {
      maDownloadResult = [(BMMobileAssetInstrumentationEvent *)self maDownloadResult];
      maDownloadResult2 = [v5 maDownloadResult];
      v16 = maDownloadResult2;
      if (maDownloadResult == maDownloadResult2)
      {
      }

      else
      {
        maDownloadResult3 = [(BMMobileAssetInstrumentationEvent *)self maDownloadResult];
        maDownloadResult4 = [v5 maDownloadResult];
        v19 = [maDownloadResult3 isEqual:maDownloadResult4];

        if (!v19)
        {
          goto LABEL_10;
        }
      }

      maSecureDetail = [(BMMobileAssetInstrumentationEvent *)self maSecureDetail];
      maSecureDetail2 = [v5 maSecureDetail];
      if (maSecureDetail == maSecureDetail2)
      {
        v12 = 1;
      }

      else
      {
        maSecureDetail3 = [(BMMobileAssetInstrumentationEvent *)self maSecureDetail];
        maSecureDetail4 = [v5 maSecureDetail];
        v12 = [maSecureDetail3 isEqual:maSecureDetail4];
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
  subSystemName = [(BMMobileAssetInstrumentationEvent *)self subSystemName];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMobileAssetInstrumentationEvent eventType](self, "eventType")}];
  maDownloadResult = [(BMMobileAssetInstrumentationEvent *)self maDownloadResult];
  jsonDictionary = [maDownloadResult jsonDictionary];

  maSecureDetail = [(BMMobileAssetInstrumentationEvent *)self maSecureDetail];
  jsonDictionary2 = [maSecureDetail jsonDictionary];

  v16[0] = @"subSystemName";
  null = subSystemName;
  if (!subSystemName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = null;
  v16[1] = @"eventType";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null2;
  v16[2] = @"maDownloadResult";
  null3 = jsonDictionary;
  if (!jsonDictionary)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = null3;
  v16[3] = @"maSecureDetail";
  null4 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = null4;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (jsonDictionary2)
  {
    if (jsonDictionary)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (jsonDictionary)
    {
LABEL_11:
      if (v4)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (subSystemName)
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
  if (subSystemName)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMMobileAssetInstrumentationEvent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v45[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"subSystemName"];
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
    v9 = [dictionaryCopy objectForKeyedSubscript:@"eventType"];
    v10 = v9;
    selfCopy = self;
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
            if (!error)
            {
              v13 = 0;
              v14 = 0;
              goto LABEL_42;
            }

            v34 = objc_alloc(MEMORY[0x1E696ABC0]);
            v28 = *MEMORY[0x1E698F240];
            v42 = *MEMORY[0x1E696A578];
            errorCopy = error;
            v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"eventType"];
            v43 = v20;
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
            v14 = 0;
            *errorCopy = [v34 initWithDomain:v28 code:2 userInfo:v17];
            v13 = 0;
            goto LABEL_40;
          }

          v9 = [MEMORY[0x1E696AD98] numberWithInt:BMMAEventTypeFromString(v10)];
        }
      }
    }

    v33 = v9;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"maDownloadResult"];
    errorCopy2 = error;
    if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = 0;
LABEL_18:
      v18 = [dictionaryCopy objectForKeyedSubscript:@"maSecureDetail"];
      if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v19 = 0;
LABEL_21:
        v13 = v33;
        v14 = -[BMMobileAssetInstrumentationEvent initWithSubSystemName:eventType:maDownloadResult:maSecureDetail:](selfCopy, "initWithSubSystemName:eventType:maDownloadResult:maSecureDetail:", v8, [v33 intValue], v17, v19);
        selfCopy = v14;
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

        if (errorCopy2)
        {
          v23 = v23;
          *errorCopy2 = v23;
        }
      }

      else
      {
        if (!errorCopy2)
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
        *errorCopy2 = [v32 initWithDomain:v30 code:2 userInfo:v22];
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

      if (errorCopy2)
      {
        v21 = v21;
        *errorCopy2 = v21;
      }

      v14 = 0;
    }

    else
    {
      if (!error)
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
      *error = [v31 initWithDomain:v24 code:2 userInfo:v25];

      v14 = 0;
      v20 = v15;
    }

    v13 = v33;
LABEL_40:

    v15 = v20;
    self = selfCopy;
LABEL_41:

    goto LABEL_42;
  }

  if (!error)
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
  *error = [v11 initWithDomain:v12 code:2 userInfo:v10];
LABEL_42:

LABEL_43:
  v26 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMobileAssetInstrumentationEvent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_subSystemName)
  {
    PBDataWriterWriteStringField();
  }

  eventType = self->_eventType;
  PBDataWriterWriteUint32Field();
  if (self->_maDownloadResult)
  {
    PBDataWriterPlaceMark();
    [(BMMADownloadResultEvent *)self->_maDownloadResult writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_maSecureDetail)
  {
    PBDataWriterPlaceMark();
    [(BMMASecureDetailEvent *)self->_maSecureDetail writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMMobileAssetInstrumentationEvent;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_49;
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
        LOBYTE(v32) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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
          v32 = 0;
          v33 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_48;
          }

          v23 = [[BMMADownloadResultEvent alloc] initByReadFrom:fromCopy];
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

          v23 = [[BMMASecureDetailEvent alloc] initByReadFrom:fromCopy];
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
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        if (([fromCopy hasError] & 1) != 0 || v18 > 2)
        {
LABEL_44:
          LODWORD(v18) = 0;
        }

        v5->_eventType = v18;
      }

LABEL_46:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  subSystemName = [(BMMobileAssetInstrumentationEvent *)self subSystemName];
  v5 = BMMAEventTypeAsString([(BMMobileAssetInstrumentationEvent *)self eventType]);
  maDownloadResult = [(BMMobileAssetInstrumentationEvent *)self maDownloadResult];
  maSecureDetail = [(BMMobileAssetInstrumentationEvent *)self maSecureDetail];
  v8 = [v3 initWithFormat:@"BMMobileAssetInstrumentationEvent with subSystemName: %@, eventType: %@, maDownloadResult: %@, maSecureDetail: %@", subSystemName, v5, maDownloadResult, maSecureDetail];

  return v8;
}

- (BMMobileAssetInstrumentationEvent)initWithSubSystemName:(id)name eventType:(int)type maDownloadResult:(id)result maSecureDetail:(id)detail
{
  nameCopy = name;
  resultCopy = result;
  detailCopy = detail;
  v16.receiver = self;
  v16.super_class = BMMobileAssetInstrumentationEvent;
  v14 = [(BMEventBase *)&v16 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v14->_subSystemName, name);
    v14->_eventType = type;
    objc_storeStrong(&v14->_maDownloadResult, result);
    objc_storeStrong(&v14->_maSecureDetail, detail);
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