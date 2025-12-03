@interface LNAction
- (BOOL)isEqual:(id)equal;
- (LNAction)actionWithByMergingParameters:(id)parameters;
- (LNAction)actionWithNonSecureParameters;
- (LNAction)actionWithParameters:(id)parameters;
- (LNAction)actionWithURL:(id)l;
- (LNAction)initWithBSXPCCoder:(id)coder;
- (LNAction)initWithCoder:(id)coder;
- (LNAction)initWithMetadata:(id)metadata bundleIdentifier:(id)identifier parameters:(id)parameters;
- (LNAction)initWithMetadata:(id)metadata mangledName:(id)name parameters:(id)parameters;
- (LNAction)initWithMetadata:(id)metadata mangledTypeName:(id)name parameters:(id)parameters;
- (NSString)description;
- (id)_initWithIdentifier:(id)identifier mangledTypeName:(id)name openAppWhenRun:(BOOL)run explicitAuthenticationPolicy:(id)policy outputFlags:(id)flags outputType:(id)type systemProtocols:(id)protocols parameters:(id)self0 metadata:(id)self1;
- (id)_initWithMetadata:(id)metadata mangledTypeName:(id)name parameters:(id)parameters;
- (id)authenticationPolicyAllowingImplicit:(BOOL)implicit;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)presentationStyle;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateParameterValuesOfValueType:(id)type block:(id)block;
@end

@implementation LNAction

- (void)enumerateParameterValuesOfValueType:(id)type block:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  blockCopy = block;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  parameters = [(LNAction *)self parameters];
  v9 = [parameters countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(parameters);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        value = [v13 value];
        valueType = [value valueType];
        value2 = [v13 value];
        [valueType enumerateValuesOfValueType:typeCopy value:value2 block:blockCopy];
      }

      v10 = [parameters countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(systemProtocols3) = 0;
LABEL_64:

      goto LABEL_65;
    }

    identifier = [(LNAction *)self identifier];
    identifier2 = [(LNAction *)v6 identifier];
    v9 = identifier;
    v10 = identifier2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(systemProtocols3) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_62;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(systemProtocols3) = 0;
