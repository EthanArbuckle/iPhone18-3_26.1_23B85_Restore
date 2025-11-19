@interface BMIntelligenceFlowIdentifiers
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMIntelligenceFlowIdentifiers)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMIntelligenceFlowIdentifiers)initWithSessionId:(id)a3 spanId:(id)a4 clientRequestId:(id)a5 clientSessionId:(id)a6 clientApplicationId:(id)a7 clientGroupIdentifier:(id)a8;
- (BMIntelligenceFlowIdentifiers)initWithSessionId:(id)a3 spanId:(id)a4 clientRequestId:(id)a5 clientSessionId:(id)a6 clientApplicationId:(id)a7 clientGroupIdentifier:(id)a8 requestEventId:(id)a9;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSUUID)requestEventId;
- (NSUUID)sessionId;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMIntelligenceFlowIdentifiers

- (id)jsonDictionary
{
  v28[7] = *MEMORY[0x1E69E9840];
  v3 = [(BMIntelligenceFlowIdentifiers *)self sessionId];
  v4 = [v3 UUIDString];

  if ([(BMIntelligenceFlowIdentifiers *)self hasSpanId])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMIntelligenceFlowIdentifiers spanId](self, "spanId")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(BMIntelligenceFlowIdentifiers *)self clientRequestId];
  v7 = [(BMIntelligenceFlowIdentifiers *)self clientSessionId];
  v8 = [(BMIntelligenceFlowIdentifiers *)self clientApplicationId];
  v9 = [(BMIntelligenceFlowIdentifiers *)self clientGroupIdentifier];
  v10 = [(BMIntelligenceFlowIdentifiers *)self requestEventId];
  v11 = [v10 UUIDString];

  v27[0] = @"sessionId";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v12;
  v28[0] = v12;
  v27[1] = @"spanId";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v13;
  v28[1] = v13;
  v27[2] = @"clientRequestId";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v4;
  v22 = v14;
  v28[2] = v14;
  v27[3] = @"clientSessionId";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v5;
  v28[3] = v15;
  v27[4] = @"clientApplicationId";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v28[4] = v16;
  v27[5] = @"clientGroupIdentifier";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = v17;
  v27[6] = @"requestEventId";
  v18 = v11;
  if (!v11)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v28[6] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:7];
  if (v11)
  {
    if (v9)
    {
      goto LABEL_20;
    }

LABEL_30:

    if (v8)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (!v9)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (v8)
  {
    goto LABEL_21;
  }

LABEL_31:

LABEL_21:
  if (!v7)
  {
  }

  if (v6)
  {
    if (v25)
    {
      goto LABEL_25;
    }

LABEL_33:

    if (v26)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (!v25)
  {
    goto LABEL_33;
  }

LABEL_25:
  if (v26)
  {
    goto LABEL_26;
  }

LABEL_34:

LABEL_26:
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (NSUUID)sessionId
{
  raw_sessionId = self->_raw_sessionId;
  if (raw_sessionId)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_sessionId toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSUUID)requestEventId
{
  raw_requestEventId = self->_raw_requestEventId;
  if (raw_requestEventId)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_requestEventId toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BMIntelligenceFlowIdentifiers)initWithSessionId:(id)a3 spanId:(id)a4 clientRequestId:(id)a5 clientSessionId:(id)a6 clientApplicationId:(id)a7 clientGroupIdentifier:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[BMIntelligenceFlowIdentifiers alloc] initWithSessionId:v19 spanId:v18 clientRequestId:v17 clientSessionId:v16 clientApplicationId:v15 clientGroupIdentifier:v14 requestEventId:0];

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMIntelligenceFlowIdentifiers *)self sessionId];
    v7 = [v5 sessionId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMIntelligenceFlowIdentifiers *)self sessionId];
      v10 = [v5 sessionId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_26;
      }
    }

    if (-[BMIntelligenceFlowIdentifiers hasSpanId](self, "hasSpanId") || [v5 hasSpanId])
    {
      if (![(BMIntelligenceFlowIdentifiers *)self hasSpanId])
      {
        goto LABEL_26;
      }

      if (![v5 hasSpanId])
      {
        goto LABEL_26;
      }

      v13 = [(BMIntelligenceFlowIdentifiers *)self spanId];
      if (v13 != [v5 spanId])
      {
        goto LABEL_26;
      }
    }

    v14 = [(BMIntelligenceFlowIdentifiers *)self clientRequestId];
    v15 = [v5 clientRequestId];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMIntelligenceFlowIdentifiers *)self clientRequestId];
      v18 = [v5 clientRequestId];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_26;
      }
    }

    v20 = [(BMIntelligenceFlowIdentifiers *)self clientSessionId];
    v21 = [v5 clientSessionId];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMIntelligenceFlowIdentifiers *)self clientSessionId];
      v24 = [v5 clientSessionId];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
        goto LABEL_26;
      }
    }

    v26 = [(BMIntelligenceFlowIdentifiers *)self clientApplicationId];
    v27 = [v5 clientApplicationId];
    v28 = v27;
    if (v26 == v27)
    {
    }

    else
    {
      v29 = [(BMIntelligenceFlowIdentifiers *)self clientApplicationId];
      v30 = [v5 clientApplicationId];
      v31 = [v29 isEqual:v30];

      if (!v31)
      {
        goto LABEL_26;
      }
    }

    v32 = [(BMIntelligenceFlowIdentifiers *)self clientGroupIdentifier];
    v33 = [v5 clientGroupIdentifier];
    v34 = v33;
    if (v32 == v33)
    {
    }

    else
    {
      v35 = [(BMIntelligenceFlowIdentifiers *)self clientGroupIdentifier];
      v36 = [v5 clientGroupIdentifier];
      v37 = [v35 isEqual:v36];

      if (!v37)
      {
LABEL_26:
        v12 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    v39 = [(BMIntelligenceFlowIdentifiers *)self requestEventId];
    v40 = [v5 requestEventId];
    if (v39 == v40)
    {
      v12 = 1;
    }

    else
    {
      v41 = [(BMIntelligenceFlowIdentifiers *)self requestEventId];
      v42 = [v5 requestEventId];
      v12 = [v41 isEqual:v42];
    }

    goto LABEL_27;
  }

  v12 = 0;
LABEL_28:

  return v12;
}

