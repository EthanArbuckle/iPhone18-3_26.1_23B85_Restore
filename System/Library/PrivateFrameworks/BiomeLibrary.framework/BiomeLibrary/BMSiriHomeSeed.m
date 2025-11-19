@interface BMSiriHomeSeed
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriHomeSeed)initWithHomeIdentifier:(id)a3 seed:(id)a4 effectiveFrom:(id)a5 validityDays:(id)a6 createdOn:(id)a7 adoptedOn:(id)a8 switchedCount:(id)a9;
- (BMSiriHomeSeed)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)adoptedOn;
- (NSDate)createdOn;
- (NSDate)effectiveFrom;
- (NSString)description;
- (NSUUID)homeIdentifier;
- (NSUUID)seed;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriHomeSeed

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"homeIdentifier" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"seed" dataType:6 requestOnly:0 fieldNumber:2 protoDataType:14 convertedType:3];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"effectiveFrom" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"validityDays" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"createdOn" dataType:3 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:2];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"adoptedOn" dataType:3 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:2];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"switchedCount" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriHomeSeed *)self homeIdentifier];
    v7 = [v5 homeIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriHomeSeed *)self homeIdentifier];
      v10 = [v5 homeIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    v13 = [(BMSiriHomeSeed *)self seed];
    v14 = [v5 seed];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriHomeSeed *)self seed];
      v17 = [v5 seed];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_33;
      }
    }

    v19 = [(BMSiriHomeSeed *)self effectiveFrom];
    v20 = [v5 effectiveFrom];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMSiriHomeSeed *)self effectiveFrom];
      v23 = [v5 effectiveFrom];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_33;
      }
    }

    if (-[BMSiriHomeSeed hasValidityDays](self, "hasValidityDays") || [v5 hasValidityDays])
    {
      if (![(BMSiriHomeSeed *)self hasValidityDays])
      {
        goto LABEL_33;
      }

      if (![v5 hasValidityDays])
      {
        goto LABEL_33;
      }

      v25 = [(BMSiriHomeSeed *)self validityDays];
      if (v25 != [v5 validityDays])
      {
        goto LABEL_33;
      }
    }

    v26 = [(BMSiriHomeSeed *)self createdOn];
    v27 = [v5 createdOn];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [(BMSiriHomeSeed *)self createdOn];
      v30 = [v5 createdOn];
      v31 = [v29 isEqual:v30];

      if (!v31)
      {
        goto LABEL_33;
      }
    }

    v32 = [(BMSiriHomeSeed *)self adoptedOn];
    v33 = [v5 adoptedOn];
    v34 = v33;
    if (v32 == v33)
    {
    }

    else
    {
      v35 = [(BMSiriHomeSeed *)self adoptedOn];
      v36 = [v5 adoptedOn];
      v37 = [v35 isEqual:v36];

      if (!v37)
      {
        goto LABEL_33;
      }
    }

    if (!-[BMSiriHomeSeed hasSwitchedCount](self, "hasSwitchedCount") && ![v5 hasSwitchedCount])
    {
      v12 = 1;
      goto LABEL_34;
    }

    if (-[BMSiriHomeSeed hasSwitchedCount](self, "hasSwitchedCount") && [v5 hasSwitchedCount])
    {
      v38 = [(BMSiriHomeSeed *)self switchedCount];
      v12 = v38 == [v5 switchedCount];
LABEL_34:

      goto LABEL_35;
    }

LABEL_33:
    v12 = 0;
    goto LABEL_34;
  }

  v12 = 0;
LABEL_35:

  return v12;
}

