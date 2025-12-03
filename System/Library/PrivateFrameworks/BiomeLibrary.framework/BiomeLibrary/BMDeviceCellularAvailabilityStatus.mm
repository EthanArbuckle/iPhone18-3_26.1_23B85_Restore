@interface BMDeviceCellularAvailabilityStatus
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceCellularAvailabilityStatus)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BMDeviceCellularAvailabilityStatus)initWithTimeStamp:(id)stamp deviceType:(int)type deviceRegistrationStatus:(int)status previousDeviceRegistrationStatus:(int)registrationStatus aboveThreshold:(id)threshold latestStrongTimeStamp:(id)timeStamp;
- (BOOL)isEqual:(id)equal;
- (NSDate)latestStrongTimeStamp;
- (NSDate)timeStamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDeviceCellularAvailabilityStatus

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeStamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceRegistrationStatus" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"previousDeviceRegistrationStatus" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"aboveThreshold" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"latestStrongTimeStamp" dataType:3 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    timeStamp = [(BMDeviceCellularAvailabilityStatus *)self timeStamp];
    timeStamp2 = [v5 timeStamp];
    v8 = timeStamp2;
    if (timeStamp == timeStamp2)
    {
    }

    else
    {
      timeStamp3 = [(BMDeviceCellularAvailabilityStatus *)self timeStamp];
      timeStamp4 = [v5 timeStamp];
      v11 = [timeStamp3 isEqual:timeStamp4];

      if (!v11)
      {
        goto LABEL_15;
      }
    }

    deviceType = [(BMDeviceCellularAvailabilityStatus *)self deviceType];
    if (deviceType == [v5 deviceType])
    {
      deviceRegistrationStatus = [(BMDeviceCellularAvailabilityStatus *)self deviceRegistrationStatus];
      if (deviceRegistrationStatus == [v5 deviceRegistrationStatus])
      {
        previousDeviceRegistrationStatus = [(BMDeviceCellularAvailabilityStatus *)self previousDeviceRegistrationStatus];
        if (previousDeviceRegistrationStatus == [v5 previousDeviceRegistrationStatus])
        {
          if (!-[BMDeviceCellularAvailabilityStatus hasAboveThreshold](self, "hasAboveThreshold") && ![v5 hasAboveThreshold] || -[BMDeviceCellularAvailabilityStatus hasAboveThreshold](self, "hasAboveThreshold") && objc_msgSend(v5, "hasAboveThreshold") && (v16 = -[BMDeviceCellularAvailabilityStatus aboveThreshold](self, "aboveThreshold"), v16 == objc_msgSend(v5, "aboveThreshold")))
          {
            latestStrongTimeStamp = [(BMDeviceCellularAvailabilityStatus *)self latestStrongTimeStamp];
            latestStrongTimeStamp2 = [v5 latestStrongTimeStamp];
            if (latestStrongTimeStamp == latestStrongTimeStamp2)
            {
              v12 = 1;
            }

            else
            {
              latestStrongTimeStamp3 = [(BMDeviceCellularAvailabilityStatus *)self latestStrongTimeStamp];
              latestStrongTimeStamp4 = [v5 latestStrongTimeStamp];
              v12 = [latestStrongTimeStamp3 isEqual:latestStrongTimeStamp4];
            }

            goto LABEL_16;
          }
        }
      }
    }

LABEL_15:
    v12 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (NSDate)latestStrongTimeStamp
{
  if (self->_hasRaw_latestStrongTimeStamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_latestStrongTimeStamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)timeStamp
{
  if (self->_hasRaw_timeStamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_timeStamp];
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
  v29[6] = *MEMORY[0x1E69E9840];
  timeStamp = [(BMDeviceCellularAvailabilityStatus *)self timeStamp];
  if (timeStamp)
  {
    v4 = MEMORY[0x1E696AD98];
    timeStamp2 = [(BMDeviceCellularAvailabilityStatus *)self timeStamp];
    [timeStamp2 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceCellularAvailabilityStatus deviceType](self, "deviceType")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceCellularAvailabilityStatus deviceRegistrationStatus](self, "deviceRegistrationStatus")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceCellularAvailabilityStatus previousDeviceRegistrationStatus](self, "previousDeviceRegistrationStatus")}];
  if ([(BMDeviceCellularAvailabilityStatus *)self hasAboveThreshold])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceCellularAvailabilityStatus aboveThreshold](self, "aboveThreshold")}];
  }

  else
  {
    v10 = 0;
  }

  latestStrongTimeStamp = [(BMDeviceCellularAvailabilityStatus *)self latestStrongTimeStamp];
  if (latestStrongTimeStamp)
  {
    v12 = MEMORY[0x1E696AD98];
    latestStrongTimeStamp2 = [(BMDeviceCellularAvailabilityStatus *)self latestStrongTimeStamp];
    [latestStrongTimeStamp2 timeIntervalSince1970];
    v14 = [v12 numberWithDouble:?];
  }

  else
  {
    v14 = 0;
  }

  v27 = v6;
  v28[0] = @"timeStamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null;
  v26 = v7;
  v29[0] = null;
  v28[1] = @"deviceType";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v29[1] = null2;
  v28[2] = @"deviceRegistrationStatus";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v29[2] = null3;
  v28[3] = @"previousDeviceRegistrationStatus";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v29[3] = null4;
  v28[4] = @"aboveThreshold";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = null5;
  v28[5] = @"latestStrongTimeStamp";
  null6 = v14;
  if (!v14)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = null6;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:{6, v24}];
  if (v14)
  {
    if (v10)
    {
      goto LABEL_24;
    }
  }

  else
  {

    if (v10)
    {
LABEL_24:
      if (v9)
      {
        goto LABEL_25;
      }

LABEL_35:

      if (v8)
      {
        goto LABEL_26;
      }

      goto LABEL_36;
    }
  }

  if (!v9)
  {
    goto LABEL_35;
  }