LABEL_63:

        goto LABEL_64;
      }
    }

    mangledTypeName = [(LNAction *)self mangledTypeName];
    mangledTypeName2 = [(LNAction *)v6 mangledTypeName];
    v14 = mangledTypeName;
    v18 = mangledTypeName2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(systemProtocols3) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_61;
      }

      v21 = [v14 isEqualToString:v18];

      if (!v21)
      {
        goto LABEL_19;
      }
    }

    openAppWhenRun = [(LNAction *)self openAppWhenRun];
    if (openAppWhenRun != [(LNAction *)v6 openAppWhenRun])
    {
LABEL_19:
      LOBYTE(systemProtocols3) = 0;
LABEL_62:

      goto LABEL_63;
    }

    outputFlags = [(LNAction *)self outputFlags];
    outputFlags2 = [(LNAction *)v6 outputFlags];
    v20 = outputFlags;
    v25 = outputFlags2;
    v19 = v25;
    v75 = v20;
    if (v20 == v25)
    {
    }

    else
    {
      LOBYTE(systemProtocols3) = 0;
      v26 = v25;
      if (!v20 || !v25)
      {
        goto LABEL_60;
      }

      LODWORD(systemProtocols3) = [v20 isEqual:v25];

      if (!systemProtocols3)
      {
        goto LABEL_61;
      }
    }

    v74 = v19;
    outputType = [(LNAction *)self outputType];
    outputType2 = [(LNAction *)v6 outputType];
    v29 = outputType;
    v30 = outputType2;
    v31 = v30;
    v73 = v29;
    if (v29 != v30)
    {
      LOBYTE(systemProtocols3) = 0;
      v32 = v30;
      if (v29)
      {
        v19 = v74;
        if (v30)
        {
          v33 = v30;
          v34 = [v29 isEqual:v30];
          v72 = v33;

          if (!v34)
          {
LABEL_45:
            LOBYTE(systemProtocols3) = 0;
            goto LABEL_46;
          }

LABEL_32:
          systemProtocols = [(LNAction *)self systemProtocols];
          systemProtocols2 = [(LNAction *)v6 systemProtocols];

          if (systemProtocols != systemProtocols2)
          {
            systemProtocols3 = [(LNAction *)self systemProtocols];
            if (!systemProtocols3)
            {
              goto LABEL_46;
            }

            systemProtocols4 = [(LNAction *)v6 systemProtocols];

            if (!systemProtocols4)
            {
              goto LABEL_45;
            }

            v38 = MEMORY[0x1E695DFD8];
            systemProtocols5 = [(LNAction *)self systemProtocols];
            v39 = [v38 setWithArray:systemProtocols5];
            v40 = MEMORY[0x1E695DFD8];
            systemProtocols6 = [(LNAction *)v6 systemProtocols];
            v42 = [v40 setWithArray:systemProtocols6];
            LODWORD(v66) = [v39 isEqualToSet:v42];

            if (!v66)
            {
              goto LABEL_45;
            }
          }

          parameters = [(LNAction *)self parameters];
          parameters2 = [(LNAction *)v6 parameters];

          if (parameters == parameters2)
          {
            goto LABEL_40;
          }

          systemProtocols3 = [(LNAction *)self parameters];
          if (systemProtocols3)
          {
            parameters3 = [(LNAction *)v6 parameters];

            if (!parameters3)
            {
              goto LABEL_45;
            }

            v46 = MEMORY[0x1E695DFD8];
            parameters4 = [(LNAction *)self parameters];
            v47 = [v46 setWithArray:parameters4];
            v48 = MEMORY[0x1E695DFD8];
            parameters5 = [(LNAction *)v6 parameters];
            v50 = [v48 setWithArray:parameters5];
            LODWORD(v67) = [v47 isEqualToSet:v50];

            if (!v67)
            {
              goto LABEL_45;
            }

LABEL_40:
            v51 = [(LNAction *)self url];
            v52 = [(LNAction *)v6 url];
            v29 = v51;
            v53 = v52;
            v71 = v53;
            if (v29 == v53)
            {
            }

            else
            {
              LOBYTE(systemProtocols3) = 0;
              if (!v29)
              {
                v54 = v53;
                v55 = 0;
                v19 = v74;
                goto LABEL_57;
              }

              v54 = v53;
              v55 = v29;
              v19 = v74;
              if (!v53)
              {
LABEL_57:
                v62 = v55;

                goto LABEL_58;
              }

              v56 = [v29 isEqual:v53];

              if (!v56)
              {
                LOBYTE(systemProtocols3) = 0;
                v19 = v74;
LABEL_58:
                v32 = v71;
                v31 = v72;
                goto LABEL_59;
              }
            }

            explicitAuthenticationPolicy = [(LNAction *)self explicitAuthenticationPolicy];
            explicitAuthenticationPolicy2 = [(LNAction *)v6 explicitAuthenticationPolicy];
            v59 = explicitAuthenticationPolicy;
            v60 = explicitAuthenticationPolicy2;
            v61 = v59;
            v68 = v60;
            if (v59 == v60)
            {
              LOBYTE(systemProtocols3) = 1;
            }

            else
            {
              LOBYTE(systemProtocols3) = 0;
              if (v59)
              {
                v19 = v74;
                if (v60)
                {
                  LOBYTE(systemProtocols3) = [v61 isEqual:v60];
                }

                goto LABEL_55;
              }
            }

            v19 = v74;
LABEL_55:

            v54 = v68;
            v55 = v61;
            goto LABEL_57;
          }

LABEL_46:
          v20 = v73;
          v19 = v74;
          v26 = v72;
LABEL_60:

          v20 = v75;
LABEL_61:

          goto LABEL_62;
        }
      }

      else
      {
        v19 = v74;
      }

LABEL_59:
      v63 = v29;
      v64 = v31;

      v26 = v64;
      v20 = v73;
      goto LABEL_60;
    }

    v72 = v30;

    goto LABEL_32;
  }

  LOBYTE(systemProtocols3) = 1;
LABEL_65:

  return systemProtocols3;
}

