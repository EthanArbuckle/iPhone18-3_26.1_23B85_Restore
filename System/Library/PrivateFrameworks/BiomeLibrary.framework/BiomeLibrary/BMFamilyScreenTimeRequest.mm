@interface BMFamilyScreenTimeRequest
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMFamilyScreenTimeRequest)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMFamilyScreenTimeRequest)initWithRequestID:(id)a3 eventTime:(id)a4 requesterDSID:(id)a5 responderDSID:(id)a6 requestKind:(int)a7 status:(int)a8 approvalTime:(int)a9 websitePath:(id)a10 bundleID:(id)a11 isActionUserDevice:(id)a12;
- (BOOL)isEqual:(id)a3;
- (NSDate)eventTime;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMFamilyScreenTimeRequest

+ (id)columns
{
  v15[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventTime" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:1];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requesterDSID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"responderDSID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestKind" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"status" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"approvalTime" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"websitePath" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isActionUserDevice" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMFamilyScreenTimeRequest *)self requestID];
    v7 = [v5 requestID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMFamilyScreenTimeRequest *)self requestID];
      v10 = [v5 requestID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_35;
      }
    }

    v13 = [(BMFamilyScreenTimeRequest *)self eventTime];
    v14 = [v5 eventTime];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMFamilyScreenTimeRequest *)self eventTime];
      v17 = [v5 eventTime];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_35;
      }
    }

    v19 = [(BMFamilyScreenTimeRequest *)self requesterDSID];
    v20 = [v5 requesterDSID];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMFamilyScreenTimeRequest *)self requesterDSID];
      v23 = [v5 requesterDSID];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_35;
      }
    }

    v25 = [(BMFamilyScreenTimeRequest *)self responderDSID];
    v26 = [v5 responderDSID];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMFamilyScreenTimeRequest *)self responderDSID];
      v29 = [v5 responderDSID];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_35;
      }
    }

    v31 = [(BMFamilyScreenTimeRequest *)self requestKind];
    if (v31 != [v5 requestKind])
    {
      goto LABEL_35;
    }

    v32 = [(BMFamilyScreenTimeRequest *)self status];
    if (v32 != [v5 status])
    {
      goto LABEL_35;
    }

    v33 = [(BMFamilyScreenTimeRequest *)self approvalTime];
    if (v33 != [v5 approvalTime])
    {
      goto LABEL_35;
    }

    v34 = [(BMFamilyScreenTimeRequest *)self websitePath];
    v35 = [v5 websitePath];
    v36 = v35;
    if (v34 == v35)
    {
    }

    else
    {
      v37 = [(BMFamilyScreenTimeRequest *)self websitePath];
      v38 = [v5 websitePath];
      v39 = [v37 isEqual:v38];

      if (!v39)
      {
        goto LABEL_35;
      }
    }

    v40 = [(BMFamilyScreenTimeRequest *)self bundleID];
    v41 = [v5 bundleID];
    v42 = v41;
    if (v40 == v41)
    {
    }

    else
    {
      v43 = [(BMFamilyScreenTimeRequest *)self bundleID];
      v44 = [v5 bundleID];
      v45 = [v43 isEqual:v44];

      if (!v45)
      {
        goto LABEL_35;
      }
    }

    if (!-[BMFamilyScreenTimeRequest hasIsActionUserDevice](self, "hasIsActionUserDevice") && ![v5 hasIsActionUserDevice])
    {
      LOBYTE(v12) = 1;
      goto LABEL_36;
    }

    if (-[BMFamilyScreenTimeRequest hasIsActionUserDevice](self, "hasIsActionUserDevice") && [v5 hasIsActionUserDevice])
    {
      v46 = [(BMFamilyScreenTimeRequest *)self isActionUserDevice];
      v12 = v46 ^ [v5 isActionUserDevice] ^ 1;
LABEL_36:

      goto LABEL_37;
    }

LABEL_35:
    LOBYTE(v12) = 0;
    goto LABEL_36;
  }

  LOBYTE(v12) = 0;
LABEL_37:

  return v12;
}

