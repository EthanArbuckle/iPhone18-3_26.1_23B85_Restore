@interface BMMotionActivity
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMotionActivity)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMotionActivity)initWithStationary:(id)a3 walking:(id)a4 running:(id)a5 automotive:(id)a6 cycling:(id)a7 unknown:(id)a8 startDate:(id)a9 confidence:(int)a10;
- (BOOL)isEqual:(id)a3;
- (NSDate)startDate;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMotionActivity

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stationary" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"walking" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"running" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"automotive" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cycling" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"unknown" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startDate" dataType:3 requestOnly:0 fieldNumber:7 protoDataType:0 convertedType:2];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidence" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = 0;
    goto LABEL_37;
  }

  v5 = v4;
  if (-[BMMotionActivity hasStationary](self, "hasStationary") || [v5 hasStationary])
  {
    if (![(BMMotionActivity *)self hasStationary])
    {
      goto LABEL_34;
    }

    if (![v5 hasStationary])
    {
      goto LABEL_34;
    }

    v6 = [(BMMotionActivity *)self stationary];
    if (v6 != [v5 stationary])
    {
      goto LABEL_34;
    }
  }

  if (-[BMMotionActivity hasWalking](self, "hasWalking") || [v5 hasWalking])
  {
    if (![(BMMotionActivity *)self hasWalking])
    {
      goto LABEL_34;
    }

    if (![v5 hasWalking])
    {
      goto LABEL_34;
    }

    v7 = [(BMMotionActivity *)self walking];
    if (v7 != [v5 walking])
    {
      goto LABEL_34;
    }
  }

  if (-[BMMotionActivity hasRunning](self, "hasRunning") || [v5 hasRunning])
  {
    if (![(BMMotionActivity *)self hasRunning])
    {
      goto LABEL_34;
    }

    if (![v5 hasRunning])
    {
      goto LABEL_34;
    }

    v8 = [(BMMotionActivity *)self running];
    if (v8 != [v5 running])
    {
      goto LABEL_34;
    }
  }

  if (-[BMMotionActivity hasAutomotive](self, "hasAutomotive") || [v5 hasAutomotive])
  {
    if (![(BMMotionActivity *)self hasAutomotive])
    {
      goto LABEL_34;
    }

    if (![v5 hasAutomotive])
    {
      goto LABEL_34;
    }

    v9 = [(BMMotionActivity *)self automotive];
    if (v9 != [v5 automotive])
    {
      goto LABEL_34;
    }
  }

  if (-[BMMotionActivity hasCycling](self, "hasCycling") || [v5 hasCycling])
  {
    if (![(BMMotionActivity *)self hasCycling])
    {
      goto LABEL_34;
    }

    if (![v5 hasCycling])
    {
      goto LABEL_34;
    }

    v10 = [(BMMotionActivity *)self cycling];
    if (v10 != [v5 cycling])
    {
      goto LABEL_34;
    }
  }

  if (-[BMMotionActivity hasUnknown](self, "hasUnknown") || [v5 hasUnknown])
  {
    if (![(BMMotionActivity *)self hasUnknown])
    {
      goto LABEL_34;
    }

    if (![v5 hasUnknown])
    {
      goto LABEL_34;
    }

    v11 = [(BMMotionActivity *)self unknown];
    if (v11 != [v5 unknown])
    {
      goto LABEL_34;
    }
  }

  v12 = [(BMMotionActivity *)self startDate];
  v13 = [v5 startDate];
  v14 = v13;
  if (v12 == v13)
  {

    goto LABEL_39;
  }

  v15 = [(BMMotionActivity *)self startDate];
  v16 = [v5 startDate];
  v17 = [v15 isEqual:v16];

  if (v17)
  {
LABEL_39:
    v20 = [(BMMotionActivity *)self confidence];
    v18 = v20 == [v5 confidence];
    goto LABEL_35;
  }

LABEL_34:
  v18 = 0;
