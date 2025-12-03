@interface BMContextualActionEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMContextualActionEvent)initWithIdentifier:(id)identifier appName:(id)name actionName:(id)actionName contents:(id)contents parameters:(id)parameters;
- (BMContextualActionEvent)initWithProto:(id)proto;
- (BMContextualActionEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation BMContextualActionEvent

- (BMContextualActionEvent)initWithIdentifier:(id)identifier appName:(id)name actionName:(id)actionName contents:(id)contents parameters:(id)parameters
{
  identifierCopy = identifier;
  nameCopy = name;
  actionNameCopy = actionName;
  contentsCopy = contents;
  parametersCopy = parameters;
  v21.receiver = self;
  v21.super_class = BMContextualActionEvent;
  v17 = [(BMEventBase *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, identifier);
    objc_storeStrong(&v18->_appName, name);
    objc_storeStrong(&v18->_actionName, actionName);
    objc_storeStrong(&v18->_contents, contents);
    objc_storeStrong(&v18->_parameters, parameters);
  }

  return v18;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)jsonDict
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11[0] = @"identifier";
  identifier = [(BMContextualActionEvent *)self identifier];
  v12[0] = identifier;
  v11[1] = @"appName";
  appName = [(BMContextualActionEvent *)self appName];
  v12[1] = appName;
  v11[2] = @"actionName";
  actionName = [(BMContextualActionEvent *)self actionName];
  v12[2] = actionName;
  v11[3] = @"contents";
  contents = [(BMContextualActionEvent *)self contents];
  v12[3] = contents;
  v11[4] = @"parameters";
  parameters = [(BMContextualActionEvent *)self parameters];
  v12[4] = parameters;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMContextualActionEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
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
  proto = [(BMContextualActionEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMContextualActionEvent)initWithProto:(id)proto
{
  v51 = *MEMORY[0x1E69E9840];
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = self;
      v5 = protoCopy;
      v6 = objc_alloc(MEMORY[0x1E695DF70]);
      contents = [v5 contents];
      v8 = [v6 initWithCapacity:{objc_msgSend(contents, "count")}];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v38 = v5;
      contents2 = [v5 contents];
      v10 = [contents2 countByEnumeratingWithState:&v45 objects:v50 count:16];
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
              objc_enumerationMutation(contents2);
            }

            v14 = *(*(&v45 + 1) + 8 * i);
            v15 = MEMORY[0x1E696ACD0];
            v16 = objc_opt_class();
            v44 = 0;
            appName = [v15 unarchivedObjectOfClass:v16 fromData:v14 error:&v44];
            v18 = v44;
            if (v18)
            {
              parameters2 = v18;
              actionName = __biome_log_for_category();
              if (os_log_type_enabled(actionName, OS_LOG_TYPE_ERROR))
              {
                [BMContextualActionEvent initWithProto:];
              }

              selfCopy2 = 0;
LABEL_30:
              self = selfCopy;
              v31 = v38;
              goto LABEL_31;
            }

            [v8 addObject:appName];
          }

          v11 = [contents2 countByEnumeratingWithState:&v45 objects:v50 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v19 = objc_alloc(MEMORY[0x1E695DF70]);
      parameters = [v5 parameters];
      contents2 = [v19 initWithCapacity:{objc_msgSend(parameters, "count")}];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      parameters2 = [v5 parameters];
      v22 = [parameters2 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v41;
        v36 = protoCopy;
        while (2)
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v41 != v24)
            {
              objc_enumerationMutation(parameters2);
            }

            v26 = *(*(&v40 + 1) + 8 * j);
            v27 = MEMORY[0x1E696ACD0];
            v28 = objc_opt_class();
            v39 = 0;
            actionName = [v27 unarchivedObjectOfClass:v28 fromData:v26 error:&v39];
            v30 = v39;
            if (v30)
            {
              appName = v30;
              v33 = __biome_log_for_category();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                [BMContextualActionEvent initWithProto:];
              }

              selfCopy2 = 0;
              protoCopy = v36;
              goto LABEL_30;
            }

            [contents2 addObject:actionName];
          }

          v23 = [parameters2 countByEnumeratingWithState:&v40 objects:v49 count:16];
          protoCopy = v36;
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v31 = v5;
      parameters2 = [v5 identifier];
      appName = [v5 appName];
      actionName = [v5 actionName];
      self = [(BMContextualActionEvent *)selfCopy initWithIdentifier:parameters2 appName:appName actionName:actionName contents:v8 parameters:contents2];
      selfCopy2 = self;
LABEL_31:
    }

    else
    {
      v31 = __biome_log_for_category();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        [(BMContextualActionEvent *)self initWithProto:v31];
      }

      selfCopy2 = 0;
    }
  }

  else
  {
    selfCopy2 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (BMContextualActionEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBContextualActionEvent alloc] initWithData:dataCopy];

    self = [(BMContextualActionEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  identifier = [(BMContextualActionEvent *)self identifier];
  [v3 setIdentifier:identifier];

  appName = [(BMContextualActionEvent *)self appName];
  [v3 setAppName:appName];

  actionName = [(BMContextualActionEvent *)self actionName];
  [v3 setActionName:actionName];

  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  contents = [(BMContextualActionEvent *)self contents];
  v9 = [v7 initWithCapacity:{objc_msgSend(contents, "count")}];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  contents2 = [(BMContextualActionEvent *)self contents];
  v11 = [contents2 countByEnumeratingWithState:&v41 objects:v46 count:16];
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
          objc_enumerationMutation(contents2);
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

      v12 = [contents2 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  [v3 setContents:v9];
  v18 = objc_alloc(MEMORY[0x1E695DF70]);
  parameters = [(BMContextualActionEvent *)self parameters];
  contents2 = [v18 initWithCapacity:{objc_msgSend(parameters, "count")}];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  parameters2 = [(BMContextualActionEvent *)self parameters];
  v21 = [parameters2 countByEnumeratingWithState:&v36 objects:v45 count:16];
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
          objc_enumerationMutation(parameters2);
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

        [contents2 addObject:v26];
      }

      v22 = [parameters2 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  [v3 setParameters:contents2];
  v28 = v3;
LABEL_25:

  v33 = *MEMORY[0x1E69E9840];

  return v28;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = equalCopy;
    identifier = [(BMContextualActionEvent *)self identifier];
    if (identifier || ([v8 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      identifier2 = [(BMContextualActionEvent *)self identifier];
      identifier3 = [v8 identifier];
      v10 = [identifier2 isEqual:identifier3];

      if (identifier)
      {
LABEL_9:

        appName = [(BMContextualActionEvent *)self appName];
        if (appName || ([v8 appName], (identifier2 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          identifier3 = [(BMContextualActionEvent *)self appName];
          appName2 = [v8 appName];
          v14 = [identifier3 isEqual:appName2];

          if (appName)
          {
LABEL_15:

            actionName = [(BMContextualActionEvent *)self actionName];
            if (actionName || ([v8 actionName], (identifier3 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              actionName2 = [(BMContextualActionEvent *)self actionName];
              actionName3 = [v8 actionName];
              v18 = [actionName2 isEqual:actionName3];

              if (actionName)
              {
LABEL_21:

                parameters = [(BMContextualActionEvent *)self parameters];
                parameters2 = [v8 parameters];
                v21 = [parameters isEqual:parameters2];

                contents = [(BMContextualActionEvent *)self contents];
                contents2 = [v8 contents];
                LOBYTE(parameters2) = [contents isEqual:contents2];

                v11 = v10 & v14 & v18 & v21 & parameters2;
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