@interface BMAppWebUsage
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppWebUsage)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMAppWebUsage)initWithUniqueID:(id)a3 absoluteTimestamp:(id)a4 usageState:(int)a5 webpageURL:(id)a6 webDomain:(id)a7 applicationID:(id)a8 deviceID:(id)a9 isUsageTrusted:(id)a10 safariProfileID:(id)a11;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAppWebUsage

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:1];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usageState" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"webpageURL" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"webDomain" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"applicationID" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceID" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isUsageTrusted" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"safariProfileID" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
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
    v6 = [(BMAppWebUsage *)self uniqueID];
    v7 = [v5 uniqueID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAppWebUsage *)self uniqueID];
      v10 = [v5 uniqueID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    v13 = [(BMAppWebUsage *)self absoluteTimestamp];
    v14 = [v5 absoluteTimestamp];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMAppWebUsage *)self absoluteTimestamp];
      v17 = [v5 absoluteTimestamp];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_33;
      }
    }

    v19 = [(BMAppWebUsage *)self usageState];
    if (v19 == [v5 usageState])
    {
      v20 = [(BMAppWebUsage *)self webpageURL];
      v21 = [v5 webpageURL];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMAppWebUsage *)self webpageURL];
        v24 = [v5 webpageURL];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_33;
        }
      }

      v26 = [(BMAppWebUsage *)self webDomain];
      v27 = [v5 webDomain];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(BMAppWebUsage *)self webDomain];
        v30 = [v5 webDomain];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_33;
        }
      }

      v32 = [(BMAppWebUsage *)self applicationID];
      v33 = [v5 applicationID];
      v34 = v33;
      if (v32 == v33)
      {
      }

      else
      {
        v35 = [(BMAppWebUsage *)self applicationID];
        v36 = [v5 applicationID];
        v37 = [v35 isEqual:v36];

        if (!v37)
        {
          goto LABEL_33;
        }
      }

      v38 = [(BMAppWebUsage *)self deviceID];
      v39 = [v5 deviceID];
      v40 = v39;
      if (v38 == v39)
      {
      }

      else
      {
        v41 = [(BMAppWebUsage *)self deviceID];
        v42 = [v5 deviceID];
        v43 = [v41 isEqual:v42];

        if (!v43)
        {
          goto LABEL_33;
        }
      }

      if (!-[BMAppWebUsage hasIsUsageTrusted](self, "hasIsUsageTrusted") && ![v5 hasIsUsageTrusted] || -[BMAppWebUsage hasIsUsageTrusted](self, "hasIsUsageTrusted") && objc_msgSend(v5, "hasIsUsageTrusted") && (v44 = -[BMAppWebUsage isUsageTrusted](self, "isUsageTrusted"), v44 == objc_msgSend(v5, "isUsageTrusted")))
      {
        v46 = [(BMAppWebUsage *)self safariProfileID];
        v47 = [v5 safariProfileID];
        if (v46 == v47)
        {
          v12 = 1;
        }

        else
        {
          v48 = [(BMAppWebUsage *)self safariProfileID];
          v49 = [v5 safariProfileID];
          v12 = [v48 isEqual:v49];
        }

        goto LABEL_34;
      }
    }

LABEL_33:
    v12 = 0;
LABEL_34:

    goto LABEL_35;
  }

  v12 = 0;
LABEL_35:

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
  v35[9] = *MEMORY[0x1E69E9840];
  v3 = [(BMAppWebUsage *)self uniqueID];
  v4 = [(BMAppWebUsage *)self absoluteTimestamp];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMAppWebUsage *)self absoluteTimestamp];
    [v6 timeIntervalSinceReferenceDate];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppWebUsage usageState](self, "usageState")}];
  v9 = [(BMAppWebUsage *)self webpageURL];
  v33 = [(BMAppWebUsage *)self webDomain];
  v32 = [(BMAppWebUsage *)self applicationID];
  v10 = [(BMAppWebUsage *)self deviceID];
  if ([(BMAppWebUsage *)self hasIsUsageTrusted])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppWebUsage isUsageTrusted](self, "isUsageTrusted")}];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(BMAppWebUsage *)self safariProfileID];
  v34[0] = @"uniqueID";
  v13 = v3;
  if (!v3)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v13;
  v35[0] = v13;
  v34[1] = @"absoluteTimestamp";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v14;
  v35[1] = v14;
  v34[2] = @"usageState";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v15;
  v35[2] = v15;
  v34[3] = @"webpageURL";
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v3;
  v25 = v16;
  v35[3] = v16;
  v34[4] = @"webDomain";
  v17 = v33;
  if (!v33)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v7;
  v35[4] = v17;
  v34[5] = @"applicationID";
  v18 = v32;
  if (!v32)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v35[5] = v18;
  v34[6] = @"deviceID";
  v19 = v10;
  if (!v10)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v9;
  v35[6] = v19;
  v34[7] = @"isUsageTrusted";
  v21 = v11;
  if (!v11)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v35[7] = v21;
  v34[8] = @"safariProfileID";
  v22 = v12;
  if (!v12)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v35[8] = v22;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:9];
  if (v12)
  {
    if (v11)
    {
      goto LABEL_27;
    }

LABEL_40:

    if (v10)
    {
      goto LABEL_28;
    }

    goto LABEL_41;
  }

  if (!v11)
  {
    goto LABEL_40;
  }

