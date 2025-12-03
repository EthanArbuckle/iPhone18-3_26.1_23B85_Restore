@interface BMSiriScorecardMetricsEventMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriScorecardMetricsEventMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriScorecardMetricsEventMetadata)initWithOddId:(id)id deviceAggregationId:(id)aggregationId userAggregationId:(id)userAggregationId eventTimestampInMSSince1970:(id)since1970 timeInterval:(id)interval userAggregationIdRotationTimestampInMs:(id)ms userAggregationIdExpirationTimestampInMs:(id)inMs eventOrigin:(id)self0 isLongLivedIDUploadDisabled:(id)self1;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriScorecardMetricsEventMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    oddId = [(BMSiriScorecardMetricsEventMetadata *)self oddId];
    oddId2 = [v5 oddId];
    v8 = oddId2;
    if (oddId == oddId2)
    {
    }

    else
    {
      oddId3 = [(BMSiriScorecardMetricsEventMetadata *)self oddId];
      oddId4 = [v5 oddId];
      v11 = [oddId3 isEqual:oddId4];

      if (!v11)
      {
        goto LABEL_44;
      }
    }

    deviceAggregationId = [(BMSiriScorecardMetricsEventMetadata *)self deviceAggregationId];
    deviceAggregationId2 = [v5 deviceAggregationId];
    v15 = deviceAggregationId2;
    if (deviceAggregationId == deviceAggregationId2)
    {
    }

    else
    {
      deviceAggregationId3 = [(BMSiriScorecardMetricsEventMetadata *)self deviceAggregationId];
      deviceAggregationId4 = [v5 deviceAggregationId];
      v18 = [deviceAggregationId3 isEqual:deviceAggregationId4];

      if (!v18)
      {
        goto LABEL_44;
      }
    }

    userAggregationId = [(BMSiriScorecardMetricsEventMetadata *)self userAggregationId];
    userAggregationId2 = [v5 userAggregationId];
    v21 = userAggregationId2;
    if (userAggregationId == userAggregationId2)
    {
    }

    else
    {
      userAggregationId3 = [(BMSiriScorecardMetricsEventMetadata *)self userAggregationId];
      userAggregationId4 = [v5 userAggregationId];
      v24 = [userAggregationId3 isEqual:userAggregationId4];

      if (!v24)
      {
        goto LABEL_44;
      }
    }

    if (-[BMSiriScorecardMetricsEventMetadata hasEventTimestampInMSSince1970](self, "hasEventTimestampInMSSince1970") || [v5 hasEventTimestampInMSSince1970])
    {
      if (![(BMSiriScorecardMetricsEventMetadata *)self hasEventTimestampInMSSince1970])
      {
        goto LABEL_44;
      }

      if (![v5 hasEventTimestampInMSSince1970])
      {
        goto LABEL_44;
      }

      eventTimestampInMSSince1970 = [(BMSiriScorecardMetricsEventMetadata *)self eventTimestampInMSSince1970];
      if (eventTimestampInMSSince1970 != [v5 eventTimestampInMSSince1970])
      {
        goto LABEL_44;
      }
    }

    timeInterval = [(BMSiriScorecardMetricsEventMetadata *)self timeInterval];
    timeInterval2 = [v5 timeInterval];
    v28 = timeInterval2;
    if (timeInterval == timeInterval2)
    {
    }

    else
    {
      timeInterval3 = [(BMSiriScorecardMetricsEventMetadata *)self timeInterval];
      timeInterval4 = [v5 timeInterval];
      v31 = [timeInterval3 isEqual:timeInterval4];

      if (!v31)
      {
        goto LABEL_44;
      }
    }

    if (!-[BMSiriScorecardMetricsEventMetadata hasUserAggregationIdRotationTimestampInMs](self, "hasUserAggregationIdRotationTimestampInMs") && ![v5 hasUserAggregationIdRotationTimestampInMs] || -[BMSiriScorecardMetricsEventMetadata hasUserAggregationIdRotationTimestampInMs](self, "hasUserAggregationIdRotationTimestampInMs") && objc_msgSend(v5, "hasUserAggregationIdRotationTimestampInMs") && (v32 = -[BMSiriScorecardMetricsEventMetadata userAggregationIdRotationTimestampInMs](self, "userAggregationIdRotationTimestampInMs"), v32 == objc_msgSend(v5, "userAggregationIdRotationTimestampInMs")))
    {
      if (!-[BMSiriScorecardMetricsEventMetadata hasUserAggregationIdExpirationTimestampInMs](self, "hasUserAggregationIdExpirationTimestampInMs") && ![v5 hasUserAggregationIdExpirationTimestampInMs] || -[BMSiriScorecardMetricsEventMetadata hasUserAggregationIdExpirationTimestampInMs](self, "hasUserAggregationIdExpirationTimestampInMs") && objc_msgSend(v5, "hasUserAggregationIdExpirationTimestampInMs") && (v33 = -[BMSiriScorecardMetricsEventMetadata userAggregationIdExpirationTimestampInMs](self, "userAggregationIdExpirationTimestampInMs"), v33 == objc_msgSend(v5, "userAggregationIdExpirationTimestampInMs")))
      {
        if (!-[BMSiriScorecardMetricsEventMetadata hasEventOrigin](self, "hasEventOrigin") && ![v5 hasEventOrigin] || -[BMSiriScorecardMetricsEventMetadata hasEventOrigin](self, "hasEventOrigin") && objc_msgSend(v5, "hasEventOrigin") && (v34 = -[BMSiriScorecardMetricsEventMetadata eventOrigin](self, "eventOrigin"), v34 == objc_msgSend(v5, "eventOrigin")))
        {
          if (!-[BMSiriScorecardMetricsEventMetadata hasIsLongLivedIDUploadDisabled](self, "hasIsLongLivedIDUploadDisabled") && ![v5 hasIsLongLivedIDUploadDisabled])
          {
            LOBYTE(v12) = 1;
            goto LABEL_45;
          }

          if (-[BMSiriScorecardMetricsEventMetadata hasIsLongLivedIDUploadDisabled](self, "hasIsLongLivedIDUploadDisabled") && [v5 hasIsLongLivedIDUploadDisabled])
          {
            isLongLivedIDUploadDisabled = [(BMSiriScorecardMetricsEventMetadata *)self isLongLivedIDUploadDisabled];
            v12 = isLongLivedIDUploadDisabled ^ [v5 isLongLivedIDUploadDisabled] ^ 1;
LABEL_45:

            goto LABEL_46;
          }
        }
      }
    }

