@interface BMAppEventEngagement
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppEventEngagement)initWithAppId:(id)id purchased:(id)purchased priceBucket:(id)bucket usage:(id)usage frequency:(id)frequency recency:(id)recency normalizedUsage:(id)normalizedUsage eventImpression:(id)self0 eventClick:(id)self1 appIsDownloaded:(id)self2;
- (BMAppEventEngagement)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppEventEngagement

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    appId = [(BMAppEventEngagement *)self appId];
    appId2 = [v5 appId];
    v8 = appId2;
    if (appId == appId2)
    {
    }

    else
    {
      appId3 = [(BMAppEventEngagement *)self appId];
      appId4 = [v5 appId];
      v11 = [appId3 isEqual:appId4];

      if (!v11)
      {
        goto LABEL_52;
      }
    }

    if (!-[BMAppEventEngagement hasPurchased](self, "hasPurchased") && ![v5 hasPurchased] || -[BMAppEventEngagement hasPurchased](self, "hasPurchased") && objc_msgSend(v5, "hasPurchased") && (v13 = -[BMAppEventEngagement purchased](self, "purchased"), v13 == objc_msgSend(v5, "purchased")))
    {
      if (!-[BMAppEventEngagement hasPriceBucket](self, "hasPriceBucket") && ![v5 hasPriceBucket] || -[BMAppEventEngagement hasPriceBucket](self, "hasPriceBucket") && objc_msgSend(v5, "hasPriceBucket") && (-[BMAppEventEngagement priceBucket](self, "priceBucket"), v15 = v14, objc_msgSend(v5, "priceBucket"), v15 == v16))
      {
        if (!-[BMAppEventEngagement hasUsage](self, "hasUsage") && ![v5 hasUsage] || -[BMAppEventEngagement hasUsage](self, "hasUsage") && objc_msgSend(v5, "hasUsage") && (-[BMAppEventEngagement usage](self, "usage"), v18 = v17, objc_msgSend(v5, "usage"), v18 == v19))
        {
          if (!-[BMAppEventEngagement hasFrequency](self, "hasFrequency") && ![v5 hasFrequency] || -[BMAppEventEngagement hasFrequency](self, "hasFrequency") && objc_msgSend(v5, "hasFrequency") && (-[BMAppEventEngagement frequency](self, "frequency"), v21 = v20, objc_msgSend(v5, "frequency"), v21 == v22))
          {
            if (!-[BMAppEventEngagement hasRecency](self, "hasRecency") && ![v5 hasRecency] || -[BMAppEventEngagement hasRecency](self, "hasRecency") && objc_msgSend(v5, "hasRecency") && (-[BMAppEventEngagement recency](self, "recency"), v24 = v23, objc_msgSend(v5, "recency"), v24 == v25))
            {
              if (!-[BMAppEventEngagement hasNormalizedUsage](self, "hasNormalizedUsage") && ![v5 hasNormalizedUsage] || -[BMAppEventEngagement hasNormalizedUsage](self, "hasNormalizedUsage") && objc_msgSend(v5, "hasNormalizedUsage") && (-[BMAppEventEngagement normalizedUsage](self, "normalizedUsage"), v27 = v26, objc_msgSend(v5, "normalizedUsage"), v27 == v28))
              {
                if (!-[BMAppEventEngagement hasEventImpression](self, "hasEventImpression") && ![v5 hasEventImpression] || -[BMAppEventEngagement hasEventImpression](self, "hasEventImpression") && objc_msgSend(v5, "hasEventImpression") && (v29 = -[BMAppEventEngagement eventImpression](self, "eventImpression"), v29 == objc_msgSend(v5, "eventImpression")))
                {
                  if (!-[BMAppEventEngagement hasEventClick](self, "hasEventClick") && ![v5 hasEventClick] || -[BMAppEventEngagement hasEventClick](self, "hasEventClick") && objc_msgSend(v5, "hasEventClick") && (v30 = -[BMAppEventEngagement eventClick](self, "eventClick"), v30 == objc_msgSend(v5, "eventClick")))
                  {
                    if (!-[BMAppEventEngagement hasAppIsDownloaded](self, "hasAppIsDownloaded") && ![v5 hasAppIsDownloaded])
                    {
                      LOBYTE(v12) = 1;
                      goto LABEL_53;
                    }

                    if (-[BMAppEventEngagement hasAppIsDownloaded](self, "hasAppIsDownloaded") && [v5 hasAppIsDownloaded])
                    {
                      appIsDownloaded = [(BMAppEventEngagement *)self appIsDownloaded];
                      v12 = appIsDownloaded ^ [v5 appIsDownloaded] ^ 1;
LABEL_53:

                      goto LABEL_54;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_52:
    LOBYTE(v12) = 0;
    goto LABEL_53;
  }

  LOBYTE(v12) = 0;
LABEL_54:

  return v12;
}

- (id)jsonDictionary
{
  v45[10] = *MEMORY[0x1E69E9840];
  appId = [(BMAppEventEngagement *)self appId];
  if ([(BMAppEventEngagement *)self hasPurchased])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppEventEngagement purchased](self, "purchased")}];
  }

  else
  {
    v4 = 0;
  }

  if (![(BMAppEventEngagement *)self hasPriceBucket]|| ([(BMAppEventEngagement *)self priceBucket], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMAppEventEngagement *)self priceBucket];
    v6 = MEMORY[0x1E696AD98];
    [(BMAppEventEngagement *)self priceBucket];
    v7 = [v6 numberWithDouble:?];
  }

  if (![(BMAppEventEngagement *)self hasUsage]|| ([(BMAppEventEngagement *)self usage], fabs(v8) == INFINITY))
  {
    v10 = 0;
  }

  else
  {
    [(BMAppEventEngagement *)self usage];
    v9 = MEMORY[0x1E696AD98];
    [(BMAppEventEngagement *)self usage];
    v10 = [v9 numberWithDouble:?];
  }

  if (![(BMAppEventEngagement *)self hasFrequency]|| ([(BMAppEventEngagement *)self frequency], fabs(v11) == INFINITY))
  {
    v13 = 0;
  }

  else
  {
    [(BMAppEventEngagement *)self frequency];
    v12 = MEMORY[0x1E696AD98];
    [(BMAppEventEngagement *)self frequency];
    v13 = [v12 numberWithDouble:?];
  }

  if (![(BMAppEventEngagement *)self hasRecency]|| ([(BMAppEventEngagement *)self recency], fabs(v14) == INFINITY))
  {
    v43 = 0;
  }

  else
  {
    [(BMAppEventEngagement *)self recency];
    v15 = MEMORY[0x1E696AD98];
    [(BMAppEventEngagement *)self recency];
    v43 = [v15 numberWithDouble:?];
  }

  if (![(BMAppEventEngagement *)self hasNormalizedUsage]|| ([(BMAppEventEngagement *)self normalizedUsage], fabs(v16) == INFINITY))
  {
    v42 = 0;
  }

  else
  {
    [(BMAppEventEngagement *)self normalizedUsage];
    v17 = MEMORY[0x1E696AD98];
    [(BMAppEventEngagement *)self normalizedUsage];
    v42 = [v17 numberWithDouble:?];
  }

  if ([(BMAppEventEngagement *)self hasEventImpression])
  {
    v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppEventEngagement eventImpression](self, "eventImpression")}];
  }

  else
  {
    v41 = 0;
  }

  if ([(BMAppEventEngagement *)self hasEventClick])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppEventEngagement eventClick](self, "eventClick")}];
  }

  else
  {
    v18 = 0;
  }

  if ([(BMAppEventEngagement *)self hasAppIsDownloaded])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppEventEngagement appIsDownloaded](self, "appIsDownloaded")}];
  }

  else
  {
    v19 = 0;
  }

  v44[0] = @"appId";
  null = appId;
  if (!appId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null;
  v45[0] = null;
  v44[1] = @"purchased";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null2;
  v45[1] = null2;
  v44[2] = @"priceBucket";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = appId;
  v34 = null3;
  v45[2] = null3;
  v44[3] = @"usage";
  null4 = v10;
  if (!v10)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v4;
  v33 = null4;
  v45[3] = null4;
  v44[4] = @"frequency";
  null5 = v13;
  if (!v13)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v7;
  v45[4] = null5;
  v44[5] = @"recency";
  null6 = v43;
  if (!v43)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v10;
  v45[5] = null6;
  v44[6] = @"normalizedUsage";
  null7 = v42;
  if (!v42)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v45[6] = null7;
  v44[7] = @"eventImpression";
  null8 = v41;
  if (!v41)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v45[7] = null8;
  v44[8] = @"eventClick";
  null9 = v18;
  if (!v18)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v45[8] = null9;
  v44[9] = @"appIsDownloaded";
  null10 = v19;
  if (!v19)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v45[9] = null10;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:10];
  if (v19)
  {
    if (v18)
    {
      goto LABEL_55;
    }
  }

  else
  {

    if (v18)
    {
      goto LABEL_55;
    }
  }