- (NSDate)eventTime
{
  if (self->_hasRaw_eventTime)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_eventTime];
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
  v39[10] = *MEMORY[0x1E69E9840];
  v3 = [(BMFamilyScreenTimeRequest *)self requestID];
  v4 = [(BMFamilyScreenTimeRequest *)self eventTime];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMFamilyScreenTimeRequest *)self eventTime];
    [v6 timeIntervalSinceReferenceDate];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BMFamilyScreenTimeRequest *)self requesterDSID];
  v9 = [(BMFamilyScreenTimeRequest *)self responderDSID];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFamilyScreenTimeRequest requestKind](self, "requestKind")}];
  v37 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFamilyScreenTimeRequest status](self, "status")}];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFamilyScreenTimeRequest approvalTime](self, "approvalTime")}];
  v36 = [(BMFamilyScreenTimeRequest *)self websitePath];
  v35 = [(BMFamilyScreenTimeRequest *)self bundleID];
  if ([(BMFamilyScreenTimeRequest *)self hasIsActionUserDevice])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMFamilyScreenTimeRequest isActionUserDevice](self, "isActionUserDevice")}];
  }

  else
  {
    v12 = 0;
  }

  v38[0] = @"requestID";
  v13 = v3;
  if (!v3)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v13;
  v39[0] = v13;
  v38[1] = @"eventTime";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v14;
  v39[1] = v14;
  v38[2] = @"requesterDSID";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v15;
  v39[2] = v15;
  v38[3] = @"responderDSID";
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v3;
  v27 = v16;
  v39[3] = v16;
  v38[4] = @"requestKind";
  v17 = v10;
  if (!v10)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v7;
  v39[4] = v17;
  v38[5] = @"status";
  v18 = v37;
  if (!v37)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v8;
  v39[5] = v18;
  v38[6] = @"approvalTime";
  v19 = v11;
  if (!v11)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v9;
  v39[6] = v19;
  v38[7] = @"websitePath";
  v21 = v36;
  if (!v36)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v10;
  v39[7] = v21;
  v38[8] = @"bundleID";
  v23 = v35;
  if (!v35)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v39[8] = v23;
  v38[9] = @"isActionUserDevice";
  v24 = v12;
  if (!v12)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v39[9] = v24;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:10];
  if (!v12)
  {
  }

  if (!v35)
  {
  }

  if (v36)
  {
    if (v11)
    {
      goto LABEL_33;
    }
  }

  else
  {

    if (v11)
    {
      goto LABEL_33;
    }
  }

LABEL_33:
  if (!v37)
  {
  }

  if (!v22)
  {
  }

  if (v20)
  {
    if (v32)
    {
      goto LABEL_39;
    }
  }

  else
  {

    if (v32)
    {
LABEL_39:
      if (v33)
      {
        goto LABEL_40;
      }

LABEL_48:

      if (v34)
      {
        goto LABEL_41;
      }

      goto LABEL_49;
    }
  }

  if (!v33)
  {
    goto LABEL_48;
  }

LABEL_40:
  if (v34)
  {
    goto LABEL_41;
  }

LABEL_49:

LABEL_41:
  v25 = *MEMORY[0x1E69E9840];

  return v31;
}

- (BMFamilyScreenTimeRequest)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v120[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"requestID"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [v5 objectForKeyedSubscript:@"eventTime"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = MEMORY[0x1E695DF00];
        v10 = v8;
        v11 = [v9 alloc];
        [v10 doubleValue];
        v13 = v12;

        v14 = [v11 initWithTimeIntervalSinceReferenceDate:v13];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v100 = [v20 dateFromString:v8];

          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v100 = 0;
            v19 = 0;
            goto LABEL_51;
          }

          v76 = objc_alloc(MEMORY[0x1E696ABC0]);
          v77 = v8;
          v78 = *MEMORY[0x1E698F240];
          v117 = *MEMORY[0x1E696A578];
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"eventTime"];
          v118 = v41;
          v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
          v80 = v78;
          v8 = v77;
          v97 = v79;
          v100 = 0;
          v19 = 0;
          *a4 = [v76 initWithDomain:v80 code:2 userInfo:?];
          goto LABEL_50;
        }

        v14 = v8;
      }

      v100 = v14;
    }

    else
    {
      v100 = 0;
    }