LABEL_35:

LABEL_37:
  return v18;
}

- (NSDate)startDate
{
  if (self->_hasRaw_startDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_startDate];
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
  v32[8] = *MEMORY[0x1E69E9840];
  if ([(BMMotionActivity *)self hasStationary])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity stationary](self, "stationary")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMMotionActivity *)self hasWalking])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity walking](self, "walking")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMMotionActivity *)self hasRunning])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity running](self, "running")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMMotionActivity *)self hasAutomotive])
  {
    v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity automotive](self, "automotive")}];
  }

  else
  {
    v30 = 0;
  }

  if ([(BMMotionActivity *)self hasCycling])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity cycling](self, "cycling")}];
  }

  else
  {
    v29 = 0;
  }

  if ([(BMMotionActivity *)self hasUnknown])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity unknown](self, "unknown")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMMotionActivity *)self startDate];
  if (v7)
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = [(BMMotionActivity *)self startDate];
    [v9 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMotionActivity confidence](self, "confidence")}];
  v31[0] = @"stationary";
  v12 = v3;
  if (!v3)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v12;
  v32[0] = v12;
  v31[1] = @"walking";
  v13 = v4;
  if (!v4)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v13;
  v32[1] = v13;
  v31[2] = @"running";
  v14 = v5;
  if (!v5)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v3;
  v24 = v14;
  v32[2] = v14;
  v31[3] = @"automotive";
  v15 = v30;
  if (!v30)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v4;
  v32[3] = v15;
  v31[4] = @"cycling";
  v16 = v29;
  if (!v29)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = v5;
  v32[4] = v16;
  v31[5] = @"unknown";
  v18 = v6;
  if (!v6)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v32[5] = v18;
  v31[6] = @"startDate";
  v19 = v10;
  if (!v10)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v32[6] = v19;
  v31[7] = @"confidence";
  v20 = v11;
  if (!v11)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v32[7] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:8];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_40;
    }

LABEL_52:

    if (v6)
    {
      goto LABEL_41;
    }

    goto LABEL_53;
  }

  if (!v10)
  {
    goto LABEL_52;
  }

LABEL_40:
  if (v6)
  {
    goto LABEL_41;
  }

LABEL_53:

LABEL_41:
  if (!v29)
  {
  }

  if (!v30)
  {
  }

  if (v17)
  {
    if (v27)
    {
      goto LABEL_47;
    }

LABEL_55:

    if (v28)
    {
      goto LABEL_48;
    }

    goto LABEL_56;
  }

  if (!v27)
  {
    goto LABEL_55;
  }

LABEL_47:
  if (v28)
  {
    goto LABEL_48;
  }

LABEL_56:

LABEL_48:
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BMMotionActivity)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v109[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"stationary"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"walking"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          goto LABEL_70;
        }

        v28 = v6;
        v29 = a4;
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v106 = *MEMORY[0x1E696A578];
        v32 = v8;
        v33 = objc_alloc(MEMORY[0x1E696AEC0]);
        v75 = objc_opt_class();
        v34 = v33;
        v8 = v32;
        v35 = [v34 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v75, @"walking"];
        v107 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
        v37 = v31;
        v11 = v36;
        v38 = [v30 initWithDomain:v37 code:2 userInfo:v36];
        v10 = 0;
        a4 = 0;
        *v29 = v38;
        v6 = v28;
        goto LABEL_69;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"running"];
    v93 = v6;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v35 = 0;
          goto LABEL_69;
        }

        v90 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = a4;
        v46 = *MEMORY[0x1E698F240];
        v104 = *MEMORY[0x1E696A578];
        v47 = v10;
        v48 = objc_alloc(MEMORY[0x1E696AEC0]);
        v76 = objc_opt_class();
        v49 = v48;
        v10 = v47;
        v91 = [v49 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v76, @"running"];
        v105 = v91;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
        v51 = [v90 initWithDomain:v46 code:2 userInfo:v50];
        v35 = 0;
        a4 = 0;
        *v45 = v51;