LABEL_55:
  if (!v41)
  {
  }

  if (!v42)
  {
  }

  if (!v43)
  {
  }

  if (!v13)
  {
  }

  if (!v37)
  {
  }

  if (v38)
  {
    if (v39)
    {
      goto LABEL_67;
    }

LABEL_74:

    if (v40)
    {
      goto LABEL_68;
    }

    goto LABEL_75;
  }

  if (!v39)
  {
    goto LABEL_74;
  }

LABEL_67:
  if (v40)
  {
    goto LABEL_68;
  }

LABEL_75:

LABEL_68:
  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (BMAppEventEngagement)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v135[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"appId"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v113 = 0;
LABEL_4:
    v7 = [dictionaryCopy objectForKeyedSubscript:@"purchased"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v8 = 0;
          v28 = 0;
          v31 = v113;
          goto LABEL_50;
        }

        errorCopy = error;
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v132 = *MEMORY[0x1E696A578];
        v31 = v113;
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"purchased"];
        v133 = v22;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
        v41 = v39;
        v9 = v40;
        v8 = 0;
        v28 = 0;
        *errorCopy = [v38 initWithDomain:v41 code:2 userInfo:v40];
        goto LABEL_49;
      }

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"priceBucket"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v22 = 0;
          v28 = 0;
          v31 = v113;
          goto LABEL_49;
        }

        v112 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v43 = *MEMORY[0x1E698F240];
        v130 = *MEMORY[0x1E696A578];
        v44 = v8;
        v45 = objc_alloc(MEMORY[0x1E696AEC0]);
        v89 = objc_opt_class();
        v46 = v45;
        v8 = v44;
        v47 = [v46 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v89, @"priceBucket"];
        v131 = v47;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
        v28 = 0;
        *errorCopy2 = [v112 initWithDomain:v43 code:2 userInfo:v29];
        v19 = v47;
        v22 = 0;
        v31 = v113;
