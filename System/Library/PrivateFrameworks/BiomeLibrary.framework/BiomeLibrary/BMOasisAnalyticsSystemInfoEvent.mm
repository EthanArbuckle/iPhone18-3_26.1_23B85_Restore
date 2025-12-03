@interface BMOasisAnalyticsSystemInfoEvent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMOasisAnalyticsSystemInfoEvent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMOasisAnalyticsSystemInfoEvent)initWithQualityTrace:(id)trace epochTimestampInNanosecond:(id)nanosecond metadata:(id)metadata deviceInfo:(id)info regionInfo:(id)regionInfo;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMOasisAnalyticsSystemInfoEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    qualityTrace = [(BMOasisAnalyticsSystemInfoEvent *)self qualityTrace];
    qualityTrace2 = [v5 qualityTrace];
    v8 = qualityTrace2;
    if (qualityTrace == qualityTrace2)
    {
    }

    else
    {
      qualityTrace3 = [(BMOasisAnalyticsSystemInfoEvent *)self qualityTrace];
      qualityTrace4 = [v5 qualityTrace];
      v11 = [qualityTrace3 isEqual:qualityTrace4];

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

      epochTimestampInNanosecond = [(BMOasisAnalyticsSystemInfoEvent *)self epochTimestampInNanosecond];
      if (epochTimestampInNanosecond != [v5 epochTimestampInNanosecond])
      {
        goto LABEL_18;
      }
    }

    metadata = [(BMOasisAnalyticsSystemInfoEvent *)self metadata];
    metadata2 = [v5 metadata];
    v16 = metadata2;
    if (metadata == metadata2)
    {
    }

    else
    {
      metadata3 = [(BMOasisAnalyticsSystemInfoEvent *)self metadata];
      metadata4 = [v5 metadata];
      v19 = [metadata3 isEqual:metadata4];

      if (!v19)
      {
        goto LABEL_18;
      }
    }

    deviceInfo = [(BMOasisAnalyticsSystemInfoEvent *)self deviceInfo];
    deviceInfo2 = [v5 deviceInfo];
    v22 = deviceInfo2;
    if (deviceInfo == deviceInfo2)
    {
    }

    else
    {
      deviceInfo3 = [(BMOasisAnalyticsSystemInfoEvent *)self deviceInfo];
      deviceInfo4 = [v5 deviceInfo];
      v25 = [deviceInfo3 isEqual:deviceInfo4];

      if (!v25)
      {
LABEL_18:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    regionInfo = [(BMOasisAnalyticsSystemInfoEvent *)self regionInfo];
    regionInfo2 = [v5 regionInfo];
    if (regionInfo == regionInfo2)
    {
      v12 = 1;
    }

    else
    {
      regionInfo3 = [(BMOasisAnalyticsSystemInfoEvent *)self regionInfo];
      regionInfo4 = [v5 regionInfo];
      v12 = [regionInfo3 isEqual:regionInfo4];
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
  qualityTrace = [(BMOasisAnalyticsSystemInfoEvent *)self qualityTrace];
  jsonDictionary = [qualityTrace jsonDictionary];

  if ([(BMOasisAnalyticsSystemInfoEvent *)self hasEpochTimestampInNanosecond])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMOasisAnalyticsSystemInfoEvent epochTimestampInNanosecond](self, "epochTimestampInNanosecond")}];
  }

  else
  {
    v5 = 0;
  }

  metadata = [(BMOasisAnalyticsSystemInfoEvent *)self metadata];
  jsonDictionary2 = [metadata jsonDictionary];

  deviceInfo = [(BMOasisAnalyticsSystemInfoEvent *)self deviceInfo];
  jsonDictionary3 = [deviceInfo jsonDictionary];

  regionInfo = [(BMOasisAnalyticsSystemInfoEvent *)self regionInfo];
  jsonDictionary4 = [regionInfo jsonDictionary];

  v22 = @"qualityTrace";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v27[0] = null;
  v23 = @"epochTimestampInNanosecond";
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27[1] = null2;
  v24 = @"metadata";
  null3 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27[2] = null3;
  v25 = @"deviceInfo";
  null4 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v27[3] = null4;
  v26 = @"regionInfo";
  null5 = jsonDictionary4;
  if (!jsonDictionary4)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = null5;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v22 count:{5, v20}];
  if (jsonDictionary4)
  {
    if (jsonDictionary3)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (jsonDictionary3)
    {
LABEL_16:
      if (jsonDictionary2)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  if (jsonDictionary2)
  {
LABEL_17:
    if (v5)
    {
      goto LABEL_18;
    }

LABEL_25:

    if (jsonDictionary)
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
  if (jsonDictionary)
  {
    goto LABEL_19;
  }

LABEL_26:

LABEL_19:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMOasisAnalyticsSystemInfoEvent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v63[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"qualityTrace"];
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
      if (error)
      {
        v18 = v18;
        *error = v18;
      }

      v17 = 0;
      goto LABEL_61;
    }

LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"epochTimestampInNanosecond"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v16 = 0;
          v17 = 0;
          goto LABEL_60;
        }

        errorCopy = error;
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
        *errorCopy = v32;
        goto LABEL_58;
      }

      errorCopy3 = error;
      v45 = v9;
    }

    else
    {
      errorCopy3 = error;
      v45 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
    selfCopy = self;
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v48 = 0;
LABEL_10:
      v12 = [dictionaryCopy objectForKeyedSubscript:@"deviceInfo"];
      v46 = v8;
      if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy3)
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
          *errorCopy3 = [v43 initWithDomain:v39 code:2 userInfo:v14];
          goto LABEL_55;
        }

        v14 = v12;
        v51 = 0;
        v13 = [[BMOasisAnalyticsDeviceInfo alloc] initWithJSONDictionary:v14 error:&v51];
        v25 = v51;
        if (v25)
        {
          if (errorCopy3)
          {
            v25 = v25;
            *errorCopy3 = v25;
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

      v14 = [dictionaryCopy objectForKeyedSubscript:@"regionInfo"];
      if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v15 = 0;
LABEL_16:
        v16 = v45;
        v17 = [(BMOasisAnalyticsSystemInfoEvent *)selfCopy initWithQualityTrace:v46 epochTimestampInNanosecond:v45 metadata:v48 deviceInfo:v13 regionInfo:v15];
        selfCopy = v17;
LABEL_53:

LABEL_56:
        v8 = v46;
LABEL_57:

        v19 = v11;
        self = selfCopy;
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

        if (errorCopy3)
        {
          v34 = v34;
          *errorCopy3 = v34;
        }

LABEL_52:
        v17 = 0;
        v16 = v45;
        goto LABEL_53;
      }

      if (errorCopy3)
      {
        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = *MEMORY[0x1E698F240];
        v54 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"regionInfo"];
        v55 = v15;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        *errorCopy3 = [v44 initWithDomain:v42 code:2 userInfo:v33];
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

      if (errorCopy3)
      {
        v20 = v20;
        *errorCopy3 = v20;
      }

      v17 = 0;
    }

    else
    {
      if (!errorCopy3)
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
      *errorCopy3 = [v38 initWithDomain:v36 code:2 userInfo:v37];

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

  if (error)
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
    *error = [v24 initWithDomain:v22 code:2 userInfo:v16];
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
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_qualityTrace)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsQualityTrace *)self->_qualityTrace writeTo:toCopy];
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
    [(BMOasisAnalyticsMetadata *)self->_metadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_deviceInfo)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsDeviceInfo *)self->_deviceInfo writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_regionInfo)
  {
    PBDataWriterPlaceMark();
    [(BMOasisAnalyticsRegionInfo *)self->_regionInfo writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v29.receiver = self;
  v29.super_class = BMOasisAnalyticsSystemInfoEvent;
  v5 = [(BMEventBase *)&v29 init];
  if (!v5)
  {
    goto LABEL_55;
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
        LOBYTE(v30) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v30 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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

          v16 = [[BMOasisAnalyticsMetadata alloc] initByReadFrom:fromCopy];
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

          v16 = [[BMOasisAnalyticsDeviceInfo alloc] initByReadFrom:fromCopy];
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

            v16 = [[BMOasisAnalyticsRegionInfo alloc] initByReadFrom:fromCopy];
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
              v21 = [fromCopy position] + 1;
              if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v30 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            if ([fromCopy hasError])
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

            v16 = [[BMOasisAnalyticsQualityTrace alloc] initByReadFrom:fromCopy];
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  qualityTrace = [(BMOasisAnalyticsSystemInfoEvent *)self qualityTrace];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMOasisAnalyticsSystemInfoEvent epochTimestampInNanosecond](self, "epochTimestampInNanosecond")}];
  metadata = [(BMOasisAnalyticsSystemInfoEvent *)self metadata];
  deviceInfo = [(BMOasisAnalyticsSystemInfoEvent *)self deviceInfo];
  regionInfo = [(BMOasisAnalyticsSystemInfoEvent *)self regionInfo];
  v9 = [v3 initWithFormat:@"BMOasisAnalyticsSystemInfoEvent with qualityTrace: %@, epochTimestampInNanosecond: %@, metadata: %@, deviceInfo: %@, regionInfo: %@", qualityTrace, v5, metadata, deviceInfo, regionInfo];

  return v9;
}

- (BMOasisAnalyticsSystemInfoEvent)initWithQualityTrace:(id)trace epochTimestampInNanosecond:(id)nanosecond metadata:(id)metadata deviceInfo:(id)info regionInfo:(id)regionInfo
{
  traceCopy = trace;
  nanosecondCopy = nanosecond;
  metadataCopy = metadata;
  infoCopy = info;
  regionInfoCopy = regionInfo;
  v21.receiver = self;
  v21.super_class = BMOasisAnalyticsSystemInfoEvent;
  v18 = [(BMEventBase *)&v21 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_qualityTrace, trace);
    if (nanosecondCopy)
    {
      v18->_hasEpochTimestampInNanosecond = 1;
      unsignedLongLongValue = [nanosecondCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v18->_hasEpochTimestampInNanosecond = 0;
    }

    v18->_epochTimestampInNanosecond = unsignedLongLongValue;
    objc_storeStrong(&v18->_metadata, metadata);
    objc_storeStrong(&v18->_deviceInfo, info);
    objc_storeStrong(&v18->_regionInfo, regionInfo);
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