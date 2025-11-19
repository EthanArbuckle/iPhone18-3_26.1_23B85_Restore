@interface BMSiriScorecardMetricsEventMetadata
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriScorecardMetricsEventMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriScorecardMetricsEventMetadata)initWithOddId:(id)a3 deviceAggregationId:(id)a4 userAggregationId:(id)a5 eventTimestampInMSSince1970:(id)a6 timeInterval:(id)a7 userAggregationIdRotationTimestampInMs:(id)a8 userAggregationIdExpirationTimestampInMs:(id)a9 eventOrigin:(id)a10 isLongLivedIDUploadDisabled:(id)a11;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriScorecardMetricsEventMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriScorecardMetricsEventMetadata *)self oddId];
    v7 = [v5 oddId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriScorecardMetricsEventMetadata *)self oddId];
      v10 = [v5 oddId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_44;
      }
    }

    v13 = [(BMSiriScorecardMetricsEventMetadata *)self deviceAggregationId];
    v14 = [v5 deviceAggregationId];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriScorecardMetricsEventMetadata *)self deviceAggregationId];
      v17 = [v5 deviceAggregationId];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_44;
      }
    }

    v19 = [(BMSiriScorecardMetricsEventMetadata *)self userAggregationId];
    v20 = [v5 userAggregationId];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMSiriScorecardMetricsEventMetadata *)self userAggregationId];
      v23 = [v5 userAggregationId];
      v24 = [v22 isEqual:v23];

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

      v25 = [(BMSiriScorecardMetricsEventMetadata *)self eventTimestampInMSSince1970];
      if (v25 != [v5 eventTimestampInMSSince1970])
      {
        goto LABEL_44;
      }
    }

    v26 = [(BMSiriScorecardMetricsEventMetadata *)self timeInterval];
    v27 = [v5 timeInterval];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [(BMSiriScorecardMetricsEventMetadata *)self timeInterval];
      v30 = [v5 timeInterval];
      v31 = [v29 isEqual:v30];

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
            v35 = [(BMSiriScorecardMetricsEventMetadata *)self isLongLivedIDUploadDisabled];
            v12 = v35 ^ [v5 isLongLivedIDUploadDisabled] ^ 1;
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
  v3 = [(BMSiriScorecardMetricsEventMetadata *)self oddId];
  v4 = [(BMSiriScorecardMetricsEventMetadata *)self deviceAggregationId];
  v5 = [(BMSiriScorecardMetricsEventMetadata *)self userAggregationId];
  if ([(BMSiriScorecardMetricsEventMetadata *)self hasEventTimestampInMSSince1970])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriScorecardMetricsEventMetadata eventTimestampInMSSince1970](self, "eventTimestampInMSSince1970")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMSiriScorecardMetricsEventMetadata *)self timeInterval];
  v8 = [v7 jsonDictionary];

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
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v11;
  v35[0] = v11;
  v34[1] = @"deviceAggregationId";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v12;
  v35[1] = v12;
  v34[2] = @"userAggregationId";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v3;
  v26 = v13;
  v35[2] = v13;
  v34[3] = @"eventTimestampInMSSince1970";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v4;
  v25 = v14;
  v35[3] = v14;
  v34[4] = @"timeInterval";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v5;
  v35[4] = v15;
  v34[5] = @"userAggregationIdRotationTimestampInMs";
  v16 = v33;
  if (!v33)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = v6;
  v35[5] = v16;
  v34[6] = @"userAggregationIdExpirationTimestampInMs";
  v18 = v32;
  if (!v32)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v8;
  v35[6] = v18;
  v34[7] = @"eventOrigin";
  v20 = v9;
  if (!v9)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v35[7] = v20;
  v34[8] = @"isLongLivedIDUploadDisabled";
  v21 = v10;
  if (!v10)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v35[8] = v21;
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