LABEL_48:

LABEL_49:
        goto LABEL_50;
      }

      v10 = v6;
      v11 = v7;
      v12 = v9;
    }

    else
    {
      v10 = v6;
      v11 = v7;
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"usage"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v28 = 0;
          v31 = v113;
          v29 = v13;
          v22 = v12;
          v7 = v11;
          v6 = v10;
          v19 = 0;
          goto LABEL_48;
        }

        errorCopy3 = error;
        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v97 = v9;
        v49 = *MEMORY[0x1E698F240];
        v128 = *MEMORY[0x1E696A578];
        v50 = v8;
        v51 = objc_alloc(MEMORY[0x1E696AEC0]);
        v90 = objc_opt_class();
        v52 = v51;
        v8 = v50;
        v110 = [v52 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v90, @"usage"];
        v129 = v110;
        v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
        v54 = v48;
        v29 = v13;
        v55 = v49;
        v9 = v97;
        v108 = v53;
        v28 = 0;
        *errorCopy3 = [v54 initWithDomain:v55 code:2 userInfo:?];
        v31 = v113;
        v22 = v12;
        v7 = v11;
        v6 = v10;
        v19 = 0;
        goto LABEL_47;
      }

      v106 = v13;
      v111 = v13;
    }

    else
    {
      v106 = v13;
      v111 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"frequency"];
    v108 = v14;
    if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v110 = 0;
          v28 = 0;
          v29 = v106;
          v22 = v12;
          v7 = v11;
          v6 = v10;
          v19 = v111;
          v31 = v113;
          goto LABEL_47;
        }

        errorCopy4 = error;
        v56 = objc_alloc(MEMORY[0x1E696ABC0]);
        v57 = v9;
        v58 = *MEMORY[0x1E698F240];
        v126 = *MEMORY[0x1E696A578];
        v59 = v8;
        v60 = objc_alloc(MEMORY[0x1E696AEC0]);
        v91 = objc_opt_class();
        v61 = v60;
        v8 = v59;
        v107 = [v61 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v91, @"frequency"];
        v127 = v107;
        v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
        v63 = v58;
        v9 = v57;
        v105 = v62;
        v110 = 0;
        v28 = 0;
        *errorCopy4 = [v56 initWithDomain:v63 code:2 userInfo:?];
        v29 = v106;
        v22 = v12;
        v7 = v11;
        v6 = v10;
        v19 = v111;
        v31 = v113;
