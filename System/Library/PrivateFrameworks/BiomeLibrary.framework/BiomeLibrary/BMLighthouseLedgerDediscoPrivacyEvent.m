@interface BMLighthouseLedgerDediscoPrivacyEvent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMLighthouseLedgerDediscoPrivacyEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMLighthouseLedgerDediscoPrivacyEvent)initWithTrialIdentifiers:(id)a3 contextID:(id)a4 timestamp:(id)a5 eventIdentifier:(id)a6 event:(id)a7 aggregateFunction:(int)a8 errorCode:(id)a9 count:(id)a10;
- (BOOL)isEqual:(id)a3;
- (NSDate)timestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMLighthouseLedgerDediscoPrivacyEvent

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"trialIdentifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_207_60642];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contextID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventIdentifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"event_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_209_60643];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"aggregateFunction" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"errorCode" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"count" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
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
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self trialIdentifiers];
    v7 = [v5 trialIdentifiers];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self trialIdentifiers];
      v10 = [v5 trialIdentifiers];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_34;
      }
    }

    v13 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self contextID];
    v14 = [v5 contextID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self contextID];
      v17 = [v5 contextID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_34;
      }
    }

    v19 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self timestamp];
    v20 = [v5 timestamp];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self timestamp];
      v23 = [v5 timestamp];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_34;
      }
    }

    v25 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self eventIdentifier];
    v26 = [v5 eventIdentifier];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self eventIdentifier];
      v29 = [v5 eventIdentifier];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_34;
      }
    }

    v31 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self event];
    v32 = [v5 event];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self event];
      v35 = [v5 event];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_34;
      }
    }

    v37 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self aggregateFunction];
    if (v37 == [v5 aggregateFunction])
    {
      if (!-[BMLighthouseLedgerDediscoPrivacyEvent hasErrorCode](self, "hasErrorCode") && ![v5 hasErrorCode] || -[BMLighthouseLedgerDediscoPrivacyEvent hasErrorCode](self, "hasErrorCode") && objc_msgSend(v5, "hasErrorCode") && (v38 = -[BMLighthouseLedgerDediscoPrivacyEvent errorCode](self, "errorCode"), v38 == objc_msgSend(v5, "errorCode")))
      {
        if (!-[BMLighthouseLedgerDediscoPrivacyEvent hasCount](self, "hasCount") && ![v5 hasCount])
        {
          v12 = 1;
          goto LABEL_35;
        }

        if (-[BMLighthouseLedgerDediscoPrivacyEvent hasCount](self, "hasCount") && [v5 hasCount])
        {
          v39 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self count];
          v12 = v39 == [v5 count];
LABEL_35:

          goto LABEL_36;
        }
      }
    }

LABEL_34:
    v12 = 0;
    goto LABEL_35;
  }

  v12 = 0;
LABEL_36:

  return v12;
}

- (NSDate)timestamp
{
  if (self->_hasRaw_timestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_timestamp];
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
  v33[8] = *MEMORY[0x1E69E9840];
  v3 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self trialIdentifiers];
  v4 = [v3 jsonDictionary];

  v5 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self contextID];
  v6 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self timestamp];
  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self timestamp];
    [v8 timeIntervalSince1970];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  v31 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self eventIdentifier];
  v10 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self event];
  v30 = [v10 jsonDictionary];

  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseLedgerDediscoPrivacyEvent aggregateFunction](self, "aggregateFunction")}];
  if ([(BMLighthouseLedgerDediscoPrivacyEvent *)self hasErrorCode])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseLedgerDediscoPrivacyEvent errorCode](self, "errorCode")}];
  }

  else
  {
    v11 = 0;
  }

  if ([(BMLighthouseLedgerDediscoPrivacyEvent *)self hasCount])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseLedgerDediscoPrivacyEvent count](self, "count")}];
  }

  else
  {
    v12 = 0;
  }

  v32[0] = @"trialIdentifiers";
  v13 = v4;
  if (!v4)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v13;
  v33[0] = v13;
  v32[1] = @"contextID";
  v14 = v5;
  if (!v5)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v14;
  v33[1] = v14;
  v32[2] = @"timestamp";
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v15;
  v33[2] = v15;
  v32[3] = @"eventIdentifier";
  v16 = v31;
  if (!v31)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v4;
  v33[3] = v16;
  v32[4] = @"event";
  v17 = v30;
  if (!v30)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v5;
  v33[4] = v17;
  v32[5] = @"aggregateFunction";
  v19 = v29;
  if (!v29)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v33[5] = v19;
  v32[6] = @"errorCode";
  v20 = v11;
  if (!v11)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v33[6] = v20;
  v32[7] = @"count";
  v21 = v12;
  if (!v12)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v33[7] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:8];
  if (v12)
  {
    if (v11)
    {
      goto LABEL_28;
    }
  }

  else
  {

    if (v11)
    {
      goto LABEL_28;
    }
  }

