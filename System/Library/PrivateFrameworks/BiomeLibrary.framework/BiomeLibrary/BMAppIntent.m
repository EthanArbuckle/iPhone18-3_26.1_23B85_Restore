@interface BMAppIntent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppIntent)initWithAbsoluteTimestamp:(id)a3 bundleID:(id)a4 sourceID:(id)a5 intentClass:(id)a6 intentVerb:(id)a7 intentType:(int)a8 handlingStatus:(int)a9 interaction:(id)a10 itemID:(id)a11 donatedBySiri:(id)a12 interactionDirection:(int)a13 groupIdentifier:(id)a14;
- (BMAppIntent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (NSString)identifier;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAppIntent

+ (id)columns
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"intentClass" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"intentVerb" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"intentType" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"handlingStatus" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"interaction" dataType:4 requestOnly:0 fieldNumber:8 protoDataType:14 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemID" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"donatedBySiri" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"interactionDirection" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"groupIdentifier" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v17[0] = v16;
  v17[1] = v15;
  v17[2] = v2;
  v17[3] = v3;
  v17[4] = v4;
  v17[5] = v5;
  v17[6] = v6;
  v17[7] = v7;
  v17[8] = v8;
  v17[9] = v14;
  v17[10] = v9;
  v17[11] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppIntent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAppIntent *)self absoluteTimestamp];
    v7 = [v5 absoluteTimestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAppIntent *)self absoluteTimestamp];
      v10 = [v5 absoluteTimestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_41;
      }
    }

    v13 = [(BMAppIntent *)self bundleID];
    v14 = [v5 bundleID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMAppIntent *)self bundleID];
      v17 = [v5 bundleID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_41;
      }
    }

    v19 = [(BMAppIntent *)self sourceID];
    v20 = [v5 sourceID];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMAppIntent *)self sourceID];
      v23 = [v5 sourceID];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_41;
      }
    }

    v25 = [(BMAppIntent *)self intentClass];
    v26 = [v5 intentClass];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMAppIntent *)self intentClass];
      v29 = [v5 intentClass];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_41;
      }
    }

    v31 = [(BMAppIntent *)self intentVerb];
    v32 = [v5 intentVerb];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMAppIntent *)self intentVerb];
      v35 = [v5 intentVerb];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_41;
      }
    }

    v37 = [(BMAppIntent *)self intentType];
    if (v37 != [v5 intentType])
    {
      goto LABEL_41;
    }

    v38 = [(BMAppIntent *)self handlingStatus];
    if (v38 != [v5 handlingStatus])
    {
      goto LABEL_41;
    }

    v39 = [(BMAppIntent *)self interaction];
    v40 = [v5 interaction];
    v41 = v40;
    if (v39 == v40)
    {
    }

    else
    {
      v42 = [(BMAppIntent *)self interaction];
      v43 = [v5 interaction];
      v44 = [v42 isEqual:v43];

      if (!v44)
      {
        goto LABEL_41;
      }
    }

    v45 = [(BMAppIntent *)self itemID];
    v46 = [v5 itemID];
    v47 = v46;
    if (v45 == v46)
    {
    }

    else
    {
      v48 = [(BMAppIntent *)self itemID];
      v49 = [v5 itemID];
      v50 = [v48 isEqual:v49];

      if (!v50)
      {
        goto LABEL_41;
      }
    }

    if (!-[BMAppIntent hasDonatedBySiri](self, "hasDonatedBySiri") && ![v5 hasDonatedBySiri] || -[BMAppIntent hasDonatedBySiri](self, "hasDonatedBySiri") && objc_msgSend(v5, "hasDonatedBySiri") && (v51 = -[BMAppIntent donatedBySiri](self, "donatedBySiri"), v51 == objc_msgSend(v5, "donatedBySiri")))
    {
      v52 = [(BMAppIntent *)self interactionDirection];
      if (v52 == [v5 interactionDirection])
      {
        v53 = [(BMAppIntent *)self groupIdentifier];
        v54 = [v5 groupIdentifier];
        if (v53 == v54)
        {
          v12 = 1;
        }

        else
        {
          v55 = [(BMAppIntent *)self groupIdentifier];
          v56 = [v5 groupIdentifier];
          v12 = [v55 isEqual:v56];
        }

        goto LABEL_42;
      }
    }

LABEL_41:
    v12 = 0;
