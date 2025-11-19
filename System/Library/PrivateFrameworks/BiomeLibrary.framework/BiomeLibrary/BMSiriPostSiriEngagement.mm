@interface BMSiriPostSiriEngagement
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriPostSiriEngagement)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriPostSiriEngagement)initWithUISessionID:(id)a3 taskID:(id)a4 taskType:(id)a5 conversationPath:(id)a6 appPattern:(id)a7 requestIds:(id)a8 engagementUnderstandingFeatures:(id)a9 pseEvents:(id)a10 clientSessionId:(id)a11 lastRequestId:(id)a12 executionUUID:(id)a13;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_pseEventsJSONArray;
- (id)_requestIdsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriPostSiriEngagement

+ (id)columns
{
  v16[11] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"UISessionID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"taskID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"taskType" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"conversationPath" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appPattern" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"requestIds_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_431];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"engagementUnderstandingFeatures_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_433];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"pseEvents_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_435];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientSessionId" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastRequestId" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"executionUUID" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriPostSiriEngagement *)self UISessionID];
    v7 = [v5 UISessionID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriPostSiriEngagement *)self UISessionID];
      v10 = [v5 UISessionID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_41;
      }
    }

    v13 = [(BMSiriPostSiriEngagement *)self taskID];
    v14 = [v5 taskID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriPostSiriEngagement *)self taskID];
      v17 = [v5 taskID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_41;
      }
    }

    v19 = [(BMSiriPostSiriEngagement *)self taskType];
    v20 = [v5 taskType];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMSiriPostSiriEngagement *)self taskType];
      v23 = [v5 taskType];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_41;
      }
    }

    v25 = [(BMSiriPostSiriEngagement *)self conversationPath];
    v26 = [v5 conversationPath];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMSiriPostSiriEngagement *)self conversationPath];
      v29 = [v5 conversationPath];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_41;
      }
    }

    v31 = [(BMSiriPostSiriEngagement *)self appPattern];
    v32 = [v5 appPattern];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMSiriPostSiriEngagement *)self appPattern];
      v35 = [v5 appPattern];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_41;
      }
    }

    v37 = [(BMSiriPostSiriEngagement *)self requestIds];
    v38 = [v5 requestIds];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMSiriPostSiriEngagement *)self requestIds];
      v41 = [v5 requestIds];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_41;
      }
    }

    v43 = [(BMSiriPostSiriEngagement *)self engagementUnderstandingFeatures];
    v44 = [v5 engagementUnderstandingFeatures];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMSiriPostSiriEngagement *)self engagementUnderstandingFeatures];
      v47 = [v5 engagementUnderstandingFeatures];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_41;
      }
    }

    v49 = [(BMSiriPostSiriEngagement *)self pseEvents];
    v50 = [v5 pseEvents];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMSiriPostSiriEngagement *)self pseEvents];
      v53 = [v5 pseEvents];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
        goto LABEL_41;
      }
    }

    v55 = [(BMSiriPostSiriEngagement *)self clientSessionId];
    v56 = [v5 clientSessionId];
    v57 = v56;
    if (v55 == v56)
    {
    }

    else
    {
      v58 = [(BMSiriPostSiriEngagement *)self clientSessionId];
      v59 = [v5 clientSessionId];
      v60 = [v58 isEqual:v59];

      if (!v60)
      {
        goto LABEL_41;
      }
    }

    v61 = [(BMSiriPostSiriEngagement *)self lastRequestId];
    v62 = [v5 lastRequestId];
    v63 = v62;
    if (v61 == v62)
    {
    }

    else
    {
      v64 = [(BMSiriPostSiriEngagement *)self lastRequestId];
      v65 = [v5 lastRequestId];
      v66 = [v64 isEqual:v65];

      if (!v66)
      {
LABEL_41:
        v12 = 0;
LABEL_42:

        goto LABEL_43;
      }
    }

    v68 = [(BMSiriPostSiriEngagement *)self executionUUID];
    v69 = [v5 executionUUID];
    if (v68 == v69)
    {
      v12 = 1;
    }

    else
    {
      v70 = [(BMSiriPostSiriEngagement *)self executionUUID];
      v71 = [v5 executionUUID];
      v12 = [v70 isEqual:v71];
    }

    goto LABEL_42;
  }

  v12 = 0;
