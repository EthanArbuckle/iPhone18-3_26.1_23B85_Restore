@interface BMContextSyncCellularAvailabilityStatus
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMContextSyncCellularAvailabilityStatus)initWithID:(id)d deviceUUID:(id)iD timeStamp:(id)stamp deviceType:(int)type deviceRegistrationStatus:(int)status previousDeviceRegistrationStatus:(int)registrationStatus aboveThreshold:(id)threshold latestStrongTimeStamp:(id)self0;
- (BMContextSyncCellularAvailabilityStatus)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)latestStrongTimeStamp;
- (NSDate)timeStamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMContextSyncCellularAvailabilityStatus

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceUUID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeStamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceRegistrationStatus" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"previousDeviceRegistrationStatus" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"aboveThreshold" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"latestStrongTimeStamp" dataType:3 requestOnly:0 fieldNumber:8 protoDataType:0 convertedType:2];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = [(BMContextSyncCellularAvailabilityStatus *)self ID];
    v7 = [v5 ID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMContextSyncCellularAvailabilityStatus *)self ID];
      v10 = [v5 ID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_23;
      }
    }

    deviceUUID = [(BMContextSyncCellularAvailabilityStatus *)self deviceUUID];
    deviceUUID2 = [v5 deviceUUID];
    v15 = deviceUUID2;
    if (deviceUUID == deviceUUID2)
    {
    }

    else
    {
      deviceUUID3 = [(BMContextSyncCellularAvailabilityStatus *)self deviceUUID];
      deviceUUID4 = [v5 deviceUUID];
      v18 = [deviceUUID3 isEqual:deviceUUID4];

      if (!v18)
      {
        goto LABEL_23;
      }
    }

    timeStamp = [(BMContextSyncCellularAvailabilityStatus *)self timeStamp];
    timeStamp2 = [v5 timeStamp];
    v21 = timeStamp2;
    if (timeStamp == timeStamp2)
    {
    }

    else
    {
      timeStamp3 = [(BMContextSyncCellularAvailabilityStatus *)self timeStamp];
      timeStamp4 = [v5 timeStamp];
      v24 = [timeStamp3 isEqual:timeStamp4];

      if (!v24)
      {
        goto LABEL_23;
      }
    }

    deviceType = [(BMContextSyncCellularAvailabilityStatus *)self deviceType];
    if (deviceType == [v5 deviceType])
    {
      deviceRegistrationStatus = [(BMContextSyncCellularAvailabilityStatus *)self deviceRegistrationStatus];
      if (deviceRegistrationStatus == [v5 deviceRegistrationStatus])
      {
        previousDeviceRegistrationStatus = [(BMContextSyncCellularAvailabilityStatus *)self previousDeviceRegistrationStatus];
        if (previousDeviceRegistrationStatus == [v5 previousDeviceRegistrationStatus])
        {
          if (!-[BMContextSyncCellularAvailabilityStatus hasAboveThreshold](self, "hasAboveThreshold") && ![v5 hasAboveThreshold] || -[BMContextSyncCellularAvailabilityStatus hasAboveThreshold](self, "hasAboveThreshold") && objc_msgSend(v5, "hasAboveThreshold") && (v28 = -[BMContextSyncCellularAvailabilityStatus aboveThreshold](self, "aboveThreshold"), v28 == objc_msgSend(v5, "aboveThreshold")))
          {
            latestStrongTimeStamp = [(BMContextSyncCellularAvailabilityStatus *)self latestStrongTimeStamp];
            latestStrongTimeStamp2 = [v5 latestStrongTimeStamp];
            if (latestStrongTimeStamp == latestStrongTimeStamp2)
            {
              v12 = 1;
            }

            else
            {
              latestStrongTimeStamp3 = [(BMContextSyncCellularAvailabilityStatus *)self latestStrongTimeStamp];
              latestStrongTimeStamp4 = [v5 latestStrongTimeStamp];
              v12 = [latestStrongTimeStamp3 isEqual:latestStrongTimeStamp4];
            }

            goto LABEL_24;
          }
        }
      }
    }