- (unint64_t)hash
{
  identifier = [(LNAction *)self identifier];
  v4 = [identifier hash];
  mangledTypeName = [(LNAction *)self mangledTypeName];
  v6 = [mangledTypeName hash] ^ v4;
  v7 = v6 ^ [(LNAction *)self openAppWhenRun];
  outputFlags = [(LNAction *)self outputFlags];
  v9 = [outputFlags hash];
  outputType = [(LNAction *)self outputType];
  v11 = v9 ^ [outputType hash];
  systemProtocols = [(LNAction *)self systemProtocols];
  v13 = v7 ^ v11 ^ [systemProtocols hash];
  parameters = [(LNAction *)self parameters];
  v15 = [parameters hash];
  v16 = [(LNAction *)self url];
  v17 = v15 ^ [v16 hash];
  explicitAuthenticationPolicy = [(LNAction *)self explicitAuthenticationPolicy];
  v19 = v17 ^ [explicitAuthenticationPolicy hash];

  return v13 ^ v19;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNAction *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  mangledTypeName = [(LNAction *)self mangledTypeName];
  [coderCopy encodeObject:mangledTypeName forKey:@"mangledTypeName"];

  [coderCopy encodeBool:-[LNAction openAppWhenRun](self forKey:{"openAppWhenRun"), @"openAppWhenRun"}];
  explicitAuthenticationPolicy = [(LNAction *)self explicitAuthenticationPolicy];
  [coderCopy encodeObject:explicitAuthenticationPolicy forKey:@"explicitAuthenticationPolicy"];

  outputFlags = [(LNAction *)self outputFlags];
  [coderCopy encodeObject:outputFlags forKey:@"outputFlags"];

  outputType = [(LNAction *)self outputType];
  [coderCopy encodeObject:outputType forKey:@"outputType"];

  systemProtocols = [(LNAction *)self systemProtocols];
  [coderCopy encodeObject:systemProtocols forKey:@"systemProtocols"];

  parameters = [(LNAction *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"parameters"];

  v12 = [(LNAction *)self url];
  [coderCopy encodeObject:v12 forKey:@"url"];

  metadata = [(LNAction *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];
}

- (LNAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mangledTypeName"];
  v25 = [coderCopy decodeBoolForKey:@"openAppWhenRun"];
  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outputFlags"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outputType"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"systemProtocols"];
  v11 = v10;
  v12 = MEMORY[0x1E695E0F0];
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"parameters"];

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"explicitAuthenticationPolicy"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
  selfCopy = 0;
  if (v5 && v17)
  {
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    v22 = v26;
    v23 = [(LNAction *)self _initWithIdentifier:v5 mangledTypeName:v26 openAppWhenRun:v25 explicitAuthenticationPolicy:v18 outputFlags:v27 outputType:v6 systemProtocols:v13 parameters:v17 metadata:v19];
    self = v23;
    if (v23)
    {
      objc_storeStrong(&v23->_url, v21);
    }

    selfCopy = self;
  }

  else
  {
    v22 = v26;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNAction *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  mangledTypeName = [(LNAction *)self mangledTypeName];
  [coderCopy encodeObject:mangledTypeName forKey:@"mangledTypeName"];

  [coderCopy encodeBool:-[LNAction openAppWhenRun](self forKey:{"openAppWhenRun"), @"openAppWhenRun"}];
  explicitAuthenticationPolicy = [(LNAction *)self explicitAuthenticationPolicy];
  [coderCopy encodeObject:explicitAuthenticationPolicy forKey:@"explicitAuthenticationPolicy"];

  outputFlags = [(LNAction *)self outputFlags];
  [coderCopy encodeObject:outputFlags forKey:@"outputFlags"];

  outputType = [(LNAction *)self outputType];
  [coderCopy encodeObject:outputType forKey:@"outputType"];

  systemProtocols = [(LNAction *)self systemProtocols];
  [coderCopy encodeObject:systemProtocols forKey:@"systemProtocols"];

  parameters = [(LNAction *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"parameters"];

  v12 = [(LNAction *)self url];
  [coderCopy encodeObject:v12 forKey:@"url"];

  metadata = [(LNAction *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];
}

- (LNAction)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mangledTypeName"];
  v21 = [coderCopy decodeBoolForKey:@"openAppWhenRun"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outputFlags"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outputType"];
  v8 = objc_opt_class();
  v9 = [coderCopy decodeCollectionOfClass:v8 containingClass:objc_opt_class() forKey:@"systemProtocols"];
  v10 = v9;
  v11 = MEMORY[0x1E695E0F0];
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = objc_opt_class();
  v14 = [coderCopy decodeCollectionOfClass:v13 containingClass:objc_opt_class() forKey:@"parameters"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"explicitAuthenticationPolicy"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
  selfCopy = 0;
  if (v5 && v14)
  {
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    v19 = [(LNAction *)self _initWithIdentifier:v5 mangledTypeName:v22 openAppWhenRun:v21 explicitAuthenticationPolicy:v15 outputFlags:v6 outputType:v7 systemProtocols:v12 parameters:v14 metadata:v16];
    self = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_url, v18);
    }

    selfCopy = self;
  }

  return selfCopy;
}

- (NSString)description
{
  v20 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v19 = NSStringFromClass(v3);
  identifier = [(LNAction *)self identifier];
  mangledTypeName = [(LNAction *)self mangledTypeName];
  openAppWhenRun = [(LNAction *)self openAppWhenRun];
  v7 = @"NO";
  if (openAppWhenRun)
  {
    v7 = @"YES";
  }

  v17 = v7;
  outputFlags = [(LNAction *)self outputFlags];
  outputType = [(LNAction *)self outputType];
  systemProtocols = [(LNAction *)self systemProtocols];
  v10 = [systemProtocols valueForKeyPath:@"description"];
  v11 = [v10 componentsJoinedByString:{@", "}];
  parameters = [(LNAction *)self parameters];
  v13 = [(LNAction *)self url];
  explicitAuthenticationPolicy = [(LNAction *)self explicitAuthenticationPolicy];
  v15 = [v20 stringWithFormat:@"<%@: %p, identifier: %@, mangledTypeName: %@, openAppWhenRun: %@, outputFlags: %@, outputType: %@, systemProtocols: %@, parameters: %@, url: %@, explicitAuthenticationPolicy: %@", v19, self, identifier, mangledTypeName, v17, outputFlags, outputType, v11, parameters, v13, explicitAuthenticationPolicy];

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  parameters = [(LNAction *)self parameters];
  v5 = [(LNAction *)self actionWithParameters:parameters];

  return v5;
}

- (id)authenticationPolicyAllowingImplicit:(BOOL)implicit
{
  explicitAuthenticationPolicy = self->_explicitAuthenticationPolicy;
  if (implicit && !explicitAuthenticationPolicy)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:0];
  }

  else
  {
    v4 = explicitAuthenticationPolicy;
  }

  return v4;
}