LABEL_68:

        v6 = v93;
LABEL_69:

        goto LABEL_70;
      }

      v12 = v8;
      v13 = v9;
      v14 = v7;
      v15 = self;
      v89 = v11;
    }

    else
    {
      v12 = v8;
      v13 = v9;
      v14 = v7;
      v15 = self;
      v89 = 0;
    }

    v16 = [v6 objectForKeyedSubscript:@"automotive"];
    v85 = v11;
    v82 = a4;
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v91 = 0;
          v35 = v89;
          v50 = v16;
          self = v15;
          v7 = v14;
          v9 = v13;
          v8 = v12;
          goto LABEL_68;
        }

        v92 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = *MEMORY[0x1E698F240];
        v102 = *MEMORY[0x1E696A578];
        v50 = v16;
        v88 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"automotive"];
        v103 = v88;
        v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
        v54 = v52;
        v11 = v85;
        v87 = v53;
        v55 = [v92 initWithDomain:v54 code:2 userInfo:?];
        v91 = 0;
        a4 = 0;
        *v82 = v55;
        v35 = v89;
        self = v15;
        v7 = v14;
        v9 = v13;
        v8 = v12;
        goto LABEL_67;
      }

      v83 = v16;
      v91 = v16;
    }

    else
    {
      v83 = v16;
      v91 = 0;
    }

    v17 = [v6 objectForKeyedSubscript:@"cycling"];
    self = v15;
    v87 = v17;
    if (v17)
    {
      v18 = v17;
      objc_opt_class();
      v7 = v14;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        v9 = v13;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = v12;
          if (!a4)
          {
            v88 = 0;
            v35 = v89;
            v50 = v83;
            goto LABEL_67;
          }

          v56 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = v10;
          v58 = *MEMORY[0x1E698F240];
          v100 = *MEMORY[0x1E696A578];
          v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cycling"];
          v101 = v59;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
          v60 = v58;
          v10 = v57;
          v61 = [v56 initWithDomain:v60 code:2 userInfo:v19];
          v88 = 0;
          a4 = 0;
          *v82 = v61;
LABEL_66:
          v50 = v83;

          v11 = v85;
          v35 = v89;
LABEL_67:

          goto LABEL_68;
        }

        v88 = v18;
LABEL_24:
        v8 = v12;
        v19 = [v93 objectForKeyedSubscript:@"unknown"];
        v86 = v10;
        if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v59 = 0;
              goto LABEL_66;
            }

            v62 = objc_alloc(MEMORY[0x1E696ABC0]);
            v63 = *MEMORY[0x1E698F240];
            v98 = *MEMORY[0x1E696A578];
            v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"unknown"];
            v99 = v22;
            v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
            v64 = [v62 initWithDomain:v63 code:2 userInfo:v20];
            v59 = 0;
            a4 = 0;
            *v82 = v64;
            goto LABEL_65;
          }

          v81 = v19;
        }

        else
        {
          v81 = 0;
        }

        v20 = [v93 objectForKeyedSubscript:@"startDate"];
        v84 = v12;
        if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v21 = self;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = MEMORY[0x1E695DF00];
            v40 = v20;
            v41 = [v39 alloc];
            [v40 doubleValue];
            v43 = v42;

            v44 = [v41 initWithTimeIntervalSince1970:v43];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v65 = objc_alloc_init(MEMORY[0x1E696AC80]);
              v22 = [v65 dateFromString:v20];

              goto LABEL_54;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!a4)
              {
                v22 = 0;
                a4 = 0;
                v8 = v12;
                v59 = v81;
                goto LABEL_65;
              }

              v80 = objc_alloc(MEMORY[0x1E696ABC0]);
              v73 = *MEMORY[0x1E698F240];
              v96 = *MEMORY[0x1E696A578];
              v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"startDate"];
              v97 = v67;
              v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
              v74 = [v80 initWithDomain:v73 code:2 userInfo:v66];
              v22 = 0;
              a4 = 0;
              *v82 = v74;
              v59 = v81;
              goto LABEL_64;
            }

            v44 = v20;
          }

          v22 = v44;
        }

        else
        {
          v21 = self;
          v22 = 0;
        }

