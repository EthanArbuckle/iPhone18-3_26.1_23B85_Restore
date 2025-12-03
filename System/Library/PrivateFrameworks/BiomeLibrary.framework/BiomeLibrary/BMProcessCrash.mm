@interface BMProcessCrash
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProcessCrash)initWithIncidentID:(id)d processName:(id)name bundleID:(id)iD appVersion:(id)version bundleVersion:(id)bundleVersion exception:(id)exception terminationReason:(id)reason responsibleApp:(id)self0 coalitionName:(id)self1 isFirstParty:(id)self2 isBeta:(id)self3;
- (BMProcessCrash)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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
  immutableData = [v3 immutableData];

  return immutableData;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    incidentID = [(BMProcessCrash *)self incidentID];
    incidentID2 = [v5 incidentID];
    v8 = incidentID2;
    if (incidentID == incidentID2)
    {
    }

    else
    {
      incidentID3 = [(BMProcessCrash *)self incidentID];
      incidentID4 = [v5 incidentID];
      v11 = [incidentID3 isEqual:incidentID4];

      if (!v11)
      {
        goto LABEL_49;
      }
    }

    processName = [(BMProcessCrash *)self processName];
    processName2 = [v5 processName];
    v15 = processName2;
    if (processName == processName2)
    {
    }

    else
    {
      processName3 = [(BMProcessCrash *)self processName];
      processName4 = [v5 processName];
      v18 = [processName3 isEqual:processName4];

      if (!v18)
      {
        goto LABEL_49;
      }
    }

    bundleID = [(BMProcessCrash *)self bundleID];
    bundleID2 = [v5 bundleID];
    v21 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMProcessCrash *)self bundleID];
      bundleID4 = [v5 bundleID];
      v24 = [bundleID3 isEqual:bundleID4];

      if (!v24)
      {
        goto LABEL_49;
      }
    }

    appVersion = [(BMProcessCrash *)self appVersion];
    appVersion2 = [v5 appVersion];
    v27 = appVersion2;
    if (appVersion == appVersion2)
    {
    }

    else
    {
      appVersion3 = [(BMProcessCrash *)self appVersion];
      appVersion4 = [v5 appVersion];
      v30 = [appVersion3 isEqual:appVersion4];

      if (!v30)
      {
        goto LABEL_49;
      }
    }

    bundleVersion = [(BMProcessCrash *)self bundleVersion];
    bundleVersion2 = [v5 bundleVersion];
    v33 = bundleVersion2;
    if (bundleVersion == bundleVersion2)
    {
    }

    else
    {
      bundleVersion3 = [(BMProcessCrash *)self bundleVersion];
      bundleVersion4 = [v5 bundleVersion];
      v36 = [bundleVersion3 isEqual:bundleVersion4];

      if (!v36)
      {
        goto LABEL_49;
      }
    }

    exception = [(BMProcessCrash *)self exception];
    exception2 = [v5 exception];
    v39 = exception2;
    if (exception == exception2)
    {
    }

    else
    {
      exception3 = [(BMProcessCrash *)self exception];
      exception4 = [v5 exception];
      v42 = [exception3 isEqual:exception4];

      if (!v42)
      {
        goto LABEL_49;
      }
    }

    terminationReason = [(BMProcessCrash *)self terminationReason];
    terminationReason2 = [v5 terminationReason];
    v45 = terminationReason2;
    if (terminationReason == terminationReason2)
    {
    }

    else
    {
      terminationReason3 = [(BMProcessCrash *)self terminationReason];
      terminationReason4 = [v5 terminationReason];
      v48 = [terminationReason3 isEqual:terminationReason4];

      if (!v48)
      {
        goto LABEL_49;
      }
    }

    responsibleApp = [(BMProcessCrash *)self responsibleApp];
    responsibleApp2 = [v5 responsibleApp];
    v51 = responsibleApp2;
    if (responsibleApp == responsibleApp2)
    {
    }

    else
    {
      responsibleApp3 = [(BMProcessCrash *)self responsibleApp];
      responsibleApp4 = [v5 responsibleApp];
      v54 = [responsibleApp3 isEqual:responsibleApp4];

      if (!v54)
      {
        goto LABEL_49;
      }
    }

    coalitionName = [(BMProcessCrash *)self coalitionName];
    coalitionName2 = [v5 coalitionName];
    v57 = coalitionName2;
    if (coalitionName == coalitionName2)
    {
    }

    else
    {
      coalitionName3 = [(BMProcessCrash *)self coalitionName];
      coalitionName4 = [v5 coalitionName];
      v60 = [coalitionName3 isEqual:coalitionName4];

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
        isBeta = [(BMProcessCrash *)self isBeta];
        v12 = isBeta ^ [v5 isBeta] ^ 1;
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
  incidentID = [(BMProcessCrash *)self incidentID];
  processName = [(BMProcessCrash *)self processName];
  bundleID = [(BMProcessCrash *)self bundleID];
  appVersion = [(BMProcessCrash *)self appVersion];
  bundleVersion = [(BMProcessCrash *)self bundleVersion];
  exception = [(BMProcessCrash *)self exception];
  jsonDictionary = [exception jsonDictionary];

  terminationReason = [(BMProcessCrash *)self terminationReason];
  jsonDictionary2 = [terminationReason jsonDictionary];

  responsibleApp = [(BMProcessCrash *)self responsibleApp];
  coalitionName = [(BMProcessCrash *)self coalitionName];
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
  null = incidentID;
  if (!incidentID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null;
  v43[0] = null;
  v42[1] = @"processName";
  null2 = processName;
  if (!processName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null2;
  v43[1] = null2;
  v42[2] = @"bundleID";
  null3 = bundleID;
  if (!bundleID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = processName;
  v39 = incidentID;
  v31 = null3;
  v43[2] = null3;
  v42[3] = @"appVersion";
  null4 = appVersion;
  if (!appVersion)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = bundleID;
  v30 = null4;
  v43[3] = null4;
  v42[4] = @"bundleVersion";
  null5 = bundleVersion;
  if (!bundleVersion)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = appVersion;
  v29 = null5;
  v43[4] = null5;
  v42[5] = @"exception";
  null6 = jsonDictionary;
  if (!jsonDictionary)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = bundleVersion;
  v43[5] = null6;
  v42[6] = @"terminationReason";
  null7 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = jsonDictionary;
  v43[6] = null7;
  v42[7] = @"responsibleApp";
  null8 = responsibleApp;
  if (!responsibleApp)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = jsonDictionary2;
  v43[7] = null8;
  v42[8] = @"coalitionName";
  null9 = coalitionName;
  if (!coalitionName)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v43[8] = null9;
  v42[9] = @"isFirstParty";
  null10 = v12;
  if (!v12)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v43[9] = null10;
  v42[10] = @"isBeta";
  null11 = v13;
  if (!v13)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v43[10] = null11;
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
  if (!coalitionName)
  {
  }

  if (!responsibleApp)
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

- (BMProcessCrash)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v124[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"incidentID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"processName"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v23 = 0;
          v25 = 0;
          goto LABEL_84;
        }

        v28 = v8;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v30 = *MEMORY[0x1E698F240];
        v121 = *MEMORY[0x1E696A578];
        v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"processName"];
        v122 = v31;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
        v32 = v29;
        v8 = v28;
        v33 = v30;
        error = v31;
        v23 = 0;
        v25 = 0;
        *errorCopy = [v32 initWithDomain:v33 code:2 userInfo:v10];
        goto LABEL_83;
      }

      v99 = v9;
    }

    else
    {
      v99 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v25 = 0;
          v23 = v99;
          goto LABEL_83;
        }

        v34 = v8;
        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v37 = *MEMORY[0x1E698F240];
        v119 = *MEMORY[0x1E696A578];
        v98 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
        v120 = v98;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
        v39 = v35;
        v8 = v34;
        v40 = [v39 initWithDomain:v37 code:2 userInfo:v38];
        error = 0;
        v25 = 0;
        *errorCopy2 = v40;
        v11 = v38;
        v23 = v99;
LABEL_82:

        self = selfCopy;
LABEL_83:

        goto LABEL_84;
      }

      errorCopy4 = error;
      error = v10;
    }

    else
    {
      errorCopy4 = error;
      error = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"appVersion"];
    v95 = v8;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy4)
        {
          v98 = 0;
          v25 = 0;
          v23 = v99;
          goto LABEL_82;
        }

        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy5 = error;
        v46 = *MEMORY[0x1E698F240];
        v117 = *MEMORY[0x1E696A578];
        v93 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appVersion"];
        v118 = v93;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
        v47 = v44;
        v8 = v95;
        v48 = v46;
        error = errorCopy5;
        v98 = 0;
        v25 = 0;
        *errorCopy4 = [v47 initWithDomain:v48 code:2 userInfo:v12];
        v23 = v99;
        goto LABEL_81;
      }

      v98 = v11;
    }

    else
    {
      v98 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"bundleVersion"];
    v91 = v7;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy4)
        {
          v93 = 0;
          v25 = 0;
          v23 = v99;
          goto LABEL_81;
        }

        v94 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy6 = error;
        v57 = *MEMORY[0x1E698F240];
        v115 = *MEMORY[0x1E696A578];
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleVersion"];
        v116 = v26;
        v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
        v59 = v57;
        error = errorCopy6;
        v92 = v58;
        v60 = [v94 initWithDomain:v59 code:2 userInfo:?];
        v93 = 0;
        v25 = 0;
        *errorCopy4 = v60;
        goto LABEL_79;
      }

      v93 = v12;
    }

    else
    {
      v93 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"exception"];
    v90 = v12;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy4)
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
        *errorCopy4 = [v87 initWithDomain:v84 code:2 userInfo:v61];

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
        if (errorCopy4)
        {
          v27 = v27;
          *errorCopy4 = v27;
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

    v16 = [dictionaryCopy objectForKeyedSubscript:@"terminationReason"];
    v81 = v16;
    if (v16 && (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy4)
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
        *errorCopy4 = [v88 initWithDomain:v79 code:2 userInfo:v43];
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
        if (errorCopy4)
        {
          v42 = v42;
          *errorCopy4 = v42;
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

    v18 = [dictionaryCopy objectForKeyedSubscript:@"responsibleApp"];
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
          if (!errorCopy4)
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
          *errorCopy4 = v65;
LABEL_69:

LABEL_70:
          v26 = v75;

          goto LABEL_71;
        }

        v85 = v19;
LABEL_55:
        v49 = [dictionaryCopy objectForKeyedSubscript:@"coalitionName"];
        errorCopy7 = error;
        v74 = v49;
        if (v49 && (v50 = v49, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy4)
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
            *errorCopy4 = v66;
            goto LABEL_66;
          }

          v78 = v50;
        }

        else
        {
          v78 = 0;
        }

        v51 = [dictionaryCopy objectForKeyedSubscript:@"isFirstParty"];
        if (v51 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy4)
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
            *errorCopy4 = v69;
            goto LABEL_65;
          }

          v52 = v51;
        }

        else
        {
          v52 = 0;
        }

        v53 = [dictionaryCopy objectForKeyedSubscript:@"isBeta"];
        if (v53 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (errorCopy4)
            {
              v73 = objc_alloc(MEMORY[0x1E696ABC0]);
              v72 = *MEMORY[0x1E698F240];
              v103 = *MEMORY[0x1E696A578];
              v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isBeta"];
              v104 = v70;
              v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
              *errorCopy4 = [v73 initWithDomain:v72 code:2 userInfo:v71];
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

        v25 = [(BMProcessCrash *)selfCopy initWithIncidentID:v95 processName:v99 bundleID:errorCopy7 appVersion:v98 bundleVersion:v93 exception:v92 terminationReason:v83 responsibleApp:v85 coalitionName:v78 isFirstParty:v52 isBeta:v54];
        selfCopy = v25;
LABEL_65:

LABEL_66:
        v12 = v90;
LABEL_67:

        error = errorCopy7;
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

  if (!error)
  {
    v8 = 0;
    v25 = 0;
    goto LABEL_85;
  }

  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy8 = error;
  v22 = *MEMORY[0x1E698F240];
  v123 = *MEMORY[0x1E696A578];
  v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"incidentID"];
  v124[0] = v23;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:&v123 count:1];
  v24 = [v20 initWithDomain:v22 code:2 userInfo:v9];
  v8 = 0;
  v25 = 0;
  *errorCopy8 = v24;