- (LNAction)actionWithURL:(id)l
{
  lCopy = l;
  v6 = [(LNAction *)self copy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 16), l);
  }

  return v7;
}

- (LNAction)actionWithNonSecureParameters
{
  parameters = [(LNAction *)self parameters];
  v4 = [parameters if_objectsPassingTest:&__block_literal_global_9432];

  v5 = [(LNAction *)self actionWithParameters:v4];

  return v5;
}

uint64_t __41__LNAction_actionWithNonSecureParameters__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 configuration];
    v4 = [v3 isSecure] ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (LNAction)actionWithByMergingParameters:(id)parameters
{
  v34 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  parameters = [(LNAction *)self parameters];
  v7 = [parameters countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(parameters);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        identifier = [v11 identifier];
        [v5 setObject:v11 forKeyedSubscript:identifier];
      }

      v8 = [parameters countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = parametersCopy;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * j);
        identifier2 = [v18 identifier];
        [v5 setObject:v18 forKeyedSubscript:identifier2];
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }

  allValues = [v5 allValues];
  v21 = [(LNAction *)self actionWithParameters:allValues];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (LNAction)actionWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = objc_alloc(objc_opt_class());
  identifier = [(LNAction *)self identifier];
  mangledTypeName = [(LNAction *)self mangledTypeName];
  openAppWhenRun = [(LNAction *)self openAppWhenRun];
  explicitAuthenticationPolicy = [(LNAction *)self explicitAuthenticationPolicy];
  outputFlags = [(LNAction *)self outputFlags];
  outputType = [(LNAction *)self outputType];
  systemProtocols = [(LNAction *)self systemProtocols];
  metadata = [(LNAction *)self metadata];
  v14 = [v5 _initWithIdentifier:identifier mangledTypeName:mangledTypeName openAppWhenRun:openAppWhenRun explicitAuthenticationPolicy:explicitAuthenticationPolicy outputFlags:outputFlags outputType:outputType systemProtocols:systemProtocols parameters:parametersCopy metadata:metadata];

  return v14;
}

- (LNAction)initWithMetadata:(id)metadata mangledName:(id)name parameters:(id)parameters
{
  parametersCopy = parameters;
  nameCopy = name;
  metadataCopy = metadata;
  identifier = [metadataCopy identifier];
  openAppWhenRun = [metadataCopy openAppWhenRun];
  v13 = [metadataCopy authenticationPolicyAllowingImplicit:0];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(metadataCopy, "outputFlags")}];
  outputType = [metadataCopy outputType];
  systemProtocols = [metadataCopy systemProtocols];
  v17 = [(LNAction *)self _initWithIdentifier:identifier mangledTypeName:nameCopy openAppWhenRun:openAppWhenRun explicitAuthenticationPolicy:v13 outputFlags:v14 outputType:outputType systemProtocols:systemProtocols parameters:parametersCopy metadata:metadataCopy];

  return v17;
}

