@interface LNAction
- (BOOL)isEqual:(id)a3;
- (LNAction)actionWithByMergingParameters:(id)a3;
- (LNAction)actionWithNonSecureParameters;
- (LNAction)actionWithParameters:(id)a3;
- (LNAction)actionWithURL:(id)a3;
- (LNAction)initWithBSXPCCoder:(id)a3;
- (LNAction)initWithCoder:(id)a3;
- (LNAction)initWithMetadata:(id)a3 bundleIdentifier:(id)a4 parameters:(id)a5;
- (LNAction)initWithMetadata:(id)a3 mangledName:(id)a4 parameters:(id)a5;
- (LNAction)initWithMetadata:(id)a3 mangledTypeName:(id)a4 parameters:(id)a5;
- (NSString)description;
- (id)_initWithIdentifier:(id)a3 mangledTypeName:(id)a4 openAppWhenRun:(BOOL)a5 explicitAuthenticationPolicy:(id)a6 outputFlags:(id)a7 outputType:(id)a8 systemProtocols:(id)a9 parameters:(id)a10 metadata:(id)a11;
- (id)_initWithMetadata:(id)a3 mangledTypeName:(id)a4 parameters:(id)a5;
- (id)authenticationPolicyAllowingImplicit:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)presentationStyle;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateParameterValuesOfValueType:(id)a3 block:(id)a4;
@end

@implementation LNAction

- (void)enumerateParameterValuesOfValueType:(id)a3 block:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(LNAction *)self parameters];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 value];
        v15 = [v14 valueType];
        v16 = [v13 value];
        [v15 enumerateValuesOfValueType:v6 value:v16 block:v7];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_64:

      goto LABEL_65;
    }

    v7 = [(LNAction *)self identifier];
    v8 = [(LNAction *)v6 identifier];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_62;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_63:

        goto LABEL_64;
      }
    }

    v16 = [(LNAction *)self mangledTypeName];
    v17 = [(LNAction *)v6 mangledTypeName];
    v14 = v16;
    v18 = v17;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
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

    v22 = [(LNAction *)self openAppWhenRun];
    if (v22 != [(LNAction *)v6 openAppWhenRun])
    {
LABEL_19:
      LOBYTE(v12) = 0;
LABEL_62:

      goto LABEL_63;
    }

    v23 = [(LNAction *)self outputFlags];
    v24 = [(LNAction *)v6 outputFlags];
    v20 = v23;
    v25 = v24;
    v19 = v25;
    v75 = v20;
    if (v20 == v25)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v26 = v25;
      if (!v20 || !v25)
      {
        goto LABEL_60;
      }

      LODWORD(v12) = [v20 isEqual:v25];

      if (!v12)
      {
        goto LABEL_61;
      }
    }

    v74 = v19;
    v27 = [(LNAction *)self outputType];
    v28 = [(LNAction *)v6 outputType];
    v29 = v27;
    v30 = v28;
    v31 = v30;
    v73 = v29;
    if (v29 != v30)
    {
      LOBYTE(v12) = 0;
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
            LOBYTE(v12) = 0;
            goto LABEL_46;
          }

