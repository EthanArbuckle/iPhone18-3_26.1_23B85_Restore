@interface BMSiriOnDeviceDigestExperimentMetricsEventMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriOnDeviceDigestExperimentMetricsEventMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriOnDeviceDigestExperimentMetricsEventMetadata)initWithOddIdUUID:(id)d deviceAggregationId:(id)id userAggregationId:(id)aggregationId eventTimestampInMSSince1970:(id)since1970 timeInterval:(id)interval userAggregationIdRotationTimestampInMs:(id)ms userAggregationIdExpirationTimestampInMs:(id)inMs;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriOnDeviceDigestExperimentMetricsEventMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    oddIdUUID = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self oddIdUUID];
    oddIdUUID2 = [v5 oddIdUUID];
    v8 = oddIdUUID2;
    if (oddIdUUID == oddIdUUID2)
    {
    }

    else
    {
      oddIdUUID3 = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self oddIdUUID];
      oddIdUUID4 = [v5 oddIdUUID];
      v11 = [oddIdUUID3 isEqual:oddIdUUID4];

      if (!v11)
      {
        goto LABEL_34;
      }
    }

    deviceAggregationId = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self deviceAggregationId];
    deviceAggregationId2 = [v5 deviceAggregationId];
    v15 = deviceAggregationId2;
    if (deviceAggregationId == deviceAggregationId2)
    {
    }

    else
    {
      deviceAggregationId3 = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self deviceAggregationId];
      deviceAggregationId4 = [v5 deviceAggregationId];
      v18 = [deviceAggregationId3 isEqual:deviceAggregationId4];

      if (!v18)
      {
        goto LABEL_34;
      }
    }

    userAggregationId = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self userAggregationId];
    userAggregationId2 = [v5 userAggregationId];
    v21 = userAggregationId2;
    if (userAggregationId == userAggregationId2)
    {
    }

    else
    {
      userAggregationId3 = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self userAggregationId];
      userAggregationId4 = [v5 userAggregationId];
      v24 = [userAggregationId3 isEqual:userAggregationId4];

      if (!v24)
      {
        goto LABEL_34;
      }
    }

    if (-[BMSiriOnDeviceDigestExperimentMetricsEventMetadata hasEventTimestampInMSSince1970](self, "hasEventTimestampInMSSince1970") || [v5 hasEventTimestampInMSSince1970])
    {
      if (![(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self hasEventTimestampInMSSince1970])
      {
        goto LABEL_34;
      }

      if (![v5 hasEventTimestampInMSSince1970])
      {
        goto LABEL_34;
      }

      eventTimestampInMSSince1970 = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self eventTimestampInMSSince1970];
      if (eventTimestampInMSSince1970 != [v5 eventTimestampInMSSince1970])
      {
        goto LABEL_34;
      }
    }

    timeInterval = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self timeInterval];
    timeInterval2 = [v5 timeInterval];
    v28 = timeInterval2;
    if (timeInterval == timeInterval2)
    {
    }

    else
    {
      timeInterval3 = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self timeInterval];
      timeInterval4 = [v5 timeInterval];
      v31 = [timeInterval3 isEqual:timeInterval4];

      if (!v31)
      {
        goto LABEL_34;
      }
    }

    if (!-[BMSiriOnDeviceDigestExperimentMetricsEventMetadata hasUserAggregationIdRotationTimestampInMs](self, "hasUserAggregationIdRotationTimestampInMs") && ![v5 hasUserAggregationIdRotationTimestampInMs] || -[BMSiriOnDeviceDigestExperimentMetricsEventMetadata hasUserAggregationIdRotationTimestampInMs](self, "hasUserAggregationIdRotationTimestampInMs") && objc_msgSend(v5, "hasUserAggregationIdRotationTimestampInMs") && (v32 = -[BMSiriOnDeviceDigestExperimentMetricsEventMetadata userAggregationIdRotationTimestampInMs](self, "userAggregationIdRotationTimestampInMs"), v32 == objc_msgSend(v5, "userAggregationIdRotationTimestampInMs")))
    {
      if (!-[BMSiriOnDeviceDigestExperimentMetricsEventMetadata hasUserAggregationIdExpirationTimestampInMs](self, "hasUserAggregationIdExpirationTimestampInMs") && ![v5 hasUserAggregationIdExpirationTimestampInMs])
      {
        v12 = 1;
        goto LABEL_35;
      }

      if (-[BMSiriOnDeviceDigestExperimentMetricsEventMetadata hasUserAggregationIdExpirationTimestampInMs](self, "hasUserAggregationIdExpirationTimestampInMs") && [v5 hasUserAggregationIdExpirationTimestampInMs])
      {
        userAggregationIdExpirationTimestampInMs = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self userAggregationIdExpirationTimestampInMs];
        v12 = userAggregationIdExpirationTimestampInMs == [v5 userAggregationIdExpirationTimestampInMs];
LABEL_35:

        goto LABEL_36;
      }
    }