LABEL_44:
    LOBYTE(v12) = 0;
    goto LABEL_45;
  }

  LOBYTE(v12) = 0;
LABEL_46:

  return v12;
}

- (id)jsonDictionary
{
  v35[9] = *MEMORY[0x1E69E9840];
  oddId = [(BMSiriScorecardMetricsEventMetadata *)self oddId];
  deviceAggregationId = [(BMSiriScorecardMetricsEventMetadata *)self deviceAggregationId];
  userAggregationId = [(BMSiriScorecardMetricsEventMetadata *)self userAggregationId];
  if ([(BMSiriScorecardMetricsEventMetadata *)self hasEventTimestampInMSSince1970])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriScorecardMetricsEventMetadata eventTimestampInMSSince1970](self, "eventTimestampInMSSince1970")}];
  }

  else
  {
    v6 = 0;
  }

  timeInterval = [(BMSiriScorecardMetricsEventMetadata *)self timeInterval];
  jsonDictionary = [timeInterval jsonDictionary];

  if ([(BMSiriScorecardMetricsEventMetadata *)self hasUserAggregationIdRotationTimestampInMs])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriScorecardMetricsEventMetadata userAggregationIdRotationTimestampInMs](self, "userAggregationIdRotationTimestampInMs")}];
  }

  else
  {
    v33 = 0;
  }

  if ([(BMSiriScorecardMetricsEventMetadata *)self hasUserAggregationIdExpirationTimestampInMs])
  {
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriScorecardMetricsEventMetadata userAggregationIdExpirationTimestampInMs](self, "userAggregationIdExpirationTimestampInMs")}];
  }

  else
  {
    v32 = 0;
  }

  if ([(BMSiriScorecardMetricsEventMetadata *)self hasEventOrigin])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriScorecardMetricsEventMetadata eventOrigin](self, "eventOrigin")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMSiriScorecardMetricsEventMetadata *)self hasIsLongLivedIDUploadDisabled])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriScorecardMetricsEventMetadata isLongLivedIDUploadDisabled](self, "isLongLivedIDUploadDisabled")}];
  }

  else
  {
    v10 = 0;
  }

  v34[0] = @"oddId";
  null = oddId;
  if (!oddId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null;
  v35[0] = null;
  v34[1] = @"deviceAggregationId";
  null2 = deviceAggregationId;
  if (!deviceAggregationId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null2;
  v35[1] = null2;
  v34[2] = @"userAggregationId";
  null3 = userAggregationId;
  if (!userAggregationId)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = oddId;
  v26 = null3;
  v35[2] = null3;
  v34[3] = @"eventTimestampInMSSince1970";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = deviceAggregationId;
  v25 = null4;
  v35[3] = null4;
  v34[4] = @"timeInterval";
  null5 = jsonDictionary;
  if (!jsonDictionary)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = userAggregationId;
  v35[4] = null5;
  v34[5] = @"userAggregationIdRotationTimestampInMs";
  null6 = v33;
  if (!v33)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = v6;
  v35[5] = null6;
  v34[6] = @"userAggregationIdExpirationTimestampInMs";
  null7 = v32;
  if (!v32)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = jsonDictionary;
  v35[6] = null7;
  v34[7] = @"eventOrigin";
  null8 = v9;
  if (!v9)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v35[7] = null8;
  v34[8] = @"isLongLivedIDUploadDisabled";
  null9 = v10;
  if (!v10)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v35[8] = null9;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:9];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_36;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_36;
    }
  }