LABEL_16:
    v21 = [v5 objectForKeyedSubscript:@"requesterDSID"];
    v97 = v21;
    if (v21 && (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v41 = 0;
          v19 = 0;
          goto LABEL_50;
        }

        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = v8;
        v46 = *MEMORY[0x1E698F240];
        v115 = *MEMORY[0x1E696A578];
        v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"requesterDSID"];
        v116 = v99;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
        v48 = v44;
        v24 = v47;
        v49 = v46;
        v8 = v45;
        v41 = 0;
        v19 = 0;
        *a4 = [v48 initWithDomain:v49 code:2 userInfo:v47];
LABEL_49:

LABEL_50:
        goto LABEL_51;
      }

      v96 = v22;
    }

    else
    {
      v96 = 0;
    }

    v23 = [v5 objectForKeyedSubscript:@"responderDSID"];
    v92 = v23;
    if (v23 && (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v99 = 0;
          v19 = 0;
          v41 = v96;
          goto LABEL_49;
        }

        v50 = objc_alloc(MEMORY[0x1E696ABC0]);
        v51 = v8;
        v52 = *MEMORY[0x1E698F240];
        v113 = *MEMORY[0x1E696A578];
        v94 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"responderDSID"];
        v114 = v94;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
        v53 = v50;
        v24 = v92;
        v54 = v52;
        v8 = v51;
        v99 = 0;
        v19 = 0;
        *a4 = [v53 initWithDomain:v54 code:2 userInfo:v25];
        v41 = v96;
        goto LABEL_48;
      }

      v99 = v24;
    }

    else
    {
      v99 = 0;
    }

    v25 = [v5 objectForKeyedSubscript:@"requestKind"];
    v93 = v6;
    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v7;
        v27 = self;
        v94 = v25;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v94 = 0;
            v19 = 0;
            v41 = v96;
            v24 = v92;
            goto LABEL_48;
          }

          v95 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = v8;
          v66 = *MEMORY[0x1E698F240];
          v111 = *MEMORY[0x1E696A578];
          v91 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"requestKind"];
          v112 = v91;
          v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
          v68 = v66;
          v8 = v65;
          v88 = v67;
          v69 = [v95 initWithDomain:v68 code:2 userInfo:?];
          v94 = 0;
          v19 = 0;
          *a4 = v69;
          v41 = v96;
          v24 = v92;
LABEL_47:

LABEL_48:
          goto LABEL_49;
        }

        v26 = v7;
        v94 = [MEMORY[0x1E696AD98] numberWithInt:BMFamilyScreenTimeRequestKindFromString(v25)];
        v27 = self;
      }
    }

    else
    {
      v26 = v7;
      v27 = self;
      v94 = 0;
    }

    v28 = [v5 objectForKeyedSubscript:@"status"];
    v87 = v25;
    v88 = v28;
    if (v28 && (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v91 = v29;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v91 = 0;
            v19 = 0;
            v41 = v96;
            self = v27;
            v7 = v26;
            v24 = v92;
            v6 = v93;
            goto LABEL_47;
          }

          v70 = objc_alloc(MEMORY[0x1E696ABC0]);
          v71 = *MEMORY[0x1E698F240];
          v109 = *MEMORY[0x1E696A578];
          v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"status"];
          v110 = v90;
          v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
          v72 = [v70 initWithDomain:v71 code:2 userInfo:?];
          v91 = 0;
          v19 = 0;
          *a4 = v72;
          self = v27;
          v7 = v26;
          v24 = v92;
          v6 = v93;
          goto LABEL_46;
        }

        v91 = [MEMORY[0x1E696AD98] numberWithInt:BMFamilyScreenTimeRequestStatusFromString(v29)];
      }
    }

    else
    {
      v91 = 0;
    }

    v30 = [v5 objectForKeyedSubscript:@"approvalTime"];
    v86 = v30;
    if (v30 && (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      self = v27;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v90 = 0;
            v19 = 0;
            v7 = v26;
            v24 = v92;
            v6 = v93;
            goto LABEL_45;
          }

          v73 = objc_alloc(MEMORY[0x1E696ABC0]);
          v74 = *MEMORY[0x1E698F240];
          v107 = *MEMORY[0x1E696A578];
          v89 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"approvalTime"];
          v108 = v89;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
          v75 = [v73 initWithDomain:v74 code:2 userInfo:v32];
          v90 = 0;
          v19 = 0;
          *a4 = v75;
          v7 = v26;
          v6 = v93;
