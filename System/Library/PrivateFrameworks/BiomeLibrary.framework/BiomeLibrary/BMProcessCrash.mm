@interface BMProcessCrash
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMProcessCrash)initWithIncidentID:(id)a3 processName:(id)a4 bundleID:(id)a5 appVersion:(id)a6 bundleVersion:(id)a7 exception:(id)a8 terminationReason:(id)a9 responsibleApp:(id)a10 coalitionName:(id)a11 isFirstParty:(id)a12 isBeta:(id)a13;
- (BMProcessCrash)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMProcessCrash

+ (id)columns
{
  v16[11] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"incidentID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"processName" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appVersion" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleVersion" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"exception_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_45378];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"terminationReason_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_200];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"responsibleApp" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"coalitionName" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFirstParty" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isBeta" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:12 convertedType:0];
  v16[0] = v2;
  v16[1] = v3;
  v16[2] = v4;
  v16[3] = v5;
  v16[4] = v6;
  v16[5] = v14;
  v16[6] = v7;
  v16[7] = v8;
  v16[8] = v15;
  v16[9] = v9;
  v16[10] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProcessCrash *)self writeTo:v3];
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
    v6 = [(BMProcessCrash *)self incidentID];
    v7 = [v5 incidentID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMProcessCrash *)self incidentID];
      v10 = [v5 incidentID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_49;
      }
    }

    v13 = [(BMProcessCrash *)self processName];
    v14 = [v5 processName];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMProcessCrash *)self processName];
      v17 = [v5 processName];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_49;
      }
    }

    v19 = [(BMProcessCrash *)self bundleID];
    v20 = [v5 bundleID];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMProcessCrash *)self bundleID];
      v23 = [v5 bundleID];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_49;
      }
    }

    v25 = [(BMProcessCrash *)self appVersion];
    v26 = [v5 appVersion];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMProcessCrash *)self appVersion];
      v29 = [v5 appVersion];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_49;
      }
    }

    v31 = [(BMProcessCrash *)self bundleVersion];
    v32 = [v5 bundleVersion];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMProcessCrash *)self bundleVersion];
      v35 = [v5 bundleVersion];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_49;
      }
    }

    v37 = [(BMProcessCrash *)self exception];
    v38 = [v5 exception];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMProcessCrash *)self exception];
      v41 = [v5 exception];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_49;
      }
    }

    v43 = [(BMProcessCrash *)self terminationReason];
    v44 = [v5 terminationReason];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMProcessCrash *)self terminationReason];
      v47 = [v5 terminationReason];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_49;
      }
    }

    v49 = [(BMProcessCrash *)self responsibleApp];
    v50 = [v5 responsibleApp];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMProcessCrash *)self responsibleApp];
      v53 = [v5 responsibleApp];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
        goto LABEL_49;
      }
    }

    v55 = [(BMProcessCrash *)self coalitionName];
    v56 = [v5 coalitionName];
    v57 = v56;
    if (v55 == v56)
    {
    }

    else
    {
      v58 = [(BMProcessCrash *)self coalitionName];
      v59 = [v5 coalitionName];
      v60 = [v58 isEqual:v59];

      if (!v60)
      {
        goto LABEL_49;
      }
    }

    if (!-[BMProcessCrash hasIsFirstParty](self, "hasIsFirstParty") && ![v5 hasIsFirstParty] || -[BMProcessCrash hasIsFirstParty](self, "hasIsFirstParty") && objc_msgSend(v5, "hasIsFirstParty") && (v61 = -[BMProcessCrash isFirstParty](self, "isFirstParty"), v61 == objc_msgSend(v5, "isFirstParty")))
    {
      if (!-[BMProcessCrash hasIsBeta](self, "hasIsBeta") && ![v5 hasIsBeta])
      {
        LOBYTE(v12) = 1;
        goto LABEL_50;
      }

      if (-[BMProcessCrash hasIsBeta](self, "hasIsBeta") && [v5 hasIsBeta])
      {
        v62 = [(BMProcessCrash *)self isBeta];
        v12 = v62 ^ [v5 isBeta] ^ 1;
LABEL_50:

        goto LABEL_51;
      }
    }