LABEL_36:
  if (!v32)
  {
  }

  if (!v33)
  {
  }

  if (!v19)
  {
  }

  if (!v17)
  {
  }

  if (v29)
  {
    if (v30)
    {
      goto LABEL_46;
    }

LABEL_53:

    if (v31)
    {
      goto LABEL_47;
    }

    goto LABEL_54;
  }

  if (!v30)
  {
    goto LABEL_53;
  }

LABEL_46:
  if (v31)
  {
    goto LABEL_47;
  }

LABEL_54:

LABEL_47:
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (BMSiriScorecardMetricsEventMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v112[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"oddId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"deviceAggregationId"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          v21 = 0;
          goto LABEL_62;
        }

        selfCopy = self;
        errorCopy = error;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v109 = *MEMORY[0x1E696A578];
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceAggregationId"];
        v110 = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
        v30 = v27;
        v11 = v29;
        v10 = 0;
        v21 = 0;
        *errorCopy = [v26 initWithDomain:v30 code:2 userInfo:v29];
        self = selfCopy;
        goto LABEL_61;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"userAggregationId"];
    v93 = v8;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v28 = 0;
          v21 = 0;
          goto LABEL_61;
        }

        v91 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v107 = *MEMORY[0x1E696A578];
        v92 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userAggregationId"];
        v108 = v92;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
        v32 = [v91 initWithDomain:v31 code:2 userInfo:v12];
        v28 = 0;
        v21 = 0;
        *error = v32;
LABEL_60:

        v8 = v93;
LABEL_61:

        goto LABEL_62;
      }

      v90 = v11;
    }

    else
    {
      v90 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"eventTimestampInMSSince1970"];
    errorCopy2 = error;
    v85 = v11;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v92 = 0;
          v21 = 0;
          goto LABEL_59;
        }

        v80 = v7;
        v39 = v9;
        selfCopy2 = self;
        errorCopy3 = error;
        v42 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = *MEMORY[0x1E698F240];
        v105 = *MEMORY[0x1E696A578];
        v44 = v10;
        v45 = objc_alloc(MEMORY[0x1E696AEC0]);
        v69 = objc_opt_class();
        v46 = v45;
        v10 = v44;
        v19 = [v46 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v69, @"eventTimestampInMSSince1970"];
        v106 = v19;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
        v48 = v43;
        v11 = v85;
        v86 = v47;
        v92 = 0;
        v21 = 0;
        *errorCopy3 = [v42 initWithDomain:v48 code:2 userInfo:?];
        self = selfCopy2;
        v9 = v39;
        v7 = v80;
        goto LABEL_57;
      }

      v92 = v12;
    }

    else
    {
      v92 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"timeInterval"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy2)
        {
          v21 = 0;
          goto LABEL_58;
        }

        v81 = objc_alloc(MEMORY[0x1E696ABC0]);
        v83 = v10;
        v49 = *MEMORY[0x1E698F240];
        v103 = *MEMORY[0x1E696A578];
        selfCopy3 = self;
        v51 = objc_alloc(MEMORY[0x1E696AEC0]);
        v70 = objc_opt_class();
        v52 = v51;
        self = selfCopy3;
        v86 = [v52 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v70, @"timeInterval"];
        v104 = v86;
        v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
        v54 = v49;
        v10 = v83;
        *errorCopy2 = [v81 initWithDomain:v54 code:2 userInfo:v53];

        v21 = 0;
        v19 = v13;