LABEL_43:

  return v12;
}

- (id)jsonDictionary
{
  v39[11] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriPostSiriEngagement *)self UISessionID];
  v4 = [(BMSiriPostSiriEngagement *)self taskID];
  v5 = [(BMSiriPostSiriEngagement *)self taskType];
  v6 = [(BMSiriPostSiriEngagement *)self conversationPath];
  v7 = [(BMSiriPostSiriEngagement *)self appPattern];
  v37 = [(BMSiriPostSiriEngagement *)self _requestIdsJSONArray];
  v8 = [(BMSiriPostSiriEngagement *)self engagementUnderstandingFeatures];
  v36 = [v8 jsonDictionary];

  v35 = [(BMSiriPostSiriEngagement *)self _pseEventsJSONArray];
  v9 = [(BMSiriPostSiriEngagement *)self clientSessionId];
  v10 = [(BMSiriPostSiriEngagement *)self lastRequestId];
  v11 = [(BMSiriPostSiriEngagement *)self executionUUID];
  v38[0] = @"UISessionID";
  v12 = v3;
  if (!v3)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v12;
  v39[0] = v12;
  v38[1] = @"taskID";
  v13 = v4;
  if (!v4)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v13;
  v39[1] = v13;
  v38[2] = @"taskType";
  v14 = v5;
  if (!v5)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v14;
  v39[2] = v14;
  v38[3] = @"conversationPath";
  v15 = v6;
  if (!v6)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v3;
  v26 = v15;
  v39[3] = v15;
  v38[4] = @"appPattern";
  v16 = v7;
  if (!v7)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v4;
  v25 = v16;
  v39[4] = v16;
  v38[5] = @"requestIds";
  v17 = v37;
  if (!v37)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v5;
  v39[5] = v17;
  v38[6] = @"engagementUnderstandingFeatures";
  v18 = v36;
  if (!v36)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v6;
  v39[6] = v18;
  v38[7] = @"pseEvents";
  v19 = v35;
  if (!v35)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v39[7] = v19;
  v38[8] = @"clientSessionId";
  v20 = v9;
  if (!v9)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v39[8] = v20;
  v38[9] = @"lastRequestId";
  v21 = v10;
  if (!v10)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v39[9] = v21;
  v38[10] = @"executionUUID";
  v22 = v11;
  if (!v11)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v39[10] = v22;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:11];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_25;
    }

LABEL_42:

    if (v9)
    {
      goto LABEL_26;
    }

    goto LABEL_43;
  }

  if (!v10)
  {
    goto LABEL_42;
  }

LABEL_25:
  if (v9)
  {
    goto LABEL_26;
  }

LABEL_43:

LABEL_26:
  if (!v35)
  {
  }

  if (!v36)
  {
  }

  if (!v37)
  {
  }

  if (!v7)
  {
  }

  if (v31)
  {
    if (v32)
    {
      goto LABEL_36;
    }
  }

  else
  {

    if (v32)
    {
LABEL_36:
      if (v33)
      {
        goto LABEL_37;
      }

LABEL_46:

      if (v34)
      {
        goto LABEL_38;
      }

      goto LABEL_47;
    }
  }

  if (!v33)
  {
    goto LABEL_46;
  }

LABEL_37:
  if (v34)
  {
    goto LABEL_38;
  }

LABEL_47:

LABEL_38:
  v23 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)_pseEventsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMSiriPostSiriEngagement *)self pseEvents];
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