LABEL_49:
    LOBYTE(v12) = 0;
    goto LABEL_50;
  }

  LOBYTE(v12) = 0;
LABEL_51:

  return v12;
}

- (id)jsonDictionary
{
  v43[11] = *MEMORY[0x1E69E9840];
  v3 = [(BMProcessCrash *)self incidentID];
  v4 = [(BMProcessCrash *)self processName];
  v5 = [(BMProcessCrash *)self bundleID];
  v6 = [(BMProcessCrash *)self appVersion];
  v7 = [(BMProcessCrash *)self bundleVersion];
  v8 = [(BMProcessCrash *)self exception];
  v9 = [v8 jsonDictionary];

  v10 = [(BMProcessCrash *)self terminationReason];
  v11 = [v10 jsonDictionary];

  v41 = [(BMProcessCrash *)self responsibleApp];
  v40 = [(BMProcessCrash *)self coalitionName];
  if ([(BMProcessCrash *)self hasIsFirstParty])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProcessCrash isFirstParty](self, "isFirstParty")}];
  }

  else
  {
    v12 = 0;
  }

  if ([(BMProcessCrash *)self hasIsBeta])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProcessCrash isBeta](self, "isBeta")}];
  }

  else
  {
    v13 = 0;
  }

  v42[0] = @"incidentID";
  v14 = v3;
  if (!v3)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v14;
  v43[0] = v14;
  v42[1] = @"processName";
  v15 = v4;
  if (!v4)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v15;
  v43[1] = v15;
  v42[2] = @"bundleID";
  v16 = v5;
  if (!v5)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v4;
  v39 = v3;
  v31 = v16;
  v43[2] = v16;
  v42[3] = @"appVersion";
  v17 = v6;
  if (!v6)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v5;
  v30 = v17;
  v43[3] = v17;
  v42[4] = @"bundleVersion";
  v18 = v7;
  if (!v7)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v6;
  v29 = v18;
  v43[4] = v18;
  v42[5] = @"exception";
  v19 = v9;
  if (!v9)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v7;
  v43[5] = v19;
  v42[6] = @"terminationReason";
  v20 = v11;
  if (!v11)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v9;
  v43[6] = v20;
  v42[7] = @"responsibleApp";
  v22 = v41;
  if (!v41)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v11;
  v43[7] = v22;
  v42[8] = @"coalitionName";
  v24 = v40;
  if (!v40)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v43[8] = v24;
  v42[9] = @"isFirstParty";
  v25 = v12;
  if (!v12)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v43[9] = v25;
  v42[10] = @"isBeta";
  v26 = v13;
  if (!v13)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v43[10] = v26;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:11];
  if (v13)
  {
    if (v12)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if (v12)
    {
      goto LABEL_31;
    }
  }

LABEL_31:
  if (!v40)
  {
  }

  if (!v41)
  {
  }

  if (!v23)
  {
  }

  if (!v21)
  {
  }

  if (!v35)
  {
  }

  if (!v36)
  {
  }

  if (v37)
  {
    if (v38)
    {
      goto LABEL_45;
    }

LABEL_52:

    if (v39)
    {
      goto LABEL_46;
    }

    goto LABEL_53;
  }

  if (!v38)
  {
    goto LABEL_52;
  }

LABEL_45:
  if (v39)
  {
    goto LABEL_46;
  }

LABEL_53:

LABEL_46:
  v27 = *MEMORY[0x1E69E9840];

  return v34;
}