LABEL_54:
        v66 = [v93 objectForKeyedSubscript:@"confidence"];
        if (v66)
        {
          objc_opt_class();
          v59 = v81;
          if (objc_opt_isKindOfClass())
          {
            v67 = 0;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v68 = v66;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (v82)
                {
                  v79 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v78 = *MEMORY[0x1E698F240];
                  v94 = *MEMORY[0x1E696A578];
                  v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"confidence"];
                  v95 = v71;
                  v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
                  *v82 = [v79 initWithDomain:v78 code:2 userInfo:v72];
                }

                v67 = 0;
                a4 = 0;
                goto LABEL_64;
              }

              v68 = [MEMORY[0x1E696AD98] numberWithInt:BMMotionActivityConfidenceFromString(v66)];
            }

            v67 = v68;
          }
        }

        else
        {
          v67 = 0;
          v59 = v81;
        }

        LODWORD(v77) = [v67 intValue];
        a4 = [(BMMotionActivity *)v21 initWithStationary:v84 walking:v86 running:v89 automotive:v91 cycling:v88 unknown:v59 startDate:v22 confidence:v77];
        v21 = a4;
LABEL_64:

        self = v21;
        v8 = v84;
LABEL_65:

        v10 = v86;
        goto LABEL_66;
      }

      v88 = 0;
    }

    else
    {
      v88 = 0;
      v7 = v14;
    }

    v9 = v13;
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (a4)
  {
    v23 = v6;
    v24 = a4;
    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    v26 = *MEMORY[0x1E698F240];
    v108 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"stationary"];
    v109[0] = v10;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:&v108 count:1];
    v27 = [v25 initWithDomain:v26 code:2 userInfo:v9];
    v8 = 0;
    a4 = 0;
    *v24 = v27;
    v6 = v23;
LABEL_70:

    goto LABEL_71;
  }

  v8 = 0;
