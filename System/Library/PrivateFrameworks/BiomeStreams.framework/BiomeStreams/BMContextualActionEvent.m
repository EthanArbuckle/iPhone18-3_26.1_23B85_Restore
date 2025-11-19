@interface BMContextualActionEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMContextualActionEvent)initWithIdentifier:(id)a3 appName:(id)a4 actionName:(id)a5 contents:(id)a6 parameters:(id)a7;
- (BMContextualActionEvent)initWithProto:(id)a3;
- (BMContextualActionEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation BMContextualActionEvent

- (BMContextualActionEvent)initWithIdentifier:(id)a3 appName:(id)a4 actionName:(id)a5 contents:(id)a6 parameters:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = BMContextualActionEvent;
  v17 = [(BMEventBase *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, a3);
    objc_storeStrong(&v18->_appName, a4);
    objc_storeStrong(&v18->_actionName, a5);
    objc_storeStrong(&v18->_contents, a6);
    objc_storeStrong(&v18->_parameters, a7);
  }

  return v18;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (id)jsonDict
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11[0] = @"identifier";
  v3 = [(BMContextualActionEvent *)self identifier];
  v12[0] = v3;
  v11[1] = @"appName";
  v4 = [(BMContextualActionEvent *)self appName];
  v12[1] = v4;
  v11[2] = @"actionName";
  v5 = [(BMContextualActionEvent *)self actionName];
  v12[2] = v5;
  v11[3] = @"contents";
  v6 = [(BMContextualActionEvent *)self contents];
  v12[3] = v6;
  v11[4] = @"parameters";
  v7 = [(BMContextualActionEvent *)self parameters];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMContextualActionEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMPOICategoryEvent *)v6 json];
    }
  }

  return v4;
}

- (id)encodeAsProto
{
  v2 = [(BMContextualActionEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMContextualActionEvent)initWithProto:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = self;
      v5 = v4;
      v6 = objc_alloc(MEMORY[0x1E695DF70]);
      v7 = [v5 contents];
      v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v38 = v5;
      v9 = [v5 contents];
      v10 = [v9 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v46;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v46 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v45 + 1) + 8 * i);
            v15 = MEMORY[0x1E696ACD0];
            v16 = objc_opt_class();
            v44 = 0;
            v17 = [v15 unarchivedObjectOfClass:v16 fromData:v14 error:&v44];
            v18 = v44;
            if (v18)
            {
              v21 = v18;
              v29 = __biome_log_for_category();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                [BMContextualActionEvent initWithProto:];
              }

              v32 = 0;
LABEL_30:
              self = v37;
              v31 = v38;
              goto LABEL_31;
            }

            [v8 addObject:v17];
          }

          v11 = [v9 countByEnumeratingWithState:&v45 objects:v50 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v19 = objc_alloc(MEMORY[0x1E695DF70]);
      v20 = [v5 parameters];
      v9 = [v19 initWithCapacity:{objc_msgSend(v20, "count")}];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v21 = [v5 parameters];
      v22 = [v21 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v41;
        v36 = v4;
        while (2)
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v41 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v40 + 1) + 8 * j);
            v27 = MEMORY[0x1E696ACD0];
            v28 = objc_opt_class();
            v39 = 0;
            v29 = [v27 unarchivedObjectOfClass:v28 fromData:v26 error:&v39];
            v30 = v39;
            if (v30)
            {
              v17 = v30;
              v33 = __biome_log_for_category();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                [BMContextualActionEvent initWithProto:];
              }

              v32 = 0;
              v4 = v36;
              goto LABEL_30;
            }

            [v9 addObject:v29];
          }

          v23 = [v21 countByEnumeratingWithState:&v40 objects:v49 count:16];
          v4 = v36;
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v31 = v5;
      v21 = [v5 identifier];
      v17 = [v5 appName];
      v29 = [v5 actionName];
      self = [(BMContextualActionEvent *)v37 initWithIdentifier:v21 appName:v17 actionName:v29 contents:v8 parameters:v9];
      v32 = self;
LABEL_31:
    }

    else
    {
      v31 = __biome_log_for_category();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        [(BMContextualActionEvent *)self initWithProto:v31];
      }

      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v32;
}

- (BMContextualActionEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBContextualActionEvent alloc] initWithData:v4];

    self = [(BMContextualActionEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(BMContextualActionEvent *)self identifier];
  [v3 setIdentifier:v4];

  v5 = [(BMContextualActionEvent *)self appName];
  [v3 setAppName:v5];

  v6 = [(BMContextualActionEvent *)self actionName];
  [v3 setActionName:v6];

  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  v8 = [(BMContextualActionEvent *)self contents];
  v9 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = [(BMContextualActionEvent *)self contents];
  v11 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v41 + 1) + 8 * i);
        v40 = 0;
        v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v40];
        v17 = v40;
        if (v17)
        {
          v29 = v17;
          v30 = __biome_log_for_category();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [BMContextualActionEvent proto];
          }

LABEL_24:
          v28 = 0;
          goto LABEL_25;
        }

        [v9 addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  [v3 setContents:v9];
  v18 = objc_alloc(MEMORY[0x1E695DF70]);
  v19 = [(BMContextualActionEvent *)self parameters];
  v10 = [v18 initWithCapacity:{objc_msgSend(v19, "count")}];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = [(BMContextualActionEvent *)self parameters];
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    while (2)
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v36 + 1) + 8 * j);
        v35 = 0;
        v26 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v25 requiringSecureCoding:1 error:&v35];
        v27 = v35;
        if (v27)
        {
          v31 = v27;
          v32 = __biome_log_for_category();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [BMContextualActionEvent proto];
          }

          goto LABEL_24;
        }

        [v10 addObject:v26];
      }

      v22 = [v20 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  [v3 setParameters:v10];
  v28 = v3;
LABEL_25:

  v33 = *MEMORY[0x1E69E9840];

  return v28;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [(BMContextualActionEvent *)self identifier];
    if (v9 || ([v8 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v4 = [(BMContextualActionEvent *)self identifier];
      v5 = [v8 identifier];
      v10 = [v4 isEqual:v5];

      if (v9)
      {
LABEL_9:

        v12 = [(BMContextualActionEvent *)self appName];
        if (v12 || ([v8 appName], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v5 = [(BMContextualActionEvent *)self appName];
          v13 = [v8 appName];
          v14 = [v5 isEqual:v13];

          if (v12)
          {
LABEL_15:

            v15 = [(BMContextualActionEvent *)self actionName];
            if (v15 || ([v8 actionName], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v16 = [(BMContextualActionEvent *)self actionName];
              v17 = [v8 actionName];
              v18 = [v16 isEqual:v17];

              if (v15)
              {
LABEL_21:

                v19 = [(BMContextualActionEvent *)self parameters];
                v20 = [v8 parameters];
                v21 = [v19 isEqual:v20];

                v22 = [(BMContextualActionEvent *)self contents];
                v23 = [v8 contents];
                LOBYTE(v20) = [v22 isEqual:v23];

                v11 = v10 & v14 & v18 & v21 & v20;
                goto LABEL_22;
              }
            }

            else
            {
              v18 = 1;
            }

            goto LABEL_21;
          }
        }

        else
        {
          v14 = 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_9;
  }

  v11 = 0;
LABEL_22:

  return v11;
}

@end