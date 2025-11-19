@interface BMOasisAnalyticsSystemInfoEvent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMOasisAnalyticsSystemInfoEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMOasisAnalyticsSystemInfoEvent)initWithQualityTrace:(id)a3 epochTimestampInNanosecond:(id)a4 metadata:(id)a5 deviceInfo:(id)a6 regionInfo:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMOasisAnalyticsSystemInfoEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMOasisAnalyticsSystemInfoEvent *)self qualityTrace];
    v7 = [v5 qualityTrace];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMOasisAnalyticsSystemInfoEvent *)self qualityTrace];
      v10 = [v5 qualityTrace];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_18;
      }
    }

    if (-[BMOasisAnalyticsSystemInfoEvent hasEpochTimestampInNanosecond](self, "hasEpochTimestampInNanosecond") || [v5 hasEpochTimestampInNanosecond])
    {
      if (![(BMOasisAnalyticsSystemInfoEvent *)self hasEpochTimestampInNanosecond])
      {
        goto LABEL_18;
      }

      if (![v5 hasEpochTimestampInNanosecond])
      {
        goto LABEL_18;
      }

      v13 = [(BMOasisAnalyticsSystemInfoEvent *)self epochTimestampInNanosecond];
      if (v13 != [v5 epochTimestampInNanosecond])
      {
        goto LABEL_18;
      }
    }

    v14 = [(BMOasisAnalyticsSystemInfoEvent *)self metadata];
    v15 = [v5 metadata];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMOasisAnalyticsSystemInfoEvent *)self metadata];
      v18 = [v5 metadata];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_18;
      }
    }

    v20 = [(BMOasisAnalyticsSystemInfoEvent *)self deviceInfo];
    v21 = [v5 deviceInfo];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMOasisAnalyticsSystemInfoEvent *)self deviceInfo];
      v24 = [v5 deviceInfo];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
LABEL_18:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v27 = [(BMOasisAnalyticsSystemInfoEvent *)self regionInfo];
    v28 = [v5 regionInfo];
    if (v27 == v28)
    {
      v12 = 1;
    }

    else
    {
      v29 = [(BMOasisAnalyticsSystemInfoEvent *)self regionInfo];
      v30 = [v5 regionInfo];
      v12 = [v29 isEqual:v30];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v27[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMOasisAnalyticsSystemInfoEvent *)self qualityTrace];
  v4 = [v3 jsonDictionary];

  if ([(BMOasisAnalyticsSystemInfoEvent *)self hasEpochTimestampInNanosecond])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMOasisAnalyticsSystemInfoEvent epochTimestampInNanosecond](self, "epochTimestampInNanosecond")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(BMOasisAnalyticsSystemInfoEvent *)self metadata];
  v7 = [v6 jsonDictionary];

  v8 = [(BMOasisAnalyticsSystemInfoEvent *)self deviceInfo];
  v9 = [v8 jsonDictionary];

  v10 = [(BMOasisAnalyticsSystemInfoEvent *)self regionInfo];
  v11 = [v10 jsonDictionary];

  v22 = @"qualityTrace";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v12;
  v27[0] = v12;
  v23 = @"epochTimestampInNanosecond";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v27[1] = v13;
  v24 = @"metadata";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v27[2] = v14;
  v25 = @"deviceInfo";
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v27[3] = v15;
  v26 = @"regionInfo";
  v16 = v11;
  if (!v11)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v22 count:{5, v20}];
  if (v11)
  {
    if (v9)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (v9)
    {
LABEL_16:
      if (v7)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  if (v7)
  {
LABEL_17:
    if (v5)
    {
      goto LABEL_18;
    }

LABEL_25:

    if (v4)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_24:

  if (!v5)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v4)
  {
    goto LABEL_19;
  }

LABEL_26:

LABEL_19:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMOasisAnalyticsSystemInfoEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v63[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"qualityTrace"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v7;
    v53 = 0;
    v8 = [[BMOasisAnalyticsQualityTrace alloc] initWithJSONDictionary:v16 error:&v53];
    v18 = v53;
    if (v18)
    {
      if (a4)
      {
        v18 = v18;
        *a4 = v18;
      }

      v17 = 0;
      goto LABEL_61;
    }

LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"epochTimestampInNanosecond"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v16 = 0;
          v17 = 0;
          goto LABEL_60;
        }

        v26 = a4;
        v27 = v8;
        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v60 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"epochTimestampInNanosecond"];
        v61 = v19;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v31 = v28;
        v8 = v27;
        v48 = v30;
        v32 = [v31 initWithDomain:v29 code:2 userInfo:?];
        v16 = 0;
        v17 = 0;
        *v26 = v32;
        goto LABEL_58;
      }

      v10 = a4;
      v45 = v9;
    }

    else
    {
      v10 = a4;
      v45 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"metadata"];
    v49 = self;
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v48 = 0;
LABEL_10:
      v12 = [v6 objectForKeyedSubscript:@"deviceInfo"];
      v46 = v8;
      if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v10)
          {
            v17 = 0;
            v16 = v45;
            goto LABEL_57;
          }

          v43 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = *MEMORY[0x1E698F240];
          v56 = *MEMORY[0x1E696A578];
          v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"deviceInfo"];
          v57 = v13;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v17 = 0;
          *v10 = [v43 initWithDomain:v39 code:2 userInfo:v14];
          goto LABEL_55;
        }

        v14 = v12;
        v51 = 0;
        v13 = [[BMOasisAnalyticsDeviceInfo alloc] initWithJSONDictionary:v14 error:&v51];
        v25 = v51;
        if (v25)
        {
          if (v10)
          {
            v25 = v25;
            *v10 = v25;
          }

LABEL_54:
          v17 = 0;
LABEL_55:
          v16 = v45;
          goto LABEL_56;
        }
      }

      else
      {
        v13 = 0;
      }

      v14 = [v6 objectForKeyedSubscript:@"regionInfo"];
      if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v15 = 0;