LABEL_27:
  if (v10)
  {
    goto LABEL_28;
  }

LABEL_41:

LABEL_28:
  if (!v32)
  {
  }

  if (!v33)
  {
  }

  if (v20)
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
      if (v30)
      {
        goto LABEL_35;
      }

LABEL_44:

      if (v31)
      {
        goto LABEL_36;
      }

      goto LABEL_45;
    }
  }

  if (!v30)
  {
    goto LABEL_44;
  }

LABEL_35:
  if (v31)
  {
    goto LABEL_36;
  }

LABEL_45:

LABEL_36:
  v23 = *MEMORY[0x1E69E9840];

  return v29;
}

- (BMAppWebUsage)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v90[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"uniqueID"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [v5 objectForKeyedSubscript:@"absoluteTimestamp"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = MEMORY[0x1E695DF00];
        v11 = v8;
        v12 = [v10 alloc];
        [v11 doubleValue];
        v14 = v13;

        v15 = [v12 initWithTimeIntervalSinceReferenceDate:v14];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v9 = [v21 dateFromString:v8];

          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v9 = 0;
            v20 = 0;
            goto LABEL_45;
          }

          v56 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = *MEMORY[0x1E698F240];
          v87 = *MEMORY[0x1E696A578];
          v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
          v88 = v71;
          v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
          v58 = [v56 initWithDomain:v57 code:2 userInfo:?];
          v9 = 0;
          v20 = 0;
          *a4 = v58;
          goto LABEL_44;
        }

        v15 = v8;
      }

      v9 = v15;
    }

    else
    {
      v9 = 0;
    }

LABEL_16:
    v22 = [v5 objectForKeyedSubscript:@"usageState"];
    v66 = v8;
    v69 = v22;
    if (v22 && (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v71 = v23;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v71 = 0;
            v20 = 0;
            goto LABEL_44;
          }

          v47 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = v9;
          v49 = *MEMORY[0x1E698F240];
          v85 = *MEMORY[0x1E696A578];
          v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"usageState"];
          v86 = v32;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
          v50 = v49;
          v9 = v48;
          v71 = 0;
          v20 = 0;
          *a4 = [v47 initWithDomain:v50 code:2 userInfo:v24];
LABEL_43:

          v8 = v66;
LABEL_44:

          goto LABEL_45;
        }

        v71 = [MEMORY[0x1E696AD98] numberWithInt:BMAppWebUsageStateFromString(v23)];
      }
    }

    else
    {
      v71 = 0;
    }

    v24 = [v5 objectForKeyedSubscript:@"webpageURL"];
    v70 = v7;
    if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v32 = 0;
          v20 = 0;
          goto LABEL_43;
        }

        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = v9;
        v37 = *MEMORY[0x1E698F240];
        v83 = *MEMORY[0x1E696A578];
        v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"webpageURL"];
        v84 = v68;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v38 = v37;
        v9 = v36;
        v32 = 0;
        v20 = 0;
        *a4 = [v35 initWithDomain:v38 code:2 userInfo:v25];
        goto LABEL_42;
      }

      v65 = v24;
    }

    else
    {
      v65 = 0;
    }

    v25 = [v5 objectForKeyedSubscript:@"webDomain"];
    v61 = v6;
    v64 = v9;
    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v68 = 0;
          v20 = 0;
          v32 = v65;
          goto LABEL_42;
        }

        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = *MEMORY[0x1E698F240];
        v81 = *MEMORY[0x1E696A578];
        v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"webDomain"];
        v82 = v63;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v68 = 0;
        v20 = 0;
        *a4 = [v39 initWithDomain:v40 code:2 userInfo:v26];
        goto LABEL_86;
      }

      v68 = v25;
    }

    else
    {
      v68 = 0;
    }

    v26 = [v5 objectForKeyedSubscript:@"applicationID"];
    if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v63 = 0;