- (BMIntelligenceFlowIdentifiers)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v99[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"sessionId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"spanId"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v21 = 0;
          goto LABEL_31;
        }

        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E698F240];
        v94 = *MEMORY[0x1E696A578];
        v72 = a4;
        a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"spanId"];
        v95 = a4;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        v35 = [v33 initWithDomain:v34 code:2 userInfo:v23];
        v10 = 0;
        v21 = 0;
        *v72 = v35;
LABEL_30:

LABEL_31:
        goto LABEL_32;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"clientRequestId"];
    v80 = v11;
    v81 = self;
    if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v21 = 0;
          v23 = v80;
          goto LABEL_30;
        }

        v38 = a4;
        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = v10;
        v41 = *MEMORY[0x1E698F240];
        v92 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientRequestId"];
        v93 = v22;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        v43 = v39;
        v14 = v42;
        v44 = v41;
        v10 = v40;
        a4 = 0;
        v21 = 0;
        *v38 = [v43 initWithDomain:v44 code:2 userInfo:v42];
        goto LABEL_29;
      }

      v79 = v12;
    }

    else
    {
      v79 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"clientSessionId"];
    v73 = v13;
    if (v13 && (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v22 = 0;
          v21 = 0;
          goto LABEL_28;
        }

        v45 = v10;
        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = a4;
        v48 = *MEMORY[0x1E698F240];
        v90 = *MEMORY[0x1E696A578];
        v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientSessionId"];
        v91 = v77;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
        v49 = v46;
        v10 = v45;
        v22 = 0;
        v21 = 0;
        *v47 = [v49 initWithDomain:v48 code:2 userInfo:v15];
        v14 = v73;
LABEL_27:

LABEL_28:
        a4 = v79;
LABEL_29:

        v23 = v80;
        self = v81;
        goto LABEL_30;
      }

      v76 = v14;
    }

    else
    {
      v76 = 0;
    }

    v15 = [v6 objectForKeyedSubscript:@"clientApplicationId"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v32 = v10;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v77 = 0;
          v21 = 0;
          v14 = v73;
          goto LABEL_26;
        }

        v78 = objc_alloc(MEMORY[0x1E696ABC0]);
        v50 = *MEMORY[0x1E698F240];
        v88 = *MEMORY[0x1E696A578];
        v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientApplicationId"];
        v89 = v74;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
        v16 = v51 = a4;
        v52 = [v78 initWithDomain:v50 code:2 userInfo:v16];
        v77 = 0;
        v21 = 0;
        *v51 = v52;
        goto LABEL_74;
      }

      v71 = a4;
      v77 = v15;
    }

    else
    {
      v71 = a4;
      v77 = 0;
    }

    v16 = [v6 objectForKeyedSubscript:@"clientGroupIdentifier"];
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v74 = 0;
LABEL_19:
      v17 = [v6 objectForKeyedSubscript:@"requestEventId"];
      if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v71)
          {
            v69 = objc_alloc(MEMORY[0x1E696ABC0]);
            v66 = *MEMORY[0x1E698F240];
            v82 = *MEMORY[0x1E696A578];
            v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"requestEventId"];
            v83 = v64;
            v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
            *v71 = [v69 initWithDomain:v66 code:2 userInfo:v61];
          }

          v21 = 0;
          goto LABEL_24;
        }

        v18 = v9;
        v19 = v7;
        v36 = v17;
        v37 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v36];
        if (!v37)
        {
          if (v71)
          {
            v67 = objc_alloc(MEMORY[0x1E696ABC0]);
            v65 = *MEMORY[0x1E698F240];
            v84 = *MEMORY[0x1E696A578];
            v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"requestEventId"];
            v85 = v62;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
            v63 = v70 = v36;
            *v71 = [v67 initWithDomain:v65 code:2 userInfo:v63];

            v36 = v70;
          }

          v17 = v36;
          v21 = 0;
          goto LABEL_23;
        }

        v20 = v37;
      }

      else
      {
        v18 = v9;
        v19 = v7;
        v20 = 0;
      }

      v21 = [(BMIntelligenceFlowIdentifiers *)v81 initWithSessionId:v8 spanId:v10 clientRequestId:v79 clientSessionId:v76 clientApplicationId:v77 clientGroupIdentifier:v74 requestEventId:v20];

      v81 = v21;