- (BMProcessCrash)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v124[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"incidentID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"processName"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v23 = 0;
          v25 = 0;
          goto LABEL_84;
        }

        v28 = v8;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v97 = a4;
        v30 = *MEMORY[0x1E698F240];
        v121 = *MEMORY[0x1E696A578];
        v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"processName"];
        v122 = v31;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
        v32 = v29;
        v8 = v28;
        v33 = v30;
        a4 = v31;
        v23 = 0;
        v25 = 0;
        *v97 = [v32 initWithDomain:v33 code:2 userInfo:v10];
        goto LABEL_83;
      }

      v99 = v9;
    }

    else
    {
      v99 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"bundleID"];
    v100 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v25 = 0;
          v23 = v99;
          goto LABEL_83;
        }

        v34 = v8;
        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = a4;
        v37 = *MEMORY[0x1E698F240];
        v119 = *MEMORY[0x1E696A578];
        v98 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
        v120 = v98;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
        v39 = v35;
        v8 = v34;
        v40 = [v39 initWithDomain:v37 code:2 userInfo:v38];
        a4 = 0;
        v25 = 0;
        *v36 = v40;
        v11 = v38;
        v23 = v99;
LABEL_82:

        self = v100;
LABEL_83:

        goto LABEL_84;
      }

      v96 = a4;
      a4 = v10;
    }

    else
    {
      v96 = a4;
      a4 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"appVersion"];
    v95 = v8;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v96)
        {
          v98 = 0;
          v25 = 0;
          v23 = v99;
          goto LABEL_82;
        }

        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = a4;
        v46 = *MEMORY[0x1E698F240];
        v117 = *MEMORY[0x1E696A578];
        v93 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appVersion"];
        v118 = v93;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
        v47 = v44;
        v8 = v95;
        v48 = v46;
        a4 = v45;
        v98 = 0;
        v25 = 0;
        *v96 = [v47 initWithDomain:v48 code:2 userInfo:v12];
        v23 = v99;
        goto LABEL_81;
      }

      v98 = v11;
    }

    else
    {
      v98 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"bundleVersion"];
    v91 = v7;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v96)
        {
          v93 = 0;
          v25 = 0;
          v23 = v99;
          goto LABEL_81;
        }

        v94 = objc_alloc(MEMORY[0x1E696ABC0]);
        v56 = a4;
        v57 = *MEMORY[0x1E698F240];
        v115 = *MEMORY[0x1E696A578];
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleVersion"];
        v116 = v26;
        v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
        v59 = v57;
        a4 = v56;
        v92 = v58;
        v60 = [v94 initWithDomain:v59 code:2 userInfo:?];
        v93 = 0;
        v25 = 0;
        *v96 = v60;
        goto LABEL_79;
      }

      v93 = v12;
    }

    else
    {
      v93 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"exception"];
    v90 = v12;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v96)
        {
          v25 = 0;
          goto LABEL_80;
        }

        v87 = objc_alloc(MEMORY[0x1E696ABC0]);
        v84 = *MEMORY[0x1E698F240];
        v113 = *MEMORY[0x1E696A578];
        v92 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"exception"];
        v114 = v92;
        v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
        *v96 = [v87 initWithDomain:v84 code:2 userInfo:v61];

        v25 = 0;
        v26 = v13;
LABEL_79:

        v13 = v26;
LABEL_80:

        v8 = v95;
        v23 = v99;
LABEL_81:

        goto LABEL_82;
      }

      v26 = v13;
      v102 = 0;
      v92 = [[BMProcessCrashException alloc] initWithJSONDictionary:v26 error:&v102];
      v27 = v102;
      if (v27)
      {
        if (v96)
        {
          v27 = v27;
          *v96 = v27;
        }

        v25 = 0;
        goto LABEL_79;
      }

      v14 = v9;
      v15 = v13;
    }

    else
    {
      v14 = v9;
      v15 = v13;
      v92 = 0;
    }

    v16 = [v6 objectForKeyedSubscript:@"terminationReason"];
    v81 = v16;
    if (v16 && (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v96)
        {
          v25 = 0;
          v26 = v15;
          v9 = v14;
          v7 = v91;
          goto LABEL_72;
        }

        v88 = objc_alloc(MEMORY[0x1E696ABC0]);
        v79 = *MEMORY[0x1E698F240];
        v111 = *MEMORY[0x1E696A578];
        v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"terminationReason"];
        v112 = v83;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
        v25 = 0;
        *v96 = [v88 initWithDomain:v79 code:2 userInfo:v43];
        v26 = v15;
        v9 = v14;
        v7 = v91;
LABEL_71:

LABEL_72:
        goto LABEL_79;
      }

      v41 = v17;
      v101 = 0;
      v83 = [[BMProcessCrashTerminationReason alloc] initWithJSONDictionary:v41 error:&v101];
      v42 = v101;
      if (v42)
      {
        v86 = v41;
        if (v96)
        {
          v42 = v42;
          *v96 = v42;
        }

        v25 = 0;
        v26 = v15;
        v9 = v14;
        v7 = v91;
        v43 = v86;
        goto LABEL_71;
      }
    }

    else
    {
      v83 = 0;
    }

    v18 = [v6 objectForKeyedSubscript:@"responsibleApp"];
    v75 = v15;
    v76 = v18;
    if (v18)
    {
      v19 = v18;
      objc_opt_class();
      v9 = v14;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        v7 = v91;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v96)
          {
            v43 = 0;
            v25 = 0;
            goto LABEL_70;
          }

          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v89 = *MEMORY[0x1E698F240];
          v109 = *MEMORY[0x1E696A578];
          v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"responsibleApp"];
          v110 = v78;
          v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
          v65 = [v64 initWithDomain:v89 code:2 userInfo:v55];
          v43 = 0;
          v25 = 0;
          *v96 = v65;
LABEL_69:

LABEL_70:
          v26 = v75;

          goto LABEL_71;
        }

        v85 = v19;
LABEL_55:
        v49 = [v6 objectForKeyedSubscript:@"coalitionName"];
        v77 = a4;
        v74 = v49;
        if (v49 && (v50 = v49, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v96)
            {
              v78 = 0;
              v25 = 0;
              goto LABEL_68;
            }

            v82 = objc_alloc(MEMORY[0x1E696ABC0]);
            v80 = *MEMORY[0x1E698F240];
            v107 = *MEMORY[0x1E696A578];
            v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"coalitionName"];
            v108 = v52;
            v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
            v66 = [v82 initWithDomain:v80 code:2 userInfo:v51];
            v78 = 0;
            v25 = 0;
            *v96 = v66;
            goto LABEL_66;
          }

          v78 = v50;
        }

        else
        {
          v78 = 0;
        }

        v51 = [v6 objectForKeyedSubscript:@"isFirstParty"];
        if (v51 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v96)
            {
              v52 = 0;
              v25 = 0;
              goto LABEL_67;
            }

            v67 = objc_alloc(MEMORY[0x1E696ABC0]);
            v68 = *MEMORY[0x1E698F240];
            v105 = *MEMORY[0x1E696A578];
            v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFirstParty"];
            v106 = v54;
            v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
            v69 = [v67 initWithDomain:v68 code:2 userInfo:v53];
            v52 = 0;
            v25 = 0;
            *v96 = v69;
            goto LABEL_65;
          }

          v52 = v51;
        }

        else
        {
          v52 = 0;
        }

        v53 = [v6 objectForKeyedSubscript:@"isBeta"];
        if (v53 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v96)
            {
              v73 = objc_alloc(MEMORY[0x1E696ABC0]);
              v72 = *MEMORY[0x1E698F240];
              v103 = *MEMORY[0x1E696A578];
              v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isBeta"];
              v104 = v70;
              v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
              *v96 = [v73 initWithDomain:v72 code:2 userInfo:v71];
            }

            v54 = 0;
            v25 = 0;
            goto LABEL_65;
          }

          v54 = v53;
        }

        else
        {
          v54 = 0;
        }

        v25 = [(BMProcessCrash *)v100 initWithIncidentID:v95 processName:v99 bundleID:v77 appVersion:v98 bundleVersion:v93 exception:v92 terminationReason:v83 responsibleApp:v85 coalitionName:v78 isFirstParty:v52 isBeta:v54];
        v100 = v25;
LABEL_65:

LABEL_66:
        v12 = v90;
LABEL_67:

        a4 = v77;