LABEL_44:

          v24 = v92;
LABEL_45:
          v25 = v87;
LABEL_46:

          v41 = v96;
          goto LABEL_47;
        }

        v90 = [MEMORY[0x1E696AD98] numberWithInt:BMFamilyScreenTimeRequestApprovedTimeFromString(v31)];
        v7 = v26;
LABEL_32:
        v32 = [v5 objectForKeyedSubscript:@"websitePath"];
        v6 = v93;
        if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v19 = a4;
            if (!a4)
            {
              v89 = 0;
              goto LABEL_44;
            }

            v55 = v8;
            v56 = v7;
            v57 = objc_alloc(MEMORY[0x1E696ABC0]);
            v58 = *MEMORY[0x1E698F240];
            v105 = *MEMORY[0x1E696A578];
            v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"websitePath"];
            v106 = v36;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
            v59 = v57;
            v7 = v56;
            v8 = v55;
            v60 = [v59 initWithDomain:v58 code:2 userInfo:v33];
            v89 = 0;
            v19 = 0;
            *a4 = v60;
            goto LABEL_43;
          }

          v89 = v32;
        }

        else
        {
          v89 = 0;
        }

        v33 = [v5 objectForKeyedSubscript:@"bundleID"];
        v85 = v8;
        if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v36 = 0;
              v19 = 0;
              v6 = v93;
              goto LABEL_43;
            }

            v34 = v7;
            v35 = self;
            v83 = objc_alloc(MEMORY[0x1E696ABC0]);
            v61 = *MEMORY[0x1E698F240];
            v103 = *MEMORY[0x1E696A578];
            v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
            v104 = v38;
            v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
            v62 = [v83 initWithDomain:v61 code:2 userInfo:v37];
            v36 = 0;
            v19 = 0;
            *a4 = v62;
            goto LABEL_42;
          }

          v34 = v7;
          v35 = self;
          v36 = v33;
        }

        else
        {
          v34 = v7;
          v35 = self;
          v36 = 0;
        }

        v37 = [v5 objectForKeyedSubscript:@"isActionUserDevice"];
        if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (a4)
            {
              v84 = objc_alloc(MEMORY[0x1E696ABC0]);
              v82 = *MEMORY[0x1E698F240];
              v101 = *MEMORY[0x1E696A578];
              v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isActionUserDevice"];
              v102 = v63;
              v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
              *a4 = [v84 initWithDomain:v82 code:2 userInfo:v64];
            }

            v38 = 0;
            v19 = 0;
            goto LABEL_42;
          }

          v38 = v37;
        }

        else
        {
          v38 = 0;
        }

        v39 = [v94 intValue];
        v40 = [v91 intValue];
        LODWORD(v81) = [v90 intValue];
        v19 = [(BMFamilyScreenTimeRequest *)v35 initWithRequestID:v34 eventTime:v100 requesterDSID:v96 responderDSID:v99 requestKind:v39 status:v40 approvalTime:v81 websitePath:v89 bundleID:v36 isActionUserDevice:v38];
        v35 = v19;
LABEL_42:

        self = v35;
        v6 = v93;
        v7 = v34;
        v8 = v85;
LABEL_43:

        goto LABEL_44;
      }

      v90 = v31;
    }

    else
    {
      v90 = 0;
      self = v27;
    }

    v7 = v26;
    goto LABEL_32;
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
    v19 = 0;
    goto LABEL_52;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = *MEMORY[0x1E698F240];
  v119 = *MEMORY[0x1E696A578];
  v100 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"requestID"];
  v120[0] = v100;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:&v119 count:1];
  v18 = v16;
  v8 = v17;
  v7 = 0;
  v19 = 0;
  *a4 = [v15 initWithDomain:v18 code:2 userInfo:v17];
LABEL_51:

LABEL_52:
  v42 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFamilyScreenTimeRequest *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  if (self->_requestID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_eventTime)
  {
    raw_eventTime = self->_raw_eventTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_requesterDSID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_responderDSID)
  {
    PBDataWriterWriteStringField();
  }

  requestKind = self->_requestKind;
  PBDataWriterWriteUint32Field();
  status = self->_status;
  PBDataWriterWriteUint32Field();
  approvalTime = self->_approvalTime;
  PBDataWriterWriteUint32Field();
  if (self->_websitePath)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  v8 = v10;
  if (self->_hasIsActionUserDevice)
  {
    isActionUserDevice = self->_isActionUserDevice;
    PBDataWriterWriteBOOLField();
    v8 = v10;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = BMFamilyScreenTimeRequest;
  v5 = [(BMEventBase *)&v50 init];
  if (!v5)
  {
    goto LABEL_98;
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
      if ((v14 >> 3) > 5)
      {
        if (v15 <= 7)
        {
          if (v15 == 6)
          {
            v39 = 0;
            v40 = 0;
            v18 = 0;
            while (1)
            {
              LOBYTE(v51) = 0;
              v41 = [v4 position] + 1;
              if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
              {
                v43 = [v4 data];
                [v43 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (LOBYTE(v51) & 0x7F) << v39;
              if ((LOBYTE(v51) & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v22 = v40++ > 8;
              if (v22)
              {
                goto LABEL_84;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 3)
            {
LABEL_84:
              LODWORD(v18) = 0;
            }

            v45 = 44;
          }

          else
          {
            if (v15 != 7)
            {
LABEL_76:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_97;
              }

              goto LABEL_95;
            }

            v32 = 0;
            v33 = 0;
            v18 = 0;
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

              v18 |= (LOBYTE(v51) & 0x7F) << v32;
              if ((LOBYTE(v51) & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v22 = v33++ > 8;
              if (v22)
              {
                goto LABEL_80;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 3)
            {
LABEL_80:
              LODWORD(v18) = 0;
            }

            v45 = 48;
          }

          goto LABEL_90;
        }

        if (v15 == 8)
        {
          v37 = PBReaderReadString();
          v38 = 80;
          goto LABEL_75;
        }

        if (v15 == 9)
        {
          v37 = PBReaderReadString();
          v38 = 88;
          goto LABEL_75;
        }

        if (v15 != 10)
        {
          goto LABEL_76;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasIsActionUserDevice = 1;
        while (1)
        {
          LOBYTE(v51) = 0;
          v26 = [v4 position] + 1;
          if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
          {
            v28 = [v4 data];
            [v28 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v25 |= (LOBYTE(v51) & 0x7F) << v23;
          if ((LOBYTE(v51) & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v13 = v24++ >= 9;
          if (v13)
          {
            LOBYTE(v29) = 0;
            goto LABEL_92;
          }
        }

        v29 = (v25 != 0) & ~[v4 hasError];
LABEL_92:
        v5->_isActionUserDevice = v29;
      }

      else
      {
        if (v15 > 2)
        {
          switch(v15)
          {
            case 3:
              v37 = PBReaderReadString();
              v38 = 64;
              break;
            case 4:
              v37 = PBReaderReadString();
              v38 = 72;
              break;
            case 5:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              while (1)
              {
                LOBYTE(v51) = 0;
                v19 = [v4 position] + 1;
                if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
                {
                  v21 = [v4 data];
                  [v21 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

                  [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
                }

                else
                {
                  [v4 _setError];
                }

                v18 |= (LOBYTE(v51) & 0x7F) << v16;
                if ((LOBYTE(v51) & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v22 = v17++ > 8;
                if (v22)
                {
                  goto LABEL_88;
                }
              }

              if (([v4 hasError] & 1) != 0 || v18 > 2)
              {
LABEL_88:
                LODWORD(v18) = 0;
              }

              v45 = 40;
LABEL_90:
              *(&v5->super.super.isa + v45) = v18;
              goto LABEL_95;
            default:
              goto LABEL_76;
          }

          goto LABEL_75;
        }

        if (v15 == 1)
        {
          v37 = PBReaderReadString();
          v38 = 56;
LABEL_75:
          v44 = *(&v5->super.super.isa + v38);
          *(&v5->super.super.isa + v38) = v37;

          goto LABEL_95;
        }

        if (v15 != 2)
        {
          goto LABEL_76;
        }

        v5->_hasRaw_eventTime = 1;
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

        v5->_raw_eventTime = v51;
      }

LABEL_95:
      v47 = [v4 position];
    }

    while (v47 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_97:
    v48 = 0;
  }

  else
  {
LABEL_98:
    v48 = v5;
  }

  return v48;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = [(BMFamilyScreenTimeRequest *)self requestID];
  v3 = [(BMFamilyScreenTimeRequest *)self eventTime];
  v4 = [(BMFamilyScreenTimeRequest *)self requesterDSID];
  v5 = [(BMFamilyScreenTimeRequest *)self responderDSID];
  v6 = BMFamilyScreenTimeRequestKindAsString([(BMFamilyScreenTimeRequest *)self requestKind]);
  v7 = BMFamilyScreenTimeRequestStatusAsString([(BMFamilyScreenTimeRequest *)self status]);
  v8 = BMFamilyScreenTimeRequestApprovedTimeAsString([(BMFamilyScreenTimeRequest *)self approvalTime]);
  v9 = [(BMFamilyScreenTimeRequest *)self websitePath];
  v10 = [(BMFamilyScreenTimeRequest *)self bundleID];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMFamilyScreenTimeRequest isActionUserDevice](self, "isActionUserDevice")}];
  v15 = [v14 initWithFormat:@"BMFamilyScreenTimeRequest with requestID: %@, eventTime: %@, requesterDSID: %@, responderDSID: %@, requestKind: %@, status: %@, approvalTime: %@, websitePath: %@, bundleID: %@, isActionUserDevice: %@", v13, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v15;
}

- (BMFamilyScreenTimeRequest)initWithRequestID:(id)a3 eventTime:(id)a4 requesterDSID:(id)a5 responderDSID:(id)a6 requestKind:(int)a7 status:(int)a8 approvalTime:(int)a9 websitePath:(id)a10 bundleID:(id)a11 isActionUserDevice:(id)a12
{
  v28 = a3;
  v17 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a10;
  v18 = a11;
  v19 = a12;
  v29.receiver = self;
  v29.super_class = BMFamilyScreenTimeRequest;
  v20 = [(BMEventBase *)&v29 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_requestID, a3);
    if (v17)
    {
      v20->_hasRaw_eventTime = 1;
      [v17 timeIntervalSinceReferenceDate];
    }

    else
    {
      v20->_hasRaw_eventTime = 0;
      v21 = -1.0;
    }

    v20->_raw_eventTime = v21;
    objc_storeStrong(&v20->_requesterDSID, a5);
    objc_storeStrong(&v20->_responderDSID, a6);
    v20->_requestKind = a7;
    v20->_status = a8;
    v20->_approvalTime = a9;
    objc_storeStrong(&v20->_websitePath, a10);
    objc_storeStrong(&v20->_bundleID, a11);
    if (v19)
    {
      v20->_hasIsActionUserDevice = 1;
      v20->_isActionUserDevice = [v19 BOOLValue];
    }

    else
    {
      v20->_hasIsActionUserDevice = 0;
      v20->_isActionUserDevice = 0;
    }
  }

  return v20;
}

+ (id)protoFields
{
  v15[10] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestID" number:1 type:13 subMessageClass:0];
  v15[0] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventTime" number:2 type:0 subMessageClass:0];
  v15[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requesterDSID" number:3 type:13 subMessageClass:0];
  v15[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"responderDSID" number:4 type:13 subMessageClass:0];
  v15[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestKind" number:5 type:4 subMessageClass:0];
  v15[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"status" number:6 type:4 subMessageClass:0];
  v15[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"approvalTime" number:7 type:4 subMessageClass:0];
  v15[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"websitePath" number:8 type:13 subMessageClass:0];
  v15[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:9 type:13 subMessageClass:0];
  v15[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isActionUserDevice" number:10 type:12 subMessageClass:0];
  v15[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

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

    v7 = [[BMFamilyScreenTimeRequest alloc] initByReadFrom:v6];
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