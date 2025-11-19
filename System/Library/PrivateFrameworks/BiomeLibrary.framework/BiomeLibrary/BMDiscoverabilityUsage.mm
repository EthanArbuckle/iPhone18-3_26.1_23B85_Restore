@interface BMDiscoverabilityUsage
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDiscoverabilityUsage)initWithContentIdentifier:(id)a3 bundleID:(id)a4 contentType:(int)a5 context:(id)a6 eligibleContext:(id)a7 ineligibleReason:(int)a8 osBuild:(id)a9 state:(int)a10 analyticsEvent:(id)a11;
- (BMDiscoverabilityUsage)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMDiscoverabilityUsage

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"context" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eligibleContext" dataType:4 requestOnly:0 fieldNumber:5 protoDataType:14 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ineligibleReason" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"osBuild" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"state" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"analyticsEvent" dataType:4 requestOnly:0 fieldNumber:9 protoDataType:14 convertedType:0];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMDiscoverabilityUsage *)self contentIdentifier];
    v7 = [v5 contentIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMDiscoverabilityUsage *)self contentIdentifier];
      v10 = [v5 contentIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_28;
      }
    }

    v13 = [(BMDiscoverabilityUsage *)self bundleID];
    v14 = [v5 bundleID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMDiscoverabilityUsage *)self bundleID];
      v17 = [v5 bundleID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_28;
      }
    }

    v19 = [(BMDiscoverabilityUsage *)self contentType];
    if (v19 == [v5 contentType])
    {
      v20 = [(BMDiscoverabilityUsage *)self context];
      v21 = [v5 context];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMDiscoverabilityUsage *)self context];
        v24 = [v5 context];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_28;
        }
      }

      v26 = [(BMDiscoverabilityUsage *)self eligibleContext];
      v27 = [v5 eligibleContext];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(BMDiscoverabilityUsage *)self eligibleContext];
        v30 = [v5 eligibleContext];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_28;
        }
      }

      v32 = [(BMDiscoverabilityUsage *)self ineligibleReason];
      if (v32 == [v5 ineligibleReason])
      {
        v33 = [(BMDiscoverabilityUsage *)self osBuild];
        v34 = [v5 osBuild];
        v35 = v34;
        if (v33 == v34)
        {
        }

        else
        {
          v36 = [(BMDiscoverabilityUsage *)self osBuild];
          v37 = [v5 osBuild];
          v38 = [v36 isEqual:v37];

          if (!v38)
          {
            goto LABEL_28;
          }
        }

        v39 = [(BMDiscoverabilityUsage *)self state];
        if (v39 == [v5 state])
        {
          v40 = [(BMDiscoverabilityUsage *)self analyticsEvent];
          v41 = [v5 analyticsEvent];
          if (v40 == v41)
          {
            v12 = 1;
          }

          else
          {
            v42 = [(BMDiscoverabilityUsage *)self analyticsEvent];
            v43 = [v5 analyticsEvent];
            v12 = [v42 isEqual:v43];
          }

          goto LABEL_29;
        }
      }
    }

LABEL_28:
    v12 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v12 = 0;
LABEL_30:

  return v12;
}