LABEL_42:

    goto LABEL_43;
  }

  v12 = 0;
LABEL_43:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v46[12] = *MEMORY[0x1E69E9840];
  v3 = [(BMAppIntent *)self absoluteTimestamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMAppIntent *)self absoluteTimestamp];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMAppIntent *)self bundleID];
  v8 = [(BMAppIntent *)self sourceID];
  v9 = [(BMAppIntent *)self intentClass];
  v10 = [(BMAppIntent *)self intentVerb];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntent intentType](self, "intentType")}];
  v43 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntent handlingStatus](self, "handlingStatus")}];
  v11 = [(BMAppIntent *)self interaction];
  v42 = [v11 base64EncodedStringWithOptions:0];

  v41 = [(BMAppIntent *)self itemID];
  v12 = 0;
  if ([(BMAppIntent *)self hasDonatedBySiri])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppIntent donatedBySiri](self, "donatedBySiri")}];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntent interactionDirection](self, "interactionDirection")}];
  v14 = [(BMAppIntent *)self groupIdentifier];
  v45[0] = @"absoluteTimestamp";
  v15 = v6;
  if (!v6)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v15;
  v46[0] = v15;
  v45[1] = @"bundleID";
  v16 = v7;
  if (!v7)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v16;
  v46[1] = v16;
  v45[2] = @"sourceID";
  v17 = v8;
  if (!v8)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v17;
  v46[2] = v17;
  v45[3] = @"intentClass";
  v18 = v9;
  if (!v9)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v6;
  v32 = v18;
  v46[3] = v18;
  v45[4] = @"intentVerb";
  v19 = v10;
  if (!v10)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v7;
  v31 = v19;
  v46[4] = v19;
  v45[5] = @"intentType";
  v20 = v44;
  if (!v44)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v8;
  v46[5] = v20;
  v45[6] = @"handlingStatus";
  v21 = v43;
  if (!v43)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v20;
  v37 = v9;
  v46[6] = v21;
  v45[7] = @"interaction";
  v22 = v42;
  if (!v42)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v10;
  v46[7] = v22;
  v45[8] = @"itemID";
  v24 = v41;
  if (!v41)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v46[8] = v24;
  v45[9] = @"donatedBySiri";
  v25 = v12;
  if (!v12)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v46[9] = v25;
  v45[10] = @"interactionDirection";
  v26 = v13;
  if (!v13)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v46[10] = v26;
  v45[11] = @"groupIdentifier";
  v27 = v14;
  if (!v14)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v46[11] = v27;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:12];
  if (v14)
  {
    if (v13)
    {
      goto LABEL_32;
    }

LABEL_51:

    if (v12)
    {
      goto LABEL_33;
    }

    goto LABEL_52;
  }

  if (!v13)
  {
    goto LABEL_51;
  }

LABEL_32:
  if (v12)
  {
    goto LABEL_33;
  }

LABEL_52:

LABEL_33:
  if (!v41)
  {
  }

  if (!v42)
  {
  }

  if (!v43)
  {
  }

  if (!v44)
  {
  }

  if (!v23)
  {
  }

  if (v37)
  {
    if (v38)
    {
      goto LABEL_45;
    }
  }

  else
  {

    if (v38)
    {
LABEL_45:
      if (v39)
      {
        goto LABEL_46;
      }

LABEL_55:

      if (v40)
      {
        goto LABEL_47;
      }

      goto LABEL_56;
    }
  }

  if (!v39)
  {
    goto LABEL_55;
  }

LABEL_46:
  if (v40)
  {
    goto LABEL_47;
  }

LABEL_56:

LABEL_47:
  v28 = *MEMORY[0x1E69E9840];

  return v36;
}

- (BMAppIntent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v154[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"absoluteTimestamp"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v6;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSinceReferenceDate:v12];
LABEL_6:
    v7 = v13;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v7 = 0;
        goto LABEL_103;
      }

      v75 = objc_alloc(MEMORY[0x1E696ABC0]);
      v76 = *MEMORY[0x1E698F240];
      v153 = *MEMORY[0x1E696A578];
      v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
      v154[0] = v31;
      v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v154 forKeys:&v153 count:1];
      v78 = v76;
      v15 = v77;
      v79 = [v75 initWithDomain:v78 code:2 userInfo:v77];
      v7 = 0;
      v80 = a4;
      a4 = 0;
      *v80 = v79;
      goto LABEL_102;
    }

    v13 = v6;
    goto LABEL_6;
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v7 = [v14 dateFromString:v6];