- (id)_requestIdsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMSiriPostSiriEngagement *)self requestIds];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSiriPostSiriEngagement)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v213[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"UISessionID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"taskID"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v165 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v165 = v9;
LABEL_7:
      v10 = [v6 objectForKeyedSubscript:@"taskType"];
      v166 = v10;
      if (!v10 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v163 = 0;
LABEL_10:
        v12 = [v6 objectForKeyedSubscript:@"conversationPath"];
        v164 = v12;
        if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (a4)
            {
              v67 = v7;
              v68 = objc_alloc(MEMORY[0x1E696ABC0]);
              v170 = a4;
              v69 = v8;
              v70 = *MEMORY[0x1E698F240];
              v206 = *MEMORY[0x1E696A578];
              v71 = v9;
              v72 = objc_alloc(MEMORY[0x1E696AEC0]);
              v140 = objc_opt_class();
              v73 = v72;
              v9 = v71;
              v74 = [v73 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v140, @"conversationPath"];
              v207 = v74;
              v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v207 forKeys:&v206 count:1];
              v76 = v68;
              v7 = v67;
              v77 = v70;
              v8 = v69;
              v162 = v75;
              v14 = 0;
              v38 = 0;
              *v170 = [v76 initWithDomain:v77 code:2 userInfo:?];
              v34 = v165;
              goto LABEL_142;
            }

            v14 = 0;
            v38 = 0;
            v34 = v165;
            goto LABEL_143;
          }

          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = [v6 objectForKeyedSubscript:@"appPattern"];
        v161 = v14;
        v162 = v15;
        v159 = v7;
        v160 = v8;
        if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (a4)
            {
              v78 = v8;
              v79 = objc_alloc(MEMORY[0x1E696ABC0]);
              v171 = a4;
              v80 = v9;
              v81 = *MEMORY[0x1E698F240];
              v204 = *MEMORY[0x1E696A578];
              v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appPattern"];
              v205 = v17;
              v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v205 forKeys:&v204 count:1];
              v82 = v79;
              v8 = v78;
              v83 = v81;
              v9 = v80;
              v158 = 0;
              v38 = 0;
              *v171 = [v82 initWithDomain:v83 code:2 userInfo:v20];
              v34 = v165;
              goto LABEL_140;
            }

            v74 = 0;
            v38 = 0;
            v34 = v165;
            goto LABEL_142;
          }

          v154 = v9;
          v158 = v16;
        }

        else
        {
          v154 = v9;
          v158 = 0;
        }

        v17 = [v6 objectForKeyedSubscript:@"requestIds"];
        v18 = [MEMORY[0x1E695DFB0] null];
        v19 = [v17 isEqual:v18];

        if (v19)
        {
          v153 = self;

          v17 = 0;
        }

        else
        {
          if (v17)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!a4)
              {
                v38 = 0;
                v9 = v154;
                v34 = v165;
                goto LABEL_141;
              }

              v84 = objc_alloc(MEMORY[0x1E696ABC0]);
              v85 = self;
              v86 = *MEMORY[0x1E698F240];
              v202 = *MEMORY[0x1E696A578];
              v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"requestIds"];
              v203 = v20;
              v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v203 forKeys:&v202 count:1];
              v88 = v86;
              self = v85;
              v14 = v161;
              v38 = 0;
              *a4 = [v84 initWithDomain:v88 code:2 userInfo:v87];
              v66 = v87;
              v9 = v154;
              goto LABEL_64;
            }
          }

          v153 = self;
        }

        v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v17, "count")}];
        v178 = 0u;
        v179 = 0u;
        v180 = 0u;
        v181 = 0u;
        v17 = v17;
        v21 = [v17 countByEnumeratingWithState:&v178 objects:v201 count:16];
        v167 = a4;
        if (v21)
        {
          v22 = v21;
          v23 = *v179;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v179 != v23)
              {
                objc_enumerationMutation(v17);
              }

              v25 = *(*(&v178 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v50 = v167;
                if (v167)
                {
                  v51 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v52 = *MEMORY[0x1E698F240];
                  v199 = *MEMORY[0x1E696A578];
                  v151 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"requestIds"];
                  v200 = v151;
                  obj = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v200 forKeys:&v199 count:1];
                  v53 = [v51 initWithDomain:v52 code:2 userInfo:?];
                  v34 = v165;
                  goto LABEL_55;
                }

LABEL_59:
                v38 = 0;
                v66 = v17;
                self = v153;
                v9 = v154;