LABEL_84:

LABEL_85:
  v62 = *MEMORY[0x1E69E9840];
  return v25;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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
    [(BMProcessCrashException *)self->_exception writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_terminationReason)
  {
    PBDataWriterPlaceMark();
    [(BMProcessCrashTerminationReason *)self->_terminationReason writeTo:toCopy];
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v39.receiver = self;
  v39.super_class = BMProcessCrash;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_75;
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
        LOBYTE(v40) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
              v30 = [fromCopy position] + 1;
              if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            v24 = (v29 != 0) & ~[fromCopy hasError];
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
              v21 = [fromCopy position] + 1;
              if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
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

            v24 = (v20 != 0) & ~[fromCopy hasError];
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

            v25 = [[BMProcessCrashException alloc] initByReadFrom:fromCopy];
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

            v25 = [[BMProcessCrashTerminationReason alloc] initByReadFrom:fromCopy];
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  incidentID = [(BMProcessCrash *)self incidentID];
  processName = [(BMProcessCrash *)self processName];
  bundleID = [(BMProcessCrash *)self bundleID];
  appVersion = [(BMProcessCrash *)self appVersion];
  bundleVersion = [(BMProcessCrash *)self bundleVersion];
  exception = [(BMProcessCrash *)self exception];
  terminationReason = [(BMProcessCrash *)self terminationReason];
  responsibleApp = [(BMProcessCrash *)self responsibleApp];
  coalitionName = [(BMProcessCrash *)self coalitionName];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProcessCrash isFirstParty](self, "isFirstParty")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProcessCrash isBeta](self, "isBeta")}];
  v16 = [v15 initWithFormat:@"BMProcessCrash with incidentID: %@, processName: %@, bundleID: %@, appVersion: %@, bundleVersion: %@, exception: %@, terminationReason: %@, responsibleApp: %@, coalitionName: %@, isFirstParty: %@, isBeta: %@", incidentID, processName, bundleID, appVersion, bundleVersion, exception, terminationReason, responsibleApp, coalitionName, v9, v10];

  return v16;
}

