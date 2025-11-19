@interface BMAppIntentInvocation
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppIntentInvocation)initWithBundleID:(id)a3 source:(int)a4 executionUUID:(id)a5 executionDate:(id)a6 action:(id)a7 resolvedAction:(id)a8 actionOutput:(id)a9 predictions:(id)a10;
- (BMAppIntentInvocation)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)executionDate;
- (NSString)description;
- (NSUUID)executionUUID;
- (id)_predictionsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAppIntentInvocation

+ (id)columns
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"source" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"executionUUID" dataType:6 requestOnly:0 fieldNumber:3 protoDataType:14 convertedType:3];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"executionDate" dataType:3 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:2];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"action_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1159];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"resolvedAction_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1161];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"actionOutput_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1163];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"predictions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1165];
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

+ (id)protoFields
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:1 type:13 subMessageClass:0];
  v13[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"source" number:2 type:4 subMessageClass:0];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"executionUUID" number:3 type:14 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"executionDate" number:4 type:0 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"action" number:5 type:14 subMessageClass:objc_opt_class()];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"resolvedAction" number:6 type:14 subMessageClass:objc_opt_class()];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actionOutput" number:7 type:14 subMessageClass:objc_opt_class()];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predictions" number:8 type:14 subMessageClass:objc_opt_class()];
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
    v6 = [(BMAppIntentInvocation *)self bundleID];
    v7 = [v5 bundleID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAppIntentInvocation *)self bundleID];
      v10 = [v5 bundleID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_26;
      }
    }

    v13 = [(BMAppIntentInvocation *)self source];
    if (v13 == [v5 source])
    {
      v14 = [(BMAppIntentInvocation *)self executionUUID];
      v15 = [v5 executionUUID];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMAppIntentInvocation *)self executionUUID];
        v18 = [v5 executionUUID];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_26;
        }
      }

      v20 = [(BMAppIntentInvocation *)self executionDate];
      v21 = [v5 executionDate];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMAppIntentInvocation *)self executionDate];
        v24 = [v5 executionDate];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_26;
        }
      }

      v26 = [(BMAppIntentInvocation *)self action];
      v27 = [v5 action];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(BMAppIntentInvocation *)self action];
        v30 = [v5 action];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_26;
        }
      }

      v32 = [(BMAppIntentInvocation *)self resolvedAction];
      v33 = [v5 resolvedAction];
      v34 = v33;
      if (v32 == v33)
      {
      }

      else
      {
        v35 = [(BMAppIntentInvocation *)self resolvedAction];
        v36 = [v5 resolvedAction];
        v37 = [v35 isEqual:v36];

        if (!v37)
        {
          goto LABEL_26;
        }
      }

      v38 = [(BMAppIntentInvocation *)self actionOutput];
      v39 = [v5 actionOutput];
      v40 = v39;
      if (v38 == v39)
      {
      }

      else
      {
        v41 = [(BMAppIntentInvocation *)self actionOutput];
        v42 = [v5 actionOutput];
        v43 = [v41 isEqual:v42];

        if (!v43)
        {
          goto LABEL_26;
        }
      }

      v45 = [(BMAppIntentInvocation *)self predictions];
      v46 = [v5 predictions];
      if (v45 == v46)
      {
        v12 = 1;
      }

      else
      {
        v47 = [(BMAppIntentInvocation *)self predictions];
        v48 = [v5 predictions];
        v12 = [v47 isEqual:v48];
      }

      goto LABEL_27;
    }

LABEL_26:
    v12 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v12 = 0;
LABEL_28:

  return v12;
}