LABEL_64:
                v34 = v165;
                goto LABEL_139;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!v167)
                {
                  goto LABEL_59;
                }

                v64 = objc_alloc(MEMORY[0x1E696ABC0]);
                v65 = *MEMORY[0x1E698F240];
                v197 = *MEMORY[0x1E696A578];
                v151 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"requestIds"];
                v198 = v151;
                obj = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
                v53 = [v64 initWithDomain:v65 code:2 userInfo:?];
                v34 = v165;
                v50 = v167;
LABEL_55:
                v38 = 0;
                *v50 = v53;
                v66 = v17;
                self = v153;
                v9 = v154;
LABEL_56:
                v14 = v161;
                goto LABEL_138;
              }

              [v20 addObject:v25];
            }

            v22 = [v17 countByEnumeratingWithState:&v178 objects:v201 count:16];
            a4 = v167;
          }

          while (v22);
        }

        v26 = [v6 objectForKeyedSubscript:@"engagementUnderstandingFeatures"];
        v150 = v26;
        if (!v26 || (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v151 = 0;
          goto LABEL_39;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v99 = v27;
          v177 = 0;
          v151 = [[BMSiriPostSiriEngagementFeatures alloc] initWithJSONDictionary:v99 error:&v177];
          v100 = v177;
          if (!v100)
          {

LABEL_39:
            v28 = [v6 objectForKeyedSubscript:@"pseEvents"];
            v29 = [MEMORY[0x1E695DFB0] null];
            v30 = [v28 isEqual:v29];

            if (v30)
            {

              v28 = 0;
            }

            else if (v28)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                obj = v28;
                v14 = v161;
                if (!a4)
                {
                  v38 = 0;
                  self = v153;
                  v9 = v154;
                  v34 = v165;
                  v66 = v150;
                  goto LABEL_138;
                }

                v113 = objc_alloc(MEMORY[0x1E696ABC0]);
                v114 = *MEMORY[0x1E698F240];
                v193 = *MEMORY[0x1E696A578];
                v152 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"pseEvents"];
                v194 = v152;
                v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
                v116 = v114;
                v117 = v115;
                v38 = 0;
                *a4 = [v113 initWithDomain:v116 code:2 userInfo:v115];
                v9 = v154;
                goto LABEL_106;
              }
            }

            v152 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v28, "count")}];
            v173 = 0u;
            v174 = 0u;
            v175 = 0u;
            v176 = 0u;
            v89 = v28;
            v90 = [v89 countByEnumeratingWithState:&v173 objects:v192 count:16];
            obj = v89;
            if (!v90)
            {
              goto LABEL_78;
            }

            v91 = v90;
            v92 = *v174;