LABEL_9:
  v15 = [v5 objectForKeyedSubscript:@"bundleID"];
  v126 = v7;
  if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v120 = a4;
    v123 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v120 = a4;
    v123 = v15;
LABEL_12:
    v16 = [v5 objectForKeyedSubscript:@"sourceID"];
    v125 = v16;
    if (!v16 || (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v122 = 0;
LABEL_15:
      v18 = [v5 objectForKeyedSubscript:@"intentClass"];
      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v120)
          {
            v124 = 0;
            a4 = 0;
            v26 = v122;
            v31 = v123;
            goto LABEL_100;
          }

          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = v15;
          v40 = *MEMORY[0x1E698F240];
          v147 = *MEMORY[0x1E696A578];
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"intentClass"];
          v148 = v41;
          v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
          v43 = v40;
          v15 = v39;
          v44 = [v38 initWithDomain:v43 code:2 userInfo:v42];
          v124 = 0;
          a4 = 0;
          *v120 = v44;
          v19 = v41;
          v26 = v122;
          v31 = v123;
          goto LABEL_99;
        }

        v124 = v18;
      }

      else
      {
        v124 = 0;
      }

      v19 = [v5 objectForKeyedSubscript:@"intentVerb"];
      v121 = v19;
      if (v19)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = 0;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v19 = v120;
            if (!v120)
            {
              a4 = 0;
              v26 = v122;
              v31 = v123;
              v42 = v121;
              goto LABEL_99;
            }

            v45 = objc_alloc(MEMORY[0x1E696ABC0]);
            v46 = v15;
            v47 = *MEMORY[0x1E698F240];
            v145 = *MEMORY[0x1E696A578];
            v48 = objc_alloc(MEMORY[0x1E696AEC0]);
            v105 = objc_opt_class();
            v49 = v48;
            v42 = v121;
            v119 = [v49 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v105, @"intentVerb"];
            v146 = v119;
            v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
            v51 = v47;
            v15 = v46;
            v116 = v50;
            v52 = [v45 initWithDomain:v51 code:2 userInfo:?];
            a4 = 0;
            *v120 = v52;
            v19 = 0;
            v26 = v122;
            v31 = v123;
LABEL_98:

LABEL_99:
            goto LABEL_100;
          }

          v19 = v19;
        }
      }

      v20 = [v5 objectForKeyedSubscript:@"intentType"];
      v118 = v19;
      v116 = v20;
      if (v20 && (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v120)
            {
              v119 = 0;
              a4 = 0;
              v26 = v122;
              v31 = v123;
              v42 = v121;
              goto LABEL_98;
            }

            v81 = objc_alloc(MEMORY[0x1E696ABC0]);
            v82 = v15;
            v83 = *MEMORY[0x1E698F240];
            v143 = *MEMORY[0x1E696A578];
            v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"intentType"];
            v144 = v117;
            v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
            v85 = v83;
            v15 = v82;
            v114 = v84;
            v86 = [v81 initWithDomain:v85 code:2 userInfo:?];
            v119 = 0;
            a4 = 0;
            *v120 = v86;
            goto LABEL_128;
          }

          v22 = [MEMORY[0x1E696AD98] numberWithInt:BMAppIntentTypeFromString(v21)];
        }

        v119 = v22;
      }

      else
      {
        v119 = 0;
      }

      v53 = [v5 objectForKeyedSubscript:@"handlingStatus"];
      v114 = v53;
      if (!v53 || (v54 = v53, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v117 = 0;
LABEL_55:
        v56 = [v5 objectForKeyedSubscript:@"interaction"];
        v110 = v15;
        v111 = v6;
        v112 = v56;
        if (!v56)
        {
          goto LABEL_62;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = 0;
          goto LABEL_62;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = v56;
          goto LABEL_62;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v56 options:0];
          if (v56)
          {
LABEL_62:
            v57 = [v5 objectForKeyedSubscript:@"itemID"];
            if (v57)
            {
              objc_opt_class();
              v42 = v121;
              if (objc_opt_isKindOfClass())
              {
                v115 = 0;
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!v120)
                  {
                    v115 = 0;
                    a4 = 0;
                    v31 = v123;
                    goto LABEL_94;
                  }

                  v63 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v64 = *MEMORY[0x1E698F240];
                  v135 = *MEMORY[0x1E696A578];
                  v113 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemID"];
                  v136 = v113;
                  v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
                  v65 = v63;
                  v7 = v126;
                  v66 = v64;
                  v42 = v121;
                  v115 = 0;
                  a4 = 0;
                  *v120 = [v65 initWithDomain:v66 code:2 userInfo:v58];
                  goto LABEL_122;
                }

                v115 = v57;
              }
            }

            else
            {
              v115 = 0;
              v42 = v121;
            }

            v58 = [v5 objectForKeyedSubscript:@"donatedBySiri"];
            v108 = v18;
            v109 = v56;
            if (!v58 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v113 = 0;
              goto LABEL_71;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v113 = v58;
LABEL_71:
              v59 = [v5 objectForKeyedSubscript:@"interactionDirection"];
              if (!v59 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v60 = self;
                v61 = 0;
                goto LABEL_87;
              }

              v60 = self;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v62 = v59;
LABEL_86:
                v61 = v62;
LABEL_87:
                v69 = [v5 objectForKeyedSubscript:@"groupIdentifier"];
                if (!v69 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v70 = 0;
LABEL_90:
                  v71 = [v119 intValue];
                  v72 = [v117 intValue];
                  LODWORD(v106) = [v61 intValue];
                  LODWORD(v104) = v72;
                  v31 = v123;
                  a4 = [(BMAppIntent *)v60 initWithAbsoluteTimestamp:v126 bundleID:v123 sourceID:v122 intentClass:v124 intentVerb:v118 intentType:v71 handlingStatus:v104 interaction:v109 itemID:v115 donatedBySiri:v113 interactionDirection:v106 groupIdentifier:v70];
                  v60 = a4;
LABEL_91:

LABEL_92:
                  self = v60;

                  v7 = v126;
                  v18 = v108;
                  v56 = v109;
                  v42 = v121;
LABEL_93:

LABEL_94:
                  v26 = v122;
LABEL_95:

                  v15 = v110;
                  v6 = v111;
LABEL_96:

LABEL_97:
                  v19 = v118;

                  goto LABEL_98;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v70 = v69;
                  goto LABEL_90;
                }

                a4 = v120;
                if (v120)
                {
                  v128 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v107 = *MEMORY[0x1E698F240];
                  v129 = *MEMORY[0x1E696A578];
                  v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"groupIdentifier"];
                  v130 = v87;
                  v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
                  *v120 = [v128 initWithDomain:v107 code:2 userInfo:v88];

                  v70 = 0;
                  a4 = 0;
                }

                else
                {
                  v70 = 0;
                }

LABEL_126:
                v31 = v123;
                goto LABEL_91;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v62 = [MEMORY[0x1E696AD98] numberWithInt:BMAppIntentInteractionDirectionFromString(v59)];
                goto LABEL_86;
              }

              if (v120)
              {
                v98 = objc_alloc(MEMORY[0x1E696ABC0]);
                v99 = *MEMORY[0x1E698F240];
                v131 = *MEMORY[0x1E696A578];
                v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"interactionDirection"];
                v132 = v70;
                v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
                v100 = [v98 initWithDomain:v99 code:2 userInfo:v69];
                v61 = 0;
                a4 = 0;
                *v120 = v100;
                goto LABEL_126;
              }

              v61 = 0;
              a4 = 0;
LABEL_136:
              v31 = v123;
              goto LABEL_92;
            }

            if (v120)
            {
              v60 = self;
              v67 = objc_alloc(MEMORY[0x1E696ABC0]);
              v68 = *MEMORY[0x1E698F240];
              v133 = *MEMORY[0x1E696A578];
              v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"donatedBySiri"];
              v134 = v61;
              v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
              v113 = 0;
              a4 = 0;
              *v120 = [v67 initWithDomain:v68 code:2 userInfo:v59];
              goto LABEL_136;
            }

            v113 = 0;
            a4 = 0;