LABEL_28:
  if (!v29)
  {
  }

  if (!v30)
  {
  }

  if (v31)
  {
    if (v9)
    {
      goto LABEL_34;
    }
  }

  else
  {

    if (v9)
    {
LABEL_34:
      if (v18)
      {
        goto LABEL_35;
      }

LABEL_43:

      if (v28)
      {
        goto LABEL_36;
      }

      goto LABEL_44;
    }
  }

  if (!v18)
  {
    goto LABEL_43;
  }

LABEL_35:
  if (v28)
  {
    goto LABEL_36;
  }

LABEL_44:

LABEL_36:
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (BMLighthouseLedgerDediscoPrivacyEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v108[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"trialIdentifiers"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v88 = v7;
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v7;
    v92 = 0;
    v8 = [[BMLighthouseLedgerTrialIdentifiers alloc] initWithJSONDictionary:v12 error:&v92];
    v13 = v92;
    if (v13)
    {
      if (a4)
      {
        v13 = v13;
        *a4 = v13;
      }

      a4 = 0;
      goto LABEL_67;
    }

    v88 = v7;

LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"contextID"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v12 = 0;
          goto LABEL_66;
        }

        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = a4;
        v28 = *MEMORY[0x1E698F240];
        v105 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contextID"];
        v106 = v11;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
        v30 = v26;
        v10 = v29;
        v31 = [v30 initWithDomain:v28 code:2 userInfo:v29];
        v12 = 0;
        a4 = 0;
        *v27 = v31;
LABEL_65:

LABEL_66:
        v7 = v88;
        goto LABEL_67;
      }

      v89 = v9;
    }

    else
    {
      v89 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"timestamp"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = MEMORY[0x1E695DF00];
        v15 = a4;
        v16 = v10;
        v17 = v10;
        v18 = [v14 alloc];
        [v17 doubleValue];
        v20 = v19;

        v10 = v16;
        a4 = v15;
        v21 = [v18 initWithTimeIntervalSince1970:v20];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v11 = [v32 dateFromString:v10];

          goto LABEL_26;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v11 = 0;
            v12 = v89;
            goto LABEL_65;
          }

          v67 = v10;
          v68 = objc_alloc(MEMORY[0x1E696ABC0]);
          v79 = a4;
          v69 = *MEMORY[0x1E698F240];
          v103 = *MEMORY[0x1E696A578];
          v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
          v104 = v87;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
          v70 = v68;
          v10 = v67;
          v71 = [v70 initWithDomain:v69 code:2 userInfo:v33];
          v11 = 0;
          a4 = 0;
          *v79 = v71;
          goto LABEL_63;
        }

        v21 = v10;
      }

      v11 = v21;
    }

    else
    {
      v11 = 0;
    }

LABEL_26:
    v33 = [v6 objectForKeyedSubscript:@"eventIdentifier"];
    v90 = self;
    if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v87 = 0;
          v12 = v89;
          goto LABEL_64;
        }

        v40 = v10;
        v41 = objc_alloc(MEMORY[0x1E696ABC0]);
        v75 = a4;
        v42 = *MEMORY[0x1E698F240];
        v101 = *MEMORY[0x1E696A578];
        v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"eventIdentifier"];
        v102 = v36;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
        v44 = v41;
        v10 = v40;
        v86 = v43;
        v45 = [v44 initWithDomain:v42 code:2 userInfo:?];
        v87 = 0;
        a4 = 0;
        *v75 = v45;
        goto LABEL_61;
      }

      v87 = v33;
    }

    else
    {
      v87 = 0;
    }

    v34 = [v6 objectForKeyedSubscript:@"event"];
    v85 = v10;
    if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          goto LABEL_62;
        }

        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v83 = v11;
        v76 = a4;
        v47 = *MEMORY[0x1E698F240];
        v99 = *MEMORY[0x1E696A578];
        v48 = v33;
        v49 = objc_alloc(MEMORY[0x1E696AEC0]);
        v72 = objc_opt_class();
        v50 = v49;
        v33 = v48;
        v86 = [v50 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v72, @"event"];
        v100 = v86;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
        *v76 = [v46 initWithDomain:v47 code:2 userInfo:v51];
        v11 = v83;

        a4 = 0;
        v36 = v34;