LABEL_70:
            v93 = 0;
            while (1)
            {
              if (*v174 != v92)
              {
                objc_enumerationMutation(obj);
              }

              v94 = *(*(&v173 + 1) + 8 * v93);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                break;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (a4)
                {
                  v106 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v107 = *MEMORY[0x1E698F240];
                  v188 = *MEMORY[0x1E696A578];
                  v109 = a4;
                  v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"pseEvents"];
                  v189 = v95;
                  v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v189 forKeys:&v188 count:1];
                  goto LABEL_98;
                }

                goto LABEL_105;
              }

              v95 = v94;
              v96 = [BMSiriPostSiriEngagementSignal alloc];
              v172 = 0;
              v97 = [(BMSiriPostSiriEngagementSignal *)v96 initWithJSONDictionary:v95 error:&v172];
              v98 = v172;
              if (v98)
              {
                v110 = v98;
                if (v167)
                {
                  v112 = v98;
                  *v167 = v110;
                }

                v38 = 0;
                goto LABEL_102;
              }

              [v152 addObject:v97];

              ++v93;
              a4 = v167;
              if (v91 == v93)
              {
                v89 = obj;
                v91 = [obj countByEnumeratingWithState:&v173 objects:v192 count:16];
                if (v91)
                {
                  goto LABEL_70;
                }

LABEL_78:

                v95 = [v6 objectForKeyedSubscript:@"clientSessionId"];
                if (!v95)
                {
                  v148 = 0;
                  v8 = v160;
                  v9 = v154;
                  goto LABEL_110;
                }

                objc_opt_class();
                v8 = v160;
                v9 = v154;
                if (objc_opt_isKindOfClass())
                {
                  v148 = 0;
LABEL_110:
                  v14 = v161;
                  v118 = [v6 objectForKeyedSubscript:@"lastRequestId"];
                  v147 = v118;
                  if (!v118 || (v119 = v118, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v110 = 0;
                    goto LABEL_113;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v110 = v119;
                    v14 = v161;
LABEL_113:
                    v120 = [v6 objectForKeyedSubscript:@"executionUUID"];
                    v155 = v120;
                    if (!v120)
                    {
LABEL_116:
                      v34 = v165;
                      goto LABEL_117;
                    }

                    v121 = v120;
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v120 = 0;
                      goto LABEL_116;
                    }

                    objc_opt_class();
                    v34 = v165;
                    if (objc_opt_isKindOfClass())
                    {
                      v120 = v121;
                      v14 = v161;
LABEL_117:
                      v145 = v120;
                      v38 = [(BMSiriPostSiriEngagement *)v153 initWithUISessionID:v8 taskID:v34 taskType:v163 conversationPath:v14 appPattern:v158 requestIds:v20 engagementUnderstandingFeatures:v151 pseEvents:v152 clientSessionId:v148 lastRequestId:v110 executionUUID:v120];
                      v153 = v38;
LABEL_133:

LABEL_134:
LABEL_135:

LABEL_136:
                      v117 = v148;
                      v66 = v150;
LABEL_137:

                      self = v153;
LABEL_138:

LABEL_139:
LABEL_140:

LABEL_141:
                      v74 = v158;
                      v7 = v159;
LABEL_142:

LABEL_143:
                      v46 = v163;
LABEL_144:

                      goto LABEL_145;
                    }

                    if (v167)
                    {
                      v146 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v144 = *MEMORY[0x1E698F240];
                      v182 = *MEMORY[0x1E696A578];
                      v133 = v9;
                      v134 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"executionUUID"];
                      v183 = v134;
                      v135 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
                      *v167 = [v146 initWithDomain:v144 code:2 userInfo:v135];

                      v9 = v133;
                    }

                    v145 = 0;
                    v38 = 0;
LABEL_132:
                    v14 = v161;
                    goto LABEL_133;
                  }

                  if (v167)
                  {
                    v156 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v126 = *MEMORY[0x1E698F240];
                    v184 = *MEMORY[0x1E696A578];
                    v127 = v9;
                    v128 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v143 = objc_opt_class();
                    v129 = v128;
                    v9 = v127;
                    v145 = [v129 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v143, @"lastRequestId"];
                    v185 = v145;
                    v130 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
                    v131 = v156;
                    v155 = v130;
                    v132 = [v131 initWithDomain:v126 code:2 userInfo:?];
                    v110 = 0;
                    v38 = 0;
                    *v167 = v132;
                    v34 = v165;
                    goto LABEL_132;
                  }

                  v110 = 0;
                  v38 = 0;
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v148 = v95;
                    goto LABEL_110;
                  }

                  if (!v167)
                  {
                    v148 = 0;
                    v38 = 0;
                    v34 = v165;
                    v14 = v161;
                    goto LABEL_136;
                  }

                  v149 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v122 = *MEMORY[0x1E698F240];
                  v186 = *MEMORY[0x1E696A578];
                  v123 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v142 = objc_opt_class();
                  v124 = v123;
                  v9 = v154;
                  v110 = [v124 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v142, @"clientSessionId"];
                  v187 = v110;
                  v147 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
                  v125 = [v149 initWithDomain:v122 code:2 userInfo:?];
                  v148 = 0;
                  v38 = 0;
                  *v167 = v125;
                }

                v34 = v165;
                v14 = v161;
                goto LABEL_134;
              }
            }

            if (a4)
            {
              v106 = objc_alloc(MEMORY[0x1E696ABC0]);
              v107 = *MEMORY[0x1E698F240];
              v190 = *MEMORY[0x1E696A578];
              v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"pseEvents"];
              v191 = v95;
              v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v191 forKeys:&v190 count:1];
              v109 = a4;
LABEL_98:
              v110 = v108;
              v111 = [v106 initWithDomain:v107 code:2 userInfo:v108];
              v38 = 0;
              *v109 = v111;