- (id)jsonDictionary
{
  v35[9] = *MEMORY[0x1E69E9840];
  v3 = [(BMDiscoverabilityUsage *)self contentIdentifier];
  v4 = [(BMDiscoverabilityUsage *)self bundleID];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDiscoverabilityUsage contentType](self, "contentType")}];
  v6 = [(BMDiscoverabilityUsage *)self context];
  v7 = [(BMDiscoverabilityUsage *)self eligibleContext];
  v8 = [v7 base64EncodedStringWithOptions:0];

  v33 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDiscoverabilityUsage ineligibleReason](self, "ineligibleReason")}];
  v9 = [(BMDiscoverabilityUsage *)self osBuild];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDiscoverabilityUsage state](self, "state")}];
  v11 = [(BMDiscoverabilityUsage *)self analyticsEvent];
  v12 = [v11 base64EncodedStringWithOptions:0];

  v34[0] = @"contentIdentifier";
  v13 = v3;
  if (!v3)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v13;
  v35[0] = v13;
  v34[1] = @"bundleID";
  v14 = v4;
  if (!v4)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v14;
  v35[1] = v14;
  v34[2] = @"contentType";
  v15 = v5;
  if (!v5)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v3;
  v26 = v15;
  v35[2] = v15;
  v34[3] = @"context";
  v16 = v6;
  if (!v6)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v4;
  v25 = v16;
  v35[3] = v16;
  v34[4] = @"eligibleContext";
  v17 = v8;
  if (!v8)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v5;
  v35[4] = v17;
  v34[5] = @"ineligibleReason";
  v18 = v33;
  if (!v33)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v35[5] = v18;
  v34[6] = @"osBuild";
  v19 = v9;
  if (!v9)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v8;
  v35[6] = v19;
  v34[7] = @"state";
  v21 = v10;
  if (!v10)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v35[7] = v21;
  v34[8] = @"analyticsEvent";
  v22 = v12;
  if (!v12)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v35[8] = v22;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:9];
  if (v12)
  {
    if (v10)
    {
      goto LABEL_21;
    }

LABEL_35:

    if (v9)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

  if (!v10)
  {
    goto LABEL_35;
  }

LABEL_21:
  if (v9)
  {
    goto LABEL_22;
  }

LABEL_36:

LABEL_22:
  if (!v33)
  {
  }

  if (!v20)
  {
  }

  if (!v6)
  {
  }

  if (v30)
  {
    if (v31)
    {
      goto LABEL_30;
    }

LABEL_38:

    if (v32)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (!v31)
  {
    goto LABEL_38;
  }

LABEL_30:
  if (v32)
  {
    goto LABEL_31;
  }

LABEL_39:

LABEL_31:
  v23 = *MEMORY[0x1E69E9840];

  return v29;
}

- (BMDiscoverabilityUsage)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v109[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"contentIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"bundleID"];
    v87 = self;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v16 = 0;
          v18 = 0;
          goto LABEL_74;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = *MEMORY[0x1E698F240];
        v106 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
        v107 = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
        v23 = v20;
        v10 = v22;
        v16 = 0;
        v18 = 0;
        *a4 = [v19 initWithDomain:v23 code:2 userInfo:v22];
        v11 = v21;
        goto LABEL_73;
      }

      v76 = a4;
      v84 = v9;
    }

    else
    {
      v76 = a4;
      v84 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"contentType"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v76)
          {
            v11 = 0;
            v18 = 0;
            v16 = v84;
            goto LABEL_73;
          }

          v50 = objc_alloc(MEMORY[0x1E696ABC0]);
          v51 = v10;
          v52 = *MEMORY[0x1E698F240];
          v104 = *MEMORY[0x1E696A578];
          v86 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"contentType"];
          v105 = v86;
          v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
          v54 = v52;
          v10 = v51;
          v55 = [v50 initWithDomain:v54 code:2 userInfo:v53];
          v11 = 0;
          v18 = 0;
          *v76 = v55;
          v25 = v53;
          goto LABEL_91;
        }

        v12 = [MEMORY[0x1E696AD98] numberWithInt:BMDiscoverabilityUsageContentTypeFromString(v10)];
      }

      v11 = v12;
    }

    else
    {
      v11 = 0;
    }

    v24 = [v6 objectForKeyedSubscript:@"context"];
    v82 = v24;
    v80 = v10;
    if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v86 = 0;
      goto LABEL_26;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v86 = v25;