LABEL_122:
            v31 = v123;
            goto LABEL_93;
          }

          if (v120)
          {
            v101 = objc_alloc(MEMORY[0x1E696ABC0]);
            v102 = *MEMORY[0x1E698F240];
            v139 = *MEMORY[0x1E696A578];
            v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"interaction"];
            v140 = v115;
            v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
            v103 = v101;
            v7 = v126;
            v56 = 0;
            a4 = 0;
            *v120 = [v103 initWithDomain:v102 code:2 userInfo:v57];
            v26 = v122;
            v31 = v123;
            goto LABEL_131;
          }

          v56 = 0;
          a4 = 0;
          v26 = v122;
          v31 = v123;
LABEL_134:
          v42 = v121;
          goto LABEL_96;
        }

        if (v120)
        {
          v96 = objc_alloc(MEMORY[0x1E696ABC0]);
          v97 = *MEMORY[0x1E698F240];
          v137 = *MEMORY[0x1E696A578];
          v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"interaction"];
          v138 = v115;
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
          v56 = 0;
          a4 = 0;
          *v120 = [v96 initWithDomain:v97 code:2 userInfo:v57];
          v26 = v122;
          v31 = v123;
          v7 = v126;
LABEL_131:
          v42 = v121;
          goto LABEL_95;
        }

        v56 = 0;
        a4 = 0;
LABEL_133:
        v26 = v122;
        v31 = v123;
        goto LABEL_134;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v55 = v54;
LABEL_54:
        v117 = v55;
        goto LABEL_55;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v55 = [MEMORY[0x1E696AD98] numberWithInt:BMAppIntentHandlingStatusFromString(v54)];
        goto LABEL_54;
      }

      if (v120)
      {
        v89 = objc_alloc(MEMORY[0x1E696ABC0]);
        v90 = v15;
        v91 = *MEMORY[0x1E698F240];
        v141 = *MEMORY[0x1E696A578];
        v92 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"handlingStatus"];
        v142 = v92;
        v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
        v94 = v91;
        v15 = v90;
        v112 = v93;
        v95 = [v89 initWithDomain:v94 code:2 userInfo:?];
        v117 = 0;
        a4 = 0;
        *v120 = v95;
        v56 = v92;
        goto LABEL_133;
      }

      v117 = 0;
      a4 = 0;
LABEL_128:
      v26 = v122;
      v31 = v123;
      v42 = v121;
      goto LABEL_97;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v122 = v17;
      goto LABEL_15;
    }

    if (v120)
    {
      v33 = objc_alloc(MEMORY[0x1E696ABC0]);
      v34 = v15;
      v35 = *MEMORY[0x1E698F240];
      v149 = *MEMORY[0x1E696A578];
      v124 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceID"];
      v150 = v124;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v150 forKeys:&v149 count:1];
      v36 = v33;
      v7 = v126;
      v37 = v35;
      v15 = v34;
      v26 = 0;
      a4 = 0;
      *v120 = [v36 initWithDomain:v37 code:2 userInfo:v18];
      v31 = v123;
LABEL_100:

      goto LABEL_101;
    }

    v26 = 0;
    a4 = 0;
    v31 = v123;
LABEL_101:

    goto LABEL_102;
  }

  if (a4)
  {
    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v24 = v15;
    v25 = *MEMORY[0x1E698F240];
    v151 = *MEMORY[0x1E696A578];
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
    v152 = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
    v28 = v23;
    v7 = v126;
    v29 = v25;
    v15 = v24;
    v125 = v27;
    v30 = [v28 initWithDomain:v29 code:2 userInfo:?];
    v31 = 0;
    v32 = a4;
    a4 = 0;
    *v32 = v30;
    goto LABEL_101;
  }

  v31 = 0;
LABEL_102:

LABEL_103:
  v73 = *MEMORY[0x1E69E9840];
  return a4;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_intentClass)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_intentVerb)
  {
    PBDataWriterWriteStringField();
  }

  intentType = self->_intentType;
  PBDataWriterWriteUint32Field();
  handlingStatus = self->_handlingStatus;
  PBDataWriterWriteUint32Field();
  if (self->_interaction)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_itemID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasDonatedBySiri)
  {
    donatedBySiri = self->_donatedBySiri;
    PBDataWriterWriteBOOLField();
  }

  interactionDirection = self->_interactionDirection;
  PBDataWriterWriteUint32Field();
  if (self->_groupIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = BMAppIntent;
  v5 = [(BMEventBase *)&v50 init];
  if (!v5)
  {
    goto LABEL_102;
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
        LOBYTE(v51) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v51) & 0x7F) << v7;
        if ((LOBYTE(v51) & 0x80) == 0)
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
      if ((v14 >> 3) > 6)
      {
        if (v15 > 9)
        {
          if (v15 == 10)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v5->_hasDonatedBySiri = 1;
            while (1)
            {
              LOBYTE(v51) = 0;
              v40 = [v4 position] + 1;
              if (v40 >= [v4 position] && (v41 = objc_msgSend(v4, "position") + 1, v41 <= objc_msgSend(v4, "length")))
              {
                v42 = [v4 data];
                [v42 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v39 |= (LOBYTE(v51) & 0x7F) << v37;
              if ((LOBYTE(v51) & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v13 = v38++ >= 9;
              if (v13)
              {
                LOBYTE(v43) = 0;
                goto LABEL_96;
              }
            }

            v43 = (v39 != 0) & ~[v4 hasError];
LABEL_96:
            v5->_donatedBySiri = v43;
            goto LABEL_99;
          }

          if (v15 != 12)
          {
            if (v15 != 11)
            {
LABEL_80:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_101;
              }

              goto LABEL_99;
            }

            v25 = 0;
            v26 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v51) = 0;
              v27 = [v4 position] + 1;
              if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
              {
                v29 = [v4 data];
                [v29 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v20 |= (LOBYTE(v51) & 0x7F) << v25;
              if ((LOBYTE(v51) & 0x80) == 0)
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

            if (([v4 hasError] & 1) != 0 || v20 > 3)
            {
LABEL_88:
              LODWORD(v20) = 0;
            }

            v45 = 48;
            goto LABEL_94;
          }

          v16 = PBReaderReadString();
          v17 = 104;
        }

        else
        {
          switch(v15)
          {
            case 7:
              v32 = 0;
              v33 = 0;
              v20 = 0;
              while (1)
              {
                LOBYTE(v51) = 0;
                v34 = [v4 position] + 1;
                if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 1, v35 <= objc_msgSend(v4, "length")))
                {
                  v36 = [v4 data];
                  [v36 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v20 |= (LOBYTE(v51) & 0x7F) << v32;
                if ((LOBYTE(v51) & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                v24 = v33++ > 8;
                if (v24)
                {
                  goto LABEL_92;
                }
              }

              if (([v4 hasError] & 1) != 0 || v20 > 7)
              {
LABEL_92:
                LODWORD(v20) = 0;
              }

              v45 = 44;
LABEL_94:
              *(&v5->super.super.isa + v45) = v20;
              goto LABEL_99;
            case 8:
              v16 = PBReaderReadData();
              v17 = 88;
              break;
            case 9:
              v16 = PBReaderReadString();
              v17 = 96;
              break;
            default:
              goto LABEL_80;
          }
        }
      }

      else if (v15 > 3)
      {
        switch(v15)
        {
          case 4:
            v16 = PBReaderReadString();
            v17 = 72;
            break;
          case 5:
            v16 = PBReaderReadString();
            v17 = 80;
            break;
          case 6:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v51) = 0;
              v21 = [v4 position] + 1;
              if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
              {
                v23 = [v4 data];
                [v23 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v20 |= (LOBYTE(v51) & 0x7F) << v18;
              if ((LOBYTE(v51) & 0x80) == 0)
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

            if (([v4 hasError] & 1) != 0 || v20 > 3)
            {
LABEL_84:
              LODWORD(v20) = 0;
            }

            v45 = 40;
            goto LABEL_94;
          default:
            goto LABEL_80;
        }
      }

      else
      {
        switch(v15)
        {
          case 1:
            v5->_hasRaw_absoluteTimestamp = 1;
            v51 = 0.0;
            v30 = [v4 position] + 8;
            if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 8, v31 <= objc_msgSend(v4, "length")))
            {
              v46 = [v4 data];
              [v46 getBytes:&v51 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v5->_raw_absoluteTimestamp = v51;
            goto LABEL_99;
          case 2:
            v16 = PBReaderReadString();
            v17 = 56;
            break;
          case 3:
            v16 = PBReaderReadString();
            v17 = 64;
            break;
          default:
            goto LABEL_80;
        }
      }

      v44 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_99:
      v47 = [v4 position];
    }

    while (v47 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_101:
    v48 = 0;
  }

  else
  {
LABEL_102:
    v48 = v5;
  }

  return v48;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = [(BMAppIntent *)self absoluteTimestamp];
  v16 = [(BMAppIntent *)self bundleID];
  v3 = [(BMAppIntent *)self sourceID];
  v4 = [(BMAppIntent *)self intentClass];
  v13 = [(BMAppIntent *)self intentVerb];
  v5 = BMAppIntentTypeAsString([(BMAppIntent *)self intentType]);
  v6 = BMAppIntentHandlingStatusAsString([(BMAppIntent *)self handlingStatus]);
  v7 = [(BMAppIntent *)self interaction];
  v8 = [(BMAppIntent *)self itemID];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppIntent donatedBySiri](self, "donatedBySiri")}];
  v10 = BMAppIntentInteractionDirectionAsString([(BMAppIntent *)self interactionDirection]);
  v11 = [(BMAppIntent *)self groupIdentifier];
  v15 = [v14 initWithFormat:@"BMAppIntent with absoluteTimestamp: %@, bundleID: %@, sourceID: %@, intentClass: %@, intentVerb: %@, intentType: %@, handlingStatus: %@, interaction: %@, itemID: %@, donatedBySiri: %@, interactionDirection: %@, groupIdentifier: %@", v17, v16, v3, v4, v13, v5, v6, v7, v8, v9, v10, v11];

  return v15;
}

- (BMAppIntent)initWithAbsoluteTimestamp:(id)a3 bundleID:(id)a4 sourceID:(id)a5 intentClass:(id)a6 intentVerb:(id)a7 intentType:(int)a8 handlingStatus:(int)a9 interaction:(id)a10 itemID:(id)a11 donatedBySiri:(id)a12 interactionDirection:(int)a13 groupIdentifier:(id)a14
{
  v19 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  v28 = a7;
  v27 = a10;
  v26 = a11;
  v20 = a12;
  v21 = a14;
  v32.receiver = self;
  v32.super_class = BMAppIntent;
  v22 = [(BMEventBase *)&v32 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v19)
    {
      v22->_hasRaw_absoluteTimestamp = 1;
      [v19 timeIntervalSinceReferenceDate];
    }

    else
    {
      v22->_hasRaw_absoluteTimestamp = 0;
      v23 = -1.0;
    }

    v22->_raw_absoluteTimestamp = v23;
    objc_storeStrong(&v22->_bundleID, a4);
    objc_storeStrong(&v22->_sourceID, a5);
    objc_storeStrong(&v22->_intentClass, a6);
    objc_storeStrong(&v22->_intentVerb, a7);
    v22->_intentType = a8;
    v22->_handlingStatus = a9;
    objc_storeStrong(&v22->_interaction, a10);
    objc_storeStrong(&v22->_itemID, a11);
    if (v20)
    {
      v22->_hasDonatedBySiri = 1;
      v22->_donatedBySiri = [v20 BOOLValue];
    }

    else
    {
      v22->_hasDonatedBySiri = 0;
      v22->_donatedBySiri = 0;
    }

    v22->_interactionDirection = a13;
    objc_storeStrong(&v22->_groupIdentifier, a14);
  }

  return v22;
}