LABEL_102:
              v9 = v154;
              v148 = obj;
              v8 = v160;
              v14 = v161;
              v34 = v165;
              goto LABEL_135;
            }

LABEL_105:
            v38 = 0;
            v9 = v154;
            v117 = obj;
            v8 = v160;
            v14 = v161;
LABEL_106:
            v34 = v165;
            v66 = v150;
            goto LABEL_137;
          }

          self = v153;
          if (a4)
          {
            v100 = v100;
            *a4 = v100;
          }

          v38 = 0;
          obj = v99;
          v66 = v99;
        }

        else
        {
          if (!a4)
          {
            v38 = 0;
            self = v153;
            v9 = v154;
            v34 = v165;
            v66 = v150;
            goto LABEL_139;
          }

          v101 = objc_alloc(MEMORY[0x1E696ABC0]);
          v102 = *MEMORY[0x1E698F240];
          v195 = *MEMORY[0x1E696A578];
          v103 = a4;
          v104 = objc_alloc(MEMORY[0x1E696AEC0]);
          v141 = objc_opt_class();
          v105 = v104;
          v66 = v150;
          v151 = [v105 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v141, @"engagementUnderstandingFeatures"];
          v196 = v151;
          obj = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
          v38 = 0;
          *v103 = [v101 initWithDomain:v102 code:2 userInfo:?];
          self = v153;
        }

        v9 = v154;
        v34 = v165;
        goto LABEL_56;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v163 = v11;
        goto LABEL_10;
      }

      if (a4)
      {
        v54 = v7;
        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v169 = a4;
        v56 = v8;
        v57 = *MEMORY[0x1E698F240];
        v208 = *MEMORY[0x1E696A578];
        v58 = v9;
        v59 = objc_alloc(MEMORY[0x1E696AEC0]);
        v139 = objc_opt_class();
        v60 = v59;
        v9 = v58;
        v14 = [v60 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v139, @"taskType"];
        v209 = v14;
        v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v209 forKeys:&v208 count:1];
        v62 = v55;
        v7 = v54;
        v63 = v57;
        v8 = v56;
        v164 = v61;
        v46 = 0;
        v38 = 0;
        *v169 = [v62 initWithDomain:v63 code:2 userInfo:?];
        v34 = v165;
        goto LABEL_144;
      }

      v46 = 0;
      v38 = 0;
      v34 = v165;
LABEL_145:

      goto LABEL_146;
    }

    if (a4)
    {
      v39 = v7;
      v40 = objc_alloc(MEMORY[0x1E696ABC0]);
      v168 = a4;
      v41 = v8;
      v42 = *MEMORY[0x1E698F240];
      v210 = *MEMORY[0x1E696A578];
      v43 = v9;
      v44 = objc_alloc(MEMORY[0x1E696AEC0]);
      v138 = objc_opt_class();
      v45 = v44;
      v9 = v43;
      v46 = [v45 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v138, @"taskID"];
      v211 = v46;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v211 forKeys:&v210 count:1];
      v48 = v40;
      v7 = v39;
      v49 = v42;
      v8 = v41;
      v166 = v47;
      v34 = 0;
      v38 = 0;
      *v168 = [v48 initWithDomain:v49 code:2 userInfo:?];
      goto LABEL_145;
    }

    v34 = 0;
    v38 = 0;
LABEL_146:

    goto LABEL_147;
  }

  if (a4)
  {
    v31 = v7;
    v32 = objc_alloc(MEMORY[0x1E696ABC0]);
    v33 = *MEMORY[0x1E698F240];
    v212 = *MEMORY[0x1E696A578];
    v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"UISessionID"];
    v213[0] = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v213 forKeys:&v212 count:1];
    v36 = v32;
    v7 = v31;
    v9 = v35;
    v37 = [v36 initWithDomain:v33 code:2 userInfo:v35];
    v8 = 0;
    v38 = 0;
    *a4 = v37;
    goto LABEL_146;
  }

  v8 = 0;
  v38 = 0;