LABEL_32:
          v35 = [(LNAction *)self systemProtocols];
          v36 = [(LNAction *)v6 systemProtocols];

          if (v35 != v36)
          {
            v12 = [(LNAction *)self systemProtocols];
            if (!v12)
            {
              goto LABEL_46;
            }

            v37 = [(LNAction *)v6 systemProtocols];

            if (!v37)
            {
              goto LABEL_45;
            }

            v38 = MEMORY[0x1E695DFD8];
            v69 = [(LNAction *)self systemProtocols];
            v39 = [v38 setWithArray:v69];
            v40 = MEMORY[0x1E695DFD8];
            v41 = [(LNAction *)v6 systemProtocols];
            v42 = [v40 setWithArray:v41];
            LODWORD(v66) = [v39 isEqualToSet:v42];

            if (!v66)
            {
              goto LABEL_45;
            }
          }

          v43 = [(LNAction *)self parameters];
          v44 = [(LNAction *)v6 parameters];

          if (v43 == v44)
          {
            goto LABEL_40;
          }

          v12 = [(LNAction *)self parameters];
          if (v12)
          {
            v45 = [(LNAction *)v6 parameters];

            if (!v45)
            {
              goto LABEL_45;
            }

            v46 = MEMORY[0x1E695DFD8];
            v70 = [(LNAction *)self parameters];
            v47 = [v46 setWithArray:v70];
            v48 = MEMORY[0x1E695DFD8];
            v49 = [(LNAction *)v6 parameters];
            v50 = [v48 setWithArray:v49];
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
              LOBYTE(v12) = 0;
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
                LOBYTE(v12) = 0;
                v19 = v74;
LABEL_58:
                v32 = v71;
                v31 = v72;
                goto LABEL_59;
              }
            }

            v57 = [(LNAction *)self explicitAuthenticationPolicy];
            v58 = [(LNAction *)v6 explicitAuthenticationPolicy];
            v59 = v57;
            v60 = v58;
            v61 = v59;
            v68 = v60;
            if (v59 == v60)
            {
              LOBYTE(v12) = 1;
            }

            else
            {
              LOBYTE(v12) = 0;
              if (v59)
              {
                v19 = v74;
                if (v60)
                {
                  LOBYTE(v12) = [v61 isEqual:v60];
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

  LOBYTE(v12) = 1;
LABEL_65:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNAction *)self identifier];
  v4 = [v3 hash];
  v5 = [(LNAction *)self mangledTypeName];
  v6 = [v5 hash] ^ v4;
  v7 = v6 ^ [(LNAction *)self openAppWhenRun];
  v8 = [(LNAction *)self outputFlags];
  v9 = [v8 hash];
  v10 = [(LNAction *)self outputType];
  v11 = v9 ^ [v10 hash];
  v12 = [(LNAction *)self systemProtocols];
  v13 = v7 ^ v11 ^ [v12 hash];
  v14 = [(LNAction *)self parameters];
  v15 = [v14 hash];
  v16 = [(LNAction *)self url];
  v17 = v15 ^ [v16 hash];
  v18 = [(LNAction *)self explicitAuthenticationPolicy];
  v19 = v17 ^ [v18 hash];

  return v13 ^ v19;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAction *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNAction *)self mangledTypeName];
  [v4 encodeObject:v6 forKey:@"mangledTypeName"];

  [v4 encodeBool:-[LNAction openAppWhenRun](self forKey:{"openAppWhenRun"), @"openAppWhenRun"}];
  v7 = [(LNAction *)self explicitAuthenticationPolicy];
  [v4 encodeObject:v7 forKey:@"explicitAuthenticationPolicy"];

  v8 = [(LNAction *)self outputFlags];
  [v4 encodeObject:v8 forKey:@"outputFlags"];

  v9 = [(LNAction *)self outputType];
  [v4 encodeObject:v9 forKey:@"outputType"];

  v10 = [(LNAction *)self systemProtocols];
  [v4 encodeObject:v10 forKey:@"systemProtocols"];

  v11 = [(LNAction *)self parameters];
  [v4 encodeObject:v11 forKey:@"parameters"];

  v12 = [(LNAction *)self url];
  [v4 encodeObject:v12 forKey:@"url"];

  v13 = [(LNAction *)self metadata];
  [v4 encodeObject:v13 forKey:@"metadata"];
}

- (LNAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mangledTypeName"];
  v25 = [v4 decodeBoolForKey:@"openAppWhenRun"];
  v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outputFlags"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outputType"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"systemProtocols"];
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
  v17 = [v4 decodeObjectOfClasses:v16 forKey:@"parameters"];

  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"explicitAuthenticationPolicy"];
  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
  v20 = 0;
  if (v5 && v17)
  {
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    v22 = v26;
    v23 = [(LNAction *)self _initWithIdentifier:v5 mangledTypeName:v26 openAppWhenRun:v25 explicitAuthenticationPolicy:v18 outputFlags:v27 outputType:v6 systemProtocols:v13 parameters:v17 metadata:v19];
    self = v23;
    if (v23)
    {
      objc_storeStrong(&v23->_url, v21);
    }

    v20 = self;
  }

  else
  {
    v22 = v26;
  }

  return v20;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNAction *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNAction *)self mangledTypeName];
  [v4 encodeObject:v6 forKey:@"mangledTypeName"];

  [v4 encodeBool:-[LNAction openAppWhenRun](self forKey:{"openAppWhenRun"), @"openAppWhenRun"}];
  v7 = [(LNAction *)self explicitAuthenticationPolicy];
  [v4 encodeObject:v7 forKey:@"explicitAuthenticationPolicy"];

  v8 = [(LNAction *)self outputFlags];
  [v4 encodeObject:v8 forKey:@"outputFlags"];

  v9 = [(LNAction *)self outputType];
  [v4 encodeObject:v9 forKey:@"outputType"];

  v10 = [(LNAction *)self systemProtocols];
  [v4 encodeObject:v10 forKey:@"systemProtocols"];

  v11 = [(LNAction *)self parameters];
  [v4 encodeObject:v11 forKey:@"parameters"];

  v12 = [(LNAction *)self url];
  [v4 encodeObject:v12 forKey:@"url"];

  v13 = [(LNAction *)self metadata];
  [v4 encodeObject:v13 forKey:@"metadata"];
}