LABEL_26:
      v26 = [v6 objectForKeyedSubscript:@"eligibleContext"];
      v79 = v26;
      if (!v26 || (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v85 = 0;
        goto LABEL_29;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v85 = v27;
        goto LABEL_29;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v76)
        {
          v85 = 0;
          v18 = 0;
          v16 = v84;
          v25 = v82;
          goto LABEL_71;
        }

        v58 = objc_alloc(MEMORY[0x1E696ABC0]);
        v59 = *MEMORY[0x1E698F240];
        v98 = *MEMORY[0x1E696A578];
        v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"eligibleContext"];
        v99 = v83;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
        v60 = [v58 initWithDomain:v59 code:2 userInfo:v28];
        v85 = 0;
        v18 = 0;
        *v76 = v60;
        goto LABEL_103;
      }

      v25 = v82;
      v85 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v27 options:0];
      if (v85)
      {
LABEL_29:
        v28 = [v6 objectForKeyedSubscript:@"ineligibleReason"];
        v75 = v9;
        if (!v28 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v83 = 0;
          goto LABEL_48;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v28;
LABEL_47:
          v83 = v29;
LABEL_48:
          v38 = [v6 objectForKeyedSubscript:@"osBuild"];
          v74 = v7;
          v77 = v11;
          v78 = v8;
          if (!v38 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v81 = 0;
            goto LABEL_51;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v81 = v38;
LABEL_51:
            v39 = [v6 objectForKeyedSubscript:@"state"];
            if (!v39 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v40 = v87;
              v41 = 0;
              goto LABEL_63;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v40 = v87;
              v42 = v39;
LABEL_62:
              v41 = v42;
LABEL_63:
              v46 = [v6 objectForKeyedSubscript:@"analyticsEvent"];
              if (!v46 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v47 = 0;
LABEL_66:
                [v77 intValue];
                [v83 intValue];
                LODWORD(v69) = [v41 intValue];
                v16 = v84;
                v18 = [BMDiscoverabilityUsage initWithContentIdentifier:v40 bundleID:"initWithContentIdentifier:bundleID:contentType:context:eligibleContext:ineligibleReason:osBuild:state:analyticsEvent:" contentType:v78 context:v81 eligibleContext:v69 ineligibleReason:v47 osBuild:? state:? analyticsEvent:?];
                v40 = v18;
LABEL_67:

LABEL_68:
                v87 = v40;

                v7 = v74;
                v11 = v77;
                v8 = v78;
LABEL_69:
                v25 = v82;

                v9 = v75;
                goto LABEL_70;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v47 = v46;
                goto LABEL_66;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v47 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v46 options:0];
                if (v47)
                {
                  goto LABEL_66;
                }

                if (v76)
                {
                  v72 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v70 = *MEMORY[0x1E698F240];
                  v90 = *MEMORY[0x1E696A578];
                  v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"analyticsEvent"];
                  v91 = v56;
                  v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
                  *v76 = [v72 initWithDomain:v70 code:2 userInfo:v57];
                }
              }

              else if (v76)
              {
                v73 = objc_alloc(MEMORY[0x1E696ABC0]);
                v71 = *MEMORY[0x1E698F240];
                v88 = *MEMORY[0x1E696A578];
                v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"analyticsEvent"];
                v89 = v67;
                v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
                *v76 = [v73 initWithDomain:v71 code:2 userInfo:v68];
              }

              v47 = 0;
              v18 = 0;
LABEL_97:
              v16 = v84;
              goto LABEL_67;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v40 = v87;
              v42 = [MEMORY[0x1E696AD98] numberWithInt:BMDiscoverabilityUsageStateFromString(v39)];
              goto LABEL_62;
            }

            v40 = v87;
            if (v76)
            {
              v64 = objc_alloc(MEMORY[0x1E696ABC0]);
              v65 = *MEMORY[0x1E698F240];
              v92 = *MEMORY[0x1E696A578];
              v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"state"];
              v93 = v47;
              v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
              v66 = [v64 initWithDomain:v65 code:2 userInfo:v46];
              v41 = 0;
              v18 = 0;
              *v76 = v66;
              goto LABEL_97;
            }

            v41 = 0;
            v18 = 0;
LABEL_105:
            v16 = v84;
            goto LABEL_68;
          }

          if (v76)
          {
            v40 = v87;
            v43 = objc_alloc(MEMORY[0x1E696ABC0]);
            v44 = *MEMORY[0x1E698F240];
            v94 = *MEMORY[0x1E696A578];
            v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"osBuild"];
            v95 = v41;
            v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
            v45 = [v43 initWithDomain:v44 code:2 userInfo:v39];
            v81 = 0;
            v18 = 0;
            *v76 = v45;
            goto LABEL_105;
          }

          v81 = 0;
          v18 = 0;