LABEL_34:
    v12 = 0;
    goto LABEL_35;
  }

  v12 = 0;
LABEL_36:

  return v12;
}

- (id)jsonDictionary
{
  v26[7] = *MEMORY[0x1E69E9840];
  oddIdUUID = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self oddIdUUID];
  deviceAggregationId = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self deviceAggregationId];
  userAggregationId = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self userAggregationId];
  if ([(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self hasEventTimestampInMSSince1970])
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriOnDeviceDigestExperimentMetricsEventMetadata eventTimestampInMSSince1970](self, "eventTimestampInMSSince1970")}];
  }

  else
  {
    v24 = 0;
  }

  timeInterval = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self timeInterval];
  jsonDictionary = [timeInterval jsonDictionary];

  if ([(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self hasUserAggregationIdRotationTimestampInMs])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriOnDeviceDigestExperimentMetricsEventMetadata userAggregationIdRotationTimestampInMs](self, "userAggregationIdRotationTimestampInMs")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self hasUserAggregationIdExpirationTimestampInMs])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriOnDeviceDigestExperimentMetricsEventMetadata userAggregationIdExpirationTimestampInMs](self, "userAggregationIdExpirationTimestampInMs")}];
  }

  else
  {
    v9 = 0;
  }

  v25[0] = @"oddIdUUID";
  null = oddIdUUID;
  if (!oddIdUUID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v26[0] = null;
  v25[1] = @"deviceAggregationId";
  null2 = deviceAggregationId;
  if (!deviceAggregationId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null2;
  v26[1] = null2;
  v25[2] = @"userAggregationId";
  null3 = userAggregationId;
  if (!userAggregationId)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = oddIdUUID;
  v26[2] = null3;
  v25[3] = @"eventTimestampInMSSince1970";
  null4 = v24;
  if (!v24)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = deviceAggregationId;
  v26[3] = null4;
  v25[4] = @"timeInterval";
  null5 = jsonDictionary;
  if (!jsonDictionary)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"userAggregationIdRotationTimestampInMs";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null6;
  v25[6] = @"userAggregationIdExpirationTimestampInMs";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v26[6] = null7;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:7];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_26;
    }
  }

  else
  {

    if (v8)
    {
      goto LABEL_26;
    }
  }

LABEL_26:
  if (!jsonDictionary)
  {
  }

  if (!v24)
  {
  }

  if (userAggregationId)
  {
    if (v22)
    {
      goto LABEL_32;
    }

LABEL_39:

    if (v23)
    {
      goto LABEL_33;
    }

    goto LABEL_40;
  }

  if (!v22)
  {
    goto LABEL_39;
  }

LABEL_32:
  if (v23)
  {
    goto LABEL_33;
  }

LABEL_40:

LABEL_33:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMSiriOnDeviceDigestExperimentMetricsEventMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v84[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"oddIdUUID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"deviceAggregationId"];
    errorCopy = error;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          v21 = 0;
          goto LABEL_30;
        }

        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v81 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceAggregationId"];
        v82 = v13;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v12 = v33 = error;
        v34 = [v31 initWithDomain:v32 code:2 userInfo:v12];
        v10 = 0;
        v21 = 0;
        *v33 = v34;
        goto LABEL_29;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"userAggregationId"];
    v66 = v11;
    if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v13 = 0;
          v21 = 0;
          goto LABEL_29;
        }

        v62 = v10;
        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v79 = *MEMORY[0x1E696A578];
        v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userAggregationId"];
        v80 = v69;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        v37 = v35;
        v10 = v62;
        v38 = [v37 initWithDomain:v36 code:2 userInfo:v14];
        v13 = 0;
        v21 = 0;
        *errorCopy = v38;