- (NSDate)executionDate
{
  if (self->_hasRaw_executionDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_executionDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSUUID)executionUUID
{
  raw_executionUUID = self->_raw_executionUUID;
  if (raw_executionUUID)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_executionUUID toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v36[8] = *MEMORY[0x1E69E9840];
  v3 = [(BMAppIntentInvocation *)self bundleID];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppIntentInvocation source](self, "source")}];
  v5 = [(BMAppIntentInvocation *)self executionUUID];
  v6 = [v5 UUIDString];

  v7 = [(BMAppIntentInvocation *)self executionDate];
  if (v7)
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = [(BMAppIntentInvocation *)self executionDate];
    [v9 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(BMAppIntentInvocation *)self action];
  v34 = [v11 jsonDictionary];

  v12 = [(BMAppIntentInvocation *)self resolvedAction];
  v13 = [v12 jsonDictionary];

  v14 = [(BMAppIntentInvocation *)self actionOutput];
  v15 = [v14 jsonDictionary];

  v16 = [(BMAppIntentInvocation *)self _predictionsJSONArray];
  v35[0] = @"bundleID";
  v17 = v3;
  if (!v3)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v17;
  v36[0] = v17;
  v35[1] = @"source";
  v18 = v4;
  if (!v4)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v18;
  v36[1] = v18;
  v35[2] = @"executionUUID";
  v19 = v6;
  if (!v6)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v3;
  v28 = v19;
  v36[2] = v19;
  v35[3] = @"executionDate";
  v20 = v10;
  if (!v10)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v4;
  v36[3] = v20;
  v35[4] = @"action";
  v21 = v34;
  if (!v34)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v6;
  v36[4] = v21;
  v35[5] = @"resolvedAction";
  v22 = v13;
  if (!v13)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v36[5] = v22;
  v35[6] = @"actionOutput";
  v23 = v15;
  if (!v15)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v36[6] = v23;
  v35[7] = @"predictions";
  v24 = v16;
  if (!v16)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v36[7] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:8];
  if (v16)
  {
    if (v15)
    {
      goto LABEL_22;
    }

LABEL_34:

    if (v13)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

  if (!v15)
  {
    goto LABEL_34;
  }

LABEL_22:
  if (v13)
  {
    goto LABEL_23;
  }

LABEL_35:

LABEL_23:
  if (!v34)
  {
  }

  if (!v10)
  {
  }

  if (v31)
  {
    if (v32)
    {
      goto LABEL_29;
    }

LABEL_37:

    if (v33)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

  if (!v32)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (v33)
  {
    goto LABEL_30;
  }

LABEL_38:

LABEL_30:
  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)_predictionsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMAppIntentInvocation *)self predictions];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMAppIntentInvocation)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v172[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"bundleID"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [v5 objectForKeyedSubscript:@"source"];
    v139 = v8;
    v140 = a4;
    if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v17 = 0;
            v10 = 0;
            goto LABEL_108;
          }

          v138 = objc_alloc(MEMORY[0x1E696ABC0]);
          v134 = *MEMORY[0x1E698F240];
          v169 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"source"];
          v170 = v18;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v170 forKeys:&v169 count:1];
          v17 = 0;
          *a4 = [v138 initWithDomain:v134 code:2 userInfo:v19];
          v10 = 0;
          goto LABEL_106;
        }

        v11 = [MEMORY[0x1E696AD98] numberWithInt:BMAppIntentInvocationSourceFromString(v9)];
      }

      v10 = v11;
    }

    else
    {
      v10 = 0;
    }

    v18 = [v5 objectForKeyedSubscript:@"executionUUID"];
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v17 = 0;
LABEL_107:

          v9 = v139;
          goto LABEL_108;
        }

        v126 = v7;
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = v18;
        v35 = *MEMORY[0x1E698F240];
        v165 = *MEMORY[0x1E696A578];
        v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"executionUUID"];
        v166 = v36;
        v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
        v38 = v33;
        v7 = v126;
        v39 = v35;
        v18 = v34;
        *v140 = [v38 initWithDomain:v39 code:2 userInfo:v37];
        v19 = v36;

        v17 = 0;
LABEL_106:

        goto LABEL_107;
      }

      v125 = v7;
      v19 = v18;
      v24 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v19];
      if (!v24)
      {
        if (a4)
        {
          v86 = objc_alloc(MEMORY[0x1E696ABC0]);
          v87 = *MEMORY[0x1E698F240];
          v167 = *MEMORY[0x1E696A578];
          v88 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"executionUUID"];
          v168 = v88;
          v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
          *a4 = [v86 initWithDomain:v87 code:2 userInfo:v89];
        }

        v17 = 0;
        v18 = v19;
        v7 = v125;
        goto LABEL_106;
      }

      v25 = v24;

      v19 = v25;
      v7 = v125;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v5 objectForKeyedSubscript:@"executionDate"];
    v137 = v20;
    if (v20 && (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v19;
        v26 = MEMORY[0x1E695DF00];
        v27 = v7;
        v28 = v21;
        v29 = [v26 alloc];
        [v28 doubleValue];
        v31 = v30;

        v7 = v27;
        v32 = [v29 initWithTimeIntervalSince1970:v31];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v19;
          v40 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v23 = [v40 dateFromString:v21];

          goto LABEL_32;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v23 = 0;
            v17 = 0;
            goto LABEL_105;
          }

          v135 = objc_alloc(MEMORY[0x1E696ABC0]);
          v105 = *MEMORY[0x1E698F240];
          v163 = *MEMORY[0x1E696A578];
          v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"executionDate"];
          v164 = v50;
          v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
          v107 = v135;
          v136 = v106;
          v23 = 0;
          v17 = 0;
          *v140 = [v107 initWithDomain:v105 code:2 userInfo:?];