LABEL_23:
    v12 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v12 = 0;
LABEL_25:

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
  v34[8] = *MEMORY[0x1E69E9840];
  v3 = [(BMContextSyncCellularAvailabilityStatus *)self ID];
  deviceUUID = [(BMContextSyncCellularAvailabilityStatus *)self deviceUUID];
  timeStamp = [(BMContextSyncCellularAvailabilityStatus *)self timeStamp];
  if (timeStamp)
  {
    v6 = MEMORY[0x1E696AD98];
    timeStamp2 = [(BMContextSyncCellularAvailabilityStatus *)self timeStamp];
    [timeStamp2 timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMContextSyncCellularAvailabilityStatus deviceType](self, "deviceType")}];
  v31 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMContextSyncCellularAvailabilityStatus deviceRegistrationStatus](self, "deviceRegistrationStatus")}];
  v30 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMContextSyncCellularAvailabilityStatus previousDeviceRegistrationStatus](self, "previousDeviceRegistrationStatus")}];
  if ([(BMContextSyncCellularAvailabilityStatus *)self hasAboveThreshold])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMContextSyncCellularAvailabilityStatus aboveThreshold](self, "aboveThreshold")}];
  }

  else
  {
    v9 = 0;
  }

  latestStrongTimeStamp = [(BMContextSyncCellularAvailabilityStatus *)self latestStrongTimeStamp];
  if (latestStrongTimeStamp)
  {
    v11 = MEMORY[0x1E696AD98];
    latestStrongTimeStamp2 = [(BMContextSyncCellularAvailabilityStatus *)self latestStrongTimeStamp];
    [latestStrongTimeStamp2 timeIntervalSince1970];
    v13 = [v11 numberWithDouble:?];
  }

  else
  {
    v13 = 0;
  }

  v33[0] = @"ID";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null;
  v34[0] = null;
  v33[1] = @"deviceUUID";
  null2 = deviceUUID;
  if (!deviceUUID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null2;
  v34[1] = null2;
  v33[2] = @"timeStamp";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null3;
  v34[2] = null3;
  v33[3] = @"deviceType";
  null4 = v32;
  if (!v32)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v3;
  v34[3] = null4;
  v33[4] = @"deviceRegistrationStatus";
  null5 = v31;
  if (!v31)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = deviceUUID;
  v34[4] = null5;
  v33[5] = @"previousDeviceRegistrationStatus";
  null6 = v30;
  if (!v30)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v34[5] = null6;
  v33[6] = @"aboveThreshold";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v34[6] = null7;
  v33[7] = @"latestStrongTimeStamp";
  null8 = v13;
  if (!v13)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v34[7] = null8;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:8];
  if (v13)
  {
    if (v9)
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_28;
    }
  }

LABEL_28:
  if (!v30)
  {
  }

  if (!v31)
  {
  }

  if (v32)
  {
    if (v8)
    {
      goto LABEL_34;
    }
  }

  else
  {

    if (v8)
    {
LABEL_34:
      if (v19)
      {
        goto LABEL_35;
      }

LABEL_43:

      if (v29)
      {
        goto LABEL_36;
      }

      goto LABEL_44;
    }
  }

  if (!v19)
  {
    goto LABEL_43;
  }

LABEL_35:
  if (v29)
  {
    goto LABEL_36;
  }

LABEL_44:

LABEL_36:
  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (BMContextSyncCellularAvailabilityStatus)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v107[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v91 = [dictionaryCopy objectForKeyedSubscript:@"ID"];
  if (!v91 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = 0;
LABEL_4:
    v7 = [dictionaryCopy objectForKeyedSubscript:@"deviceUUID"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v27 = 0;
          goto LABEL_67;
        }

        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v30 = *MEMORY[0x1E698F240];
        v104 = *MEMORY[0x1E696A578];
        v88 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceUUID"];
        v105 = v88;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
        v31 = [v28 initWithDomain:v30 code:2 userInfo:v8];
        error = 0;
        v27 = 0;
        *errorCopy = v31;
        goto LABEL_66;
      }

      errorCopy3 = error;
      error = v7;
    }

    else
    {
      errorCopy3 = error;
      error = 0;
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"timeStamp"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = MEMORY[0x1E695DF00];
        v16 = v8;
        v17 = [v15 alloc];
        [v16 doubleValue];
        v19 = v18;

        v88 = [v17 initWithTimeIntervalSince1970:v19];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v88 = [v32 dateFromString:v8];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy3)
            {
              v88 = 0;
              v27 = 0;
              goto LABEL_66;
            }

            v70 = objc_alloc(MEMORY[0x1E696ABC0]);
            errorCopy4 = error;
            v71 = *MEMORY[0x1E698F240];
            v102 = *MEMORY[0x1E696A578];
            v89 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timeStamp"];
            v103 = v89;
            v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
            v73 = v71;
            error = errorCopy4;
            v84 = v72;
            v88 = 0;
            v27 = 0;
            *errorCopy3 = [v70 initWithDomain:v73 code:2 userInfo:?];
LABEL_65:

LABEL_66:
            goto LABEL_67;
          }

          v88 = v8;
        }
      }
    }

    else
    {
      v88 = 0;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
    v83 = v8;
    v84 = v9;
    if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy7 = error;
        v89 = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy3)
          {
            v89 = 0;
            v27 = 0;
            goto LABEL_65;
          }

          v55 = objc_alloc(MEMORY[0x1E696ABC0]);
          v56 = *MEMORY[0x1E698F240];
          v100 = *MEMORY[0x1E696A578];
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"deviceType"];
          v101 = v14;
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
          v57 = [v55 initWithDomain:v56 code:2 userInfo:v52];
          v89 = 0;
          v27 = 0;
          *errorCopy3 = v57;
          goto LABEL_64;
        }

        v89 = [MEMORY[0x1E696AD98] numberWithInt:BMContextSyncCellularAvailabilityStatusDeviceTypeFromString(v10)];
        errorCopy7 = error;
      }
    }

    else
    {
      errorCopy7 = error;
      v89 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"deviceRegistrationStatus"];
    v87 = v6;
    v81 = v7;
    v82 = v12;
    if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v13;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy3)
          {
            v14 = 0;
            v27 = 0;
            v52 = v82;
            error = errorCopy7;
            goto LABEL_64;
          }

          v58 = objc_alloc(MEMORY[0x1E696ABC0]);
          v59 = v8;
          v60 = *MEMORY[0x1E698F240];
          v98 = *MEMORY[0x1E696A578];
          v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"deviceRegistrationStatus"];
          v99 = v61;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
          v62 = v60;
          v8 = v59;
          v50 = v61;
          v63 = [v58 initWithDomain:v62 code:2 userInfo:v51];
          v14 = 0;
          v27 = 0;
          *errorCopy3 = v63;
          error = errorCopy7;
LABEL_63:

          v6 = v87;
          v7 = v81;
          v52 = v82;