- (NSDate)adoptedOn
{
  if (self->_hasRaw_adoptedOn)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_adoptedOn];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)createdOn
{
  if (self->_hasRaw_createdOn)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_createdOn];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)effectiveFrom
{
  if (self->_hasRaw_effectiveFrom)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_effectiveFrom];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSUUID)seed
{
  raw_seed = self->_raw_seed;
  if (raw_seed)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_seed toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSUUID)homeIdentifier
{
  raw_homeIdentifier = self->_raw_homeIdentifier;
  if (raw_homeIdentifier)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_homeIdentifier toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v36[7] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriHomeSeed *)self homeIdentifier];
  v4 = [v3 UUIDString];

  v5 = [(BMSiriHomeSeed *)self seed];
  v6 = [v5 UUIDString];

  v7 = [(BMSiriHomeSeed *)self effectiveFrom];
  if (v7)
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = [(BMSiriHomeSeed *)self effectiveFrom];
    [v9 timeIntervalSince1970];
    v34 = [v8 numberWithDouble:?];
  }

  else
  {
    v34 = 0;
  }

  if ([(BMSiriHomeSeed *)self hasValidityDays])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriHomeSeed validityDays](self, "validityDays")}];
  }

  else
  {
    v33 = 0;
  }

  v10 = [(BMSiriHomeSeed *)self createdOn];
  if (v10)
  {
    v11 = MEMORY[0x1E696AD98];
    v12 = [(BMSiriHomeSeed *)self createdOn];
    [v12 timeIntervalSince1970];
    v13 = [v11 numberWithDouble:?];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(BMSiriHomeSeed *)self adoptedOn];
  if (v14)
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [(BMSiriHomeSeed *)self adoptedOn];
    [v16 timeIntervalSince1970];
    v17 = [v15 numberWithDouble:?];
  }

  else
  {
    v17 = 0;
  }

  if ([(BMSiriHomeSeed *)self hasSwitchedCount])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriHomeSeed switchedCount](self, "switchedCount")}];
  }

  else
  {
    v18 = 0;
  }

  v35[0] = @"homeIdentifier";
  v19 = v4;
  if (!v4)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v19;
  v32 = v6;
  v36[0] = v19;
  v35[1] = @"seed";
  v20 = v6;
  if (!v6)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v20;
  v36[1] = v20;
  v35[2] = @"effectiveFrom";
  v21 = v34;
  if (!v34)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v36[2] = v21;
  v35[3] = @"validityDays";
  v22 = v33;
  if (!v33)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v4;
  v36[3] = v22;
  v35[4] = @"createdOn";
  v24 = v13;
  if (!v13)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v36[4] = v24;
  v35[5] = @"adoptedOn";
  v25 = v17;
  if (!v17)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v36[5] = v25;
  v35[6] = @"switchedCount";
  v26 = v18;
  if (!v18)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v36[6] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:7];
  if (v18)
  {
    if (v17)
    {
      goto LABEL_32;
    }

LABEL_43:

    if (v13)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

  if (!v17)
  {
    goto LABEL_43;
  }

LABEL_32:
  if (v13)
  {
    goto LABEL_33;
  }

LABEL_44:

LABEL_33:
  if (!v33)
  {
  }

  if (!v34)
  {
  }

  if (v32)
  {
    if (v23)
    {
      goto LABEL_39;
    }
  }

  else
  {

    if (v23)
    {
      goto LABEL_39;
    }
  }

LABEL_39:
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (BMSiriHomeSeed)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v103[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"homeIdentifier"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v30 = 0;
        goto LABEL_58;
      }

      v28 = objc_alloc(MEMORY[0x1E696ABC0]);
      v29 = *MEMORY[0x1E698F240];
      v100 = *MEMORY[0x1E696A578];
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"homeIdentifier"];
      v101 = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
      v30 = 0;
      *a4 = [v28 initWithDomain:v29 code:2 userInfo:v9];
      goto LABEL_56;
    }

    v8 = v7;
    v18 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
    if (!v18)
    {
      if (!a4)
      {
        v30 = 0;
        goto LABEL_57;
      }

      v57 = objc_alloc(MEMORY[0x1E696ABC0]);
      v58 = *MEMORY[0x1E698F240];
      v102 = *MEMORY[0x1E696A578];
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"homeIdentifier"];
      v103[0] = v9;
      v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:&v102 count:1];
      *a4 = [v57 initWithDomain:v58 code:2 userInfo:v59];

      goto LABEL_66;
    }

    v19 = v18;

    v8 = v19;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"seed"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v9;
    v21 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v20];
    if (!v21)
    {
      v81 = v20;
      if (a4)
      {
        v60 = objc_alloc(MEMORY[0x1E696ABC0]);
        v61 = *MEMORY[0x1E698F240];
        v98 = *MEMORY[0x1E696A578];
        v84 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"seed"];
        v99 = v84;
        v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
        *a4 = [v60 initWithDomain:v61 code:2 userInfo:v62];

        v30 = 0;
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_55;
    }

    v22 = v21;

    v10 = v22;