LABEL_104:
LABEL_105:

          goto LABEL_106;
        }

        v22 = v19;
        v32 = v21;
      }

      v23 = v32;
    }

    else
    {
      v22 = v19;
      v23 = 0;
    }

LABEL_32:
    v41 = [v5 objectForKeyedSubscript:@"action"];
    v131 = v23;
    if (v41 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v140)
        {
          v124 = objc_alloc(MEMORY[0x1E696ABC0]);
          v121 = *MEMORY[0x1E698F240];
          v161 = *MEMORY[0x1E696A578];
          v68 = v10;
          v69 = objc_alloc(MEMORY[0x1E696AEC0]);
          v130 = v41;
          v108 = objc_opt_class();
          v70 = v69;
          v10 = v68;
          v19 = v22;
          v133 = [v70 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v108, @"action"];
          v162 = v133;
          v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
          *v140 = [v124 initWithDomain:v121 code:2 userInfo:v71];

          v17 = 0;
          v50 = v130;
          v23 = v131;
        }

        else
        {
          v17 = 0;
          v50 = v41;
          v19 = v22;
        }

        goto LABEL_104;
      }

      v50 = v41;
      v149 = 0;
      v132 = [[BMAppIntentInvocationAction alloc] initWithJSONDictionary:v50 error:&v149];
      v51 = v149;
      if (v51)
      {
        if (v140)
        {
          v51 = v51;
          *v140 = v51;
        }

        v17 = 0;
        v19 = v22;
        goto LABEL_103;
      }

      v129 = v41;
    }

    else
    {
      v129 = v41;
      v132 = 0;
    }

    [v5 objectForKeyedSubscript:@"resolvedAction"];
    v42 = v19 = v22;
    if (v42 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v140)
        {
          v17 = 0;
          v50 = v129;
          goto LABEL_102;
        }

        v122 = objc_alloc(MEMORY[0x1E696ABC0]);
        v118 = *MEMORY[0x1E698F240];
        v159 = *MEMORY[0x1E696A578];
        v72 = v7;
        v73 = v18;
        v74 = v42;
        v75 = v19;
        v76 = v10;
        v77 = objc_alloc(MEMORY[0x1E696AEC0]);
        v109 = objc_opt_class();
        v78 = v77;
        v10 = v76;
        v19 = v75;
        v42 = v74;
        v18 = v73;
        v7 = v72;
        v123 = [v78 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v109, @"resolvedAction"];
        v160 = v123;
        v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
        v80 = v122;
        v120 = v79;
        v17 = 0;
        *v140 = [v80 initWithDomain:v118 code:2 userInfo:?];
        goto LABEL_121;
      }

      v52 = v42;
      v53 = [BMAppIntentInvocationAction alloc];
      v148 = 0;
      v123 = [(BMAppIntentInvocationAction *)v53 initWithJSONDictionary:v52 error:&v148];
      v54 = v148;
      if (v54)
      {
        v120 = v52;
        v50 = v129;
        if (v140)
        {
          v54 = v54;
          *v140 = v54;
        }

        v17 = 0;
        v23 = v131;
        goto LABEL_101;
      }
    }

    else
    {
      v123 = 0;
    }

    v43 = [v5 objectForKeyedSubscript:@"actionOutput"];
    v116 = v6;
    v120 = v43;
    if (!v43 || (v44 = v43, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v45 = v7;
      v117 = 0;
LABEL_41:
      v46 = [v5 objectForKeyedSubscript:@"predictions"];
      v47 = 0x1E695D000uLL;
      v48 = [MEMORY[0x1E695DFB0] null];
      v49 = [v46 isEqual:v48];

      v127 = v45;
      v119 = v10;
      v115 = v19;
      if (v49)
      {
        v111 = v42;
        v112 = v18;
        v113 = v5;

        v46 = 0;
LABEL_56:
        v55 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v46, "count")}];
        v143 = 0u;
        v144 = 0u;
        v145 = 0u;
        v146 = 0u;
        v46 = v46;
        v56 = [v46 countByEnumeratingWithState:&v143 objects:v154 count:16];
        if (v56)
        {
          v57 = v56;
          v58 = *v144;
LABEL_58:
          v59 = 0;
          while (1)
          {
            if (*v144 != v58)
            {
              objc_enumerationMutation(v46);
            }

            v60 = *(*(&v143 + 1) + 8 * v59);
            v61 = *(v47 + 4016);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v5 = v113;
              v19 = v115;
              v90 = v140;
              if (!v140)
              {
                goto LABEL_96;
              }

              v91 = objc_alloc(MEMORY[0x1E696ABC0]);
              v92 = *MEMORY[0x1E698F240];
              v150 = *MEMORY[0x1E696A578];
              v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"predictions"];
              v151 = v62;
              v93 = MEMORY[0x1E695DF20];
              v94 = &v151;
              v95 = &v150;
              goto LABEL_91;
            }

            v62 = v60;
            v63 = [BMAppIntentInvocationActionPrediction alloc];
            v142 = 0;
            v64 = [(BMAppIntentInvocationActionPrediction *)v63 initWithJSONDictionary:v62 error:&v142];
            v65 = v142;
            if (v65)
            {
              v96 = v65;
              if (v140)
              {
                v98 = v65;
                *v140 = v96;
              }

              v5 = v113;
              v19 = v115;
LABEL_95:

LABEL_96:
              v17 = 0;
              v7 = v127;
              v18 = v112;
              v23 = v131;
              goto LABEL_97;
            }

            [v55 addObject:v64];

            ++v59;
            v47 = 0x1E695D000;
            if (v57 == v59)
            {
              v57 = [v46 countByEnumeratingWithState:&v143 objects:v154 count:16];
              if (v57)
              {
                goto LABEL_58;
              }

              goto LABEL_66;
            }
          }

          v5 = v113;
          v19 = v115;
          v90 = v140;
          if (!v140)
          {
            goto LABEL_96;
          }

          v91 = objc_alloc(MEMORY[0x1E696ABC0]);
          v92 = *MEMORY[0x1E698F240];
          v152 = *MEMORY[0x1E696A578];
          v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"predictions"];
          v153 = v62;
          v93 = MEMORY[0x1E695DF20];
          v94 = &v153;
          v95 = &v152;