LABEL_23:
      v7 = v19;
      v9 = v18;
LABEL_24:

LABEL_25:
      v14 = v73;

LABEL_26:
      v22 = v76;
      goto LABEL_27;
    }

    v32 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v74 = v16;
      goto LABEL_19;
    }

    v21 = v71;
    if (v71)
    {
      v75 = objc_alloc(MEMORY[0x1E696ABC0]);
      v68 = *MEMORY[0x1E698F240];
      v86 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientGroupIdentifier"];
      v87 = v17;
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
      *v71 = [v75 initWithDomain:v68 code:2 userInfo:v53];

      v74 = 0;
      v21 = 0;
      v10 = v32;
      goto LABEL_24;
    }

    v74 = 0;
LABEL_74:
    v10 = v32;
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      v21 = 0;
      goto LABEL_34;
    }

    v28 = objc_alloc(MEMORY[0x1E696ABC0]);
    v29 = *MEMORY[0x1E698F240];
    v96 = *MEMORY[0x1E696A578];
    v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sessionId"];
    v97 = v30;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
    v31 = v29;
    v8 = v30;
    v21 = 0;
    *a4 = [v28 initWithDomain:v31 code:2 userInfo:v10];
    goto LABEL_32;
  }

  v8 = v7;
  v26 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
  if (v26)
  {
    v27 = v26;

    v8 = v27;
    goto LABEL_4;
  }

  if (!a4)
  {
    v21 = 0;
    goto LABEL_33;
  }

  v54 = objc_alloc(MEMORY[0x1E696ABC0]);
  v55 = a4;
  v56 = v7;
  v57 = v8;
  v58 = *MEMORY[0x1E698F240];
  v98 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"sessionId"];
  v99[0] = v10;
  v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:&v98 count:1];
  v60 = v58;
  v8 = v57;
  v7 = v56;
  *v55 = [v54 initWithDomain:v60 code:2 userInfo:v59];

  v21 = 0;
LABEL_32:

LABEL_33:
LABEL_34:

  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligenceFlowIdentifiers *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_raw_sessionId)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_hasSpanId)
  {
    spanId = self->_spanId;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_clientRequestId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_clientSessionId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_clientApplicationId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_clientGroupIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_raw_requestEventId)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BMIntelligenceFlowIdentifiers;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_57;
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
        v32 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v32 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v32 & 0x7F) << v7;
        if ((v32 & 0x80) == 0)
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
        if (v15 != 1)
        {
          if (v15 == 2)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            v5->_hasSpanId = 1;
            while (1)
            {
              v32 = 0;
              v25 = [v4 position] + 1;
              if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 1, v26 <= objc_msgSend(v4, "length")))
              {
                v27 = [v4 data];
                [v27 getBytes:&v32 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v24 |= (v32 & 0x7F) << v22;
              if ((v32 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v13 = v23++ >= 9;
              if (v13)
              {
                v28 = 0;
                goto LABEL_54;
              }
            }

            if ([v4 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v24;
            }

LABEL_54:
            v5->_spanId = v28;
            goto LABEL_40;
          }

          if (v15 != 3)
          {
            goto LABEL_34;
          }

          v16 = PBReaderReadString();
          v17 = 48;
          goto LABEL_38;
        }

        v18 = PBReaderReadData();
        if ([v18 length] != 16)
        {
LABEL_59:

          goto LABEL_56;
        }

        v19 = 16;
      }

      else
      {
        if (v15 <= 5)
        {
          if (v15 == 4)
          {
            v16 = PBReaderReadString();
            v17 = 56;
          }

          else
          {
            if (v15 != 5)
            {
              goto LABEL_34;
            }

            v16 = PBReaderReadString();
            v17 = 64;
          }

          goto LABEL_38;
        }

        if (v15 == 6)
        {
          v16 = PBReaderReadString();
          v17 = 72;
LABEL_38:
          v20 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;
          goto LABEL_39;
        }

        if (v15 != 7)
        {
LABEL_34:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_40;
        }

        v18 = PBReaderReadData();
        if ([v18 length] != 16)
        {
          goto LABEL_59;
        }

        v19 = 24;
      }

      v20 = *(&v5->super.super.isa + v19);
      *(&v5->super.super.isa + v19) = v18;
LABEL_39:

LABEL_40:
      v21 = [v4 position];
    }

    while (v21 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_56:
    v29 = 0;
  }

  else
  {
LABEL_57:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMIntelligenceFlowIdentifiers *)self sessionId];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMIntelligenceFlowIdentifiers spanId](self, "spanId")}];
  v6 = [(BMIntelligenceFlowIdentifiers *)self clientRequestId];
  v7 = [(BMIntelligenceFlowIdentifiers *)self clientSessionId];
  v8 = [(BMIntelligenceFlowIdentifiers *)self clientApplicationId];
  v9 = [(BMIntelligenceFlowIdentifiers *)self clientGroupIdentifier];
  v10 = [(BMIntelligenceFlowIdentifiers *)self requestEventId];
  v11 = [v3 initWithFormat:@"BMIntelligenceFlowIdentifiers with sessionId: %@, spanId: %@, clientRequestId: %@, clientSessionId: %@, clientApplicationId: %@, clientGroupIdentifier: %@, requestEventId: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BMIntelligenceFlowIdentifiers)initWithSessionId:(id)a3 spanId:(id)a4 clientRequestId:(id)a5 clientSessionId:(id)a6 clientApplicationId:(id)a7 clientGroupIdentifier:(id)a8 requestEventId:(id)a9
{
  v33 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v30.receiver = self;
  v30.super_class = BMIntelligenceFlowIdentifiers;
  v19 = [(BMEventBase *)&v30 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v15)
    {
      v31 = 0;
      v32 = 0;
      [v15 getUUIDBytes:&v31];
      v20 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v31 length:16];
      raw_sessionId = v19->_raw_sessionId;
      v19->_raw_sessionId = v20;
    }

    else
    {
      v15 = 0;
      raw_sessionId = v19->_raw_sessionId;
      v19->_raw_sessionId = 0;
    }

    v22 = v29;
    if (v29)
    {
      v19->_hasSpanId = 1;
      v22 = [v29 unsignedLongLongValue];
    }

    else
    {
      v19->_hasSpanId = 0;
    }

    v19->_spanId = v22;
    objc_storeStrong(&v19->_clientRequestId, a5);
    objc_storeStrong(&v19->_clientSessionId, a6);
    objc_storeStrong(&v19->_clientApplicationId, a7);
    objc_storeStrong(&v19->_clientGroupIdentifier, a8);
    if (v18)
    {
      v31 = 0;
      v32 = 0;
      [v18 getUUIDBytes:&v31];
      v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v31 length:16];
      raw_requestEventId = v19->_raw_requestEventId;
      v19->_raw_requestEventId = v23;
    }

    else
    {
      raw_requestEventId = v19->_raw_requestEventId;
      v19->_raw_requestEventId = 0;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionId" number:1 type:14 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"spanId" number:2 type:5 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientRequestId" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientSessionId" number:4 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientApplicationId" number:5 type:13 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientGroupIdentifier" number:6 type:13 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestEventId" number:7 type:14 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionId" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"spanId" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:5 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientRequestId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientSessionId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientApplicationId" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientGroupIdentifier" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestEventId" dataType:6 requestOnly:0 fieldNumber:7 protoDataType:14 convertedType:3];
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

    v8 = [[BMIntelligenceFlowIdentifiers alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end