LABEL_71:

  v69 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMotionActivity *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  if (self->_hasStationary)
  {
    stationary = self->_stationary;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasWalking)
  {
    walking = self->_walking;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRunning)
  {
    running = self->_running;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasAutomotive)
  {
    automotive = self->_automotive;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCycling)
  {
    cycling = self->_cycling;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasUnknown)
  {
    unknown = self->_unknown;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRaw_startDate)
  {
    raw_startDate = self->_raw_startDate;
    PBDataWriterWriteDoubleField();
  }

  confidence = self->_confidence;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v67.receiver = self;
  v67.super_class = BMMotionActivity;
  v5 = [(BMEventBase *)&v67 init];
  if (!v5)
  {
    goto LABEL_120;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_118;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v68) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v68 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v68) & 0x7F) << v7;
        if ((LOBYTE(v68) & 0x80) == 0)
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
        goto LABEL_118;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 4)
      {
        break;
      }

      if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v5->_hasCycling = 1;
          while (1)
          {
            LOBYTE(v68) = 0;
            v51 = [v4 position] + 1;
            if (v51 >= [v4 position] && (v52 = objc_msgSend(v4, "position") + 1, v52 <= objc_msgSend(v4, "length")))
            {
              v53 = [v4 data];
              [v53 getBytes:&v68 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v50 |= (LOBYTE(v68) & 0x7F) << v48;
            if ((LOBYTE(v68) & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v13 = v49++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_100;
            }
          }

          v22 = (v50 != 0) & ~[v4 hasError];
LABEL_100:
          v62 = 40;
        }

        else
        {
          if (v15 != 6)
          {
            goto LABEL_95;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasUnknown = 1;
          while (1)
          {
            LOBYTE(v68) = 0;
            v26 = [v4 position] + 1;
            if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
            {
              v28 = [v4 data];
              [v28 getBytes:&v68 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v25 |= (LOBYTE(v68) & 0x7F) << v23;
            if ((LOBYTE(v68) & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v13 = v24++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_106;
            }
          }

          v22 = (v25 != 0) & ~[v4 hasError];
LABEL_106:
          v62 = 42;
        }

LABEL_109:
        *(&v5->super.super.isa + v62) = v22;
        goto LABEL_110;
      }

      if (v15 == 7)
      {
        v5->_hasRaw_startDate = 1;
        v68 = 0.0;
        v60 = [v4 position] + 8;
        if (v60 >= [v4 position] && (v61 = objc_msgSend(v4, "position") + 8, v61 <= objc_msgSend(v4, "length")))
        {
          v64 = [v4 data];
          [v64 getBytes:&v68 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_startDate = v68;
      }

      else
      {
        if (v15 != 8)
        {
LABEL_95:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_119;
          }

          goto LABEL_110;
        }

        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v68) = 0;
          v38 = [v4 position] + 1;
          if (v38 >= [v4 position] && (v39 = objc_msgSend(v4, "position") + 1, v39 <= objc_msgSend(v4, "length")))
          {
            v40 = [v4 data];
            [v40 getBytes:&v68 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v37 |= (LOBYTE(v68) & 0x7F) << v35;
          if ((LOBYTE(v68) & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          if (v36++ > 8)
          {
            goto LABEL_114;
          }
        }

        if (([v4 hasError] & 1) != 0 || v37 > 3)
        {
LABEL_114:
          LODWORD(v37) = 0;
        }

        v5->_confidence = v37;
      }

LABEL_110:
      v63 = [v4 position];
      if (v63 >= [v4 length])
      {
        goto LABEL_118;
      }
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v5->_hasRunning = 1;
        while (1)
        {
          LOBYTE(v68) = 0;
          v57 = [v4 position] + 1;
          if (v57 >= [v4 position] && (v58 = objc_msgSend(v4, "position") + 1, v58 <= objc_msgSend(v4, "length")))
          {
            v59 = [v4 data];
            [v59 getBytes:&v68 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v56 |= (LOBYTE(v68) & 0x7F) << v54;
          if ((LOBYTE(v68) & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v13 = v55++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_102;
          }
        }

        v22 = (v56 != 0) & ~[v4 hasError];
LABEL_102:
        v62 = 36;
      }

      else
      {
        if (v15 != 4)
        {
          goto LABEL_95;
        }

        v29 = 0;
        v30 = 0;
        v31 = 0;
        v5->_hasAutomotive = 1;
        while (1)
        {
          LOBYTE(v68) = 0;
          v32 = [v4 position] + 1;
          if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
          {
            v34 = [v4 data];
            [v34 getBytes:&v68 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v31 |= (LOBYTE(v68) & 0x7F) << v29;
          if ((LOBYTE(v68) & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v13 = v30++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_108;
          }
        }

        v22 = (v31 != 0) & ~[v4 hasError];
LABEL_108:
        v62 = 38;
      }
    }

    else if (v15 == 1)
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v5->_hasStationary = 1;
      while (1)
      {
        LOBYTE(v68) = 0;
        v45 = [v4 position] + 1;
        if (v45 >= [v4 position] && (v46 = objc_msgSend(v4, "position") + 1, v46 <= objc_msgSend(v4, "length")))
        {
          v47 = [v4 data];
          [v47 getBytes:&v68 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v44 |= (LOBYTE(v68) & 0x7F) << v42;
        if ((LOBYTE(v68) & 0x80) == 0)
        {
          break;
        }

        v42 += 7;
        v13 = v43++ >= 9;
        if (v13)
        {
          LOBYTE(v22) = 0;
          goto LABEL_98;
        }
      }

      v22 = (v44 != 0) & ~[v4 hasError];
LABEL_98:
      v62 = 32;
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_95;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      v5->_hasWalking = 1;
      while (1)
      {
        LOBYTE(v68) = 0;
        v19 = [v4 position] + 1;
        if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
        {
          v21 = [v4 data];
          [v21 getBytes:&v68 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v18 |= (LOBYTE(v68) & 0x7F) << v16;
        if ((LOBYTE(v68) & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v13 = v17++ >= 9;
        if (v13)
        {
          LOBYTE(v22) = 0;
          goto LABEL_104;
        }
      }

      v22 = (v18 != 0) & ~[v4 hasError];
LABEL_104:
      v62 = 34;
    }

    goto LABEL_109;
  }

LABEL_118:
  if ([v4 hasError])
  {
LABEL_119:
    v65 = 0;
  }

  else
  {
LABEL_120:
    v65 = v5;
  }

  return v65;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity stationary](self, "stationary")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity walking](self, "walking")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity running](self, "running")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity automotive](self, "automotive")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity cycling](self, "cycling")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity unknown](self, "unknown")}];
  v10 = [(BMMotionActivity *)self startDate];
  v11 = BMMotionActivityConfidenceAsString([(BMMotionActivity *)self confidence]);
  v12 = [v3 initWithFormat:@"BMMotionActivity with stationary: %@, walking: %@, running: %@, automotive: %@, cycling: %@, unknown: %@, startDate: %@, confidence: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMMotionActivity)initWithStationary:(id)a3 walking:(id)a4 running:(id)a5 automotive:(id)a6 cycling:(id)a7 unknown:(id)a8 startDate:(id)a9 confidence:(int)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v26.receiver = self;
  v26.super_class = BMMotionActivity;
  v23 = [(BMEventBase *)&v26 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v16)
    {
      v23->_hasStationary = 1;
      v23->_stationary = [v16 BOOLValue];
    }

    else
    {
      v23->_hasStationary = 0;
      v23->_stationary = 0;
    }

    if (v17)
    {
      v23->_hasWalking = 1;
      v23->_walking = [v17 BOOLValue];
    }

    else
    {
      v23->_hasWalking = 0;
      v23->_walking = 0;
    }

    if (v18)
    {
      v23->_hasRunning = 1;
      v23->_running = [v18 BOOLValue];
    }

    else
    {
      v23->_hasRunning = 0;
      v23->_running = 0;
    }

    if (v19)
    {
      v23->_hasAutomotive = 1;
      v23->_automotive = [v19 BOOLValue];
    }

    else
    {
      v23->_hasAutomotive = 0;
      v23->_automotive = 0;
    }

    if (v20)
    {
      v23->_hasCycling = 1;
      v23->_cycling = [v20 BOOLValue];
    }

    else
    {
      v23->_hasCycling = 0;
      v23->_cycling = 0;
    }

    if (v21)
    {
      v23->_hasUnknown = 1;
      v23->_unknown = [v21 BOOLValue];
    }

    else
    {
      v23->_hasUnknown = 0;
      v23->_unknown = 0;
    }

    if (v22)
    {
      v23->_hasRaw_startDate = 1;
      [v22 timeIntervalSince1970];
    }

    else
    {
      v23->_hasRaw_startDate = 0;
      v24 = -1.0;
    }

    v23->_raw_startDate = v24;
    v23->_confidence = a10;
  }

  return v23;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stationary" number:1 type:12 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"walking" number:2 type:12 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"running" number:3 type:12 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"automotive" number:4 type:12 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cycling" number:5 type:12 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"unknown" number:6 type:12 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startDate" number:7 type:0 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidence" number:8 type:4 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
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

    v8 = [[BMMotionActivity alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[11] = 0;
    }
  }

  return v4;
}

@end