LABEL_99:
          v16 = v84;
          goto LABEL_69;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = [MEMORY[0x1E696AD98] numberWithInt:BMDiscoverabilityUsageIneligibleReasonFromString(v28)];
          goto LABEL_47;
        }

        if (v76)
        {
          v61 = objc_alloc(MEMORY[0x1E696ABC0]);
          v62 = *MEMORY[0x1E698F240];
          v96 = *MEMORY[0x1E696A578];
          v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"ineligibleReason"];
          v97 = v81;
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
          v63 = [v61 initWithDomain:v62 code:2 userInfo:v38];
          v83 = 0;
          v18 = 0;
          *v76 = v63;
          goto LABEL_99;
        }

        v83 = 0;
        v18 = 0;
LABEL_103:
        v16 = v84;
        v25 = v82;
        goto LABEL_70;
      }

      if (v76)
      {
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v100 = *MEMORY[0x1E696A578];
        v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"eligibleContext"];
        v101 = v83;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
        v36 = v34;
        v25 = v82;
        v37 = [v36 initWithDomain:v35 code:2 userInfo:v28];
        v85 = 0;
        v18 = 0;
        *v76 = v37;
        v16 = v84;
LABEL_70:

        goto LABEL_71;
      }

      v85 = 0;
      v18 = 0;
LABEL_40:
      v16 = v84;
LABEL_71:

      v10 = v80;
LABEL_72:

LABEL_73:
      self = v87;
      goto LABEL_74;
    }

    if (v76)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v31 = *MEMORY[0x1E698F240];
      v102 = *MEMORY[0x1E696A578];
      v85 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"context"];
      v103 = v85;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
      v33 = v30;
      v25 = v82;
      v79 = v32;
      v86 = 0;
      v18 = 0;
      *v76 = [v33 initWithDomain:v31 code:2 userInfo:?];
      goto LABEL_40;
    }

    v86 = 0;
    v18 = 0;
LABEL_91:
    v16 = v84;
    goto LABEL_72;
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
    v18 = 0;
    goto LABEL_75;
  }

  v13 = self;
  v14 = objc_alloc(MEMORY[0x1E696ABC0]);
  v15 = *MEMORY[0x1E698F240];
  v108 = *MEMORY[0x1E696A578];
  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentIdentifier"];
  v109[0] = v16;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:&v108 count:1];
  v17 = v14;
  self = v13;
  v8 = 0;
  v18 = 0;
  *a4 = [v17 initWithDomain:v15 code:2 userInfo:v9];
LABEL_74:

LABEL_75:
  v48 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDiscoverabilityUsage *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (self->_contentIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  contentType = self->_contentType;
  PBDataWriterWriteUint32Field();
  if (self->_context)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_eligibleContext)
  {
    PBDataWriterWriteDataField();
  }

  ineligibleReason = self->_ineligibleReason;
  PBDataWriterWriteUint32Field();
  if (self->_osBuild)
  {
    PBDataWriterWriteStringField();
  }

  state = self->_state;
  PBDataWriterWriteUint32Field();
  if (self->_analyticsEvent)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = BMDiscoverabilityUsage;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_82;
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
        v41 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v41 & 0x7F) << v7;
        if ((v41 & 0x80) == 0)
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
      if ((v14 >> 3) <= 4)
      {
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v30 = 0;
            v31 = 0;
            v18 = 0;
            while (1)
            {
              v41 = 0;
              v32 = [v4 position] + 1;
              if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
              {
                v34 = [v4 data];
                [v34 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (v41 & 0x7F) << v30;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v22 = v31++ > 8;
              if (v22)
              {
                goto LABEL_72;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 4)
            {
LABEL_72:
              LODWORD(v18) = 0;
            }

            v36 = 20;
LABEL_78:
            *(&v5->super.super.isa + v36) = v18;
            goto LABEL_79;
          }

          if (v15 != 4)
          {
            goto LABEL_64;
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
            goto LABEL_64;
          }

          v23 = PBReaderReadString();
          v24 = 40;
        }
      }

      else if (v15 <= 6)
      {
        if (v15 != 5)
        {
          if (v15 != 6)
          {
LABEL_64:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_81;
            }

            goto LABEL_79;
          }

          v25 = 0;
          v26 = 0;
          v18 = 0;
          while (1)
          {
            v41 = 0;
            v27 = [v4 position] + 1;
            if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
            {
              v29 = [v4 data];
              [v29 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (v41 & 0x7F) << v25;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v22 = v26++ > 8;
            if (v22)
            {
              goto LABEL_68;
            }
          }

          if (([v4 hasError] & 1) != 0 || v18 > 0x18)
          {
LABEL_68:
            LODWORD(v18) = 0;
          }

          v36 = 24;
          goto LABEL_78;
        }

        v23 = PBReaderReadData();
        v24 = 56;
      }

      else
      {
        switch(v15)
        {
          case 7:
            v23 = PBReaderReadString();
            v24 = 64;
            break;
          case 9:
            v23 = PBReaderReadData();
            v24 = 72;
            break;
          case 8:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              v41 = 0;
              v19 = [v4 position] + 1;
              if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
              {
                v21 = [v4 data];
                [v21 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (v41 & 0x7F) << v16;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v22 = v17++ > 8;
              if (v22)
              {
                goto LABEL_76;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 9)
            {
LABEL_76:
              LODWORD(v18) = 0;
            }

            v36 = 28;
            goto LABEL_78;
          default:
            goto LABEL_64;
        }
      }

      v35 = *(&v5->super.super.isa + v24);
      *(&v5->super.super.isa + v24) = v23;

LABEL_79:
      v37 = [v4 position];
    }

    while (v37 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_81:
    v38 = 0;
  }

  else
  {
LABEL_82:
    v38 = v5;
  }

  return v38;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMDiscoverabilityUsage *)self contentIdentifier];
  v5 = [(BMDiscoverabilityUsage *)self bundleID];
  v6 = BMDiscoverabilityUsageContentTypeAsString([(BMDiscoverabilityUsage *)self contentType]);
  v7 = [(BMDiscoverabilityUsage *)self context];
  v8 = [(BMDiscoverabilityUsage *)self eligibleContext];
  v9 = BMDiscoverabilityUsageIneligibleReasonAsString([(BMDiscoverabilityUsage *)self ineligibleReason]);
  v10 = [(BMDiscoverabilityUsage *)self osBuild];
  v11 = BMDiscoverabilityUsageStateAsString([(BMDiscoverabilityUsage *)self state]);
  v12 = [(BMDiscoverabilityUsage *)self analyticsEvent];
  v13 = [v3 initWithFormat:@"BMDiscoverabilityUsage with contentIdentifier: %@, bundleID: %@, contentType: %@, context: %@, eligibleContext: %@, ineligibleReason: %@, osBuild: %@, state: %@, analyticsEvent: %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BMDiscoverabilityUsage)initWithContentIdentifier:(id)a3 bundleID:(id)a4 contentType:(int)a5 context:(id)a6 eligibleContext:(id)a7 ineligibleReason:(int)a8 osBuild:(id)a9 state:(int)a10 analyticsEvent:(id)a11
{
  v16 = a3;
  v25 = a4;
  v24 = a6;
  v23 = a7;
  v17 = a9;
  v18 = a11;
  v26.receiver = self;
  v26.super_class = BMDiscoverabilityUsage;
  v19 = [(BMEventBase *)&v26 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_contentIdentifier, a3);
    objc_storeStrong(&v19->_bundleID, a4);
    v19->_contentType = a5;
    objc_storeStrong(&v19->_context, a6);
    objc_storeStrong(&v19->_eligibleContext, a7);
    v19->_ineligibleReason = a8;
    objc_storeStrong(&v19->_osBuild, a9);
    v19->_state = a10;
    objc_storeStrong(&v19->_analyticsEvent, a11);
  }

  return v19;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentIdentifier" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:2 type:13 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentType" number:3 type:4 subMessageClass:0];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"context" number:4 type:13 subMessageClass:0];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eligibleContext" number:5 type:14 subMessageClass:0];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ineligibleReason" number:6 type:4 subMessageClass:0];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"osBuild" number:7 type:13 subMessageClass:0];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"state" number:8 type:4 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"analyticsEvent" number:9 type:14 subMessageClass:0];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
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

    v8 = [[BMDiscoverabilityUsage alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end