LABEL_64:

          goto LABEL_65;
        }

        v20 = [MEMORY[0x1E696AD98] numberWithInt:BMContextSyncCellularAvailabilityStatusStateFromString(v13)];
      }

      v14 = v20;
    }

    else
    {
      v14 = 0;
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"previousDeviceRegistrationStatus"];
    error = errorCopy7;
    if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = v33;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v64 = v33;
          v50 = errorCopy3;
          if (!errorCopy3)
          {
            v27 = 0;
            v51 = v64;
            goto LABEL_63;
          }

          v65 = objc_alloc(MEMORY[0x1E696ABC0]);
          v66 = v8;
          v67 = *MEMORY[0x1E698F240];
          v96 = *MEMORY[0x1E696A578];
          v85 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"previousDeviceRegistrationStatus"];
          v97 = v85;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
          v68 = v67;
          v8 = v66;
          v69 = [v65 initWithDomain:v68 code:2 userInfo:v35];
          v27 = 0;
          *errorCopy3 = v69;
          v50 = 0;
          v51 = v64;
          goto LABEL_62;
        }

        v34 = [MEMORY[0x1E696AD98] numberWithInt:BMContextSyncCellularAvailabilityStatusStateFromString(v33)];
      }

      v79 = v34;
    }

    else
    {
      v79 = 0;
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"aboveThreshold"];
    v80 = v33;
    if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy3)
        {
          v85 = 0;
          v27 = 0;
          v50 = v79;
          v51 = v80;
          goto LABEL_62;
        }

        v45 = objc_alloc(MEMORY[0x1E696ABC0]);
        v46 = v14;
        v47 = *MEMORY[0x1E698F240];
        v94 = *MEMORY[0x1E696A578];
        v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"aboveThreshold"];
        v95 = v38;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        v48 = v47;
        v14 = v46;
        v85 = 0;
        v27 = 0;
        *errorCopy3 = [v45 initWithDomain:v48 code:2 userInfo:v36];
        goto LABEL_89;
      }

      v85 = v35;
    }

    else
    {
      v85 = 0;
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"latestStrongTimeStamp"];
    if (!v36 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      selfCopy4 = self;
      v38 = 0;
LABEL_60:
      v50 = v79;
      v27 = -[BMContextSyncCellularAvailabilityStatus initWithID:deviceUUID:timeStamp:deviceType:deviceRegistrationStatus:previousDeviceRegistrationStatus:aboveThreshold:latestStrongTimeStamp:](selfCopy4, "initWithID:deviceUUID:timeStamp:deviceType:deviceRegistrationStatus:previousDeviceRegistrationStatus:aboveThreshold:latestStrongTimeStamp:", v87, errorCopy7, v88, [v89 intValue], objc_msgSend(v14, "intValue"), objc_msgSend(v79, "intValue"), v85, v38);
      self = v27;
LABEL_61:

      v8 = v83;
      v51 = v80;
LABEL_62:

      goto LABEL_63;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy4 = self;
      v39 = MEMORY[0x1E695DF00];
      v40 = v36;
      v41 = [v39 alloc];
      [v40 doubleValue];
      v43 = v42;

      v44 = [v41 initWithTimeIntervalSince1970:v43];
LABEL_55:
      v38 = v44;
      goto LABEL_60;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy4 = self;
      v49 = objc_alloc_init(MEMORY[0x1E696AC80]);
      v38 = [v49 dateFromString:v36];

      goto LABEL_60;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy4 = self;
      v44 = v36;
      goto LABEL_55;
    }

    if (errorCopy3)
    {
      v74 = objc_alloc(MEMORY[0x1E696ABC0]);
      v75 = *MEMORY[0x1E698F240];
      v92 = *MEMORY[0x1E696A578];
      v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"latestStrongTimeStamp"];
      v93 = v76;
      v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
      *errorCopy3 = [v74 initWithDomain:v75 code:2 userInfo:v77];
    }

    v38 = 0;
    v27 = 0;
LABEL_89:
    v50 = v79;
    goto LABEL_61;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v91;
    goto LABEL_4;
  }

  if (!error)
  {
    v6 = 0;
    v27 = 0;
    goto LABEL_68;
  }

  v21 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy8 = error;
  v23 = *MEMORY[0x1E698F240];
  v106 = *MEMORY[0x1E696A578];
  v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"ID"];
  v107[0] = v24;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:&v106 count:1];
  v25 = v23;
  error = v24;
  v26 = [v21 initWithDomain:v25 code:2 userInfo:v7];
  v6 = 0;
  v27 = 0;
  *errorCopy8 = v26;
LABEL_67:

LABEL_68:
  v53 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMContextSyncCellularAvailabilityStatus *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_ID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceUUID)
  {
    PBDataWriterWriteStringField();
  }

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
  v55.receiver = self;
  v55.super_class = BMContextSyncCellularAvailabilityStatus;
  v5 = [(BMEventBase *)&v55 init];
  if (!v5)
  {
    goto LABEL_99;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_97;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v56) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v56 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v56 & 0x7F) << v7;
        if ((v56 & 0x80) == 0)
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
        goto LABEL_97;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 4)
      {
        break;
      }

      if (v15 > 2)
      {
        if (v15 == 3)
        {
          v5->_hasRaw_timeStamp = 1;
          v56 = 0;
          v38 = [fromCopy position] + 8;
          if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 8, v39 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v56 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v49 = v56;
          v50 = 24;
LABEL_95:
          *(&v5->super.super.isa + v50) = v49;
          goto LABEL_96;
        }

        if (v15 != 4)
        {
          goto LABEL_74;
        }

        v25 = 0;
        v26 = 0;
        v20 = 0;
        while (1)
        {
          LOBYTE(v56) = 0;
          v27 = [fromCopy position] + 1;
          if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v56 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v20 |= (v56 & 0x7F) << v25;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v24 = v26++ > 8;
          if (v24)
          {
            goto LABEL_88;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v20 > 2)
        {
LABEL_88:
          LODWORD(v20) = 0;
        }

        v47 = 56;
LABEL_90:
        *(&v5->super.super.isa + v47) = v20;
        goto LABEL_96;
      }

      if (v15 == 1)
      {
        v16 = PBReaderReadString();
        v17 = 72;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_74;
        }

        v16 = PBReaderReadString();
        v17 = 80;
      }

      v32 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_96:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_97;
      }
    }

    if (v15 > 6)
    {
      if (v15 == 7)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v5->_hasAboveThreshold = 1;
        while (1)
        {
          LOBYTE(v56) = 0;
          v43 = [fromCopy position] + 1;
          if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v56 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v42 |= (v56 & 0x7F) << v40;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v13 = v41++ >= 9;
          if (v13)
          {
            LOBYTE(v46) = 0;
            goto LABEL_81;
          }
        }

        v46 = (v42 != 0) & ~[fromCopy hasError];
LABEL_81:
        v5->_aboveThreshold = v46;
        goto LABEL_96;
      }

      if (v15 != 8)
      {
LABEL_74:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_98;
        }

        goto LABEL_96;
      }

      v5->_hasRaw_latestStrongTimeStamp = 1;
      v56 = 0;
      v30 = [fromCopy position] + 8;
      if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 8, v31 <= objc_msgSend(fromCopy, "length")))
      {
        data5 = [fromCopy data];
        [data5 getBytes:&v56 range:{objc_msgSend(fromCopy, "position"), 8}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
      }

      else
      {
        [fromCopy _setError];
      }

      v49 = v56;
      v50 = 40;
      goto LABEL_95;
    }

    if (v15 == 5)
    {
      v33 = 0;
      v34 = 0;
      v20 = 0;
      while (1)
      {
        LOBYTE(v56) = 0;
        v35 = [fromCopy position] + 1;
        if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
        {
          data6 = [fromCopy data];
          [data6 getBytes:&v56 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v20 |= (v56 & 0x7F) << v33;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v33 += 7;
        v24 = v34++ > 8;
        if (v24)
        {
          goto LABEL_78;
        }
      }

      if (([fromCopy hasError] & 1) != 0 || v20 > 4)
      {
LABEL_78:
        LODWORD(v20) = 0;
      }

      v47 = 60;
    }

    else
    {
      if (v15 != 6)
      {
        goto LABEL_74;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        LOBYTE(v56) = 0;
        v21 = [fromCopy position] + 1;
        if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
        {
          data7 = [fromCopy data];
          [data7 getBytes:&v56 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v20 |= (v56 & 0x7F) << v18;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        v24 = v19++ > 8;
        if (v24)
        {
          goto LABEL_84;
        }
      }

      if (([fromCopy hasError] & 1) != 0 || v20 > 4)
      {
LABEL_84:
        LODWORD(v20) = 0;
      }

      v47 = 64;
    }

    goto LABEL_90;
  }

LABEL_97:
  if ([fromCopy hasError])
  {
LABEL_98:
    v53 = 0;
  }

  else
  {
LABEL_99:
    v53 = v5;
  }

  return v53;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMContextSyncCellularAvailabilityStatus *)self ID];
  deviceUUID = [(BMContextSyncCellularAvailabilityStatus *)self deviceUUID];
  timeStamp = [(BMContextSyncCellularAvailabilityStatus *)self timeStamp];
  v7 = BMContextSyncCellularAvailabilityStatusDeviceTypeAsString([(BMContextSyncCellularAvailabilityStatus *)self deviceType]);
  v8 = BMContextSyncCellularAvailabilityStatusStateAsString([(BMContextSyncCellularAvailabilityStatus *)self deviceRegistrationStatus]);
  v9 = BMContextSyncCellularAvailabilityStatusStateAsString([(BMContextSyncCellularAvailabilityStatus *)self previousDeviceRegistrationStatus]);
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMContextSyncCellularAvailabilityStatus aboveThreshold](self, "aboveThreshold")}];
  latestStrongTimeStamp = [(BMContextSyncCellularAvailabilityStatus *)self latestStrongTimeStamp];
  v12 = [v3 initWithFormat:@"BMContextSyncCellularAvailabilityStatus with ID: %@, deviceUUID: %@, timeStamp: %@, deviceType: %@, deviceRegistrationStatus: %@, previousDeviceRegistrationStatus: %@, aboveThreshold: %@, latestStrongTimeStamp: %@", v4, deviceUUID, timeStamp, v7, v8, v9, v10, latestStrongTimeStamp];

  return v12;
}