LABEL_16:
        v16 = v45;
        v17 = [(BMOasisAnalyticsSystemInfoEvent *)v49 initWithQualityTrace:v46 epochTimestampInNanosecond:v45 metadata:v48 deviceInfo:v13 regionInfo:v15];
        v49 = v17;
LABEL_53:

LABEL_56:
        v8 = v46;
LABEL_57:

        v19 = v11;
        self = v49;
        goto LABEL_58;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v14;
        v50 = 0;
        v15 = [[BMOasisAnalyticsRegionInfo alloc] initWithJSONDictionary:v33 error:&v50];
        v34 = v50;
        if (!v34)
        {

          goto LABEL_16;
        }

        if (v10)
        {
          v34 = v34;
          *v10 = v34;
        }

LABEL_52:
        v17 = 0;
        v16 = v45;
        goto LABEL_53;
      }

      if (v10)
      {
        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = *MEMORY[0x1E698F240];
        v54 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"regionInfo"];
        v55 = v15;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        *v10 = [v44 initWithDomain:v42 code:2 userInfo:v33];
        goto LABEL_52;
      }

      goto LABEL_54;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v11;
      v52 = 0;
      v48 = [[BMOasisAnalyticsMetadata alloc] initWithJSONDictionary:v19 error:&v52];
      v20 = v52;
      if (!v20)
      {

        goto LABEL_10;
      }

      if (v10)
      {
        v20 = v20;
        *v10 = v20;
      }

      v17 = 0;
    }

    else
    {
      if (!v10)
      {
        v17 = 0;
        v16 = v45;
        goto LABEL_59;
      }

      v47 = v8;
      v35 = objc_alloc(MEMORY[0x1E696ABC0]);
      v36 = *MEMORY[0x1E698F240];
      v58 = *MEMORY[0x1E696A578];
      v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"metadata"];
      v59 = v48;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v38 = v35;
      v8 = v47;
      *v10 = [v38 initWithDomain:v36 code:2 userInfo:v37];

      v17 = 0;
      v19 = v11;
    }

    v16 = v45;
LABEL_58:

    v11 = v19;
LABEL_59:

LABEL_60:
    goto LABEL_61;
  }

  if (a4)
  {
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = *MEMORY[0x1E698F240];
    v62 = *MEMORY[0x1E696A578];
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"qualityTrace"];
    v63[0] = v23;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    v24 = v21;
    v8 = v23;
    v17 = 0;
    *a4 = [v24 initWithDomain:v22 code:2 userInfo:v16];
LABEL_61:

    goto LABEL_62;
  }

  v17 = 0;