LABEL_46:

LABEL_47:
        goto LABEL_48;
      }

      v110 = v15;
    }

    else
    {
      v110 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"recency"];
    v109 = v12;
    v105 = v16;
    if (v16)
    {
      v17 = v16;
      objc_opt_class();
      v7 = v11;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        v6 = v10;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v107 = 0;
            v28 = 0;
            v19 = v111;
            v31 = v113;
            v29 = v106;
            v22 = v109;
            goto LABEL_46;
          }

          errorCopy5 = error;
          v65 = objc_alloc(MEMORY[0x1E696ABC0]);
          v66 = v9;
          v67 = *MEMORY[0x1E698F240];
          v124 = *MEMORY[0x1E696A578];
          v68 = v8;
          v69 = objc_alloc(MEMORY[0x1E696AEC0]);
          v92 = objc_opt_class();
          v70 = v69;
          v8 = v68;
          v104 = [v70 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v92, @"recency"];
          v125 = v104;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
          v71 = v67;
          v9 = v66;
          v107 = 0;
          v28 = 0;
          *errorCopy5 = [v65 initWithDomain:v71 code:2 userInfo:v30];
          v29 = v106;
          v19 = v111;
          goto LABEL_92;
        }

        v107 = v17;
LABEL_29:
        v18 = [dictionaryCopy objectForKeyedSubscript:@"normalizedUsage"];
        v19 = v111;
        errorCopy6 = error;
        v98 = v18;
        if (!v18 || (v20 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v104 = 0;
LABEL_32:
          v21 = [dictionaryCopy objectForKeyedSubscript:@"eventImpression"];
          v22 = v109;
          v99 = v8;
          if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
              {
                v103 = 0;
                v28 = 0;
                goto LABEL_44;
              }

              v80 = v9;
              v81 = objc_alloc(MEMORY[0x1E696ABC0]);
              v82 = *MEMORY[0x1E698F240];
              v120 = *MEMORY[0x1E696A578];
              v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"eventImpression"];
              v121 = v25;
              v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
              v83 = v81;
              v9 = v80;
              v19 = v111;
              v84 = [v83 initWithDomain:v82 code:2 userInfo:v23];
              v103 = 0;
              v28 = 0;
              *errorCopy6 = v84;
              goto LABEL_43;
            }

            v103 = v21;
          }

          else
          {
            v103 = 0;
          }

          v23 = [dictionaryCopy objectForKeyedSubscript:@"eventClick"];
          v96 = v9;
          if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
              {
                v25 = 0;
                v28 = 0;
                goto LABEL_43;
              }

              selfCopy3 = self;
              v94 = objc_alloc(MEMORY[0x1E696ABC0]);
              v85 = *MEMORY[0x1E698F240];
              v118 = *MEMORY[0x1E696A578];
              v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"eventClick"];
              v119 = v27;
              v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
              v86 = [v94 initWithDomain:v85 code:2 userInfo:v26];
              v25 = 0;
              v28 = 0;
              *errorCopy6 = v86;
              goto LABEL_42;
            }

            selfCopy3 = self;
            v25 = v23;
          }

          else
          {
            selfCopy3 = self;
            v25 = 0;
          }

          v26 = [dictionaryCopy objectForKeyedSubscript:@"appIsDownloaded"];
          if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (errorCopy6)
              {
                v115 = objc_alloc(MEMORY[0x1E696ABC0]);
                v95 = *MEMORY[0x1E698F240];
                v116 = *MEMORY[0x1E696A578];
                v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"appIsDownloaded"];
                v117 = v87;
                v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
                *errorCopy6 = [v115 initWithDomain:v95 code:2 userInfo:v88];
              }

              v27 = 0;
              v28 = 0;
              goto LABEL_42;
            }

            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          v28 = [(BMAppEventEngagement *)selfCopy3 initWithAppId:v113 purchased:v99 priceBucket:v109 usage:v111 frequency:v110 recency:v107 normalizedUsage:v104 eventImpression:v103 eventClick:v25 appIsDownloaded:v27];
          selfCopy3 = v28;