LABEL_28:

        v12 = v66;
LABEL_29:

        goto LABEL_30;
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"eventTimestampInMSSince1970"];
    v67 = v13;
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v69 = 0;
          v21 = 0;
          goto LABEL_28;
        }

        v63 = v10;
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = *MEMORY[0x1E698F240];
        v77 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"eventTimestampInMSSince1970"];
        v78 = v22;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        v42 = v39;
        v10 = v63;
        v65 = v41;
        v43 = [v42 initWithDomain:v40 code:2 userInfo:?];
        v69 = 0;
        v21 = 0;
        *errorCopy = v43;
        goto LABEL_26;
      }

      v69 = v14;
    }

    else
    {
      v69 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"timeInterval"];
    v64 = v8;
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v21 = 0;
          goto LABEL_27;
        }

        v58 = objc_alloc(MEMORY[0x1E696ABC0]);
        v56 = *MEMORY[0x1E698F240];
        v75 = *MEMORY[0x1E696A578];
        v44 = v10;
        v45 = v7;
        selfCopy = self;
        v47 = objc_alloc(MEMORY[0x1E696AEC0]);
        v55 = objc_opt_class();
        v48 = v47;
        self = selfCopy;
        v7 = v45;
        v10 = v44;
        v65 = [v48 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v55, @"timeInterval"];
        v76 = v65;
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        *errorCopy = [v58 initWithDomain:v56 code:2 userInfo:v49];

        v21 = 0;
        v22 = v15;
        goto LABEL_25;
      }

      v22 = v15;
      v70 = 0;
      v65 = [[BMSiriOnDeviceDigestExperimentMetricsEventMetadataTimeInterval alloc] initWithJSONDictionary:v22 error:&v70];
      v25 = v70;
      if (v25)
      {
        if (errorCopy)
        {
          v25 = v25;
          *errorCopy = v25;
        }

        v21 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v65 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"userAggregationIdRotationTimestampInMs"];
    v60 = v7;
    v61 = v10;
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      selfCopy3 = self;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v18 = 0;
          v21 = 0;
          goto LABEL_24;
        }

        v50 = objc_alloc(MEMORY[0x1E696ABC0]);
        v51 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"userAggregationIdRotationTimestampInMs"];
        v74 = v20;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        v52 = [v50 initWithDomain:v51 code:2 userInfo:v19];
        v18 = 0;
        v21 = 0;
        *errorCopy = v52;
        goto LABEL_23;
      }

      v18 = v16;
    }

    else
    {
      selfCopy3 = self;
      v18 = 0;
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"userAggregationIdExpirationTimestampInMs"];
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v59 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = *MEMORY[0x1E698F240];
          v71 = *MEMORY[0x1E696A578];
          v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"userAggregationIdExpirationTimestampInMs"];
          v72 = v53;
          v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
          *errorCopy = [v59 initWithDomain:v57 code:2 userInfo:v54];
        }

        v20 = 0;
        v21 = 0;
        goto LABEL_23;
      }

      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)selfCopy3 initWithOddIdUUID:v64 deviceAggregationId:v61 userAggregationId:v67 eventTimestampInMSSince1970:v69 timeInterval:v65 userAggregationIdRotationTimestampInMs:v18 userAggregationIdExpirationTimestampInMs:v20];
    selfCopy3 = v21;
LABEL_23:

    v10 = v61;
LABEL_24:

    v22 = v15;
    self = selfCopy3;
    v7 = v60;
LABEL_25:
    v8 = v64;
LABEL_26:

    v15 = v22;
LABEL_27:

    v13 = v67;
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v21 = 0;
    goto LABEL_31;
  }

  v26 = objc_alloc(MEMORY[0x1E696ABC0]);
  v27 = *MEMORY[0x1E698F240];
  v83 = *MEMORY[0x1E696A578];
  v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"oddIdUUID"];
  v84[0] = v28;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:&v83 count:1];
  v29 = v26;
  v10 = v28;
  v30 = [v29 initWithDomain:v27 code:2 userInfo:v9];
  v8 = 0;
  v21 = 0;
  *error = v30;