LABEL_57:

        v13 = v19;
LABEL_58:

LABEL_59:
        v28 = v90;
        goto LABEL_60;
      }

      v19 = v13;
      v94 = 0;
      v86 = [[BMSiriScorecardMetricsEventMetadataTimeInterval alloc] initWithJSONDictionary:v19 error:&v94];
      v20 = v94;
      if (v20)
      {
        if (errorCopy2)
        {
          v20 = v20;
          *errorCopy2 = v20;
        }

        v21 = 0;
        goto LABEL_57;
      }

      v73 = v13;
      v14 = v7;
    }

    else
    {
      v73 = v13;
      v14 = v7;
      v86 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"userAggregationIdRotationTimestampInMs"];
    v82 = v10;
    v76 = v15;
    if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy2)
        {
          v79 = 0;
          v21 = 0;
          v7 = v14;
          v18 = v73;
          goto LABEL_56;
        }

        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v56 = *MEMORY[0x1E698F240];
        v101 = *MEMORY[0x1E696A578];
        selfCopy4 = self;
        v58 = objc_alloc(MEMORY[0x1E696AEC0]);
        v71 = objc_opt_class();
        v59 = v58;
        self = selfCopy4;
        v78 = [v59 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v71, @"userAggregationIdRotationTimestampInMs"];
        v102 = v78;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
        v60 = v56;
        v10 = v82;
        v79 = 0;
        v21 = 0;
        *errorCopy2 = [v55 initWithDomain:v60 code:2 userInfo:v17];
        v7 = v14;
        v18 = v73;
LABEL_55:

        v11 = v85;
LABEL_56:

        v19 = v18;
        goto LABEL_57;
      }

      v79 = v16;
    }

    else
    {
      v79 = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"userAggregationIdExpirationTimestampInMs"];
    v7 = v14;
    selfCopy5 = self;
    if (v17)
    {
      objc_opt_class();
      v18 = v73;
      if (objc_opt_isKindOfClass())
      {
        v78 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy2)
          {
            v78 = 0;
            v21 = 0;
            goto LABEL_55;
          }

          v61 = objc_alloc(MEMORY[0x1E696ABC0]);
          v62 = *MEMORY[0x1E698F240];
          v99 = *MEMORY[0x1E696A578];
          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"userAggregationIdExpirationTimestampInMs"];
          v100 = v34;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
          v63 = v61;
          v10 = v82;
          v64 = [v63 initWithDomain:v62 code:2 userInfo:v33];
          v78 = 0;
          v21 = 0;
          *errorCopy2 = v64;
          goto LABEL_54;
        }

        v78 = v17;
      }
    }

    else
    {
      v78 = 0;
      v18 = v73;
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"eventOrigin"];
    v77 = v12;
    if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy2)
        {
          v34 = 0;
          v21 = 0;
          goto LABEL_54;
        }

        v74 = objc_alloc(MEMORY[0x1E696ABC0]);
        v65 = *MEMORY[0x1E698F240];
        v97 = *MEMORY[0x1E696A578];
        v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"eventOrigin"];
        v98 = v36;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
        v66 = [v74 initWithDomain:v65 code:2 userInfo:v35];
        v34 = 0;
        v21 = 0;
        *errorCopy2 = v66;
        goto LABEL_53;
      }

      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"isLongLivedIDUploadDisabled"];
    if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy2)
        {
          v75 = objc_alloc(MEMORY[0x1E696ABC0]);
          v72 = *MEMORY[0x1E698F240];
          v95 = *MEMORY[0x1E696A578];
          v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isLongLivedIDUploadDisabled"];
          v96 = v67;
          v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
          *errorCopy2 = [v75 initWithDomain:v72 code:2 userInfo:v68];
        }

        v36 = 0;
        v21 = 0;
        goto LABEL_53;
      }

      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    v21 = [(BMSiriScorecardMetricsEventMetadata *)selfCopy5 initWithOddId:v93 deviceAggregationId:v82 userAggregationId:v90 eventTimestampInMSSince1970:v92 timeInterval:v86 userAggregationIdRotationTimestampInMs:v79 userAggregationIdExpirationTimestampInMs:v78 eventOrigin:v34 isLongLivedIDUploadDisabled:v36];
    selfCopy5 = v21;