LABEL_7:
    v72 = a4;
    v11 = [v6 objectForKeyedSubscript:@"effectiveFrom"];
    v81 = v10;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = MEMORY[0x1E695DF00];
        v24 = v11;
        v25 = [v23 alloc];
        [v24 doubleValue];
        v27 = v26;

        v82 = [v25 initWithTimeIntervalSince1970:v27];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v45 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v82 = [v45 dateFromString:v11];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v82 = 0;
              v30 = 0;
              goto LABEL_54;
            }

            v85 = objc_alloc(MEMORY[0x1E696ABC0]);
            v63 = *MEMORY[0x1E698F240];
            v94 = *MEMORY[0x1E696A578];
            v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"effectiveFrom"];
            v95 = v79;
            v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
            v64 = [v85 initWithDomain:v63 code:2 userInfo:v12];
            v82 = 0;
            v30 = 0;
            *v72 = v64;
LABEL_53:

LABEL_54:
            goto LABEL_55;
          }

          v82 = v11;
        }
      }
    }

    else
    {
      v82 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"validityDays"];
    v77 = v9;
    v78 = v11;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v72)
        {
          v79 = 0;
          v30 = 0;
          goto LABEL_53;
        }

        v80 = objc_alloc(MEMORY[0x1E696ABC0]);
        v46 = *MEMORY[0x1E698F240];
        v92 = *MEMORY[0x1E696A578];
        v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"validityDays"];
        v93 = v47;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        v48 = [v80 initWithDomain:v46 code:2 userInfo:v13];
        v79 = 0;
        v30 = 0;
        *v72 = v48;
        goto LABEL_52;
      }

      v79 = v12;
    }

    else
    {
      v79 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"createdOn"];
    v76 = v12;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = MEMORY[0x1E695DF00];
        v32 = v13;
        v33 = [v31 alloc];
        [v32 doubleValue];
        v35 = v34;

        v73 = [v33 initWithTimeIntervalSince1970:v35];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v49 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v73 = [v49 dateFromString:v13];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v72)
            {
              v47 = 0;
              v30 = 0;
              goto LABEL_52;
            }

            v15 = v8;
            v65 = objc_alloc(MEMORY[0x1E696ABC0]);
            v74 = *MEMORY[0x1E698F240];
            v90 = *MEMORY[0x1E696A578];
            v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"createdOn"];
            v91 = v17;
            v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
            v66 = [v65 initWithDomain:v74 code:2 userInfo:v14];
            v47 = 0;
            v30 = 0;
            *v72 = v66;
LABEL_51:

            v8 = v15;
            v11 = v78;
            v12 = v76;
LABEL_52:

            v9 = v77;
            goto LABEL_53;
          }

          v73 = v13;
        }
      }
    }

    else
    {
      v73 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"adoptedOn"];
    v75 = v7;
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v16 = self;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v8;
        v36 = MEMORY[0x1E695DF00];
        v37 = v10;
        v38 = v14;
        v39 = [v36 alloc];
        [v38 doubleValue];
        v41 = v40;

        v10 = v37;
        v42 = [v39 initWithTimeIntervalSince1970:v41];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v8;
          v50 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v17 = [v50 dateFromString:v14];

          goto LABEL_46;
        }

        objc_opt_class();
        v15 = v8;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v72)
          {
            v17 = 0;
            v30 = 0;
            v47 = v73;
            v7 = v75;
            goto LABEL_51;
          }

          v67 = objc_alloc(MEMORY[0x1E696ABC0]);
          v68 = *MEMORY[0x1E698F240];
          v88 = *MEMORY[0x1E696A578];
          v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"adoptedOn"];
          v89 = v52;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
          v69 = [v67 initWithDomain:v68 code:2 userInfo:v51];
          v17 = 0;
          v30 = 0;
          *v72 = v69;
          v47 = v73;
          goto LABEL_50;
        }

        v42 = v14;
      }

      v17 = v42;
    }

    else
    {
      v15 = v8;
      v16 = self;
      v17 = 0;
    }

LABEL_46:
    v51 = [v6 objectForKeyedSubscript:@"switchedCount"];
    if (v51 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      v47 = v73;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v72)
        {
          v71 = objc_alloc(MEMORY[0x1E696ABC0]);
          v70 = *MEMORY[0x1E698F240];
          v86 = *MEMORY[0x1E696A578];
          v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"switchedCount"];
          v87 = v55;
          v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
          *v72 = [v71 initWithDomain:v70 code:2 userInfo:v56];
        }

        v52 = 0;
        v30 = 0;
        goto LABEL_50;
      }

      v52 = v51;
    }

    else
    {
      v52 = 0;
      v47 = v73;
    }

    v30 = [(BMSiriHomeSeed *)v16 initWithHomeIdentifier:v15 seed:v10 effectiveFrom:v82 validityDays:v79 createdOn:v47 adoptedOn:v17 switchedCount:v52];
    v16 = v30;