LABEL_28:
      v27 = [v5 objectForKeyedSubscript:@"deviceID"];
      v67 = self;
      if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v62 = 0;
            v20 = 0;
            goto LABEL_40;
          }

          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v45 = *MEMORY[0x1E698F240];
          v77 = *MEMORY[0x1E696A578];
          v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceID"];
          v78 = v29;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
          v46 = [v44 initWithDomain:v45 code:2 userInfo:v28];
          v62 = 0;
          v20 = 0;
          *a4 = v46;
          goto LABEL_39;
        }

        v62 = v27;
      }

      else
      {
        v62 = 0;
      }

      v28 = [v5 objectForKeyedSubscript:@"isUsageTrusted"];
      if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v29 = 0;
            v20 = 0;
            goto LABEL_39;
          }

          v51 = objc_alloc(MEMORY[0x1E696ABC0]);
          v52 = *MEMORY[0x1E698F240];
          v75 = *MEMORY[0x1E696A578];
          v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isUsageTrusted"];
          v76 = v31;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          v53 = [v51 initWithDomain:v52 code:2 userInfo:v30];
          v29 = 0;
          v20 = 0;
          *a4 = v53;
          goto LABEL_38;
        }

        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = [v5 objectForKeyedSubscript:@"safariProfileID"];
      if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v60 = objc_alloc(MEMORY[0x1E696ABC0]);
            v59 = *MEMORY[0x1E698F240];
            v73 = *MEMORY[0x1E696A578];
            v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"safariProfileID"];
            v74 = v54;
            v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
            *a4 = [v60 initWithDomain:v59 code:2 userInfo:v55];
          }

          v31 = 0;
          v20 = 0;
          goto LABEL_38;
        }

        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v20 = -[BMAppWebUsage initWithUniqueID:absoluteTimestamp:usageState:webpageURL:webDomain:applicationID:deviceID:isUsageTrusted:safariProfileID:](v67, "initWithUniqueID:absoluteTimestamp:usageState:webpageURL:webDomain:applicationID:deviceID:isUsageTrusted:safariProfileID:", v70, v64, [v71 intValue], v65, v68, v63, v62, v29, v31);
      v67 = v20;
LABEL_38:

LABEL_39:
      self = v67;
LABEL_40:
      v32 = v65;

LABEL_41:
      v6 = v61;
      v9 = v64;
LABEL_42:

      v7 = v70;
      goto LABEL_43;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = v26;
      goto LABEL_28;
    }

    if (a4)
    {
      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      v42 = *MEMORY[0x1E698F240];
      v79 = *MEMORY[0x1E696A578];
      v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"applicationID"];
      v80 = v62;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
      v43 = [v41 initWithDomain:v42 code:2 userInfo:v27];
      v63 = 0;
      v20 = 0;
      *a4 = v43;
      goto LABEL_40;
    }

    v63 = 0;
    v20 = 0;
LABEL_86:
    v32 = v65;
    goto LABEL_41;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    goto LABEL_4;
  }

  if (!a4)
  {
    v7 = 0;
    v20 = 0;
    goto LABEL_46;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v89 = *MEMORY[0x1E696A578];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
  v90[0] = v18;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:&v89 count:1];
  v19 = v17;
  v9 = v18;
  v7 = 0;
  v20 = 0;
  *a4 = [v16 initWithDomain:v19 code:2 userInfo:v8];
LABEL_45:

LABEL_46:
  v33 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppWebUsage *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  usageState = self->_usageState;
  PBDataWriterWriteUint32Field();
  if (self->_webpageURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_webDomain)
  {
    PBDataWriterWriteStringField();
  }

  v6 = v8;
  if (self->_applicationID)
  {
    PBDataWriterWriteStringField();
    v6 = v8;
  }

  if (self->_deviceID)
  {
    PBDataWriterWriteStringField();
    v6 = v8;
  }

  if (self->_hasIsUsageTrusted)
  {
    isUsageTrusted = self->_isUsageTrusted;
    PBDataWriterWriteBOOLField();
    v6 = v8;
  }

  if (self->_safariProfileID)
  {
    PBDataWriterWriteStringField();
    v6 = v8;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = BMAppWebUsage;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_72;
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
        LOBYTE(v40) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v40) & 0x7F) << v7;
        if ((LOBYTE(v40) & 0x80) == 0)
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
          if (v15 == 3)
          {
            v20 = 0;
            v21 = 0;
            v22 = 0;
            while (1)
            {
              LOBYTE(v40) = 0;
              v23 = [v4 position] + 1;
              if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
              {
                v25 = [v4 data];
                [v25 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v22 |= (LOBYTE(v40) & 0x7F) << v20;
              if ((LOBYTE(v40) & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              if (v21++ > 8)
              {
                goto LABEL_64;
              }
            }

            if (([v4 hasError] & 1) != 0 || v22 > 3)
            {
LABEL_64:
              LODWORD(v22) = 0;
            }

            v5->_usageState = v22;
            goto LABEL_49;
          }

          if (v15 == 4)
          {
            v16 = PBReaderReadString();
            v17 = 56;
            goto LABEL_48;
          }
        }

        else
        {
          if (v15 == 1)
          {
            v16 = PBReaderReadString();
            v17 = 48;
            goto LABEL_48;
          }

          if (v15 == 2)
          {
            v5->_hasRaw_absoluteTimestamp = 1;
            v40 = 0.0;
            v18 = [v4 position] + 8;
            if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 8, v19 <= objc_msgSend(v4, "length")))
            {
              v36 = [v4 data];
              [v36 getBytes:&v40 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v5->_raw_absoluteTimestamp = v40;
            goto LABEL_49;
          }
        }
      }

      else if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v16 = PBReaderReadString();
          v17 = 64;
          goto LABEL_48;
        }

        if (v15 == 6)
        {
          v16 = PBReaderReadString();
          v17 = 72;
          goto LABEL_48;
        }
      }

      else
      {
        switch(v15)
        {
          case 7:
            v16 = PBReaderReadString();
            v17 = 80;
            goto LABEL_48;
          case 8:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v5->_hasIsUsageTrusted = 1;
            while (1)
            {
              LOBYTE(v40) = 0;
              v32 = [v4 position] + 1;
              if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
              {
                v34 = [v4 data];
                [v34 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v31 |= (LOBYTE(v40) & 0x7F) << v29;
              if ((LOBYTE(v40) & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v13 = v30++ >= 9;
              if (v13)
              {
                LOBYTE(v35) = 0;
                goto LABEL_67;
              }
            }

            v35 = (v31 != 0) & ~[v4 hasError];
LABEL_67:
            v5->_isUsageTrusted = v35;
            goto LABEL_49;
          case 9:
            v16 = PBReaderReadString();
            v17 = 88;
LABEL_48:
            v27 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            goto LABEL_49;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_71;
      }

LABEL_49:
      v28 = [v4 position];
    }

    while (v28 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_71:
    v37 = 0;
  }

  else
  {
LABEL_72:
    v37 = v5;
  }

  return v37;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMAppWebUsage *)self uniqueID];
  v5 = [(BMAppWebUsage *)self absoluteTimestamp];
  v6 = BMAppWebUsageStateAsString([(BMAppWebUsage *)self usageState]);
  v7 = [(BMAppWebUsage *)self webpageURL];
  v8 = [(BMAppWebUsage *)self webDomain];
  v9 = [(BMAppWebUsage *)self applicationID];
  v10 = [(BMAppWebUsage *)self deviceID];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppWebUsage isUsageTrusted](self, "isUsageTrusted")}];
  v12 = [(BMAppWebUsage *)self safariProfileID];
  v13 = [v3 initWithFormat:@"BMAppWebUsage with uniqueID: %@, absoluteTimestamp: %@, usageState: %@, webpageURL: %@, webDomain: %@, applicationID: %@, deviceID: %@, isUsageTrusted: %@, safariProfileID: %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (BMAppWebUsage)initWithUniqueID:(id)a3 absoluteTimestamp:(id)a4 usageState:(int)a5 webpageURL:(id)a6 webDomain:(id)a7 applicationID:(id)a8 deviceID:(id)a9 isUsageTrusted:(id)a10 safariProfileID:(id)a11
{
  v28 = a3;
  v17 = a4;
  v27 = a6;
  v26 = a7;
  v25 = a8;
  v24 = a9;
  v18 = a10;
  v19 = a11;
  v29.receiver = self;
  v29.super_class = BMAppWebUsage;
  v20 = [(BMEventBase *)&v29 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_uniqueID, a3);
    if (v17)
    {
      v20->_hasRaw_absoluteTimestamp = 1;
      [v17 timeIntervalSinceReferenceDate];
    }

    else
    {
      v20->_hasRaw_absoluteTimestamp = 0;
      v21 = -1.0;
    }

    v20->_raw_absoluteTimestamp = v21;
    v20->_usageState = a5;
    objc_storeStrong(&v20->_webpageURL, a6);
    objc_storeStrong(&v20->_webDomain, a7);
    objc_storeStrong(&v20->_applicationID, a8);
    objc_storeStrong(&v20->_deviceID, a9);
    if (v18)
    {
      v20->_hasIsUsageTrusted = 1;
      v20->_isUsageTrusted = [v18 BOOLValue];
    }

    else
    {
      v20->_hasIsUsageTrusted = 0;
      v20->_isUsageTrusted = 0;
    }

    objc_storeStrong(&v20->_safariProfileID, a11);
  }

  return v20;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:2 type:0 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usageState" number:3 type:4 subMessageClass:0];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"webpageURL" number:4 type:13 subMessageClass:0];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"webDomain" number:5 type:13 subMessageClass:0];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"applicationID" number:6 type:13 subMessageClass:0];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceID" number:7 type:13 subMessageClass:0];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isUsageTrusted" number:8 type:12 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"safariProfileID" number:9 type:13 subMessageClass:0];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMAppWebUsage alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[9] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end