- (LNAction)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mangledTypeName"];
  v21 = [v4 decodeBoolForKey:@"openAppWhenRun"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outputFlags"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outputType"];
  v8 = objc_opt_class();
  v9 = [v4 decodeCollectionOfClass:v8 containingClass:objc_opt_class() forKey:@"systemProtocols"];
  v10 = v9;
  v11 = MEMORY[0x1E695E0F0];
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = objc_opt_class();
  v14 = [v4 decodeCollectionOfClass:v13 containingClass:objc_opt_class() forKey:@"parameters"];
  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"explicitAuthenticationPolicy"];
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
  v17 = 0;
  if (v5 && v14)
  {
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    v19 = [(LNAction *)self _initWithIdentifier:v5 mangledTypeName:v22 openAppWhenRun:v21 explicitAuthenticationPolicy:v15 outputFlags:v6 outputType:v7 systemProtocols:v12 parameters:v14 metadata:v16];
    self = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_url, v18);
    }

    v17 = self;
  }

  return v17;
}

- (NSString)description
{
  v20 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v19 = NSStringFromClass(v3);
  v4 = [(LNAction *)self identifier];
  v5 = [(LNAction *)self mangledTypeName];
  v6 = [(LNAction *)self openAppWhenRun];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v17 = v7;
  v8 = [(LNAction *)self outputFlags];
  v9 = [(LNAction *)self outputType];
  v18 = [(LNAction *)self systemProtocols];
  v10 = [v18 valueForKeyPath:@"description"];
  v11 = [v10 componentsJoinedByString:{@", "}];
  v12 = [(LNAction *)self parameters];
  v13 = [(LNAction *)self url];
  v14 = [(LNAction *)self explicitAuthenticationPolicy];
  v15 = [v20 stringWithFormat:@"<%@: %p, identifier: %@, mangledTypeName: %@, openAppWhenRun: %@, outputFlags: %@, outputType: %@, systemProtocols: %@, parameters: %@, url: %@, explicitAuthenticationPolicy: %@", v19, self, v4, v5, v17, v8, v9, v11, v12, v13, v14];

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(LNAction *)self parameters];
  v5 = [(LNAction *)self actionWithParameters:v4];

  return v5;
}

- (id)authenticationPolicyAllowingImplicit:(BOOL)a3
{
  explicitAuthenticationPolicy = self->_explicitAuthenticationPolicy;
  if (a3 && !explicitAuthenticationPolicy)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:0];
  }

  else
  {
    v4 = explicitAuthenticationPolicy;
  }

  return v4;
}

- (LNAction)actionWithURL:(id)a3
{
  v5 = a3;
  v6 = [(LNAction *)self copy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 16), a3);
  }

  return v7;
}

- (LNAction)actionWithNonSecureParameters
{
  v3 = [(LNAction *)self parameters];
  v4 = [v3 if_objectsPassingTest:&__block_literal_global_9432];

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

- (LNAction)actionWithByMergingParameters:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [(LNAction *)self parameters];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [v11 identifier];
        [v5 setObject:v11 forKeyedSubscript:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v4;
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
        v19 = [v18 identifier];
        [v5 setObject:v18 forKeyedSubscript:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }

  v20 = [v5 allValues];
  v21 = [(LNAction *)self actionWithParameters:v20];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (LNAction)actionWithParameters:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(LNAction *)self identifier];
  v7 = [(LNAction *)self mangledTypeName];
  v8 = [(LNAction *)self openAppWhenRun];
  v9 = [(LNAction *)self explicitAuthenticationPolicy];
  v10 = [(LNAction *)self outputFlags];
  v11 = [(LNAction *)self outputType];
  v12 = [(LNAction *)self systemProtocols];
  v13 = [(LNAction *)self metadata];
  v14 = [v5 _initWithIdentifier:v6 mangledTypeName:v7 openAppWhenRun:v8 explicitAuthenticationPolicy:v9 outputFlags:v10 outputType:v11 systemProtocols:v12 parameters:v4 metadata:v13];

  return v14;
}