LABEL_61:

        v34 = v36;
LABEL_62:

        self = v90;
LABEL_63:
        v12 = v89;
LABEL_64:

        goto LABEL_65;
      }

      v36 = v34;
      v91 = 0;
      v86 = [[BMLighthouseLedgerDediscoPrivacyEventEventState alloc] initWithJSONDictionary:v36 error:&v91];
      v37 = v91;
      if (v37)
      {
        if (a4)
        {
          v37 = v37;
          *a4 = v37;
        }

        a4 = 0;
        goto LABEL_61;
      }
    }

    else
    {
      v86 = 0;
    }

    v35 = [v6 objectForKeyedSubscript:@"aggregateFunction"];
    v81 = v33;
    v82 = v11;
    if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v38 = a4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = v35;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v84 = 0;
            a4 = 0;
            v11 = v82;
            goto LABEL_60;
          }

          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = *MEMORY[0x1E698F240];
          v97 = *MEMORY[0x1E696A578];
          v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"aggregateFunction"];
          v98 = v54;
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
          v66 = [v64 initWithDomain:v65 code:2 userInfo:v52];
          v84 = 0;
          a4 = 0;
          *v38 = v66;
          v11 = v82;
LABEL_59:

LABEL_60:
          v36 = v34;
          v10 = v85;
          v33 = v81;
          goto LABEL_61;
        }

        v39 = [MEMORY[0x1E696AD98] numberWithInt:BMLighthouseLedgerDediscoPrivacyEventAggregateFunctionFromString(v35)];
      }

      v84 = v39;
      v11 = v82;
    }

    else
    {
      v84 = 0;
    }

    v52 = [v6 objectForKeyedSubscript:@"errorCode"];
    v80 = v9;
    if (v52 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v54 = 0;
          goto LABEL_59;
        }

        v53 = v8;
        v73 = objc_alloc(MEMORY[0x1E696ABC0]);
        v77 = a4;
        v59 = *MEMORY[0x1E698F240];
        v95 = *MEMORY[0x1E696A578];
        v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"errorCode"];
        v96 = v56;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
        v60 = [v73 initWithDomain:v59 code:2 userInfo:v55];
        v54 = 0;
        a4 = 0;
        *v77 = v60;
        goto LABEL_58;
      }

      v53 = v8;
      v54 = v52;
    }

    else
    {
      v53 = v8;
      v54 = 0;
    }

    v55 = [v6 objectForKeyedSubscript:@"count"];
    if (v55 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v78 = objc_alloc(MEMORY[0x1E696ABC0]);
          v74 = *MEMORY[0x1E698F240];
          v93 = *MEMORY[0x1E696A578];
          v61 = a4;
          v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"count"];
          v94 = v62;
          v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
          *v61 = [v78 initWithDomain:v74 code:2 userInfo:v63];

          v56 = 0;
          a4 = 0;
        }

        else
        {
          v56 = 0;
        }

        v11 = v82;
        goto LABEL_58;
      }

      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    v11 = v82;
    a4 = -[BMLighthouseLedgerDediscoPrivacyEvent initWithTrialIdentifiers:contextID:timestamp:eventIdentifier:event:aggregateFunction:errorCode:count:](v90, "initWithTrialIdentifiers:contextID:timestamp:eventIdentifier:event:aggregateFunction:errorCode:count:", v53, v89, v82, v87, v86, [v84 intValue], v54, v56);
    v90 = a4;