LABEL_42:
          self = selfCopy3;

          v9 = v96;
          v22 = v109;
          v19 = v111;
LABEL_43:

          v8 = v99;
LABEL_44:

          v29 = v106;
          v30 = v98;
LABEL_45:

          v31 = v113;
          goto LABEL_46;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v104 = v20;
          goto LABEL_32;
        }

        if (error)
        {
          errorCopy7 = error;
          v73 = objc_alloc(MEMORY[0x1E696ABC0]);
          v74 = v9;
          v75 = *MEMORY[0x1E698F240];
          v122 = *MEMORY[0x1E696A578];
          v76 = v8;
          v77 = objc_alloc(MEMORY[0x1E696AEC0]);
          v93 = objc_opt_class();
          v78 = v77;
          v8 = v76;
          v103 = [v78 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v93, @"normalizedUsage"];
          v123 = v103;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
          v79 = v75;
          v9 = v74;
          v19 = v111;
          v104 = 0;
          v28 = 0;
          *errorCopy7 = [v73 initWithDomain:v79 code:2 userInfo:v21];
          v22 = v109;
          goto LABEL_44;
        }

        v104 = 0;
        v28 = 0;
        v29 = v106;
        v30 = v98;
LABEL_92:
        v22 = v109;
        goto LABEL_45;
      }

      v107 = 0;
    }

    else
    {
      v107 = 0;
      v7 = v11;
    }

    v6 = v10;
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v113 = v6;
    goto LABEL_4;
  }

  if (!error)
  {
    v31 = 0;
    v28 = 0;
    goto LABEL_51;
  }

  errorCopy8 = error;
  v35 = objc_alloc(MEMORY[0x1E696ABC0]);
  v36 = *MEMORY[0x1E698F240];
  v134 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appId"];
  v135[0] = v8;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v135 forKeys:&v134 count:1];
  v31 = 0;
  v28 = 0;
  *errorCopy8 = [v35 initWithDomain:v36 code:2 userInfo:v7];
LABEL_50:

LABEL_51:
  v32 = *MEMORY[0x1E69E9840];
  return v28;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppEventEngagement *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v14 = toCopy;
  if (self->_appId)
  {
    PBDataWriterWriteStringField();
    toCopy = v14;
  }

  if (self->_hasPurchased)
  {
    purchased = self->_purchased;
    PBDataWriterWriteBOOLField();
    toCopy = v14;
  }

  if (self->_hasPriceBucket)
  {
    priceBucket = self->_priceBucket;
    PBDataWriterWriteDoubleField();
    toCopy = v14;
  }

  if (self->_hasUsage)
  {
    usage = self->_usage;
    PBDataWriterWriteDoubleField();
    toCopy = v14;
  }

  if (self->_hasFrequency)
  {
    frequency = self->_frequency;
    PBDataWriterWriteDoubleField();
    toCopy = v14;
  }

  if (self->_hasRecency)
  {
    recency = self->_recency;
    PBDataWriterWriteDoubleField();
    toCopy = v14;
  }

  if (self->_hasNormalizedUsage)
  {
    normalizedUsage = self->_normalizedUsage;
    PBDataWriterWriteDoubleField();
    toCopy = v14;
  }

  if (self->_hasEventImpression)
  {
    eventImpression = self->_eventImpression;
    PBDataWriterWriteBOOLField();
    toCopy = v14;
  }

  if (self->_hasEventClick)
  {
    eventClick = self->_eventClick;
    PBDataWriterWriteBOOLField();
    toCopy = v14;
  }

  if (self->_hasAppIsDownloaded)
  {
    appIsDownloaded = self->_appIsDownloaded;
    PBDataWriterWriteBOOLField();
    toCopy = v14;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v64.receiver = self;
  v64.super_class = BMAppEventEngagement;
  v5 = [(BMEventBase *)&v64 init];
  if (!v5)
  {
    goto LABEL_108;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_106;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v65) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v65 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v65 & 0x7F) << v7;
        if ((v65 & 0x80) == 0)
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
        goto LABEL_106;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 5)
      {
        break;
      }

      if (v15 > 2)
      {
        switch(v15)
        {
          case 3:
            v5->_hasPriceBucket = 1;
            v65 = 0;
            v37 = [fromCopy position] + 8;
            if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 8, v38 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v65 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v55 = v65;
            v56 = 48;
            break;
          case 4:
            v5->_hasUsage = 1;
            v65 = 0;
            v45 = [fromCopy position] + 8;
            if (v45 >= [fromCopy position] && (v46 = objc_msgSend(fromCopy, "position") + 8, v46 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v65 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v55 = v65;
            v56 = 56;
            break;
          case 5:
            v5->_hasFrequency = 1;
            v65 = 0;
            v16 = [fromCopy position] + 8;
            if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 8, v17 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v65 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v55 = v65;
            v56 = 64;
            break;
          default:
            goto LABEL_83;
        }

LABEL_104:
        *(&v5->super.super.isa + v56) = v55;
        goto LABEL_105;
      }

      if (v15 != 1)
      {
        if (v15 != 2)
        {
          goto LABEL_83;
        }

        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasPurchased = 1;
        while (1)
        {
          LOBYTE(v65) = 0;
          v28 = [fromCopy position] + 1;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v65 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v27 |= (v65 & 0x7F) << v25;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v13 = v26++ >= 9;
          if (v13)
          {
            LOBYTE(v24) = 0;
            goto LABEL_86;
          }
        }

        v24 = (v27 != 0) & ~[fromCopy hasError];
LABEL_86:
        v53 = 16;
LABEL_93:
        *(&v5->super.super.isa + v53) = v24;
        goto LABEL_105;
      }

      v33 = PBReaderReadString();
      appId = v5->_appId;
      v5->_appId = v33;

LABEL_105:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_106;
      }
    }

    if (v15 <= 7)
    {
      if (v15 == 6)
      {
        v5->_hasRecency = 1;
        v65 = 0;
        v35 = [fromCopy position] + 8;
        if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 8, v36 <= objc_msgSend(fromCopy, "length")))
        {
          data6 = [fromCopy data];
          [data6 getBytes:&v65 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v55 = v65;
        v56 = 72;
      }

      else
      {
        if (v15 != 7)
        {
LABEL_83:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_107;
          }

          goto LABEL_105;
        }

        v5->_hasNormalizedUsage = 1;
        v65 = 0;
        v31 = [fromCopy position] + 8;
        if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 8, v32 <= objc_msgSend(fromCopy, "length")))
        {
          data7 = [fromCopy data];
          [data7 getBytes:&v65 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v55 = v65;
        v56 = 80;
      }

      goto LABEL_104;
    }

    switch(v15)
    {
      case 8:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v5->_hasEventImpression = 1;
        while (1)
        {
          LOBYTE(v65) = 0;
          v42 = [fromCopy position] + 1;
          if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 1, v43 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v65 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v41 |= (v65 & 0x7F) << v39;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v13 = v40++ >= 9;
          if (v13)
          {
            LOBYTE(v24) = 0;
            goto LABEL_88;
          }
        }

        v24 = (v41 != 0) & ~[fromCopy hasError];
LABEL_88:
        v53 = 23;
        break;
      case 9:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v5->_hasEventClick = 1;
        while (1)
        {
          LOBYTE(v65) = 0;
          v50 = [fromCopy position] + 1;
          if (v50 >= [fromCopy position] && (v51 = objc_msgSend(fromCopy, "position") + 1, v51 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v65 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v49 |= (v65 & 0x7F) << v47;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v13 = v48++ >= 9;
          if (v13)
          {
            LOBYTE(v24) = 0;
            goto LABEL_92;
          }
        }

        v24 = (v49 != 0) & ~[fromCopy hasError];
LABEL_92:
        v53 = 25;
        break;
      case 0xA:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v5->_hasAppIsDownloaded = 1;
        while (1)
        {
          LOBYTE(v65) = 0;
          v21 = [fromCopy position] + 1;
          if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
          {
            data10 = [fromCopy data];
            [data10 getBytes:&v65 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v20 |= (v65 & 0x7F) << v18;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v13 = v19++ >= 9;
          if (v13)
          {
            LOBYTE(v24) = 0;
            goto LABEL_90;
          }
        }

        v24 = (v20 != 0) & ~[fromCopy hasError];
LABEL_90:
        v53 = 27;
        break;
      default:
        goto LABEL_83;
    }

    goto LABEL_93;
  }

LABEL_106:
  if ([fromCopy hasError])
  {
LABEL_107:
    v62 = 0;
  }

  else
  {
LABEL_108:
    v62 = v5;
  }

  return v62;
}

- (NSString)description
{
  v19 = objc_alloc(MEMORY[0x1E696AEC0]);
  appId = [(BMAppEventEngagement *)self appId];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppEventEngagement purchased](self, "purchased")}];
  v4 = MEMORY[0x1E696AD98];
  [(BMAppEventEngagement *)self priceBucket];
  v5 = [v4 numberWithDouble:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMAppEventEngagement *)self usage];
  v7 = [v6 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(BMAppEventEngagement *)self frequency];
  v9 = [v8 numberWithDouble:?];
  v10 = MEMORY[0x1E696AD98];
  [(BMAppEventEngagement *)self recency];
  v11 = [v10 numberWithDouble:?];
  v12 = MEMORY[0x1E696AD98];
  [(BMAppEventEngagement *)self normalizedUsage];
  v13 = [v12 numberWithDouble:?];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppEventEngagement eventImpression](self, "eventImpression")}];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppEventEngagement eventClick](self, "eventClick")}];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppEventEngagement appIsDownloaded](self, "appIsDownloaded")}];
  v20 = [v19 initWithFormat:@"BMAppEventEngagement with appId: %@, purchased: %@, priceBucket: %@, usage: %@, frequency: %@, recency: %@, normalizedUsage: %@, eventImpression: %@, eventClick: %@, appIsDownloaded: %@", appId, v3, v5, v7, v9, v11, v13, v14, v15, v16];

  return v20;
}