LABEL_147:

  v136 = *MEMORY[0x1E69E9840];
  return v38;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriPostSiriEngagement *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_UISessionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_taskID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_taskType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_conversationPath)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appPattern)
  {
    PBDataWriterWriteStringField();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_requestIds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  if (self->_engagementUnderstandingFeatures)
  {
    v22 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriPostSiriEngagementFeatures *)self->_engagementUnderstandingFeatures writeTo:v4];
    PBDataWriterRecallMark();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_pseEvents;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        v22 = 0;
        PBDataWriterPlaceMark();
        [v16 writeTo:{v4, v18}];
        PBDataWriterRecallMark();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v13);
  }

  if (self->_clientSessionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_lastRequestId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_executionUUID)
  {
    PBDataWriterWriteStringField();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = BMSiriPostSiriEngagement;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_56;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [v4 position];
  if (v8 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_54;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v35) = 0;
        v12 = [v4 position] + 1;
        if (v12 >= [v4 position] && (v13 = objc_msgSend(v4, "position") + 1, v13 <= objc_msgSend(v4, "length")))
        {
          v14 = [v4 data];
          [v14 getBytes:&v35 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v11 |= (v35 & 0x7F) << v9;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        if (v10++ >= 9)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [v4 hasError] ? 0 : v11;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        goto LABEL_54;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) <= 5)
      {
        break;
      }

      if (v17 > 8)
      {
        switch(v17)
        {
          case 9:
            v20 = PBReaderReadString();
            v21 = 88;
            goto LABEL_49;
          case 0xA:
            v20 = PBReaderReadString();
            v21 = 96;
            goto LABEL_49;
          case 0xB:
            v20 = PBReaderReadString();
            v21 = 104;
            goto LABEL_49;
        }

LABEL_52:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_50;
      }

      if (v17 == 6)
      {
        v24 = PBReaderReadString();
        if (!v24)
        {
          goto LABEL_53;
        }

        v19 = v24;
        [v6 addObject:v24];
LABEL_47:

        goto LABEL_50;
      }

      if (v17 != 7)
      {
        if (v17 == 8)
        {
          v35 = 0;
          v36 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_53;
          }

          v18 = [[BMSiriPostSiriEngagementSignal alloc] initByReadFrom:v4];
          if (!v18)
          {
            goto LABEL_53;
          }

          v19 = v18;
          [v7 addObject:v18];
          PBReaderRecallMark();
          goto LABEL_47;
        }

        goto LABEL_52;
      }

      v35 = 0;
      v36 = 0;
      if (!PBReaderPlaceMark() || (v22 = [[BMSiriPostSiriEngagementFeatures alloc] initByReadFrom:v4]) == 0)
      {
LABEL_53:

        goto LABEL_55;
      }

      engagementUnderstandingFeatures = v5->_engagementUnderstandingFeatures;
      v5->_engagementUnderstandingFeatures = v22;

      PBReaderRecallMark();
LABEL_50:
      v26 = [v4 position];
      if (v26 >= [v4 length])
      {
        goto LABEL_54;
      }
    }

    if (v17 <= 2)
    {
      if (v17 == 1)
      {
        v20 = PBReaderReadString();
        v21 = 24;
        goto LABEL_49;
      }

      if (v17 == 2)
      {
        v20 = PBReaderReadString();
        v21 = 32;
        goto LABEL_49;
      }
    }

    else
    {
      switch(v17)
      {
        case 3:
          v20 = PBReaderReadString();
          v21 = 40;
          goto LABEL_49;
        case 4:
          v20 = PBReaderReadString();
          v21 = 48;
          goto LABEL_49;
        case 5:
          v20 = PBReaderReadString();
          v21 = 56;
LABEL_49:
          v25 = *(&v5->super.super.isa + v21);
          *(&v5->super.super.isa + v21) = v20;

          goto LABEL_50;
      }
    }

    goto LABEL_52;
  }