LABEL_68:
        v55 = v74;
        v43 = v85;
        goto LABEL_69;
      }

      v85 = 0;
    }

    else
    {
      v85 = 0;
      v9 = v14;
    }

    v7 = v91;
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
    v25 = 0;
    goto LABEL_85;
  }

  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = a4;
  v22 = *MEMORY[0x1E698F240];
  v123 = *MEMORY[0x1E696A578];
  v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"incidentID"];
  v124[0] = v23;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:&v123 count:1];
  v24 = [v20 initWithDomain:v22 code:2 userInfo:v9];
  v8 = 0;
  v25 = 0;
  *v21 = v24;
LABEL_84:

LABEL_85:
  v62 = *MEMORY[0x1E69E9840];
  return v25;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_incidentID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_processName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_exception)
  {
    PBDataWriterPlaceMark();
    [(BMProcessCrashException *)self->_exception writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_terminationReason)
  {
    PBDataWriterPlaceMark();
    [(BMProcessCrashTerminationReason *)self->_terminationReason writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_responsibleApp)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_coalitionName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsFirstParty)
  {
    isFirstParty = self->_isFirstParty;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsBeta)
  {
    isBeta = self->_isBeta;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = BMProcessCrash;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_75;
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

        v9 |= (v40 & 0x7F) << v7;
        if ((v40 & 0x80) == 0)
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
      if ((v14 >> 3) <= 5)
      {
        if (v15 <= 2)
        {
          if (v15 == 1)
          {
            v16 = PBReaderReadString();
            v17 = 24;
          }

          else
          {
            if (v15 != 2)
            {
LABEL_65:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_74;
              }

              goto LABEL_72;
            }

            v16 = PBReaderReadString();
            v17 = 32;
          }
        }

        else
        {
          switch(v15)
          {
            case 3:
              v16 = PBReaderReadString();
              v17 = 40;
              break;
            case 4:
              v16 = PBReaderReadString();
              v17 = 48;
              break;
            case 5:
              v16 = PBReaderReadString();
              v17 = 56;
              break;
            default:
              goto LABEL_65;
          }
        }

        goto LABEL_64;
      }

      if (v15 > 8)
      {
        switch(v15)
        {
          case 9:
            v16 = PBReaderReadString();
            v17 = 88;
LABEL_64:
            v34 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            goto LABEL_72;
          case 0xA:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v5->_hasIsFirstParty = 1;
            while (1)
            {
              LOBYTE(v40) = 0;
              v30 = [v4 position] + 1;
              if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 1, v31 <= objc_msgSend(v4, "length")))
              {
                v32 = [v4 data];
                [v32 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v29 |= (v40 & 0x7F) << v27;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v13 = v28++ >= 9;
              if (v13)
              {
                LOBYTE(v24) = 0;
                goto LABEL_68;
              }
            }

            v24 = (v29 != 0) & ~[v4 hasError];
LABEL_68:
            v35 = 16;
            break;
          case 0xB:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v5->_hasIsBeta = 1;
            while (1)
            {
              LOBYTE(v40) = 0;
              v21 = [v4 position] + 1;
              if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
              {
                v23 = [v4 data];
                [v23 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v20 |= (v40 & 0x7F) << v18;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v13 = v19++ >= 9;
              if (v13)
              {
                LOBYTE(v24) = 0;
                goto LABEL_70;
              }
            }

            v24 = (v20 != 0) & ~[v4 hasError];
LABEL_70:
            v35 = 18;
            break;
          default:
            goto LABEL_65;
        }

        *(&v5->super.super.isa + v35) = v24;
      }

      else
      {
        switch(v15)
        {
          case 6:
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_74;
            }

            v25 = [[BMProcessCrashException alloc] initByReadFrom:v4];
            if (!v25)
            {
              goto LABEL_74;
            }

            v26 = 64;
            break;
          case 7:
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_74;
            }

            v25 = [[BMProcessCrashTerminationReason alloc] initByReadFrom:v4];
            if (!v25)
            {
              goto LABEL_74;
            }

            v26 = 72;
            break;
          case 8:
            v16 = PBReaderReadString();
            v17 = 80;
            goto LABEL_64;
          default:
            goto LABEL_65;
        }

        v33 = *(&v5->super.super.isa + v26);
        *(&v5->super.super.isa + v26) = v25;

        PBReaderRecallMark();
      }

LABEL_72:
      v36 = [v4 position];
    }

    while (v36 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_74:
    v37 = 0;
  }

  else
  {
LABEL_75:
    v37 = v5;
  }

  return v37;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [(BMProcessCrash *)self incidentID];
  v12 = [(BMProcessCrash *)self processName];
  v3 = [(BMProcessCrash *)self bundleID];
  v4 = [(BMProcessCrash *)self appVersion];
  v5 = [(BMProcessCrash *)self bundleVersion];
  v13 = [(BMProcessCrash *)self exception];
  v6 = [(BMProcessCrash *)self terminationReason];
  v7 = [(BMProcessCrash *)self responsibleApp];
  v8 = [(BMProcessCrash *)self coalitionName];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProcessCrash isFirstParty](self, "isFirstParty")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProcessCrash isBeta](self, "isBeta")}];
  v16 = [v15 initWithFormat:@"BMProcessCrash with incidentID: %@, processName: %@, bundleID: %@, appVersion: %@, bundleVersion: %@, exception: %@, terminationReason: %@, responsibleApp: %@, coalitionName: %@, isFirstParty: %@, isBeta: %@", v14, v12, v3, v4, v5, v13, v6, v7, v8, v9, v10];

  return v16;
}