LABEL_50:

    self = v16;
    v7 = v75;
    goto LABEL_51;
  }

  if (!a4)
  {
LABEL_66:
    v30 = 0;
    goto LABEL_56;
  }

  v43 = objc_alloc(MEMORY[0x1E696ABC0]);
  v44 = *MEMORY[0x1E698F240];
  v96 = *MEMORY[0x1E696A578];
  v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"seed"];
  v97 = v81;
  v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
  v30 = 0;
  *a4 = [v43 initWithDomain:v44 code:2 userInfo:?];

LABEL_55:
LABEL_56:

LABEL_57:
LABEL_58:

  v53 = *MEMORY[0x1E69E9840];
  return v30;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriHomeSeed *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_raw_homeIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  if (self->_raw_seed)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  if (self->_hasRaw_effectiveFrom)
  {
    raw_effectiveFrom = self->_raw_effectiveFrom;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

  if (self->_hasValidityDays)
  {
    validityDays = self->_validityDays;
    PBDataWriterWriteUint32Field();
    v4 = v10;
  }

  if (self->_hasRaw_createdOn)
  {
    raw_createdOn = self->_raw_createdOn;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

  if (self->_hasRaw_adoptedOn)
  {
    raw_adoptedOn = self->_raw_adoptedOn;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

  if (self->_hasSwitchedCount)
  {
    switchedCount = self->_switchedCount;
    PBDataWriterWriteUint32Field();
    v4 = v10;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = BMSiriHomeSeed;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_80;
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
        LOBYTE(v48) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v48 & 0x7F) << v7;
        if ((v48 & 0x80) == 0)
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
      if ((v14 >> 3) <= 3)
      {
        switch(v15)
        {
          case 1:
            v27 = PBReaderReadData();
            if ([v27 length] != 16)
            {
              goto LABEL_82;
            }

            v28 = 16;
            break;
          case 2:
            v27 = PBReaderReadData();
            if ([v27 length] != 16)
            {
LABEL_82:

              goto LABEL_79;
            }

            v28 = 24;
            break;
          case 3:
            v5->_hasRaw_effectiveFrom = 1;
            v48 = 0;
            v18 = [v4 position] + 8;
            if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 8, v19 <= objc_msgSend(v4, "length")))
            {
              v43 = [v4 data];
              [v43 getBytes:&v48 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v40 = v48;
            v41 = 40;
            goto LABEL_76;
          default:
            goto LABEL_44;
        }

        v37 = *(&v5->super.super.isa + v28);
        *(&v5->super.super.isa + v28) = v27;
      }

      else
      {
        if (v15 > 5)
        {
          if (v15 == 6)
          {
            v5->_hasRaw_adoptedOn = 1;
            v48 = 0;
            v35 = [v4 position] + 8;
            if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 8, v36 <= objc_msgSend(v4, "length")))
            {
              v39 = [v4 data];
              [v39 getBytes:&v48 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v40 = v48;
            v41 = 72;
LABEL_76:
            *(&v5->super.super.isa + v41) = v40;
            goto LABEL_77;
          }

          if (v15 != 7)
          {
LABEL_44:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_79;
            }

            goto LABEL_77;
          }

          v20 = 0;
          v21 = 0;
          v22 = 0;
          v5->_hasSwitchedCount = 1;
          while (1)
          {
            LOBYTE(v48) = 0;
            v23 = [v4 position] + 1;
            if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
            {
              v25 = [v4 data];
              [v25 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v22 |= (v48 & 0x7F) << v20;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v13 = v21++ >= 9;
            if (v13)
            {
              v26 = 0;
              goto LABEL_68;
            }
          }

          if ([v4 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v22;
          }

LABEL_68:
          v38 = 92;
        }

        else
        {
          if (v15 != 4)
          {
            if (v15 != 5)
            {
              goto LABEL_44;
            }

            v5->_hasRaw_createdOn = 1;
            v48 = 0;
            v16 = [v4 position] + 8;
            if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
            {
              v42 = [v4 data];
              [v42 getBytes:&v48 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v40 = v48;
            v41 = 56;
            goto LABEL_76;
          }

          v29 = 0;
          v30 = 0;
          v31 = 0;
          v5->_hasValidityDays = 1;
          while (1)
          {
            LOBYTE(v48) = 0;
            v32 = [v4 position] + 1;
            if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 1, v33 <= objc_msgSend(v4, "length")))
            {
              v34 = [v4 data];
              [v34 getBytes:&v48 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v31 |= (v48 & 0x7F) << v29;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v13 = v30++ >= 9;
            if (v13)
            {
              v26 = 0;
              goto LABEL_64;
            }
          }

          if ([v4 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v31;
          }

LABEL_64:
          v38 = 88;
        }

        *(&v5->super.super.isa + v38) = v26;
      }

LABEL_77:
      v44 = [v4 position];
    }

    while (v44 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_79:
    v45 = 0;
  }

  else
  {
LABEL_80:
    v45 = v5;
  }

  return v45;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSiriHomeSeed *)self homeIdentifier];
  v5 = [(BMSiriHomeSeed *)self seed];
  v6 = [(BMSiriHomeSeed *)self effectiveFrom];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriHomeSeed validityDays](self, "validityDays")}];
  v8 = [(BMSiriHomeSeed *)self createdOn];
  v9 = [(BMSiriHomeSeed *)self adoptedOn];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMSiriHomeSeed switchedCount](self, "switchedCount")}];
  v11 = [v3 initWithFormat:@"BMSiriHomeSeed with homeIdentifier: %@, seed: %@, effectiveFrom: %@, validityDays: %@, createdOn: %@, adoptedOn: %@, switchedCount: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BMSiriHomeSeed)initWithHomeIdentifier:(id)a3 seed:(id)a4 effectiveFrom:(id)a5 validityDays:(id)a6 createdOn:(id)a7 adoptedOn:(id)a8 switchedCount:(id)a9
{
  v37 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v34.receiver = self;
  v34.super_class = BMSiriHomeSeed;
  v22 = [(BMEventBase *)&v34 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v15)
    {
      v35 = 0;
      v36 = 0;
      [v15 getUUIDBytes:&v35];
      v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v35 length:16];
      raw_homeIdentifier = v22->_raw_homeIdentifier;
      v22->_raw_homeIdentifier = v23;
    }

    else
    {
      raw_homeIdentifier = v22->_raw_homeIdentifier;
      v22->_raw_homeIdentifier = 0;
    }

    if (v16)
    {
      v35 = 0;
      v36 = 0;
      [v16 getUUIDBytes:&v35];
      v25 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v35 length:16];
      raw_seed = v22->_raw_seed;
      v22->_raw_seed = v25;
    }

    else
    {
      raw_seed = v22->_raw_seed;
      v22->_raw_seed = 0;
    }

    if (v17)
    {
      v22->_hasRaw_effectiveFrom = 1;
      [v17 timeIntervalSince1970];
    }

    else
    {
      v22->_hasRaw_effectiveFrom = 0;
      v27 = -1.0;
    }

    v22->_raw_effectiveFrom = v27;
    if (v18)
    {
      v22->_hasValidityDays = 1;
      v28 = [v18 unsignedIntValue];
    }

    else
    {
      v28 = 0;
      v22->_hasValidityDays = 0;
    }

    v22->_validityDays = v28;
    if (v19)
    {
      v22->_hasRaw_createdOn = 1;
      [v19 timeIntervalSince1970];
    }

    else
    {
      v22->_hasRaw_createdOn = 0;
      v29 = -1.0;
    }

    v22->_raw_createdOn = v29;
    if (v20)
    {
      v22->_hasRaw_adoptedOn = 1;
      [v20 timeIntervalSince1970];
    }

    else
    {
      v22->_hasRaw_adoptedOn = 0;
      v30 = -1.0;
    }

    v22->_raw_adoptedOn = v30;
    if (v21)
    {
      v22->_hasSwitchedCount = 1;
      v31 = [v21 unsignedIntValue];
    }

    else
    {
      v31 = 0;
      v22->_hasSwitchedCount = 0;
    }

    v22->_switchedCount = v31;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v22;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"homeIdentifier" number:1 type:14 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"seed" number:2 type:14 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"effectiveFrom" number:3 type:0 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"validityDays" number:4 type:4 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"createdOn" number:5 type:0 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"adoptedOn" number:6 type:0 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"switchedCount" number:7 type:4 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
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

    v8 = [[BMSiriHomeSeed alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[21] = 0;
    }
  }

  return v4;
}

@end