LABEL_91:
          v96 = [v93 dictionaryWithObjects:v94 forKeys:v95 count:1];
          v97 = v92;
          v19 = v115;
          *v90 = [v91 initWithDomain:v97 code:2 userInfo:v96];
          goto LABEL_95;
        }

LABEL_66:

        v7 = v127;
        v19 = v115;
        v23 = v131;
        v17 = -[BMAppIntentInvocation initWithBundleID:source:executionUUID:executionDate:action:resolvedAction:actionOutput:predictions:](self, "initWithBundleID:source:executionUUID:executionDate:action:resolvedAction:actionOutput:predictions:", v127, [v119 intValue], v115, v131, v132, v123, v117, v55);
        self = v17;
        v18 = v112;
        v5 = v113;
LABEL_97:
        v42 = v111;
        goto LABEL_98;
      }

      if (!v46 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v111 = v42;
        v112 = v18;
        v113 = v5;
        goto LABEL_56;
      }

      v7 = v45;
      if (v140)
      {
        v101 = objc_alloc(MEMORY[0x1E696ABC0]);
        v102 = *MEMORY[0x1E698F240];
        v155 = *MEMORY[0x1E696A578];
        v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"predictions"];
        v156 = v55;
        v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v156 forKeys:&v155 count:1];
        v104 = v102;
        v7 = v45;
        *v140 = [v101 initWithDomain:v104 code:2 userInfo:v103];

        v17 = 0;
        v23 = v131;
LABEL_98:

        v10 = v119;
LABEL_99:
        v50 = v129;
LABEL_100:

        v6 = v116;
LABEL_101:

LABEL_102:
LABEL_103:

        goto LABEL_104;
      }

      v17 = 0;
