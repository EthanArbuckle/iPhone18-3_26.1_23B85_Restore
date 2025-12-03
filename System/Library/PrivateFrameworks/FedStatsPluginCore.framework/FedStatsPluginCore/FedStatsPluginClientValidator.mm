@interface FedStatsPluginClientValidator
+ (id)checkClientIdentifier:(id)identifier againstNamespaceIdentifier:(id)namespaceIdentifier error:(id *)error;
+ (id)sharedInstanceWithError:(id *)error;
- (FedStatsPluginClientValidator)initWithAssociation:(id)association;
@end

@implementation FedStatsPluginClientValidator

- (FedStatsPluginClientValidator)initWithAssociation:(id)association
{
  associationCopy = association;
  v9.receiver = self;
  v9.super_class = FedStatsPluginClientValidator;
  v6 = [(FedStatsPluginClientValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_association, association);
  }

  return v7;
}

+ (id)sharedInstanceWithError:(id *)error
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__FedStatsPluginClientValidator_sharedInstanceWithError___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstanceWithError__dispatchToken == -1)
  {
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&sharedInstanceWithError__dispatchToken, block);
  if (error)
  {
LABEL_3:
    *error = sharedInstanceWithError__intError;
  }

LABEL_4:
  v4 = sharedInstanceWithError__sharedInstance;

  return v4;
}

void __57__FedStatsPluginClientValidator_sharedInstanceWithError___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (!v2)
  {
    v22 = [FedStatsPluginError errorWithCode:300 description:@"Cannot load class bundle"];
    v23 = sharedInstanceWithError__intError;
    sharedInstanceWithError__intError = v22;

    goto LABEL_31;
  }

  v3 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __57__FedStatsPluginClientValidator_sharedInstanceWithError___block_invoke_cold_1(v2, v3);
  }

  v4 = [v2 URLForResource:@"FedStatsPluginClientAssociations" withExtension:@"plist"];
  if (!v4)
  {
    v24 = [FedStatsPluginError errorWithCode:300 description:@"Cannot find associations file from class bundle"];
    v6 = sharedInstanceWithError__intError;
    sharedInstanceWithError__intError = v24;
    goto LABEL_30;
  }

  v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v4];
  v6 = v5;
  if (!v5)
  {
    v25 = [FedStatsPluginError errorWithCode:300 description:@"Cannot load association file from class bundle file"];
    v21 = sharedInstanceWithError__intError;
    sharedInstanceWithError__intError = v25;
    goto LABEL_27;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = v7;
  v9 = *v40;
  v10 = 0x277CBE000uLL;
  v32 = a1;
  v33 = *v40;
  while (2)
  {
    v11 = 0;
    v34 = v8;
    do
    {
      if (*v40 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v39 + 1) + 8 * v11);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = [FedStatsPluginError errorWithCode:300 description:@"Associations must have strings as keys"];
        v13 = sharedInstanceWithError__intError;
        sharedInstanceWithError__intError = v29;
LABEL_29:

        goto LABEL_30;
      }

      v13 = [v6 objectForKey:v12];
      v14 = *(v10 + 2656);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = [FedStatsPluginError errorWithCode:300 description:@"Associations must have arrays of strings as values"];
        v31 = sharedInstanceWithError__intError;
        sharedInstanceWithError__intError = v30;

        goto LABEL_29;
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v13 = v13;
      v15 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v36;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v36 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v35 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v26 = [FedStatsPluginError errorWithCode:300 description:@"Associations must have arrays of strings as values"];
              v27 = sharedInstanceWithError__intError;
              sharedInstanceWithError__intError = v26;

              goto LABEL_29;
            }
          }

          v16 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      ++v11;
      v9 = v33;
      v10 = 0x277CBE000;
    }

    while (v11 != v34);
    v8 = [v6 countByEnumeratingWithState:&v39 objects:v44 count:16];
    a1 = v32;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_23:

  v20 = [objc_alloc(*(a1 + 32)) initWithAssociation:v6];
  v21 = sharedInstanceWithError__sharedInstance;
  sharedInstanceWithError__sharedInstance = v20;
LABEL_27:

LABEL_30:
LABEL_31:

  v28 = *MEMORY[0x277D85DE8];
}

+ (id)checkClientIdentifier:(id)identifier againstNamespaceIdentifier:(id)namespaceIdentifier error:(id *)error
{
  identifierCopy = identifier;
  namespaceIdentifierCopy = namespaceIdentifier;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
LABEL_10:
      [FedStatsPluginError errorWithCode:300 description:v14];
      *error = v15 = 0;
      goto LABEL_16;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v9 = [FedStatsPluginClientValidator sharedInstanceWithError:error];
  v10 = v9;
  if (v9)
  {
    association = [v9 association];
    v12 = [association objectForKey:namespaceIdentifierCopy];

    if ([v12 containsObject:identifierCopy])
    {
      v13 = 1;
    }

    else
    {
      v16 = [identifierCopy stringByReplacingOccurrencesOfString:@"fedstats:" withString:&stru_285E133E0];
      v13 = [v12 containsObject:v16];
    }

    v15 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  return v15;
}

void __57__FedStatsPluginClientValidator_sharedInstanceWithError___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 bundleURL];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_24AB24000, a2, OS_LOG_TYPE_DEBUG, "class bundle path = %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end