- (BMAppEventEngagement)initWithAppId:(id)id purchased:(id)purchased priceBucket:(id)bucket usage:(id)usage frequency:(id)frequency recency:(id)recency normalizedUsage:(id)normalizedUsage eventImpression:(id)self0 eventClick:(id)self1 appIsDownloaded:(id)self2
{
  idCopy = id;
  purchasedCopy = purchased;
  bucketCopy = bucket;
  usageCopy = usage;
  frequencyCopy = frequency;
  recencyCopy = recency;
  normalizedUsageCopy = normalizedUsage;
  impressionCopy = impression;
  clickCopy = click;
  downloadedCopy = downloaded;
  v36.receiver = self;
  v36.super_class = BMAppEventEngagement;
  v26 = [(BMEventBase *)&v36 init];
  if (v26)
  {
    v26->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v26->_appId, id);
    if (purchasedCopy)
    {
      v26->_hasPurchased = 1;
      v26->_purchased = [purchasedCopy BOOLValue];
    }

    else
    {
      v26->_hasPurchased = 0;
      v26->_purchased = 0;
    }

    if (bucketCopy)
    {
      v26->_hasPriceBucket = 1;
      [bucketCopy doubleValue];
    }

    else
    {
      v26->_hasPriceBucket = 0;
      v27 = -1.0;
    }

    v26->_priceBucket = v27;
    if (usageCopy)
    {
      v26->_hasUsage = 1;
      [usageCopy doubleValue];
    }

    else
    {
      v26->_hasUsage = 0;
      v28 = -1.0;
    }

    v26->_usage = v28;
    if (frequencyCopy)
    {
      v26->_hasFrequency = 1;
      [frequencyCopy doubleValue];
    }

    else
    {
      v26->_hasFrequency = 0;
      v29 = -1.0;
    }

    v26->_frequency = v29;
    if (recencyCopy)
    {
      v26->_hasRecency = 1;
      [recencyCopy doubleValue];
    }

    else
    {
      v26->_hasRecency = 0;
      v30 = -1.0;
    }

    v26->_recency = v30;
    if (normalizedUsageCopy)
    {
      v26->_hasNormalizedUsage = 1;
      [normalizedUsageCopy doubleValue];
    }

    else
    {
      v26->_hasNormalizedUsage = 0;
      v31 = -1.0;
    }

    v26->_normalizedUsage = v31;
    if (impressionCopy)
    {
      v26->_hasEventImpression = 1;
      v26->_eventImpression = [impressionCopy BOOLValue];
    }

    else
    {
      v26->_hasEventImpression = 0;
      v26->_eventImpression = 0;
    }

    if (clickCopy)
    {
      v26->_hasEventClick = 1;
      v26->_eventClick = [clickCopy BOOLValue];
    }

    else
    {
      v26->_hasEventClick = 0;
      v26->_eventClick = 0;
    }

    if (downloadedCopy)
    {
      v26->_hasAppIsDownloaded = 1;
      v26->_appIsDownloaded = [downloadedCopy BOOLValue];
    }

    else
    {
      v26->_hasAppIsDownloaded = 0;
      v26->_appIsDownloaded = 0;
    }
  }

  return v26;
}