LABEL_123:
      v23 = v131;
      goto LABEL_99;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v44;
      v66 = [BMAppIntentInvocationActionOutput alloc];
      v147 = 0;
      v117 = [(BMAppIntentInvocationActionOutput *)v66 initWithJSONDictionary:v46 error:&v147];
      v67 = v147;
      if (v67)
      {
        v50 = v129;
        if (v140)
        {
          v67 = v67;
          *v140 = v67;
        }

        v17 = 0;
        v23 = v131;
        goto LABEL_100;
      }

      v45 = v7;

      goto LABEL_41;
    }

    if (v140)
    {
      v114 = objc_alloc(MEMORY[0x1E696ABC0]);
      v128 = v7;
      v81 = *MEMORY[0x1E698F240];
      v157 = *MEMORY[0x1E696A578];
      v82 = v10;
      v83 = objc_alloc(MEMORY[0x1E696AEC0]);
      v110 = objc_opt_class();
      v84 = v83;
      v10 = v82;
      v117 = [v84 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v110, @"actionOutput"];
      v158 = v117;
      v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
      v85 = v81;
      v7 = v128;
      v17 = 0;
      *v140 = [v114 initWithDomain:v85 code:2 userInfo:v46];
      goto LABEL_123;
    }

    v17 = 0;
LABEL_121:
    v50 = v129;
    v23 = v131;
    goto LABEL_101;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    goto LABEL_4;
  }

  if (a4)
  {
    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v13 = *MEMORY[0x1E698F240];
    v171 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
    v172[0] = v10;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v172 forKeys:&v171 count:1];
    v15 = v13;
    v9 = v14;
    v16 = [v12 initWithDomain:v15 code:2 userInfo:v14];
    v7 = 0;
    v17 = 0;
    *a4 = v16;
LABEL_108:

    goto LABEL_109;
  }

  v7 = 0;
  v17 = 0;
LABEL_109:

  v99 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppIntentInvocation *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  source = self->_source;
  PBDataWriterWriteUint32Field();
  if (self->_raw_executionUUID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_hasRaw_executionDate)
  {
    raw_executionDate = self->_raw_executionDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_action)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationAction *)self->_action writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_resolvedAction)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationAction *)self->_resolvedAction writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_actionOutput)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationActionOutput *)self->_actionOutput writeTo:v4];
    PBDataWriterRecallMark();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_predictions;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v18 = 0;
        PBDataWriterPlaceMark();
        [v12 writeTo:{v4, v14}];
        PBDataWriterRecallMark();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = BMAppIntentInvocation;
  v5 = [(BMEventBase *)&v41 init];
  if (!v5)
  {
    goto LABEL_68;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_67;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v42) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v42 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (LOBYTE(v42) & 0x7F) << v8;
        if ((LOBYTE(v42) & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_67;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 4)
      {
        break;
      }

      if (v16 <= 6)
      {
        if (v16 == 5)
        {
          v42 = 0.0;
          v43 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_70;
          }

          v24 = [[BMAppIntentInvocationAction alloc] initByReadFrom:v4];
          if (!v24)
          {
            goto LABEL_70;
          }

          v25 = 56;
          goto LABEL_57;
        }

        if (v16 == 6)
        {
          v42 = 0.0;
          v43 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_70;
          }

          v24 = [[BMAppIntentInvocationAction alloc] initByReadFrom:v4];
          if (!v24)
          {
            goto LABEL_70;
          }

          v25 = 64;
LABEL_57:
          v33 = *(&v5->super.super.isa + v25);
          *(&v5->super.super.isa + v25) = v24;

          PBReaderRecallMark();
          goto LABEL_66;
        }

LABEL_58:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_66;
      }

      if (v16 == 7)
      {
        v42 = 0.0;
        v43 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_70;
        }

        v24 = [[BMAppIntentInvocationActionOutput alloc] initByReadFrom:v4];
        if (!v24)
        {
          goto LABEL_70;
        }

        v25 = 72;
        goto LABEL_57;
      }

      if (v16 != 8)
      {
        goto LABEL_58;
      }

      v42 = 0.0;
      v43 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_70;
      }

      v28 = [[BMAppIntentInvocationActionPrediction alloc] initByReadFrom:v4];
      if (!v28)
      {
        goto LABEL_70;
      }

      v29 = v28;
      [v6 addObject:v28];
      PBReaderRecallMark();