+ (id)protoFields
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v17[0] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:2 type:13 subMessageClass:0];
  v17[1] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceID" number:3 type:13 subMessageClass:0];
  v17[2] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intentClass" number:4 type:13 subMessageClass:0];
  v17[3] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intentVerb" number:5 type:13 subMessageClass:0];
  v17[4] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intentType" number:6 type:4 subMessageClass:0];
  v17[5] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"handlingStatus" number:7 type:4 subMessageClass:0];
  v17[6] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interaction" number:8 type:14 subMessageClass:0];
  v17[7] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemID" number:9 type:13 subMessageClass:0];
  v17[8] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"donatedBySiri" number:10 type:12 subMessageClass:0];
  v17[9] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interactionDirection" number:11 type:4 subMessageClass:0];
  v17[10] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"groupIdentifier" number:12 type:13 subMessageClass:0];
  v17[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  if (a4 == 11)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMAppIntent_v11;
  }

  else
  {
    if (a4 != 12)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMAppIntent;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 36) = a4;
  }

LABEL_9:

  return v9;
}

- (NSString)identifier
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMAppIntent *)self bundleID];
  v5 = [(BMAppIntent *)self itemID];
  v6 = [v3 initWithFormat:@"%@:%@", v4, v5];

  return v6;
}

@end