- (id)_initWithMetadata:(id)metadata mangledTypeName:(id)name parameters:(id)parameters
{
  parametersCopy = parameters;
  nameCopy = name;
  metadataCopy = metadata;
  identifier = [metadataCopy identifier];
  openAppWhenRun = [metadataCopy openAppWhenRun];
  v13 = [metadataCopy authenticationPolicyAllowingImplicit:0];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(metadataCopy, "outputFlags")}];
  outputType = [metadataCopy outputType];
  systemProtocols = [metadataCopy systemProtocols];
  v17 = [(LNAction *)self _initWithIdentifier:identifier mangledTypeName:nameCopy openAppWhenRun:openAppWhenRun explicitAuthenticationPolicy:v13 outputFlags:v14 outputType:outputType systemProtocols:systemProtocols parameters:parametersCopy metadata:metadataCopy];

  return v17;
}

- (id)_initWithIdentifier:(id)identifier mangledTypeName:(id)name openAppWhenRun:(BOOL)run explicitAuthenticationPolicy:(id)policy outputFlags:(id)flags outputType:(id)type systemProtocols:(id)protocols parameters:(id)self0 metadata:(id)self1
{
  identifierCopy = identifier;
  nameCopy = name;
  policyCopy = policy;
  flagsCopy = flags;
  typeCopy = type;
  protocolsCopy = protocols;
  parametersCopy = parameters;
  metadataCopy = metadata;
  v38.receiver = self;
  v38.super_class = LNAction;
  v22 = [(LNAction *)&v38 init];
  if (v22)
  {
    v23 = [identifierCopy copy];
    identifier = v22->_identifier;
    v22->_identifier = v23;

    v25 = [nameCopy copy];
    mangledTypeName = v22->_mangledTypeName;
    v22->_mangledTypeName = v25;

    v22->_openAppWhenRun = run;
    objc_storeStrong(&v22->_explicitAuthenticationPolicy, policy);
    objc_storeStrong(&v22->_outputFlags, flags);
    objc_storeStrong(&v22->_outputType, type);
    v27 = [protocolsCopy copy];
    systemProtocols = v22->_systemProtocols;
    v22->_systemProtocols = v27;

    v29 = [parametersCopy copy];
    parameters = v22->_parameters;
    v22->_parameters = v29;

    v31 = [metadataCopy copy];
    metadata = v22->_metadata;
    v22->_metadata = v31;

    v33 = v22;
  }

  return v22;
}

- (LNAction)initWithMetadata:(id)metadata bundleIdentifier:(id)identifier parameters:(id)parameters
{
  parametersCopy = parameters;
  identifierCopy = identifier;
  metadataCopy = metadata;
  identifier = [metadataCopy identifier];
  v12 = [metadataCopy mangledTypeNameForBundleIdentifier:identifierCopy];

  openAppWhenRun = [metadataCopy openAppWhenRun];
  v14 = [metadataCopy authenticationPolicyAllowingImplicit:0];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(metadataCopy, "outputFlags")}];
  outputType = [metadataCopy outputType];
  systemProtocols = [metadataCopy systemProtocols];
  v18 = [(LNAction *)self _initWithIdentifier:identifier mangledTypeName:v12 openAppWhenRun:openAppWhenRun explicitAuthenticationPolicy:v14 outputFlags:v15 outputType:outputType systemProtocols:systemProtocols parameters:parametersCopy metadata:metadataCopy];

  return v18;
}

- (LNAction)initWithMetadata:(id)metadata mangledTypeName:(id)name parameters:(id)parameters
{
  parametersCopy = parameters;
  nameCopy = name;
  metadataCopy = metadata;
  identifier = [metadataCopy identifier];
  openAppWhenRun = [metadataCopy openAppWhenRun];
  v13 = [metadataCopy authenticationPolicyAllowingImplicit:0];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(metadataCopy, "outputFlags")}];
  outputType = [metadataCopy outputType];
  systemProtocols = [metadataCopy systemProtocols];
  v17 = [(LNAction *)self _initWithIdentifier:identifier mangledTypeName:nameCopy openAppWhenRun:openAppWhenRun explicitAuthenticationPolicy:v13 outputFlags:v14 outputType:outputType systemProtocols:systemProtocols parameters:parametersCopy metadata:metadataCopy];

  return v17;
}

- (int64_t)presentationStyle
{
  if ([(LNAction *)self openAppWhenRun])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

@end