LABEL_54:
  v27 = [v6 copy];
  requestIds = v5->_requestIds;
  v5->_requestIds = v27;

  v29 = [v7 copy];
  pseEvents = v5->_pseEvents;
  v5->_pseEvents = v29;

  v31 = [v4 hasError];
  if (v31)
  {
LABEL_55:
    v32 = 0;
  }

  else
  {
LABEL_56:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = [(BMSiriPostSiriEngagement *)self UISessionID];
  v3 = [(BMSiriPostSiriEngagement *)self taskID];
  v4 = [(BMSiriPostSiriEngagement *)self taskType];
  v5 = [(BMSiriPostSiriEngagement *)self conversationPath];
  v6 = [(BMSiriPostSiriEngagement *)self appPattern];
  v7 = [(BMSiriPostSiriEngagement *)self requestIds];
  v8 = [(BMSiriPostSiriEngagement *)self engagementUnderstandingFeatures];
  v9 = [(BMSiriPostSiriEngagement *)self pseEvents];
  v10 = [(BMSiriPostSiriEngagement *)self clientSessionId];
  v11 = [(BMSiriPostSiriEngagement *)self lastRequestId];
  v12 = [(BMSiriPostSiriEngagement *)self executionUUID];
  v15 = [v14 initWithFormat:@"BMSiriPostSiriEngagement with UISessionID: %@, taskID: %@, taskType: %@, conversationPath: %@, appPattern: %@, requestIds: %@, engagementUnderstandingFeatures: %@, pseEvents: %@, clientSessionId: %@, lastRequestId: %@, executionUUID: %@", v16, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v15;
}

- (BMSiriPostSiriEngagement)initWithUISessionID:(id)a3 taskID:(id)a4 taskType:(id)a5 conversationPath:(id)a6 appPattern:(id)a7 requestIds:(id)a8 engagementUnderstandingFeatures:(id)a9 pseEvents:(id)a10 clientSessionId:(id)a11 lastRequestId:(id)a12 executionUUID:(id)a13
{
  v33 = a3;
  v25 = a4;
  v32 = a4;
  v31 = a5;
  v30 = a6;
  v29 = a7;
  v28 = a8;
  v27 = a9;
  v18 = a10;
  v19 = a11;
  v20 = a12;
  v21 = a13;
  v34.receiver = self;
  v34.super_class = BMSiriPostSiriEngagement;
  v22 = [(BMEventBase *)&v34 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_UISessionID, a3);
    objc_storeStrong(&v22->_taskID, v25);
    objc_storeStrong(&v22->_taskType, a5);
    objc_storeStrong(&v22->_conversationPath, a6);
    objc_storeStrong(&v22->_appPattern, a7);
    objc_storeStrong(&v22->_requestIds, a8);
    objc_storeStrong(&v22->_engagementUnderstandingFeatures, a9);
    objc_storeStrong(&v22->_pseEvents, a10);
    objc_storeStrong(&v22->_clientSessionId, a11);
    objc_storeStrong(&v22->_lastRequestId, a12);
    objc_storeStrong(&v22->_executionUUID, a13);
  }

  return v22;
}

+ (id)protoFields
{
  v16[11] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"UISessionID" number:1 type:13 subMessageClass:0];
  v16[0] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskID" number:2 type:13 subMessageClass:0];
  v16[1] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskType" number:3 type:13 subMessageClass:0];
  v16[2] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"conversationPath" number:4 type:13 subMessageClass:0];
  v16[3] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appPattern" number:5 type:13 subMessageClass:0];
  v16[4] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestIds" number:6 type:13 subMessageClass:0];
  v16[5] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"engagementUnderstandingFeatures" number:7 type:14 subMessageClass:objc_opt_class()];
  v16[6] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pseEvents" number:8 type:14 subMessageClass:objc_opt_class()];
  v16[7] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientSessionId" number:9 type:13 subMessageClass:0];
  v16[8] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastRequestId" number:10 type:13 subMessageClass:0];
  v16[9] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"executionUUID" number:11 type:13 subMessageClass:0];
  v16[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id __35__BMSiriPostSiriEngagement_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _pseEventsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __35__BMSiriPostSiriEngagement_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 engagementUnderstandingFeatures];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __35__BMSiriPostSiriEngagement_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _requestIdsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  if (a4)
  {
    if (a4 != 1)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMSiriPostSiriEngagement;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMSiriPostSiriEngagement_v0;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 16) = a4;
  }

LABEL_9:

  return v9;
}

@end