- (BMContextSyncCellularAvailabilityStatus)initWithID:(id)d deviceUUID:(id)iD timeStamp:(id)stamp deviceType:(int)type deviceRegistrationStatus:(int)status previousDeviceRegistrationStatus:(int)registrationStatus aboveThreshold:(id)threshold latestStrongTimeStamp:(id)self0
{
  dCopy = d;
  iDCopy = iD;
  stampCopy = stamp;
  thresholdCopy = threshold;
  timeStampCopy = timeStamp;
  v26.receiver = self;
  v26.super_class = BMContextSyncCellularAvailabilityStatus;
  v21 = [(BMEventBase *)&v26 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v21->_ID, d);
    objc_storeStrong(&v21->_deviceUUID, iD);
    if (stampCopy)
    {
      v21->_hasRaw_timeStamp = 1;
      [stampCopy timeIntervalSince1970];
    }

    else
    {
      v21->_hasRaw_timeStamp = 0;
      v22 = -1.0;
    }

    v21->_raw_timeStamp = v22;
    v21->_deviceType = type;
    v21->_deviceRegistrationStatus = status;
    v21->_previousDeviceRegistrationStatus = registrationStatus;
    if (thresholdCopy)
    {
      v21->_hasAboveThreshold = 1;
      v21->_aboveThreshold = [thresholdCopy BOOLValue];
    }

    else
    {
      v21->_hasAboveThreshold = 0;
      v21->_aboveThreshold = 0;
    }

    if (timeStampCopy)
    {
      v21->_hasRaw_latestStrongTimeStamp = 1;
      [timeStampCopy timeIntervalSince1970];
    }

    else
    {
      v21->_hasRaw_latestStrongTimeStamp = 0;
      v23 = -1.0;
    }

    v21->_raw_latestStrongTimeStamp = v23;
  }

  return v21;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ID" number:1 type:13 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceUUID" number:2 type:13 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeStamp" number:3 type:0 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:4 type:4 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceRegistrationStatus" number:5 type:4 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"previousDeviceRegistrationStatus" number:6 type:4 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aboveThreshold" number:7 type:12 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"latestStrongTimeStamp" number:8 type:0 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
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

    v8 = [[BMContextSyncCellularAvailabilityStatus alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[13] = 0;
    }
  }

  return v4;
}

@end