LABEL_25:
  if (v8)
  {
    goto LABEL_26;
  }

LABEL_36:

LABEL_26:
  if (!v26)
  {
  }

  if (!v27)
  {
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BMDeviceCellularAvailabilityStatus)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v77[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"timeStamp"];
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

      v12 = [v9 initWithTimeIntervalSince1970:v11];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v65 = [v13 dateFromString:v6];

        goto LABEL_9;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!p_isa)
        {
          v65 = 0;
          selfCopy6 = self;
          goto LABEL_55;
        }

        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = *MEMORY[0x1E698F240];
        v76 = *MEMORY[0x1E696A578];
        v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timeStamp"];
        v77[0] = v64;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:&v76 count:1];
        v53 = [v51 initWithDomain:v52 code:2 userInfo:v14];
        v65 = 0;
        v54 = p_isa;
        p_isa = 0;
        *v54 = v53;
        goto LABEL_71;
      }

      v12 = v6;
    }

    v65 = v12;
  }

  else
  {
    v65 = 0;
  }

LABEL_9:
  v14 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
LABEL_16:
        v64 = v15;
        goto LABEL_17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceCellularAvailabilityStatusDeviceTypeFromString(v14)];
        goto LABEL_16;
      }

      if (p_isa)
      {
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = *MEMORY[0x1E698F240];
        v74 = *MEMORY[0x1E696A578];
        v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"deviceType"];
        v75 = v63;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        v41 = [v39 initWithDomain:v40 code:2 userInfo:v16];
        v64 = 0;
        v42 = p_isa;
        p_isa = 0;
        *v42 = v41;
        goto LABEL_73;
      }

      v64 = 0;
LABEL_71:
      selfCopy6 = self;
      goto LABEL_54;
    }
  }

  v64 = 0;
LABEL_17:
  v16 = [dictionaryCopy objectForKeyedSubscript:@"deviceRegistrationStatus"];
  v61 = v14;
  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
LABEL_24:
        v63 = v17;
        goto LABEL_25;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceCellularAvailabilityStatusStateFromString(v16)];
        goto LABEL_24;
      }

      if (p_isa)
      {
        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = *MEMORY[0x1E698F240];
        v72 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"deviceRegistrationStatus"];
        v73 = v19;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
        v45 = [v43 initWithDomain:v44 code:2 userInfo:v18];
        v63 = 0;
        v46 = p_isa;
        p_isa = 0;
        *v46 = v45;
        goto LABEL_77;
      }

      v63 = 0;
LABEL_73:
      selfCopy6 = self;
      goto LABEL_53;
    }
  }

  v63 = 0;
LABEL_25:
  v18 = [dictionaryCopy objectForKeyedSubscript:@"previousDeviceRegistrationStatus"];
  v60 = v6;
  if (v18)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v18;
LABEL_32:
        v19 = v20;
        goto LABEL_33;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceCellularAvailabilityStatusStateFromString(v18)];
        goto LABEL_32;
      }

      if (p_isa)
      {
        v47 = objc_alloc(MEMORY[0x1E696ABC0]);
        v48 = *MEMORY[0x1E698F240];
        v70 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"previousDeviceRegistrationStatus"];
        v71 = v22;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        v49 = [v47 initWithDomain:v48 code:2 userInfo:v21];
        v19 = 0;
        v50 = p_isa;
        p_isa = 0;
        *v50 = v49;
        goto LABEL_67;
      }

      v19 = 0;
LABEL_77:
      selfCopy6 = self;
      goto LABEL_52;
    }
  }

  v19 = 0;