- (BMProcessCrash)initWithIncidentID:(id)d processName:(id)name bundleID:(id)iD appVersion:(id)version bundleVersion:(id)bundleVersion exception:(id)exception terminationReason:(id)reason responsibleApp:(id)self0 coalitionName:(id)self1 isFirstParty:(id)self2 isBeta:(id)self3
{
  dCopy = d;
  nameCopy = name;
  nameCopy2 = name;
  iDCopy = iD;
  versionCopy = version;
  bundleVersionCopy = bundleVersion;
  exceptionCopy = exception;
  reasonCopy = reason;
  appCopy = app;
  coalitionNameCopy = coalitionName;
  partyCopy = party;
  betaCopy = beta;
  v34.receiver = self;
  v34.super_class = BMProcessCrash;
  v20 = [(BMEventBase *)&v34 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_incidentID, d);
    objc_storeStrong(&v20->_processName, nameCopy);
    objc_storeStrong(&v20->_bundleID, iD);
    objc_storeStrong(&v20->_appVersion, version);
    objc_storeStrong(&v20->_bundleVersion, bundleVersion);
    objc_storeStrong(&v20->_exception, exception);
    objc_storeStrong(&v20->_terminationReason, reason);
    objc_storeStrong(&v20->_responsibleApp, app);
    objc_storeStrong(&v20->_coalitionName, coalitionName);
    if (partyCopy)
    {
      v20->_hasIsFirstParty = 1;
      v20->_isFirstParty = [partyCopy BOOLValue];
    }

    else
    {
      v20->_hasIsFirstParty = 0;
      v20->_isFirstParty = 0;
    }

    if (betaCopy)
    {
      v20->_hasIsBeta = 1;
      v20->_isBeta = [betaCopy BOOLValue];
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