- (LNAction)initWithMetadata:(id)a3 mangledName:(id)a4 parameters:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 identifier];
  v12 = [v10 openAppWhenRun];
  v13 = [v10 authenticationPolicyAllowingImplicit:0];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "outputFlags")}];
  v15 = [v10 outputType];
  v16 = [v10 systemProtocols];
  v17 = [(LNAction *)self _initWithIdentifier:v11 mangledTypeName:v9 openAppWhenRun:v12 explicitAuthenticationPolicy:v13 outputFlags:v14 outputType:v15 systemProtocols:v16 parameters:v8 metadata:v10];

  return v17;
}

- (id)_initWithMetadata:(id)a3 mangledTypeName:(id)a4 parameters:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 identifier];
  v12 = [v10 openAppWhenRun];
  v13 = [v10 authenticationPolicyAllowingImplicit:0];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "outputFlags")}];
  v15 = [v10 outputType];
  v16 = [v10 systemProtocols];
  v17 = [(LNAction *)self _initWithIdentifier:v11 mangledTypeName:v9 openAppWhenRun:v12 explicitAuthenticationPolicy:v13 outputFlags:v14 outputType:v15 systemProtocols:v16 parameters:v8 metadata:v10];

  return v17;
}

- (id)_initWithIdentifier:(id)a3 mangledTypeName:(id)a4 openAppWhenRun:(BOOL)a5 explicitAuthenticationPolicy:(id)a6 outputFlags:(id)a7 outputType:(id)a8 systemProtocols:(id)a9 parameters:(id)a10 metadata:(id)a11
{
  v17 = a3;
  v18 = a4;
  v37 = a6;
  v36 = a7;
  v35 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v38.receiver = self;
  v38.super_class = LNAction;
  v22 = [(LNAction *)&v38 init];
  if (v22)
  {
    v23 = [v17 copy];
    identifier = v22->_identifier;
    v22->_identifier = v23;

    v25 = [v18 copy];
    mangledTypeName = v22->_mangledTypeName;
    v22->_mangledTypeName = v25;

    v22->_openAppWhenRun = a5;
    objc_storeStrong(&v22->_explicitAuthenticationPolicy, a6);
    objc_storeStrong(&v22->_outputFlags, a7);
    objc_storeStrong(&v22->_outputType, a8);
    v27 = [v19 copy];
    systemProtocols = v22->_systemProtocols;
    v22->_systemProtocols = v27;

    v29 = [v20 copy];
    parameters = v22->_parameters;
    v22->_parameters = v29;

    v31 = [v21 copy];
    metadata = v22->_metadata;
    v22->_metadata = v31;

    v33 = v22;
  }

  return v22;
}

- (LNAction)initWithMetadata:(id)a3 bundleIdentifier:(id)a4 parameters:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 identifier];
  v12 = [v10 mangledTypeNameForBundleIdentifier:v9];

  v13 = [v10 openAppWhenRun];
  v14 = [v10 authenticationPolicyAllowingImplicit:0];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "outputFlags")}];
  v16 = [v10 outputType];
  v17 = [v10 systemProtocols];
  v18 = [(LNAction *)self _initWithIdentifier:v11 mangledTypeName:v12 openAppWhenRun:v13 explicitAuthenticationPolicy:v14 outputFlags:v15 outputType:v16 systemProtocols:v17 parameters:v8 metadata:v10];

  return v18;
}

- (LNAction)initWithMetadata:(id)a3 mangledTypeName:(id)a4 parameters:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 identifier];
  v12 = [v10 openAppWhenRun];
  v13 = [v10 authenticationPolicyAllowingImplicit:0];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "outputFlags")}];
  v15 = [v10 outputType];
  v16 = [v10 systemProtocols];
  v17 = [(LNAction *)self _initWithIdentifier:v11 mangledTypeName:v9 openAppWhenRun:v12 explicitAuthenticationPolicy:v13 outputFlags:v14 outputType:v15 systemProtocols:v16 parameters:v8 metadata:v10];

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