LABEL_33:
  v21 = [dictionaryCopy objectForKeyedSubscript:@"aboveThreshold"];
  if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v22 = 0;
    goto LABEL_36;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (p_isa)
    {
      v31 = objc_alloc(MEMORY[0x1E696ABC0]);
      v32 = p_isa;
      v33 = *MEMORY[0x1E698F240];
      v68 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"aboveThreshold"];
      v69 = v24;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      v34 = [v31 initWithDomain:v33 code:2 userInfo:v23];
      v22 = 0;
      p_isa = 0;
      *v32 = v34;
      goto LABEL_46;
    }

    v22 = 0;
LABEL_67:
    selfCopy6 = self;
    goto LABEL_51;
  }

  v22 = v21;
LABEL_36:
  v23 = [dictionaryCopy objectForKeyedSubscript:@"latestStrongTimeStamp"];
  if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v24 = 0;
LABEL_49:
    selfCopy6 = -[BMDeviceCellularAvailabilityStatus initWithTimeStamp:deviceType:deviceRegistrationStatus:previousDeviceRegistrationStatus:aboveThreshold:latestStrongTimeStamp:](self, "initWithTimeStamp:deviceType:deviceRegistrationStatus:previousDeviceRegistrationStatus:aboveThreshold:latestStrongTimeStamp:", v65, [v64 intValue], objc_msgSend(v63, "intValue"), objc_msgSend(v19, "intValue"), v22, v24);
    p_isa = &selfCopy6->super.super.isa;
    goto LABEL_50;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = MEMORY[0x1E695DF00];
    v26 = v23;
    v27 = [v25 alloc];
    [v26 doubleValue];
    v29 = v28;

    v30 = [v27 initWithTimeIntervalSince1970:v29];
LABEL_43:
    v24 = v30;
    goto LABEL_49;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v24 = [v36 dateFromString:v23];

    goto LABEL_49;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = v23;
    goto LABEL_43;
  }

  if (p_isa)
  {
    v59 = objc_alloc(MEMORY[0x1E696ABC0]);
    v58 = *MEMORY[0x1E698F240];
    v66 = *MEMORY[0x1E696A578];
    v55 = p_isa;
    v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"latestStrongTimeStamp"];
    v67 = v56;
    v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    *v55 = [v59 initWithDomain:v58 code:2 userInfo:v57];

    v24 = 0;
    p_isa = 0;
  }

  else
  {
    v24 = 0;
  }

LABEL_46:
  selfCopy6 = self;
LABEL_50:

LABEL_51:
  v6 = v60;
LABEL_52:

  v14 = v61;
LABEL_53:

LABEL_54:
LABEL_55:

  v37 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceCellularAvailabilityStatus *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasRaw_timeStamp)
  {
    raw_timeStamp = self->_raw_timeStamp;
    PBDataWriterWriteDoubleField();
  }

  deviceType = self->_deviceType;
  PBDataWriterWriteUint32Field();
  deviceRegistrationStatus = self->_deviceRegistrationStatus;
  PBDataWriterWriteUint32Field();
  previousDeviceRegistrationStatus = self->_previousDeviceRegistrationStatus;
  PBDataWriterWriteUint32Field();
  if (self->_hasAboveThreshold)
  {
    aboveThreshold = self->_aboveThreshold;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRaw_latestStrongTimeStamp)
  {
    raw_latestStrongTimeStamp = self->_raw_latestStrongTimeStamp;
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v52.receiver = self;
  v52.super_class = BMDeviceCellularAvailabilityStatus;
  v5 = [(BMEventBase *)&v52 init];
  if (!v5)
  {
    goto LABEL_92;
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
        LOBYTE(v53) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v53 & 0x7F) << v7;
        if ((v53 & 0x80) == 0)
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
      if ((v14 >> 3) > 3)
      {
        if (v15 == 6)
        {
          v5->_hasRaw_latestStrongTimeStamp = 1;
          v53 = 0;
          v30 = [fromCopy position] + 8;
          if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 8, v31 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v46 = v53;
          v47 = 40;
          goto LABEL_88;
        }

        if (v15 == 5)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v5->_hasAboveThreshold = 1;
          while (1)
          {
            LOBYTE(v53) = 0;
            v40 = [fromCopy position] + 1;
            if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 1, v41 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v39 |= (v53 & 0x7F) << v37;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v13 = v38++ >= 9;
            if (v13)
            {
              LOBYTE(v43) = 0;
              goto LABEL_83;
            }
          }

          v43 = (v39 != 0) & ~[fromCopy hasError];
LABEL_83:
          v5->_aboveThreshold = v43;
          goto LABEL_89;
        }

        if (v15 != 4)
        {
LABEL_49:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_91;
          }

          goto LABEL_89;
        }

        v23 = 0;
        v24 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v53) = 0;
          v25 = [fromCopy position] + 1;
          if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v53 & 0x7F) << v23;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v22 = v24++ > 8;
          if (v22)
          {
            goto LABEL_75;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 4)
        {
LABEL_75:
          LODWORD(v18) = 0;
        }

        v44 = 64;
      }

      else
      {
        switch(v15)
        {
          case 1:
            v5->_hasRaw_timeStamp = 1;
            v53 = 0;
            v28 = [fromCopy position] + 8;
            if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 8, v29 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v46 = v53;
            v47 = 24;
LABEL_88:
            *(&v5->super.super.isa + v47) = v46;
            goto LABEL_89;
          case 2:
            v32 = 0;
            v33 = 0;
            v18 = 0;
            while (1)
            {
              LOBYTE(v53) = 0;
              v34 = [fromCopy position] + 1;
              if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
              {
                data6 = [fromCopy data];
                [data6 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v53 & 0x7F) << v32;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v22 = v33++ > 8;
              if (v22)
              {
                goto LABEL_79;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 2)
            {
LABEL_79:
              LODWORD(v18) = 0;
            }

            v44 = 56;
            break;
          case 3:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              LOBYTE(v53) = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data7 = [fromCopy data];
                [data7 getBytes:&v53 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v53 & 0x7F) << v16;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v22 = v17++ > 8;
              if (v22)
              {
                goto LABEL_71;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 4)
            {
LABEL_71:
              LODWORD(v18) = 0;
            }

            v44 = 60;
            break;
          default:
            goto LABEL_49;
        }
      }

      *(&v5->super.super.isa + v44) = v18;
LABEL_89:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_91:
    v50 = 0;
  }

  else
  {
LABEL_92:
    v50 = v5;
  }

  return v50;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  timeStamp = [(BMDeviceCellularAvailabilityStatus *)self timeStamp];
  v5 = BMDeviceCellularAvailabilityStatusDeviceTypeAsString([(BMDeviceCellularAvailabilityStatus *)self deviceType]);
  v6 = BMDeviceCellularAvailabilityStatusStateAsString([(BMDeviceCellularAvailabilityStatus *)self deviceRegistrationStatus]);
  v7 = BMDeviceCellularAvailabilityStatusStateAsString([(BMDeviceCellularAvailabilityStatus *)self previousDeviceRegistrationStatus]);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceCellularAvailabilityStatus aboveThreshold](self, "aboveThreshold")}];
  latestStrongTimeStamp = [(BMDeviceCellularAvailabilityStatus *)self latestStrongTimeStamp];
  v10 = [v3 initWithFormat:@"BMDeviceCellularAvailabilityStatus with timeStamp: %@, deviceType: %@, deviceRegistrationStatus: %@, previousDeviceRegistrationStatus: %@, aboveThreshold: %@, latestStrongTimeStamp: %@", timeStamp, v5, v6, v7, v8, latestStrongTimeStamp];

  return v10;
}

- (BMDeviceCellularAvailabilityStatus)initWithTimeStamp:(id)stamp deviceType:(int)type deviceRegistrationStatus:(int)status previousDeviceRegistrationStatus:(int)registrationStatus aboveThreshold:(id)threshold latestStrongTimeStamp:(id)timeStamp
{
  stampCopy = stamp;
  thresholdCopy = threshold;
  timeStampCopy = timeStamp;
  v21.receiver = self;
  v21.super_class = BMDeviceCellularAvailabilityStatus;
  v17 = [(BMEventBase *)&v21 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (stampCopy)
    {
      v17->_hasRaw_timeStamp = 1;
      [stampCopy timeIntervalSince1970];
    }

    else
    {
      v17->_hasRaw_timeStamp = 0;
      v18 = -1.0;
    }

    v17->_raw_timeStamp = v18;
    v17->_deviceType = type;
    v17->_deviceRegistrationStatus = status;
    v17->_previousDeviceRegistrationStatus = registrationStatus;
    if (thresholdCopy)
    {
      v17->_hasAboveThreshold = 1;
      v17->_aboveThreshold = [thresholdCopy BOOLValue];
    }

    else
    {
      v17->_hasAboveThreshold = 0;
      v17->_aboveThreshold = 0;
    }

    if (timeStampCopy)
    {
      v17->_hasRaw_latestStrongTimeStamp = 1;
      [timeStampCopy timeIntervalSince1970];
    }

    else
    {
      v17->_hasRaw_latestStrongTimeStamp = 0;
      v19 = -1.0;
    }

    v17->_raw_latestStrongTimeStamp = v19;
  }

  return v17;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeStamp" number:1 type:0 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:2 type:4 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceRegistrationStatus" number:3 type:4 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"previousDeviceRegistrationStatus" number:4 type:4 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aboveThreshold" number:5 type:12 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"latestStrongTimeStamp" number:6 type:0 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
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

    v8 = [[BMDeviceCellularAvailabilityStatus alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[13] = 0;
    }
  }

  return v4;
}

@end