LABEL_30:

LABEL_31:
  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_oddIdUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceAggregationId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userAggregationId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasEventTimestampInMSSince1970)
  {
    eventTimestampInMSSince1970 = self->_eventTimestampInMSSince1970;
    PBDataWriterWriteUint64Field();
  }

  if (self->_timeInterval)
  {
    PBDataWriterPlaceMark();
    [(BMSiriOnDeviceDigestExperimentMetricsEventMetadataTimeInterval *)self->_timeInterval writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasUserAggregationIdRotationTimestampInMs)
  {
    userAggregationIdRotationTimestampInMs = self->_userAggregationIdRotationTimestampInMs;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasUserAggregationIdExpirationTimestampInMs)
  {
    userAggregationIdExpirationTimestampInMs = self->_userAggregationIdExpirationTimestampInMs;
    PBDataWriterWriteUint64Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v44.receiver = self;
  v44.super_class = BMSiriOnDeviceDigestExperimentMetricsEventMetadata;
  v5 = [(BMEventBase *)&v44 init];
  if (!v5)
  {
    goto LABEL_79;
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
        LOBYTE(v45[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v45 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v45[0] & 0x7F) << v7;
        if ((v45[0] & 0x80) == 0)
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
      if ((v14 >> 3) <= 3)
      {
        switch(v15)
        {
          case 1:
            v18 = PBReaderReadString();
            v19 = 24;
            break;
          case 2:
            v18 = PBReaderReadString();
            v19 = 32;
            break;
          case 3:
            v18 = PBReaderReadString();
            v19 = 40;
            break;
          default:
            goto LABEL_41;
        }

        v39 = *(&v5->super.super.isa + v19);
        *(&v5->super.super.isa + v19) = v18;
      }

      else
      {
        if (v15 > 5)
        {
          if (v15 == 6)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v5->_hasUserAggregationIdRotationTimestampInMs = 1;
            while (1)
            {
              LOBYTE(v45[0]) = 0;
              v36 = [fromCopy position] + 1;
              if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:v45 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v35 = (((v45[0] & 0x7F) << v33) | v35);
              if ((v45[0] & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v13 = v34++ >= 9;
              if (v13)
              {
                v26 = 0;
                goto LABEL_70;
              }
            }

            if ([fromCopy hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v35;
            }

LABEL_70:
            v40 = 64;
          }

          else
          {
            if (v15 != 7)
            {
LABEL_41:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_78;
              }

              goto LABEL_76;
            }

            v20 = 0;
            v21 = 0;
            v22 = 0;
            v5->_hasUserAggregationIdExpirationTimestampInMs = 1;
            while (1)
            {
              LOBYTE(v45[0]) = 0;
              v23 = [fromCopy position] + 1;
              if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:v45 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v22 = (((v45[0] & 0x7F) << v20) | v22);
              if ((v45[0] & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              v13 = v21++ >= 9;
              if (v13)
              {
                v26 = 0;
                goto LABEL_74;
              }
            }

            if ([fromCopy hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v22;
            }

LABEL_74:
            v40 = 72;
          }

          goto LABEL_75;
        }

        if (v15 == 4)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v5->_hasEventTimestampInMSSince1970 = 1;
          while (1)
          {
            LOBYTE(v45[0]) = 0;
            v30 = [fromCopy position] + 1;
            if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:v45 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v29 = (((v45[0] & 0x7F) << v27) | v29);
            if ((v45[0] & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v13 = v28++ >= 9;
            if (v13)
            {
              v26 = 0;
              goto LABEL_66;
            }
          }

          if ([fromCopy hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v29;
          }

LABEL_66:
          v40 = 48;
LABEL_75:
          *(&v5->super.super.isa + v40) = v26;
          goto LABEL_76;
        }

        if (v15 != 5)
        {
          goto LABEL_41;
        }

        v45[0] = 0;
        v45[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_78;
        }

        v16 = [[BMSiriOnDeviceDigestExperimentMetricsEventMetadataTimeInterval alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_78;
        }

        timeInterval = v5->_timeInterval;
        v5->_timeInterval = v16;

        PBReaderRecallMark();
      }

LABEL_76:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_78:
    v42 = 0;
  }

  else
  {
LABEL_79:
    v42 = v5;
  }

  return v42;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  oddIdUUID = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self oddIdUUID];
  deviceAggregationId = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self deviceAggregationId];
  userAggregationId = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self userAggregationId];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriOnDeviceDigestExperimentMetricsEventMetadata eventTimestampInMSSince1970](self, "eventTimestampInMSSince1970")}];
  timeInterval = [(BMSiriOnDeviceDigestExperimentMetricsEventMetadata *)self timeInterval];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriOnDeviceDigestExperimentMetricsEventMetadata userAggregationIdRotationTimestampInMs](self, "userAggregationIdRotationTimestampInMs")}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriOnDeviceDigestExperimentMetricsEventMetadata userAggregationIdExpirationTimestampInMs](self, "userAggregationIdExpirationTimestampInMs")}];
  v11 = [v3 initWithFormat:@"BMSiriOnDeviceDigestExperimentMetricsEventMetadata with oddIdUUID: %@, deviceAggregationId: %@, userAggregationId: %@, eventTimestampInMSSince1970: %@, timeInterval: %@, userAggregationIdRotationTimestampInMs: %@, userAggregationIdExpirationTimestampInMs: %@", oddIdUUID, deviceAggregationId, userAggregationId, v7, timeInterval, v9, v10];

  return v11;
}