+ (id)protoFields
{
  v15[10] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appId" number:1 type:13 subMessageClass:0];
  v15[0] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"purchased" number:2 type:12 subMessageClass:0];
  v15[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"priceBucket" number:3 type:0 subMessageClass:0];
  v15[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usage" number:4 type:0 subMessageClass:0];
  v15[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"frequency" number:5 type:0 subMessageClass:0];
  v15[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recency" number:6 type:0 subMessageClass:0];
  v15[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"normalizedUsage" number:7 type:0 subMessageClass:0];
  v15[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventImpression" number:8 type:12 subMessageClass:0];
  v15[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventClick" number:9 type:12 subMessageClass:0];
  v15[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appIsDownloaded" number:10 type:12 subMessageClass:0];
  v15[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v15[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"purchased" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"priceBucket" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usage" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"frequency" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recency" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"normalizedUsage" dataType:1 requestOnly:0 fieldNumber:7 protoDataType:0 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventImpression" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventClick" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appIsDownloaded" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v15[0] = v2;
  v15[1] = v3;
  v15[2] = v4;
  v15[3] = v5;
  v15[4] = v6;
  v15[5] = v7;
  v15[6] = v8;
  v15[7] = v9;
  v15[8] = v10;
  v15[9] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
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

    v8 = [[BMAppEventEngagement alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end