LABEL_58:

    v8 = v53;
    v9 = v80;
    goto LABEL_59;
  }

  if (a4)
  {
    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    v23 = a4;
    v24 = *MEMORY[0x1E698F240];
    v107 = *MEMORY[0x1E696A578];
    v108[0] = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"trialIdentifiers"];
    v8 = v108[0];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:&v107 count:1];
    v25 = [v22 initWithDomain:v24 code:2 userInfo:v12];
    a4 = 0;
    *v23 = v25;
LABEL_67:
  }

  v57 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLighthouseLedgerDediscoPrivacyEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_trialIdentifiers)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseLedgerTrialIdentifiers *)self->_trialIdentifiers writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_contextID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_eventIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_event)
  {
    PBDataWriterPlaceMark();
    [(BMLighthouseLedgerDediscoPrivacyEventEventState *)self->_event writeTo:v4];
    PBDataWriterRecallMark();
  }

  aggregateFunction = self->_aggregateFunction;
  PBDataWriterWriteUint32Field();
  if (self->_hasErrorCode)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasCount)
  {
    count = self->_count;
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = BMLighthouseLedgerDediscoPrivacyEvent;
  v5 = [(BMEventBase *)&v49 init];
  if (!v5)
  {
    goto LABEL_89;
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
        LOBYTE(v50) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v50) & 0x7F) << v7;
        if ((LOBYTE(v50) & 0x80) == 0)
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
      if ((v14 >> 3) > 4)
      {
        if (v15 > 6)
        {
          if (v15 == 7)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v5->_hasErrorCode = 1;
            while (1)
            {
              LOBYTE(v50) = 0;
              v41 = [v4 position] + 1;
              if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
              {
                v43 = [v4 data];
                [v43 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v40 |= (LOBYTE(v50) & 0x7F) << v38;
              if ((LOBYTE(v50) & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v13 = v39++ >= 9;
              if (v13)
              {
                v32 = 0;
                goto LABEL_74;
              }
            }

            if ([v4 hasError])
            {
              v32 = 0;
            }

            else
            {
              v32 = v40;
            }

LABEL_74:
            v44 = 44;
          }

          else
          {
            if (v15 != 8)
            {
LABEL_69:
              if ((PBReaderSkipValueWithTag() & 1) == 0)
              {
                goto LABEL_88;
              }

              goto LABEL_86;
            }

            v26 = 0;
            v27 = 0;
            v28 = 0;
            v5->_hasCount = 1;
            while (1)
            {
              LOBYTE(v50) = 0;
              v29 = [v4 position] + 1;
              if (v29 >= [v4 position] && (v30 = objc_msgSend(v4, "position") + 1, v30 <= objc_msgSend(v4, "length")))
              {
                v31 = [v4 data];
                [v31 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v28 |= (LOBYTE(v50) & 0x7F) << v26;
              if ((LOBYTE(v50) & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v13 = v27++ >= 9;
              if (v13)
              {
                v32 = 0;
                goto LABEL_82;
              }
            }

            if ([v4 hasError])
            {
              v32 = 0;
            }

            else
            {
              v32 = v28;
            }

LABEL_82:
            v44 = 48;
          }

          *(&v5->super.super.isa + v44) = v32;
        }

        else
        {
          if (v15 == 5)
          {
            v50 = 0.0;
            v51 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_88;
            }

            v33 = [[BMLighthouseLedgerDediscoPrivacyEventEventState alloc] initByReadFrom:v4];
            if (!v33)
            {
              goto LABEL_88;
            }

            v34 = 80;
            goto LABEL_56;
          }

          if (v15 != 6)
          {
            goto LABEL_69;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v50) = 0;
            v21 = [v4 position] + 1;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
            {
              v23 = [v4 data];
              [v23 getBytes:&v50 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v20 |= (LOBYTE(v50) & 0x7F) << v18;
            if ((LOBYTE(v50) & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            if (v19++ > 8)
            {
              goto LABEL_77;
            }
          }

          if (([v4 hasError] & 1) != 0 || v20 > 3)
          {
LABEL_77:
            LODWORD(v20) = 0;
          }

          v5->_aggregateFunction = v20;
        }
      }

      else
      {
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v5->_hasRaw_timestamp = 1;
            v50 = 0.0;
            v36 = [v4 position] + 8;
            if (v36 >= [v4 position] && (v37 = objc_msgSend(v4, "position") + 8, v37 <= objc_msgSend(v4, "length")))
            {
              v45 = [v4 data];
              [v45 getBytes:&v50 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v5->_raw_timestamp = v50;
            goto LABEL_86;
          }

          if (v15 != 4)
          {
            goto LABEL_69;
          }

          v16 = PBReaderReadString();
          v17 = 72;
        }

        else
        {
          if (v15 == 1)
          {
            v50 = 0.0;
            v51 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_88;
            }

            v33 = [[BMLighthouseLedgerTrialIdentifiers alloc] initByReadFrom:v4];
            if (!v33)
            {
              goto LABEL_88;
            }

            v34 = 56;
LABEL_56:
            v35 = *(&v5->super.super.isa + v34);
            *(&v5->super.super.isa + v34) = v33;

            PBReaderRecallMark();
            goto LABEL_86;
          }

          if (v15 != 2)
          {
            goto LABEL_69;
          }

          v16 = PBReaderReadString();
          v17 = 64;
        }

        v25 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

LABEL_86:
      v46 = [v4 position];
    }

    while (v46 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_88:
    v47 = 0;
  }

  else
  {
LABEL_89:
    v47 = v5;
  }

  return v47;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self trialIdentifiers];
  v5 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self contextID];
  v6 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self timestamp];
  v7 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self eventIdentifier];
  v8 = [(BMLighthouseLedgerDediscoPrivacyEvent *)self event];
  v9 = BMLighthouseLedgerDediscoPrivacyEventAggregateFunctionAsString([(BMLighthouseLedgerDediscoPrivacyEvent *)self aggregateFunction]);
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseLedgerDediscoPrivacyEvent errorCode](self, "errorCode")}];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLighthouseLedgerDediscoPrivacyEvent count](self, "count")}];
  v12 = [v3 initWithFormat:@"BMLighthouseLedgerDediscoPrivacyEvent with trialIdentifiers: %@, contextID: %@, timestamp: %@, eventIdentifier: %@, event: %@, aggregateFunction: %@, errorCode: %@, count: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMLighthouseLedgerDediscoPrivacyEvent)initWithTrialIdentifiers:(id)a3 contextID:(id)a4 timestamp:(id)a5 eventIdentifier:(id)a6 event:(id)a7 aggregateFunction:(int)a8 errorCode:(id)a9 count:(id)a10
{
  v28 = a3;
  v27 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v20 = a10;
  v29.receiver = self;
  v29.super_class = BMLighthouseLedgerDediscoPrivacyEvent;
  v21 = [(BMEventBase *)&v29 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v21->_trialIdentifiers, a3);
    objc_storeStrong(&v21->_contextID, a4);
    if (v16)
    {
      v21->_hasRaw_timestamp = 1;
      [v16 timeIntervalSince1970];
    }

    else
    {
      v21->_hasRaw_timestamp = 0;
      v22 = -1.0;
    }

    v21->_raw_timestamp = v22;
    objc_storeStrong(&v21->_eventIdentifier, a6);
    objc_storeStrong(&v21->_event, a7);
    v21->_aggregateFunction = a8;
    if (v19)
    {
      v21->_hasErrorCode = 1;
      v23 = [v19 intValue];
    }

    else
    {
      v21->_hasErrorCode = 0;
      v23 = -1;
    }

    v21->_errorCode = v23;
    if (v20)
    {
      v21->_hasCount = 1;
      v24 = [v20 intValue];
    }

    else
    {
      v21->_hasCount = 0;
      v24 = -1;
    }

    v21->_count = v24;
  }

  return v21;
}

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialIdentifiers" number:1 type:14 subMessageClass:objc_opt_class()];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contextID" number:2 type:13 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:3 type:0 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventIdentifier" number:4 type:13 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"event" number:5 type:14 subMessageClass:objc_opt_class()];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aggregateFunction" number:6 type:4 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"errorCode" number:7 type:2 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"count" number:8 type:2 subMessageClass:0];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __48__BMLighthouseLedgerDediscoPrivacyEvent_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 event];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __48__BMLighthouseLedgerDediscoPrivacyEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 trialIdentifiers];
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

    v8 = [[BMLighthouseLedgerDediscoPrivacyEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end