- (BMSiriOnDeviceDigestExperimentMetricsEventMetadata)initWithOddIdUUID:(id)d deviceAggregationId:(id)id userAggregationId:(id)aggregationId eventTimestampInMSSince1970:(id)since1970 timeInterval:(id)interval userAggregationIdRotationTimestampInMs:(id)ms userAggregationIdExpirationTimestampInMs:(id)inMs
{
  dCopy = d;
  idCopy = id;
  aggregationIdCopy = aggregationId;
  since1970Copy = since1970;
  intervalCopy = interval;
  msCopy = ms;
  inMsCopy = inMs;
  v28.receiver = self;
  v28.super_class = BMSiriOnDeviceDigestExperimentMetricsEventMetadata;
  v20 = [(BMEventBase *)&v28 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_oddIdUUID, d);
    objc_storeStrong(&v20->_deviceAggregationId, id);
    objc_storeStrong(&v20->_userAggregationId, aggregationId);
    if (since1970Copy)
    {
      v20->_hasEventTimestampInMSSince1970 = 1;
      unsignedLongLongValue = [since1970Copy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v20->_hasEventTimestampInMSSince1970 = 0;
    }

    v20->_eventTimestampInMSSince1970 = unsignedLongLongValue;
    objc_storeStrong(&v20->_timeInterval, interval);
    if (msCopy)
    {
      v20->_hasUserAggregationIdRotationTimestampInMs = 1;
      unsignedLongLongValue2 = [msCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue2 = 0;
      v20->_hasUserAggregationIdRotationTimestampInMs = 0;
    }

    v20->_userAggregationIdRotationTimestampInMs = unsignedLongLongValue2;
    if (inMsCopy)
    {
      v20->_hasUserAggregationIdExpirationTimestampInMs = 1;
      unsignedLongLongValue3 = [inMsCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue3 = 0;
      v20->_hasUserAggregationIdExpirationTimestampInMs = 0;
    }

    v20->_userAggregationIdExpirationTimestampInMs = unsignedLongLongValue3;
  }

  return v20;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"oddIdUUID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceAggregationId" number:2 type:13 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userAggregationId" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventTimestampInMSSince1970" number:4 type:5 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeInterval" number:5 type:14 subMessageClass:objc_opt_class()];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userAggregationIdRotationTimestampInMs" number:6 type:5 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userAggregationIdExpirationTimestampInMs" number:7 type:5 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"oddIdUUID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceAggregationId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userAggregationId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventTimestampInMSSince1970" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:5 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeInterval_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_54166];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userAggregationIdRotationTimestampInMs" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:5 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userAggregationIdExpirationTimestampInMs" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:5 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __61__BMSiriOnDeviceDigestExperimentMetricsEventMetadata_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 timeInterval];
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

    v8 = [[BMSiriOnDeviceDigestExperimentMetricsEventMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end