LABEL_66:
      v35 = [v4 position];
      if (v35 >= [v4 length])
      {
        goto LABEL_67;
      }
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v32 = PBReaderReadData();
        if ([(NSData *)v32 length]!= 16)
        {

LABEL_70:
          goto LABEL_71;
        }

        raw_executionUUID = v5->_raw_executionUUID;
        v5->_raw_executionUUID = v32;
        goto LABEL_53;
      }

      if (v16 == 4)
      {
        v5->_hasRaw_executionDate = 1;
        v42 = 0.0;
        v26 = [v4 position] + 8;
        if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 8, v27 <= objc_msgSend(v4, "length")))
        {
          v34 = [v4 data];
          [v34 getBytes:&v42 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_executionDate = v42;
        goto LABEL_66;
      }
    }

    else
    {
      if (v16 == 1)
      {
        v30 = PBReaderReadString();
        raw_executionUUID = v5->_bundleID;
        v5->_bundleID = v30;
LABEL_53:

        goto LABEL_66;
      }

      if (v16 == 2)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          LOBYTE(v42) = 0;
          v20 = [v4 position] + 1;
          if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
          {
            v22 = [v4 data];
            [v22 getBytes:&v42 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v19 |= (LOBYTE(v42) & 0x7F) << v17;
          if ((LOBYTE(v42) & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          if (v18++ > 8)
          {
            goto LABEL_62;
          }
        }

        if (([v4 hasError] & 1) != 0 || v19 > 8)
        {
LABEL_62:
          LODWORD(v19) = 0;
        }

        v5->_source = v19;
        goto LABEL_66;
      }
    }

    goto LABEL_58;
  }

LABEL_67:
  v36 = [v6 copy];
  predictions = v5->_predictions;
  v5->_predictions = v36;

  v38 = [v4 hasError];
  if (v38)
  {
LABEL_71:
    v39 = 0;
  }

  else
  {
LABEL_68:
    v39 = v5;
  }

  return v39;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMAppIntentInvocation *)self bundleID];
  v5 = BMAppIntentInvocationSourceAsString([(BMAppIntentInvocation *)self source]);
  v6 = [(BMAppIntentInvocation *)self executionUUID];
  v7 = [(BMAppIntentInvocation *)self executionDate];
  v8 = [(BMAppIntentInvocation *)self action];
  v9 = [(BMAppIntentInvocation *)self resolvedAction];
  v10 = [(BMAppIntentInvocation *)self actionOutput];
  v11 = [(BMAppIntentInvocation *)self predictions];
  v12 = [v3 initWithFormat:@"BMAppIntentInvocation with bundleID: %@, source: %@, executionUUID: %@, executionDate: %@, action: %@, resolvedAction: %@, actionOutput: %@, predictions: %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMAppIntentInvocation)initWithBundleID:(id)a3 source:(int)a4 executionUUID:(id)a5 executionDate:(id)a6 action:(id)a7 resolvedAction:(id)a8 actionOutput:(id)a9 predictions:(id)a10
{
  v31[2] = *MEMORY[0x1E69E9840];
  v29 = a3;
  v17 = a5;
  v18 = a6;
  v28 = a7;
  v27 = a8;
  v26 = a9;
  v19 = a10;
  v30.receiver = self;
  v30.super_class = BMAppIntentInvocation;
  v20 = [(BMEventBase *)&v30 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_bundleID, a3);
    v20->_source = a4;
    if (v17)
    {
      v31[0] = 0;
      v31[1] = 0;
      [v17 getUUIDBytes:v31];
      v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v31 length:16];
      raw_executionUUID = v20->_raw_executionUUID;
      v20->_raw_executionUUID = v21;
    }

    else
    {
      raw_executionUUID = v20->_raw_executionUUID;
      v20->_raw_executionUUID = 0;
    }

    if (v18)
    {
      v20->_hasRaw_executionDate = 1;
      [v18 timeIntervalSince1970];
    }

    else
    {
      v20->_hasRaw_executionDate = 0;
      v23 = -1.0;
    }

    v20->_raw_executionDate = v23;
    objc_storeStrong(&v20->_action, a7);
    objc_storeStrong(&v20->_resolvedAction, a8);
    objc_storeStrong(&v20->_actionOutput, a9);
    objc_storeStrong(&v20->_predictions, a10);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v20;
}

id __32__BMAppIntentInvocation_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _predictionsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __32__BMAppIntentInvocation_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 actionOutput];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __32__BMAppIntentInvocation_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 resolvedAction];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __32__BMAppIntentInvocation_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 action];
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

    v8 = [[BMAppIntentInvocation alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end