LABEL_62:

  v40 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsSystemInfoEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_qualityTrace)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsQualityTrace *)self->_qualityTrace writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_hasEpochTimestampInNanosecond)
  {
    epochTimestampInNanosecond = self->_epochTimestampInNanosecond;
    PBDataWriterWriteUint64Field();
  }

  if (self->_metadata)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsMetadata *)self->_metadata writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_deviceInfo)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsDeviceInfo *)self->_deviceInfo writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_regionInfo)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsRegionInfo *)self->_regionInfo writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = BMOasisAnalyticsSystemInfoEvent;
  v5 = [(BMEventBase *)&v29 init];
  if (!v5)
  {
    goto LABEL_55;
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
        LOBYTE(v30) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v30 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v30 & 0x7F) << v7;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
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
          v30 = 0;
          v31 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_54;
          }

          v16 = [[BMOasisAnalyticsMetadata alloc] initByReadFrom:v4];
          if (!v16)
          {
            goto LABEL_54;
          }

          v17 = 40;
        }

        else
        {
          if (v15 != 2)
          {
LABEL_46:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          v30 = 0;
          v31 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_54;
          }

          v16 = [[BMOasisAnalyticsDeviceInfo alloc] initByReadFrom:v4];
          if (!v16)
          {
            goto LABEL_54;
          }

          v17 = 48;
        }
      }

      else
      {
        switch(v15)
        {
          case 3:
            v30 = 0;
            v31 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_54;
            }

            v16 = [[BMOasisAnalyticsRegionInfo alloc] initByReadFrom:v4];
            if (!v16)
            {
              goto LABEL_54;
            }

            v17 = 56;
            break;
          case 0xB:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v5->_hasEpochTimestampInNanosecond = 1;
            while (1)
            {
              LOBYTE(v30) = 0;
              v21 = [v4 position] + 1;
              if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
              {
                v23 = [v4 data];
                [v23 getBytes:&v30 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v20 |= (v30 & 0x7F) << v18;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v13 = v19++ >= 9;
              if (v13)
              {
                v24 = 0;
                goto LABEL_51;
              }
            }

            if ([v4 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v20;
            }

LABEL_51:
            v5->_epochTimestampInNanosecond = v24;
            goto LABEL_52;
          case 0x65:
            v30 = 0;
            v31 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_54;
            }

            v16 = [[BMOasisAnalyticsQualityTrace alloc] initByReadFrom:v4];
            if (!v16)
            {
              goto LABEL_54;
            }

            v17 = 24;
            break;
          default:
            goto LABEL_46;
        }
      }

      v25 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

      PBReaderRecallMark();
LABEL_52:
      v26 = [v4 position];
    }

    while (v26 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_54:
    v27 = 0;
  }

  else
  {
LABEL_55:
    v27 = v5;
  }

  return v27;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMOasisAnalyticsSystemInfoEvent *)self qualityTrace];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMOasisAnalyticsSystemInfoEvent epochTimestampInNanosecond](self, "epochTimestampInNanosecond")}];
  v6 = [(BMOasisAnalyticsSystemInfoEvent *)self metadata];
  v7 = [(BMOasisAnalyticsSystemInfoEvent *)self deviceInfo];
  v8 = [(BMOasisAnalyticsSystemInfoEvent *)self regionInfo];
  v9 = [v3 initWithFormat:@"BMOasisAnalyticsSystemInfoEvent with qualityTrace: %@, epochTimestampInNanosecond: %@, metadata: %@, deviceInfo: %@, regionInfo: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMOasisAnalyticsSystemInfoEvent)initWithQualityTrace:(id)a3 epochTimestampInNanosecond:(id)a4 metadata:(id)a5 deviceInfo:(id)a6 regionInfo:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = BMOasisAnalyticsSystemInfoEvent;
  v18 = [(BMEventBase *)&v21 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_qualityTrace, a3);
    if (v14)
    {
      v18->_hasEpochTimestampInNanosecond = 1;
      v19 = [v14 unsignedLongLongValue];
    }

    else
    {
      v19 = 0;
      v18->_hasEpochTimestampInNanosecond = 0;
    }

    v18->_epochTimestampInNanosecond = v19;
    objc_storeStrong(&v18->_metadata, a5);
    objc_storeStrong(&v18->_deviceInfo, a6);
    objc_storeStrong(&v18->_regionInfo, a7);
  }

  return v18;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"qualityTrace" number:101 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"epochTimestampInNanosecond" number:11 type:5 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"metadata" number:1 type:14 subMessageClass:objc_opt_class()];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceInfo" number:2 type:14 subMessageClass:objc_opt_class()];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"regionInfo" number:3 type:14 subMessageClass:objc_opt_class()];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"qualityTrace_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_981];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"epochTimestampInNanosecond" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:5 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"metadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_983];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"deviceInfo_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_985];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"regionInfo_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_987];
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v3;
  v10[4] = v2;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __42__BMOasisAnalyticsSystemInfoEvent_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 regionInfo];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __42__BMOasisAnalyticsSystemInfoEvent_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 deviceInfo];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __42__BMOasisAnalyticsSystemInfoEvent_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 metadata];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __42__BMOasisAnalyticsSystemInfoEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 qualityTrace];
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

    v8 = [[BMOasisAnalyticsSystemInfoEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end