- (BMProcessCrash)initWithIncidentID:(id)a3 processName:(id)a4 bundleID:(id)a5 appVersion:(id)a6 bundleVersion:(id)a7 exception:(id)a8 terminationReason:(id)a9 responsibleApp:(id)a10 coalitionName:(id)a11 isFirstParty:(id)a12 isBeta:(id)a13
{
  v33 = a3;
  v23 = a4;
  v32 = a4;
  v31 = a5;
  v30 = a6;
  v29 = a7;
  v28 = a8;
  v27 = a9;
  v26 = a10;
  v25 = a11;
  v18 = a12;
  v19 = a13;
  v34.receiver = self;
  v34.super_class = BMProcessCrash;
  v20 = [(BMEventBase *)&v34 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_incidentID, a3);
    objc_storeStrong(&v20->_processName, v23);
    objc_storeStrong(&v20->_bundleID, a5);
    objc_storeStrong(&v20->_appVersion, a6);
    objc_storeStrong(&v20->_bundleVersion, a7);
    objc_storeStrong(&v20->_exception, a8);
    objc_storeStrong(&v20->_terminationReason, a9);
    objc_storeStrong(&v20->_responsibleApp, a10);
    objc_storeStrong(&v20->_coalitionName, a11);
    if (v18)
    {
      v20->_hasIsFirstParty = 1;
      v20->_isFirstParty = [v18 BOOLValue];
    }

    else
    {
      v20->_hasIsFirstParty = 0;
      v20->_isFirstParty = 0;
    }

    if (v19)
    {
      v20->_hasIsBeta = 1;
      v20->_isBeta = [v19 BOOLValue];
    }

    else
    {
      v20->_hasIsBeta = 0;
      v20->_isBeta = 0;
    }
  }

  return v20;
}

+ (id)protoFields
{
  v16[11] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"incidentID" number:1 type:13 subMessageClass:0];
  v16[0] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"processName" number:2 type:13 subMessageClass:0];
  v16[1] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:3 type:13 subMessageClass:0];
  v16[2] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appVersion" number:4 type:13 subMessageClass:0];
  v16[3] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleVersion" number:5 type:13 subMessageClass:0];
  v16[4] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"exception" number:6 type:14 subMessageClass:objc_opt_class()];
  v16[5] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"terminationReason" number:7 type:14 subMessageClass:objc_opt_class()];
  v16[6] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"responsibleApp" number:8 type:13 subMessageClass:0];
  v16[7] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"coalitionName" number:9 type:13 subMessageClass:0];
  v16[8] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFirstParty" number:10 type:12 subMessageClass:0];
  v16[9] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isBeta" number:11 type:12 subMessageClass:0];
  v16[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __25__BMProcessCrash_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 terminationReason];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __25__BMProcessCrash_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 exception];
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

    v8 = [[BMProcessCrash alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end