- (BMSiriScorecardMetricsEventMetadata)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v112[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"oddId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"deviceAggregationId"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v21 = 0;
          goto LABEL_62;
        }

        v89 = self;
        v25 = a4;
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
        *v25 = [v26 initWithDomain:v30 code:2 userInfo:v29];
        self = v89;
        goto LABEL_61;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"userAggregationId"];
    v93 = v8;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
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
        *a4 = v32;
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

    v12 = [v6 objectForKeyedSubscript:@"eventTimestampInMSSince1970"];
    v84 = a4;
    v85 = v11;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v92 = 0;
          v21 = 0;
          goto LABEL_59;
        }

        v80 = v7;
        v39 = v9;
        v40 = self;
        v41 = a4;
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
        *v41 = [v42 initWithDomain:v48 code:2 userInfo:?];
        self = v40;
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

    v13 = [v6 objectForKeyedSubscript:@"timeInterval"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v84)
        {
          v21 = 0;
          goto LABEL_58;
        }

        v81 = objc_alloc(MEMORY[0x1E696ABC0]);
        v83 = v10;
        v49 = *MEMORY[0x1E698F240];
        v103 = *MEMORY[0x1E696A578];
        v50 = self;
        v51 = objc_alloc(MEMORY[0x1E696AEC0]);
        v70 = objc_opt_class();
        v52 = v51;
        self = v50;
        v86 = [v52 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v70, @"timeInterval"];
        v104 = v86;
        v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
        v54 = v49;
        v10 = v83;
        *v84 = [v81 initWithDomain:v54 code:2 userInfo:v53];

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
        if (v84)
        {
          v20 = v20;
          *v84 = v20;
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

    v15 = [v6 objectForKeyedSubscript:@"userAggregationIdRotationTimestampInMs"];
    v82 = v10;
    v76 = v15;
    if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v84)
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
        v57 = self;
        v58 = objc_alloc(MEMORY[0x1E696AEC0]);
        v71 = objc_opt_class();
        v59 = v58;
        self = v57;
        v78 = [v59 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v71, @"userAggregationIdRotationTimestampInMs"];
        v102 = v78;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
        v60 = v56;
        v10 = v82;
        v79 = 0;
        v21 = 0;
        *v84 = [v55 initWithDomain:v60 code:2 userInfo:v17];
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

    v17 = [v6 objectForKeyedSubscript:@"userAggregationIdExpirationTimestampInMs"];
    v7 = v14;
    v87 = self;
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
          if (!v84)
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
          *v84 = v64;
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

    v33 = [v6 objectForKeyedSubscript:@"eventOrigin"];
    v77 = v12;
    if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v84)
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
        *v84 = v66;
        goto LABEL_53;
      }

      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v35 = [v6 objectForKeyedSubscript:@"isLongLivedIDUploadDisabled"];
    if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v84)
        {
          v75 = objc_alloc(MEMORY[0x1E696ABC0]);
          v72 = *MEMORY[0x1E698F240];
          v95 = *MEMORY[0x1E696A578];
          v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isLongLivedIDUploadDisabled"];
          v96 = v67;
          v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
          *v84 = [v75 initWithDomain:v72 code:2 userInfo:v68];
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

    v21 = [(BMSiriScorecardMetricsEventMetadata *)v87 initWithOddId:v93 deviceAggregationId:v82 userAggregationId:v90 eventTimestampInMSSince1970:v92 timeInterval:v86 userAggregationIdRotationTimestampInMs:v79 userAggregationIdExpirationTimestampInMs:v78 eventOrigin:v34 isLongLivedIDUploadDisabled:v36];
    v87 = v21;
LABEL_53:

    v10 = v82;
    v12 = v77;
LABEL_54:

    self = v87;
    goto LABEL_55;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v8 = 0;
    v21 = 0;
    goto LABEL_63;
  }

  v88 = self;
  v22 = a4;
  v23 = objc_alloc(MEMORY[0x1E696ABC0]);
  v24 = *MEMORY[0x1E698F240];
  v111 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"oddId"];
  v112[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:&v111 count:1];
  v8 = 0;
  v21 = 0;
  *v22 = [v23 initWithDomain:v24 code:2 userInfo:v9];
  self = v88;
LABEL_62:

LABEL_63:
  v37 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriScorecardMetricsEventMetadata *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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
    [(BMSiriScorecardMetricsEventMetadataTimeInterval *)self->_timeInterval writeTo:v4];
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v58.receiver = self;
  v58.super_class = BMSiriScorecardMetricsEventMetadata;
  v5 = [(BMEventBase *)&v58 init];
  if (!v5)
  {
    goto LABEL_106;
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
        LOBYTE(v59[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v59 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
              v28 = [v4 position] + 1;
              if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
              {
                v30 = [v4 data];
                [v30 getBytes:v59 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if ([v4 hasError])
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
            v35 = [v4 position] + 1;
            if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
            {
              v37 = [v4 data];
              [v37 getBytes:v59 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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

        v45 = [[BMSiriScorecardMetricsEventMetadataTimeInterval alloc] initByReadFrom:v4];
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
              v42 = [v4 position] + 1;
              if (v42 >= [v4 position] && (v43 = objc_msgSend(v4, "position") + 1, v43 <= objc_msgSend(v4, "length")))
              {
                v44 = [v4 data];
                [v44 getBytes:v59 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if ([v4 hasError])
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
              v50 = [v4 position] + 1;
              if (v50 >= [v4 position] && (v51 = objc_msgSend(v4, "position") + 1, v51 <= objc_msgSend(v4, "length")))
              {
                v52 = [v4 data];
                [v52 getBytes:v59 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if ([v4 hasError])
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
              v19 = [v4 position] + 1;
              if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
              {
                v21 = [v4 data];
                [v21 getBytes:v59 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            v22 = (v18 != 0) & ~[v4 hasError];
LABEL_98:
            v5->_isLongLivedIDUploadDisabled = v22;
            break;
          default:
            goto LABEL_82;
        }
      }

LABEL_103:
      v55 = [v4 position];
    }

    while (v55 < [v4 length]);
  }

  if ([v4 hasError])
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
  v3 = [(BMSiriScorecardMetricsEventMetadata *)self oddId];
  v4 = [(BMSiriScorecardMetricsEventMetadata *)self deviceAggregationId];
  v5 = [(BMSiriScorecardMetricsEventMetadata *)self userAggregationId];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriScorecardMetricsEventMetadata eventTimestampInMSSince1970](self, "eventTimestampInMSSince1970")}];
  v7 = [(BMSiriScorecardMetricsEventMetadata *)self timeInterval];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriScorecardMetricsEventMetadata userAggregationIdRotationTimestampInMs](self, "userAggregationIdRotationTimestampInMs")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMSiriScorecardMetricsEventMetadata userAggregationIdExpirationTimestampInMs](self, "userAggregationIdExpirationTimestampInMs")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriScorecardMetricsEventMetadata eventOrigin](self, "eventOrigin")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriScorecardMetricsEventMetadata isLongLivedIDUploadDisabled](self, "isLongLivedIDUploadDisabled")}];
  v12 = [v14 initWithFormat:@"BMSiriScorecardMetricsEventMetadata with oddId: %@, deviceAggregationId: %@, userAggregationId: %@, eventTimestampInMSSince1970: %@, timeInterval: %@, userAggregationIdRotationTimestampInMs: %@, userAggregationIdExpirationTimestampInMs: %@, eventOrigin: %@, isLongLivedIDUploadDisabled: %@", v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMSiriScorecardMetricsEventMetadata)initWithOddId:(id)a3 deviceAggregationId:(id)a4 userAggregationId:(id)a5 eventTimestampInMSSince1970:(id)a6 timeInterval:(id)a7 userAggregationIdRotationTimestampInMs:(id)a8 userAggregationIdExpirationTimestampInMs:(id)a9 eventOrigin:(id)a10 isLongLivedIDUploadDisabled:(id)a11
{
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v18 = a6;
  v29 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v33.receiver = self;
  v33.super_class = BMSiriScorecardMetricsEventMetadata;
  v23 = [(BMEventBase *)&v33 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v23->_oddId, a3);
    objc_storeStrong(&v23->_deviceAggregationId, a4);
    objc_storeStrong(&v23->_userAggregationId, a5);
    if (v18)
    {
      v23->_hasEventTimestampInMSSince1970 = 1;
      v24 = [v18 unsignedLongLongValue];
    }

    else
    {
      v24 = 0;
      v23->_hasEventTimestampInMSSince1970 = 0;
    }

    v23->_eventTimestampInMSSince1970 = v24;
    objc_storeStrong(&v23->_timeInterval, a7);
    if (v19)
    {
      v23->_hasUserAggregationIdRotationTimestampInMs = 1;
      v25 = [v19 unsignedLongLongValue];
    }

    else
    {
      v25 = 0;
      v23->_hasUserAggregationIdRotationTimestampInMs = 0;
    }

    v23->_userAggregationIdRotationTimestampInMs = v25;
    if (v20)
    {
      v23->_hasUserAggregationIdExpirationTimestampInMs = 1;
      v26 = [v20 unsignedLongLongValue];
    }

    else
    {
      v26 = 0;
      v23->_hasUserAggregationIdExpirationTimestampInMs = 0;
    }

    v23->_userAggregationIdExpirationTimestampInMs = v26;
    if (v21)
    {
      v23->_hasEventOrigin = 1;
      v27 = [v21 intValue];
    }

    else
    {
      v23->_hasEventOrigin = 0;
      v27 = -1;
    }

    v23->_eventOrigin = v27;
    if (v22)
    {
      v23->_hasIsLongLivedIDUploadDisabled = 1;
      v23->_isLongLivedIDUploadDisabled = [v22 BOOLValue];
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