LABEL_53:

    v10 = v82;
    v12 = v77;
LABEL_54:

    self = selfCopy5;
    goto LABEL_55;
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
    goto LABEL_63;
  }

  selfCopy6 = self;
  errorCopy4 = error;
  v23 = objc_alloc(MEMORY[0x1E696ABC0]);
  v24 = *MEMORY[0x1E698F240];
  v111 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"oddId"];
  v112[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:&v111 count:1];
  v8 = 0;
  v21 = 0;
  *errorCopy4 = [v23 initWithDomain:v24 code:2 userInfo:v9];
  self = selfCopy6;
LABEL_62:

LABEL_63:
  v37 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriScorecardMetricsEventMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_oddId)
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
    [(BMSiriScorecardMetricsEventMetadataTimeInterval *)self->_timeInterval writeTo:toCopy];
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

  if (self->_hasEventOrigin)
  {
    eventOrigin = self->_eventOrigin;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasIsLongLivedIDUploadDisabled)
  {
    isLongLivedIDUploadDisabled = self->_isLongLivedIDUploadDisabled;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v58.receiver = self;
  v58.super_class = BMSiriScorecardMetricsEventMetadata;
  v5 = [(BMEventBase *)&v58 init];
  if (!v5)
  {
    goto LABEL_106;
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
        LOBYTE(v59[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v59 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v59[0] & 0x7F) << v7;
        if ((v59[0] & 0x80) == 0)
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
      if ((v14 >> 3) <= 4)
      {
        if (v15 > 2)
        {
          if (v15 != 3)
          {
            if (v15 != 4)
            {
              goto LABEL_82;
            }

            v25 = 0;
            v26 = 0;
            v27 = 0;
            v5->_hasEventTimestampInMSSince1970 = 1;
            while (1)
            {
              LOBYTE(v59[0]) = 0;
              v28 = [fromCopy position] + 1;
              if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:v59 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v27 = (((v59[0] & 0x7F) << v25) | v27);
              if ((v59[0] & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v13 = v26++ >= 9;
              if (v13)
              {
                v31 = 0;
                goto LABEL_87;
              }
            }

            if ([fromCopy hasError])
            {
              v31 = 0;
            }

            else
            {
              v31 = v27;
            }

LABEL_87:
            v54 = 56;
            goto LABEL_96;
          }

          v23 = PBReaderReadString();
          v24 = 48;
        }

        else if (v15 == 1)
        {
          v23 = PBReaderReadString();
          v24 = 32;
        }

        else
        {
          if (v15 != 2)
          {
            goto LABEL_82;
          }

          v23 = PBReaderReadString();
          v24 = 40;
        }

        v38 = *(&v5->super.super.isa + v24);
        *(&v5->super.super.isa + v24) = v23;
      }

      else if (v15 <= 6)
      {
        if (v15 != 5)
        {
          if (v15 != 6)
          {
LABEL_82:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_105;
            }

            goto LABEL_103;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v5->_hasUserAggregationIdRotationTimestampInMs = 1;
          while (1)
          {
            LOBYTE(v59[0]) = 0;
            v35 = [fromCopy position] + 1;
            if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:v59 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v34 = (((v59[0] & 0x7F) << v32) | v34);
            if ((v59[0] & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v13 = v33++ >= 9;
            if (v13)
            {
              v31 = 0;
              goto LABEL_91;
            }
          }

          if ([fromCopy hasError])
          {
            v31 = 0;
          }

          else
          {
            v31 = v34;
          }

LABEL_91:
          v54 = 72;
          goto LABEL_96;
        }

        v59[0] = 0;
        v59[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_105;
        }

        v45 = [[BMSiriScorecardMetricsEventMetadataTimeInterval alloc] initByReadFrom:fromCopy];
        if (!v45)
        {
          goto LABEL_105;
        }

        timeInterval = v5->_timeInterval;
        v5->_timeInterval = v45;

        PBReaderRecallMark();
      }

      else
      {
        switch(v15)
        {
          case 7:
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v5->_hasUserAggregationIdExpirationTimestampInMs = 1;
            while (1)
            {
              LOBYTE(v59[0]) = 0;
              v42 = [fromCopy position] + 1;
              if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 1, v43 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:v59 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v41 = (((v59[0] & 0x7F) << v39) | v41);
              if ((v59[0] & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v13 = v40++ >= 9;
              if (v13)
              {
                v31 = 0;
                goto LABEL_95;
              }
            }

            if ([fromCopy hasError])
            {
              v31 = 0;
            }

            else
            {
              v31 = v41;
            }

LABEL_95:
            v54 = 80;
LABEL_96:
            *(&v5->super.super.isa + v54) = v31;
            break;
          case 8:
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v5->_hasEventOrigin = 1;
            while (1)
            {
              LOBYTE(v59[0]) = 0;
              v50 = [fromCopy position] + 1;
              if (v50 >= [fromCopy position] && (v51 = objc_msgSend(fromCopy, "position") + 1, v51 <= objc_msgSend(fromCopy, "length")))
              {
                data5 = [fromCopy data];
                [data5 getBytes:v59 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v49 |= (v59[0] & 0x7F) << v47;
              if ((v59[0] & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v13 = v48++ >= 9;
              if (v13)
              {
                v53 = 0;
                goto LABEL_102;
              }
            }

            if ([fromCopy hasError])
            {
              v53 = 0;
            }

            else
            {
              v53 = v49;
            }

LABEL_102:
            v5->_eventOrigin = v53;
            break;
          case 9:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v5->_hasIsLongLivedIDUploadDisabled = 1;
            while (1)
            {
              LOBYTE(v59[0]) = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data6 = [fromCopy data];
                [data6 getBytes:v59 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v59[0] & 0x7F) << v16;
              if ((v59[0] & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v13 = v17++ >= 9;
              if (v13)
              {
                LOBYTE(v22) = 0;
                goto LABEL_98;
              }
            }

            v22 = (v18 != 0) & ~[fromCopy hasError];
LABEL_98:
            v5->_isLongLivedIDUploadDisabled = v22;
            break;
          default:
            goto LABEL_82;
        }
      }

LABEL_103:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_105:
    v56 = 0;
  }

  else
  {
LABEL_106:
    v56 = v5;
  }

  return v56;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  oddId = [(BMSiriScorecardMetricsEventMetadata *)self oddId];
  deviceAggregationId = [(BMSiriScorecardMetricsEventMetadata *)self deviceAggregationId];
  userAggregationId = [(BMSiriScorecardMetricsEventMetadata *)self userAggregationId];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriScorecardMetricsEventMetadata eventTimestampInMSSince1970](self, "eventTimestampInMSSince1970")}];
  timeInterval = [(BMSiriScorecardMetricsEventMetadata *)self timeInterval];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriScorecardMetricsEventMetadata userAggregationIdRotationTimestampInMs](self, "userAggregationIdRotationTimestampInMs")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriScorecardMetricsEventMetadata userAggregationIdExpirationTimestampInMs](self, "userAggregationIdExpirationTimestampInMs")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriScorecardMetricsEventMetadata eventOrigin](self, "eventOrigin")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriScorecardMetricsEventMetadata isLongLivedIDUploadDisabled](self, "isLongLivedIDUploadDisabled")}];
  v12 = [v14 initWithFormat:@"BMSiriScorecardMetricsEventMetadata with oddId: %@, deviceAggregationId: %@, userAggregationId: %@, eventTimestampInMSSince1970: %@, timeInterval: %@, userAggregationIdRotationTimestampInMs: %@, userAggregationIdExpirationTimestampInMs: %@, eventOrigin: %@, isLongLivedIDUploadDisabled: %@", oddId, deviceAggregationId, userAggregationId, v6, timeInterval, v8, v9, v10, v11];

  return v12;
}

- (BMSiriScorecardMetricsEventMetadata)initWithOddId:(id)id deviceAggregationId:(id)aggregationId userAggregationId:(id)userAggregationId eventTimestampInMSSince1970:(id)since1970 timeInterval:(id)interval userAggregationIdRotationTimestampInMs:(id)ms userAggregationIdExpirationTimestampInMs:(id)inMs eventOrigin:(id)self0 isLongLivedIDUploadDisabled:(id)self1
{
  idCopy = id;
  aggregationIdCopy = aggregationId;
  userAggregationIdCopy = userAggregationId;
  since1970Copy = since1970;
  intervalCopy = interval;
  msCopy = ms;
  inMsCopy = inMs;
  originCopy = origin;
  disabledCopy = disabled;
  v33.receiver = self;
  v33.super_class = BMSiriScorecardMetricsEventMetadata;
  v23 = [(BMEventBase *)&v33 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v23->_oddId, id);
    objc_storeStrong(&v23->_deviceAggregationId, aggregationId);
    objc_storeStrong(&v23->_userAggregationId, userAggregationId);
    if (since1970Copy)
    {
      v23->_hasEventTimestampInMSSince1970 = 1;
      unsignedLongLongValue = [since1970Copy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v23->_hasEventTimestampInMSSince1970 = 0;
    }

    v23->_eventTimestampInMSSince1970 = unsignedLongLongValue;
    objc_storeStrong(&v23->_timeInterval, interval);
    if (msCopy)
    {
      v23->_hasUserAggregationIdRotationTimestampInMs = 1;
      unsignedLongLongValue2 = [msCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue2 = 0;
      v23->_hasUserAggregationIdRotationTimestampInMs = 0;
    }

    v23->_userAggregationIdRotationTimestampInMs = unsignedLongLongValue2;
    if (inMsCopy)
    {
      v23->_hasUserAggregationIdExpirationTimestampInMs = 1;
      unsignedLongLongValue3 = [inMsCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue3 = 0;
      v23->_hasUserAggregationIdExpirationTimestampInMs = 0;
    }

    v23->_userAggregationIdExpirationTimestampInMs = unsignedLongLongValue3;
    if (originCopy)
    {
      v23->_hasEventOrigin = 1;
      intValue = [originCopy intValue];
    }

    else
    {
      v23->_hasEventOrigin = 0;
      intValue = -1;
    }

    v23->_eventOrigin = intValue;
    if (disabledCopy)
    {
      v23->_hasIsLongLivedIDUploadDisabled = 1;
      v23->_isLongLivedIDUploadDisabled = [disabledCopy BOOLValue];
    }

    else
    {
      v23->_hasIsLongLivedIDUploadDisabled = 0;
      v23->_isLongLivedIDUploadDisabled = 0;
    }
  }

  return v23;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"oddId" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceAggregationId" number:2 type:13 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userAggregationId" number:3 type:13 subMessageClass:0];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventTimestampInMSSince1970" number:4 type:5 subMessageClass:0];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeInterval" number:5 type:14 subMessageClass:objc_opt_class()];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userAggregationIdRotationTimestampInMs" number:6 type:5 subMessageClass:0];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userAggregationIdExpirationTimestampInMs" number:7 type:5 subMessageClass:0];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventOrigin" number:8 type:2 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isLongLivedIDUploadDisabled" number:9 type:12 subMessageClass:0];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"oddId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceAggregationId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userAggregationId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventTimestampInMSSince1970" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:5 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeInterval_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_108306];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userAggregationIdRotationTimestampInMs" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:5 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userAggregationIdExpirationTimestampInMs" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:5 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventOrigin" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isLongLivedIDUploadDisabled" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v14[0] = v2;
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v14[4] = v6;
  v14[5] = v7;
  v14[6] = v8;
  v14[7] = v9;
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __46__BMSiriScorecardMetricsEventMetadata_columns__block_invoke(uint64_t a1, void *a2)
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

    v8 = [[BMSiriScorecardMetricsEventMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end