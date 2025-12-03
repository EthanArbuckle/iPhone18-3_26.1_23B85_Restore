@interface LNActionMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)isSessionStartingAction;
- (BOOL)requiresMDMChecks;
- (BOOL)visibleForUse:(int64_t)use;
- (LNActionMetadata)actionMetadataWithAttributionBundleIdentifier:(id)identifier icon:(id)icon;
- (LNActionMetadata)actionMetadataWithParameters:(id)parameters;
- (LNActionMetadata)actionMetadataWithSystemProtocolMetadata:(id)metadata;
- (LNActionMetadata)initWithCoder:(id)coder;
- (LNActionMetadata)initWithCoder_Sydro:(id)sydro;
- (LNActionMetadata)initWithIdentifier:(id)identifier effectiveBundleIdentifier:(id)bundleIdentifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)parameters systemProtocols:(id)self0 actionConfiguration:(id)self1 typeSpecificMetadata:(id)self2;
- (LNActionMetadata)initWithIdentifier:(id)identifier effectiveBundleIdentifier:(id)bundleIdentifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)parameters systemProtocols:(id)self0 actionConfiguration:(id)self1 typeSpecificMetadata:(id)self2 iconSystemImageName:(id)self3 shortcutsMetadata:(id)self4;
- (LNActionMetadata)initWithIdentifier:(id)identifier effectiveBundleIdentifier:(id)bundleIdentifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)parameters systemProtocols:(id)self0 actionConfiguration:(id)self1 typeSpecificMetadata:(id)self2 shortcutsMetadata:(id)self3;
- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifier:(id)bundleIdentifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)self0 systemProtocols:(id)self1 actionConfiguration:(id)self2 typeSpecificMetadata:(id)self3;
- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifier:(id)bundleIdentifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)self0 systemProtocols:(id)self1 actionConfiguration:(id)self2 typeSpecificMetadata:(id)self3 customIntentClassName:(id)self4;
- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifier:(id)bundleIdentifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)self0 systemProtocols:(id)self1 actionConfiguration:(id)self2 typeSpecificMetadata:(id)self3 iconSystemImageName:(id)self4 shortcutsMetadata:(id)self5;
- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifier:(id)bundleIdentifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)self0 systemProtocols:(id)self1 actionConfiguration:(id)self2 typeSpecificMetadata:(id)self3 iconSystemImageName:(id)self4 shortcutsMetadata:(id)self5 customIntentClassName:(id)self6;
- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifier:(id)bundleIdentifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)self0 systemProtocols:(id)self1 sessionStartingAction:(BOOL)self2 actionConfiguration:(id)self3 typeSpecificMetadata:(id)self4 customIntentClassName:(id)self5;
- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifier:(id)bundleIdentifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)self0 systemProtocols:(id)self1 sessionStartingAction:(BOOL)self2 actionConfiguration:(id)self3 typeSpecificMetadata:(id)self4 iconSystemImageName:(id)self5 shortcutsMetadata:(id)self6 customIntentClassName:(id)self7;
- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifiers:(id)identifiers bundleMetadataVersion:(int64_t)version title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)self0 parameters:(id)self1 systemProtocols:(id)self2 actionConfiguration:(id)self3 typeSpecificMetadata:(id)self4 iconSystemImageName:(id)self5 shortcutsMetadata:(id)self6 customIntentClassName:(id)self7;
- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifiers:(id)identifiers bundleMetadataVersion:(int64_t)version title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)self0 parameters:(id)self1 systemProtocols:(id)self2 sessionStartingAction:(BOOL)self3 actionConfiguration:(id)self4 typeSpecificMetadata:(id)self5 iconSystemImageName:(id)self6 shortcutsMetadata:(id)self7 customIntentClassName:(id)self8 requiresMDMChecks:(BOOL)self9;
- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifiers:(id)identifiers title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)self0 systemProtocols:(id)self1 actionConfiguration:(id)self2 typeSpecificMetadata:(id)self3 customIntentClassName:(id)self4;
- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifiers:(id)identifiers title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)self0 systemProtocols:(id)self1 sessionStartingAction:(BOOL)self2 actionConfiguration:(id)self3 typeSpecificMetadata:(id)self4 customIntentClassName:(id)self5;
- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers bundleMetadataVersion:(int64_t)version title:(id)title description:(id)description presentationStyle:(int64_t)self0 outputType:(id)self1 parameters:(id)self2 systemProtocols:(id)self3 actionConfiguration:(id)self4 typeSpecificMetadata:(id)self5 iconSystemImageName:(id)self6 shortcutsMetadata:(id)self7 customIntentClassName:(id)self8;
- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers bundleMetadataVersion:(int64_t)version title:(id)title descriptionMetadata:(id)metadata deprecationMetadata:(id)self0 openAppWhenRun:(BOOL)self1 authenticationPolicy:(int64_t)self2 outputType:(id)self3 outputFlags:(unint64_t)self4 parameters:(id)self5 systemProtocolMetadata:(id)self6 actionConfiguration:(id)self7 typeSpecificMetadata:(id)self8 customIntentClassName:(id)self9 availabilityAnnotations:(id)annotations shortcutsMetadata:(id)shortcutsMetadata requiredCapabilities:(id)capabilities attributionBundleIdentifier:(id)attributionBundleIdentifier sideEffect:(id)effect assistantDefinedSchemas:(id)schemas assistantDefinedSchemaTraits:(id)traits visibilityMetadata:(id)visibilityMetadata fullyQualifiedTypeName:(id)typeName;
- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers bundleMetadataVersion:(int64_t)version title:(id)title descriptionMetadata:(id)metadata deprecationMetadata:(id)self0 openAppWhenRun:(BOOL)self1 discoverable:(BOOL)self2 authenticationPolicy:(int64_t)self3 outputType:(id)self4 outputFlags:(unint64_t)self5 parameters:(id)self6 systemProtocolMetadata:(id)self7 actionConfiguration:(id)self8 typeSpecificMetadata:(id)self9 customIntentClassName:(id)className availabilityAnnotations:(id)annotations shortcutsMetadata:(id)shortcutsMetadata requiredCapabilities:(id)capabilities attributionBundleIdentifier:(id)attributionBundleIdentifier sideEffect:(id)effect assistantDefinedSchemas:(id)schemas assistantDefinedSchemaTraits:(id)traits;
- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers bundleMetadataVersion:(int64_t)version title:(id)title descriptionMetadata:(id)metadata deprecationMetadata:(id)self0 openAppWhenRun:(BOOL)self1 supportedModes:(unint64_t)self2 explicitAuthenticationPolicy:(id)self3 outputType:(id)self4 outputFlags:(unint64_t)self5 parameters:(id)self6 systemProtocolMetadata:(id)self7 actionConfiguration:(id)self8 typeSpecificMetadata:(id)self9 customIntentClassName:(id)className availabilityAnnotations:(id)annotations shortcutsMetadata:(id)shortcutsMetadata requiredCapabilities:(id)capabilities attributionBundleIdentifier:(id)attributionBundleIdentifier sideEffect:(id)effect assistantDefinedSchemas:(id)schemas assistantDefinedSchemaTraits:(id)traits visibilityMetadata:(id)visibilityMetadata fullyQualifiedTypeName:(id)typeName constraints:(id)identifier0 allowedTargets:(id)identifier1;
- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers bundleMetadataVersion:(int64_t)version title:(id)title descriptionMetadata:(id)metadata openAppWhenRun:(BOOL)self0 authenticationPolicy:(int64_t)self1 outputType:(id)self2 outputFlags:(unint64_t)self3 parameters:(id)self4 systemProtocols:(id)self5 actionConfiguration:(id)self6 typeSpecificMetadata:(id)self7 customIntentClassName:(id)self8 availabilityAnnotations:(id)self9 shortcutsMetadata:(id)shortcutsMetadata;
- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)parameters systemProtocols:(id)self0 actionConfiguration:(id)self1 typeSpecificMetadata:(id)self2 customIntentClassName:(id)self3;
- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name title:(id)title descriptionMetadata:(id)metadata openAppWhenRun:(BOOL)run authenticationPolicy:(int64_t)policy outputType:(id)type outputFlags:(unint64_t)self0 parameters:(id)self1 systemProtocols:(id)self2 actionConfiguration:(id)self3 typeSpecificMetadata:(id)self4 customIntentClassName:(id)self5;
- (LNActionMetadata)initWithIdentifier:(id)identifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)parameters systemProtocols:(id)protocols actionConfiguration:(id)self0;
- (LNStaticDeferredLocalizedString)actionDescription;
- (NSString)description;
- (NSString)effectiveBundleIdentifier;
- (id)actionMetadataDescriptionMetadata:(id)metadata;
- (id)authenticationPolicyAllowingImplicit:(BOOL)implicit;
- (id)copyWithDescriptiveMetadataFromAction:(id)action usingLibraryKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyWithoutMangledTypeNameWithAvailability:(id)availability;
- (id)mangledTypeNameForBundleIdentifier:(id)identifier;
- (id)metadataByAddingEffectiveBundleIdentifiers:(id)identifiers mangledTypeNameByBundleIdentifier:(id)identifier;
- (id)nameIndexedParameters;
- (int64_t)authenticationPolicy;
- (int64_t)presentationStyle;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionMetadata

- (int64_t)authenticationPolicy
{
  v2 = [(LNActionMetadata *)self authenticationPolicyAllowingImplicit:1];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (id)nameIndexedParameters
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  parameters = [(LNActionMetadata *)self parameters];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__LNActionMetadata_nameIndexedParameters__block_invoke;
  v7[3] = &unk_1E72B14A8;
  v5 = v3;
  v8 = v5;
  [parameters enumerateObjectsUsingBlock:v7];

  return v5;
}

void __41__LNActionMetadata_nameIndexedParameters__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 name];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 name];
    [v4 setObject:v6 forKeyedSubscript:v5];
  }
}

- (LNActionMetadata)actionMetadataWithSystemProtocolMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [(LNActionMetadata *)self copy];
  v6 = [metadataCopy copy];
  v7 = v5[12];
  v5[12] = v6;

  allKeys = [metadataCopy allKeys];

  v9 = [allKeys if_compactMap:&__block_literal_global_168];
  v10 = v5[13];
  v5[13] = v9;

  return v5;
}

- (id)copyWithDescriptiveMetadataFromAction:(id)action usingLibraryKey:(id)key
{
  actionCopy = action;
  keyCopy = key;
  v8 = [(LNActionMetadata *)self copy];
  v9 = *(v8 + 40);
  if (!v9 || ([v9 key], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, !v11))
  {
    title = [actionCopy title];
    v13 = *(v8 + 40);
    *(v8 + 40) = title;
  }

  if (!*(v8 + 48))
  {
    v75 = [LNActionDescriptionMetadata alloc];
    descriptionMetadata = [actionCopy descriptionMetadata];
    [descriptionMetadata descriptionText];
    v14 = v77 = actionCopy;
    descriptionMetadata2 = [(LNActionMetadata *)self descriptionMetadata];
    [descriptionMetadata2 categoryName];
    v15 = v79 = keyCopy;
    descriptionMetadata3 = [(LNActionMetadata *)self descriptionMetadata];
    searchKeywords = [descriptionMetadata3 searchKeywords];
    descriptionMetadata4 = [(LNActionMetadata *)self descriptionMetadata];
    resultValueName = [descriptionMetadata4 resultValueName];
    descriptionMetadata5 = [(LNActionMetadata *)self descriptionMetadata];
    icon = [descriptionMetadata5 icon];
    v22 = [(LNActionDescriptionMetadata *)v75 initWithDescriptionText:v14 categoryName:v15 searchKeywords:searchKeywords resultValueName:resultValueName icon:icon];
    v23 = *(v8 + 48);
    *(v8 + 48) = v22;

    keyCopy = v79;
    actionCopy = v77;
  }

  if (!*(v8 + 112))
  {
    actionConfiguration = [actionCopy actionConfiguration];
    if (actionConfiguration)
    {
      objc_opt_class();
      v25 = objc_opt_isKindOfClass() ^ 1;
    }

    else
    {
      v25 = 1;
    }

    actionConfiguration2 = [actionCopy actionConfiguration];
    v27 = actionConfiguration2;
    if ((v25 & 1) == 0)
    {
      summaryString = [actionConfiguration2 summaryString];
      formatString = [summaryString formatString];
      v32 = [formatString length];

      if (v32)
      {
        v33 = [LNStaticDeferredLocalizedString alloc];
        summaryString2 = [v27 summaryString];
        formatString2 = [summaryString2 formatString];
        [_TtC12LinkMetadata18SchemaLocalization tableForLibraryKey:keyCopy];
        v36 = v80 = keyCopy;
        v37 = +[_TtC12LinkMetadata18SchemaLocalization bundleURL];
        v38 = [(LNStaticDeferredLocalizedString *)v33 initWithKey:formatString2 table:v36 bundleURL:v37];

        v39 = [LNActionSummaryString alloc];
        v40 = [(LNStaticDeferredLocalizedString *)v38 key];
        summaryString3 = [v27 summaryString];
        parameterIdentifiers = [summaryString3 parameterIdentifiers];
        v43 = [(LNActionSummaryString *)v39 initWithFormatString:v40 parameterIdentifiers:parameterIdentifiers];

        v44 = [LNActionSummary alloc];
        bundleURL = [(LNStaticDeferredLocalizedString *)v38 bundleURL];
        table = [(LNStaticDeferredLocalizedString *)v38 table];
        otherParameterIdentifiers = [v27 otherParameterIdentifiers];
        v48 = [(LNActionSummary *)v44 initWithSummaryString:v43 bundleURL:bundleURL table:table otherParameterIdentifiers:otherParameterIdentifiers];
        v49 = *(v8 + 112);
        *(v8 + 112) = v48;

        keyCopy = v80;
      }

      goto LABEL_16;
    }

    if (!actionConfiguration2)
    {
LABEL_16:

      goto LABEL_17;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      actionConfiguration3 = [actionCopy actionConfiguration];
      v27 = *(v8 + 112);
      *(v8 + 112) = actionConfiguration3;
      goto LABEL_16;
    }
  }

LABEL_17:
  nameIndexedParameters = [actionCopy nameIndexedParameters];
  parameters = [(LNActionMetadata *)self parameters];
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __74__LNActionMetadata_copyWithDescriptiveMetadataFromAction_usingLibraryKey___block_invoke;
  v84[3] = &unk_1E72B1458;
  v52 = nameIndexedParameters;
  v85 = v52;
  v53 = keyCopy;
  v86 = v53;
  v54 = [parameters if_map:v84];
  v55 = *(v8 + 152);
  *(v8 + 152) = v54;

  systemProtocolMetadata = [v8 systemProtocolMetadata];
  v57 = [systemProtocolMetadata mutableCopy];

  assistantDefinedSchemaTraits = [actionCopy assistantDefinedSchemaTraits];
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __74__LNActionMetadata_copyWithDescriptiveMetadataFromAction_usingLibraryKey___block_invoke_2;
  v82[3] = &unk_1E72B1480;
  v59 = v57;
  v83 = v59;
  [assistantDefinedSchemaTraits enumerateObjectsUsingBlock:v82];
  objc_storeStrong((v8 + 96), v57);
  constraints = [actionCopy constraints];
  if (constraints)
  {
    v61 = constraints;
    constraints2 = [actionCopy constraints];
    v63 = [constraints2 count];

    if (v63)
    {
      v64 = MEMORY[0x1E695DF70];
      constraints3 = [actionCopy constraints];
      v66 = [v64 arrayWithArray:constraints3];

      selfCopy = self;
      constraints4 = [(LNActionMetadata *)self constraints];
      if (constraints4)
      {
        v68 = constraints4;
        constraints5 = [actionCopy constraints];
        v70 = [constraints5 count];

        if (v70)
        {
          constraints6 = [(LNActionMetadata *)selfCopy constraints];
          [v66 addObjectsFromArray:constraints6];
        }
      }

      v72 = [MEMORY[0x1E695DEC8] arrayWithArray:v66];
      v73 = *(v8 + 88);
      *(v8 + 88) = v72;
    }
  }

  return v8;
}

id __74__LNActionMetadata_copyWithDescriptiveMetadataFromAction_usingLibraryKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 name];
  v6 = [v3 objectForKey:v5];

  if (v6)
  {
    v7 = [v4 actionParameterMetadataWithDescriptiveMetadataFromParameter:v6 usingLibraryKey:*(a1 + 40)];
  }

  else
  {
    v7 = [v4 copy];
  }

  v8 = v7;

  return v8;
}

void __74__LNActionMetadata_copyWithDescriptiveMetadataFromAction_usingLibraryKey___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [(LNEmptySystemProtocolMetadata *)v11 protocol];
      v4 = +[LNSystemProtocol openEntitySystemProtocol];
      v5 = [v3 isEqual:v4];

      v6 = v11;
      if (!v5)
      {
        goto LABEL_8;
      }

      v7 = *(a1 + 32);
      v8 = objc_alloc_init(LNEmptySystemProtocolMetadata);
      v9 = +[LNSystemProtocol openEntitySystemProtocol];
      v10 = [v9 identifier];
      [v7 setObject:v8 forKey:v10];

      v6 = v11;
    }

    else
    {
      v6 = 0;
      v8 = v11;
    }
  }

  else
  {
    v8 = 0;
    v6 = 0;
  }

LABEL_8:
}

- (id)metadataByAddingEffectiveBundleIdentifiers:(id)identifiers mangledTypeNameByBundleIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  if (!identifiersCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionMetadata.m" lineNumber:504 description:{@"Invalid parameter not satisfying: %@", @"effectiveBundleIdentifiers"}];
  }

  v9 = [(LNActionMetadata *)self copy];
  effectiveBundleIdentifiers = [v9 effectiveBundleIdentifiers];
  array = [identifiersCopy array];
  v12 = [effectiveBundleIdentifiers if_orderedSetByAddingObjectsFromArray:array];
  v13 = v9[4];
  v9[4] = v12;

  mangledTypeNameByBundleIdentifier = [v9 mangledTypeNameByBundleIdentifier];
  v15 = [mangledTypeNameByBundleIdentifier if_dictionaryByAddingEntriesFromDictionary:identifierCopy];
  v16 = v9[18];
  v9[18] = v15;

  return v9;
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
      LOBYTE(parameters3) = 0;
LABEL_176:

      goto LABEL_177;
    }

    identifier = [(LNActionMetadata *)self identifier];
    identifier2 = [(LNActionMetadata *)v6 identifier];
    v9 = identifier;
    v10 = identifier2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(parameters3) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_174;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(parameters3) = 0;
LABEL_175:

        goto LABEL_176;
      }
    }

    title = [(LNActionMetadata *)self title];
    title2 = [(LNActionMetadata *)v6 title];
    v14 = title;
    v18 = title2;
    v13 = v18;
    if (v14 == v18)
    {

      v181 = v14;
    }

    else
    {
      LOBYTE(parameters3) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_173;
      }

      v21 = v14;
      v22 = [v14 isEqual:v18];

      v181 = v21;
      if (!v22)
      {
        LOBYTE(parameters3) = 0;
        v14 = v21;
LABEL_174:

        goto LABEL_175;
      }
    }

    descriptionMetadata = [(LNActionMetadata *)self descriptionMetadata];
    descriptionMetadata2 = [(LNActionMetadata *)v6 descriptionMetadata];
    v20 = descriptionMetadata;
    v25 = descriptionMetadata2;
    v19 = v25;
    if (v20 == v25)
    {
    }

    else
    {
      LOBYTE(parameters3) = 0;
      v26 = v25;
      v27 = v20;
      if (!v20 || !v25)
      {
        goto LABEL_171;
      }

      LODWORD(parameters3) = [v20 isEqual:v25];

      if (!parameters3)
      {
        goto LABEL_172;
      }
    }

    v180 = v19;
    deprecationMetadata = [(LNActionMetadata *)self deprecationMetadata];
    deprecationMetadata2 = [(LNActionMetadata *)v6 deprecationMetadata];
    v27 = deprecationMetadata;
    v30 = deprecationMetadata2;
    v31 = v30;
    if (v27 != v30)
    {
      LOBYTE(parameters3) = 0;
      v32 = v30;
      v33 = v27;
      if (v27)
      {
        v19 = v180;
        if (v30)
        {
          v34 = v30;
          v35 = [v27 isEqual:v30];
          v178 = v34;

          v179 = v27;
          if (!v35)
          {
            goto LABEL_41;
          }

LABEL_30:
          parameters = [(LNActionMetadata *)self parameters];
          parameters2 = [(LNActionMetadata *)v6 parameters];

          if (parameters != parameters2)
          {
            parameters3 = [(LNActionMetadata *)self parameters];
            if (!parameters3)
            {
LABEL_43:
              v27 = v179;
              v19 = v180;
              v26 = v178;
LABEL_171:

LABEL_172:
              v14 = v181;
LABEL_173:

              goto LABEL_174;
            }

            parameters4 = [(LNActionMetadata *)v6 parameters];

            if (!parameters4)
            {
              goto LABEL_41;
            }

            v39 = MEMORY[0x1E695DFD8];
            parameters5 = [(LNActionMetadata *)self parameters];
            v40 = [v39 setWithArray:parameters5];
            v41 = MEMORY[0x1E695DFD8];
            parameters6 = [(LNActionMetadata *)v6 parameters];
            v43 = [v41 setWithArray:parameters6];
            v171 = [v40 isEqualToSet:v43];

            if (!v171)
            {
LABEL_41:
              LOBYTE(parameters3) = 0;
              goto LABEL_43;
            }
          }

          v177 = v20;
          openAppWhenRun = [(LNActionMetadata *)self openAppWhenRun];
          if (openAppWhenRun != [(LNActionMetadata *)v6 openAppWhenRun]|| (v45 = [(LNActionMetadata *)self supportedModes], v45 != [(LNActionMetadata *)v6 supportedModes]))
          {
            LOBYTE(parameters3) = 0;
            goto LABEL_43;
          }

          visibilityMetadata = [(LNActionMetadata *)self visibilityMetadata];
          visibilityMetadata2 = [(LNActionMetadata *)v6 visibilityMetadata];
          v48 = visibilityMetadata;
          v49 = visibilityMetadata2;
          v172 = v49;
          v174 = v48;
          if (v48 != v49)
          {
            LOBYTE(parameters3) = 0;
            if (v48)
            {
              v50 = v49;
              v51 = v48;
              v20 = v177;
              v19 = v180;
              if (v49)
              {
                v52 = [v174 isEqual:v49];

                if (!v52)
                {
                  LOBYTE(parameters3) = 0;
                  v20 = v177;
                  v19 = v180;
LABEL_169:
                  v31 = v178;
                  v27 = v179;
                  v32 = v172;
                  v33 = v174;
                  goto LABEL_170;
                }

LABEL_46:
                explicitAuthenticationPolicy = [(LNActionMetadata *)self explicitAuthenticationPolicy];
                explicitAuthenticationPolicy2 = [(LNActionMetadata *)v6 explicitAuthenticationPolicy];
                v51 = explicitAuthenticationPolicy;
                v55 = explicitAuthenticationPolicy2;
                v170 = v55;
                if (v51 != v55)
                {
                  LOBYTE(parameters3) = 0;
                  if (v51)
                  {
                    v56 = v55;
                    v57 = v51;
                    v20 = v177;
                    v19 = v180;
                    if (v55)
                    {
                      v58 = v51;
                      v59 = [v51 isEqual:v55];

                      v169 = v58;
                      if (!v59)
                      {
                        LOBYTE(parameters3) = 0;
                        v20 = v177;
                        v19 = v180;
                        v51 = v169;
LABEL_167:
                        v50 = v170;
                        goto LABEL_168;
                      }

LABEL_52:
                      outputType = [(LNActionMetadata *)self outputType];
                      outputType2 = [(LNActionMetadata *)v6 outputType];
                      v62 = outputType;
                      v63 = outputType2;
                      v167 = v62;
                      v168 = v63;
                      if (v62 != v63)
                      {
                        LOBYTE(parameters3) = 0;
                        if (v62)
                        {
                          v64 = v63;
                          v65 = v62;
                          v20 = v177;
                          v19 = v180;
                          v51 = v169;
                          if (v63)
                          {
                            v66 = [v167 isEqual:v63];

                            if (!v66)
                            {
                              LOBYTE(parameters3) = 0;
                              v57 = v167;
                              v20 = v177;
                              v19 = v180;
                              v51 = v169;
LABEL_165:
                              v56 = v168;
                              goto LABEL_166;
                            }

LABEL_59:
                            systemProtocolMetadata = [(LNActionMetadata *)self systemProtocolMetadata];
                            systemProtocolMetadata2 = [(LNActionMetadata *)v6 systemProtocolMetadata];
                            v69 = systemProtocolMetadata;
                            v70 = systemProtocolMetadata2;
                            v165 = v70;
                            v166 = v69;
                            if (v69 != v70)
                            {
                              LOBYTE(parameters3) = 0;
                              if (v69)
                              {
                                v71 = v70;
                                v164 = v69;
                                v20 = v177;
                                v19 = v180;
                                v51 = v169;
                                if (v70)
                                {
                                  v72 = [v166 isEqualToDictionary:v70];

                                  if (!v72)
                                  {
                                    LOBYTE(parameters3) = 0;
                                    v20 = v177;
                                    v19 = v180;
                                    v51 = v169;
LABEL_163:
                                    v64 = v165;
                                    v65 = v166;
                                    goto LABEL_164;
                                  }

LABEL_66:
                                  actionConfiguration = [(LNActionMetadata *)self actionConfiguration];
                                  actionConfiguration2 = [(LNActionMetadata *)v6 actionConfiguration];
                                  v75 = actionConfiguration;
                                  v76 = actionConfiguration2;
                                  v163 = v76;
                                  v164 = v75;
                                  if (v75 != v76)
                                  {
                                    LOBYTE(parameters3) = 0;
                                    if (v75)
                                    {
                                      v77 = v76;
                                      v19 = v180;
                                      if (v76)
                                      {
                                        v78 = [v75 isEqual:v76];

                                        if (!v78)
                                        {
                                          LOBYTE(parameters3) = 0;
                                          v20 = v177;
                                          v19 = v180;
LABEL_161:
                                          v51 = v169;
                                          v71 = v163;
                                          goto LABEL_162;
                                        }

LABEL_73:
                                        v175 = v9;
                                        v161 = v11;
                                        typeSpecificMetadata = [(LNActionMetadata *)self typeSpecificMetadata];
                                        typeSpecificMetadata2 = [(LNActionMetadata *)v6 typeSpecificMetadata];
                                        v75 = typeSpecificMetadata;
                                        v162 = typeSpecificMetadata2;
                                        if (v75 != v162)
                                        {
                                          LOBYTE(parameters3) = 0;
                                          if (v75)
                                          {
                                            v77 = v162;
                                            v81 = v162;
                                            v82 = v75;
                                            if (v162)
                                            {
                                              v83 = [v75 isEqualToDictionary:v162];

                                              if (!v83)
                                              {
                                                LOBYTE(parameters3) = 0;
                                                v19 = v180;
                                                v11 = v161;
                                                v77 = v162;
LABEL_159:
                                                v9 = v175;
                                                goto LABEL_160;
                                              }

LABEL_80:
                                              customIntentClassName = [(LNActionMetadata *)self customIntentClassName];
                                              customIntentClassName2 = [(LNActionMetadata *)v6 customIntentClassName];
                                              v86 = customIntentClassName;
                                              v87 = customIntentClassName2;
                                              v82 = v86;
                                              v81 = v87;
                                              if (v86 == v87)
                                              {
                                              }

                                              else
                                              {
                                                LOBYTE(parameters3) = 0;
                                                if (!v86)
                                                {
                                                  v160 = 0;

LABEL_156:
                                                  goto LABEL_157;
                                                }

                                                v159 = v87;
                                                v160 = v86;
                                                if (!v87)
                                                {
LABEL_155:

                                                  goto LABEL_156;
                                                }

                                                v88 = [v86 isEqualToString:v87];

                                                if (!v88)
                                                {
                                                  goto LABEL_93;
                                                }
                                              }

                                              bundleMetadataVersion = [(LNActionMetadata *)self bundleMetadataVersion];
                                              if (bundleMetadataVersion != [(LNActionMetadata *)v6 bundleMetadataVersion])
                                              {
LABEL_93:
                                                LOBYTE(parameters3) = 0;
LABEL_157:
                                                v77 = v162;
                                                goto LABEL_158;
                                              }

                                              availabilityAnnotations = [(LNActionMetadata *)self availabilityAnnotations];
                                              availabilityAnnotations2 = [(LNActionMetadata *)v6 availabilityAnnotations];
                                              v92 = availabilityAnnotations;
                                              v159 = availabilityAnnotations2;
                                              v160 = v92;
                                              if (v92 == v159)
                                              {
                                              }

                                              else
                                              {
                                                LOBYTE(parameters3) = 0;
                                                if (!v92)
                                                {
                                                  v158 = 0;

LABEL_154:
                                                  goto LABEL_155;
                                                }

                                                v157 = v159;
                                                v158 = v92;
                                                if (!v159)
                                                {
                                                  goto LABEL_153;
                                                }

                                                v93 = [v92 isEqualToDictionary:v159];

                                                if (!v93)
                                                {
                                                  LOBYTE(parameters3) = 0;
                                                  goto LABEL_155;
                                                }
                                              }

                                              shortcutsMetadata = [(LNActionMetadata *)self shortcutsMetadata];
                                              shortcutsMetadata2 = [(LNActionMetadata *)v6 shortcutsMetadata];
                                              v96 = shortcutsMetadata;
                                              v157 = shortcutsMetadata2;
                                              v158 = v96;
                                              if (v96 == v157)
                                              {
                                              }

                                              else
                                              {
                                                LOBYTE(parameters3) = 0;
                                                if (!v96)
                                                {
                                                  v155 = 0;

LABEL_152:
                                                  goto LABEL_153;
                                                }

                                                v153 = v157;
                                                v155 = v96;
                                                if (!v157)
                                                {
LABEL_151:

                                                  goto LABEL_152;
                                                }

                                                v97 = [v96 isEqualToDictionary:v157];

                                                if (!v97)
                                                {
LABEL_112:
                                                  LOBYTE(parameters3) = 0;
                                                  goto LABEL_153;
                                                }
                                              }

                                              requiredCapabilities = [(LNActionMetadata *)self requiredCapabilities];
                                              requiredCapabilities2 = [(LNActionMetadata *)v6 requiredCapabilities];

                                              if (requiredCapabilities == requiredCapabilities2)
                                              {
LABEL_107:
                                                attributionBundleIdentifier = [(LNActionMetadata *)self attributionBundleIdentifier];
                                                attributionBundleIdentifier2 = [(LNActionMetadata *)v6 attributionBundleIdentifier];
                                                v108 = attributionBundleIdentifier;
                                                v153 = attributionBundleIdentifier2;
                                                v155 = v108;
                                                if (v108 == v153)
                                                {
                                                }

                                                else
                                                {
                                                  LOBYTE(parameters3) = 0;
                                                  if (!v108)
                                                  {
                                                    v152 = 0;

LABEL_150:
                                                    goto LABEL_151;
                                                  }

                                                  v151 = v153;
                                                  v152 = v108;
                                                  if (!v153)
                                                  {
                                                    goto LABEL_149;
                                                  }

                                                  v109 = [v108 isEqualToString:v153];

                                                  if (!v109)
                                                  {
                                                    LOBYTE(parameters3) = 0;
                                                    goto LABEL_151;
                                                  }
                                                }

                                                sideEffect = [(LNActionMetadata *)self sideEffect];
                                                sideEffect2 = [(LNActionMetadata *)v6 sideEffect];
                                                v112 = sideEffect;
                                                v151 = sideEffect2;
                                                v152 = v112;
                                                if (v112 == v151)
                                                {
                                                }

                                                else
                                                {
                                                  LOBYTE(parameters3) = 0;
                                                  if (!v112)
                                                  {
                                                    v113 = 0;

LABEL_148:
                                                    goto LABEL_149;
                                                  }

                                                  v113 = v112;
                                                  v148 = v151;
                                                  if (!v151)
                                                  {
LABEL_147:

                                                    goto LABEL_148;
                                                  }

                                                  v114 = [v112 isEqual:v151];

                                                  if (!v114)
                                                  {
LABEL_135:
                                                    LOBYTE(parameters3) = 0;
                                                    goto LABEL_149;
                                                  }
                                                }

                                                assistantDefinedSchemas = [(LNActionMetadata *)self assistantDefinedSchemas];
                                                assistantDefinedSchemas2 = [(LNActionMetadata *)v6 assistantDefinedSchemas];

                                                if (assistantDefinedSchemas != assistantDefinedSchemas2)
                                                {
                                                  parameters3 = [(LNActionMetadata *)self assistantDefinedSchemas];
                                                  if (!parameters3)
                                                  {
                                                    goto LABEL_149;
                                                  }

                                                  assistantDefinedSchemas3 = [(LNActionMetadata *)v6 assistantDefinedSchemas];

                                                  if (!assistantDefinedSchemas3)
                                                  {
                                                    goto LABEL_135;
                                                  }

                                                  v118 = MEMORY[0x1E695DFD8];
                                                  assistantDefinedSchemas4 = [(LNActionMetadata *)self assistantDefinedSchemas];
                                                  v119 = [v118 setWithArray:assistantDefinedSchemas4];
                                                  v120 = MEMORY[0x1E695DFD8];
                                                  assistantDefinedSchemas5 = [(LNActionMetadata *)v6 assistantDefinedSchemas];
                                                  v122 = [v120 setWithArray:assistantDefinedSchemas5];
                                                  v144 = [v119 isEqualToSet:v122];

                                                  if (!v144)
                                                  {
                                                    goto LABEL_135;
                                                  }
                                                }

                                                assistantDefinedSchemaTraits = [(LNActionMetadata *)self assistantDefinedSchemaTraits];
                                                assistantDefinedSchemaTraits2 = [(LNActionMetadata *)v6 assistantDefinedSchemaTraits];

                                                if (assistantDefinedSchemaTraits == assistantDefinedSchemaTraits2)
                                                {
                                                  goto LABEL_130;
                                                }

                                                parameters3 = [(LNActionMetadata *)self assistantDefinedSchemaTraits];
                                                if (parameters3)
                                                {
                                                  assistantDefinedSchemaTraits3 = [(LNActionMetadata *)v6 assistantDefinedSchemaTraits];

                                                  if (!assistantDefinedSchemaTraits3)
                                                  {
                                                    goto LABEL_135;
                                                  }

                                                  v126 = MEMORY[0x1E695DFD8];
                                                  assistantDefinedSchemaTraits4 = [(LNActionMetadata *)self assistantDefinedSchemaTraits];
                                                  v127 = [v126 setWithArray:assistantDefinedSchemaTraits4];
                                                  v128 = MEMORY[0x1E695DFD8];
                                                  assistantDefinedSchemaTraits5 = [(LNActionMetadata *)v6 assistantDefinedSchemaTraits];
                                                  v130 = [v128 setWithArray:assistantDefinedSchemaTraits5];
                                                  v145 = [v127 isEqualToSet:v130];

                                                  if (!v145)
                                                  {
                                                    goto LABEL_135;
                                                  }

LABEL_130:
                                                  fullyQualifiedTypeName = [(LNActionMetadata *)self fullyQualifiedTypeName];
                                                  fullyQualifiedTypeName2 = [(LNActionMetadata *)v6 fullyQualifiedTypeName];
                                                  v133 = fullyQualifiedTypeName;
                                                  v134 = fullyQualifiedTypeName2;
                                                  v113 = v133;
                                                  v148 = v134;
                                                  if (v133 != v134)
                                                  {
                                                    LOBYTE(parameters3) = 0;
                                                    if (v133)
                                                    {
                                                      v146 = v134;
                                                      if (v134)
                                                      {
                                                        v147 = [v133 isEqualToString:v134];

                                                        if (!v147)
                                                        {
                                                          LOBYTE(parameters3) = 0;
                                                          goto LABEL_147;
                                                        }

                                                        goto LABEL_139;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v146 = v134;
                                                      v133 = 0;
                                                    }

LABEL_146:

                                                    goto LABEL_147;
                                                  }

LABEL_139:
                                                  allowedTargets = [(LNActionMetadata *)self allowedTargets];
                                                  allowedTargets2 = [(LNActionMetadata *)v6 allowedTargets];
                                                  v133 = allowedTargets;
                                                  v146 = allowedTargets2;
                                                  if (v133 == v146)
                                                  {
                                                    LOBYTE(parameters3) = 1;
                                                  }

                                                  else
                                                  {
                                                    LOBYTE(parameters3) = 0;
                                                    if (v133 && v146)
                                                    {
                                                      LOBYTE(parameters3) = [v133 isEqualToArray:v146];
                                                    }
                                                  }

                                                  goto LABEL_146;
                                                }

LABEL_149:

                                                goto LABEL_150;
                                              }

                                              parameters3 = [(LNActionMetadata *)self requiredCapabilities];
                                              if (parameters3)
                                              {
                                                requiredCapabilities3 = [(LNActionMetadata *)v6 requiredCapabilities];

                                                if (!requiredCapabilities3)
                                                {
                                                  goto LABEL_112;
                                                }

                                                v101 = MEMORY[0x1E695DFD8];
                                                requiredCapabilities4 = [(LNActionMetadata *)self requiredCapabilities];
                                                v102 = [v101 setWithArray:requiredCapabilities4];
                                                v103 = MEMORY[0x1E695DFD8];
                                                requiredCapabilities5 = [(LNActionMetadata *)v6 requiredCapabilities];
                                                v105 = [v103 setWithArray:requiredCapabilities5];
                                                v154 = [v102 isEqualToSet:v105];

                                                if (!v154)
                                                {
                                                  goto LABEL_112;
                                                }

                                                goto LABEL_107;
                                              }

LABEL_153:

                                              goto LABEL_154;
                                            }
                                          }

                                          else
                                          {
                                            v77 = v162;
                                            v81 = v162;
                                            v82 = 0;
                                          }

LABEL_158:

                                          v19 = v180;
                                          v11 = v161;
                                          goto LABEL_159;
                                        }

                                        goto LABEL_80;
                                      }
                                    }

                                    else
                                    {
                                      v77 = v76;
                                      v19 = v180;
                                    }

LABEL_160:

                                    v20 = v177;
                                    goto LABEL_161;
                                  }

                                  goto LABEL_73;
                                }
                              }

                              else
                              {
                                v71 = v70;
                                v164 = 0;
                                v20 = v177;
                                v19 = v180;
                                v51 = v169;
                              }

LABEL_162:

                              goto LABEL_163;
                            }

                            goto LABEL_66;
                          }
                        }

                        else
                        {
                          v64 = v63;
                          v65 = 0;
                          v20 = v177;
                          v19 = v180;
                          v51 = v169;
                        }

LABEL_164:
                        v137 = v65;

                        v57 = v167;
                        goto LABEL_165;
                      }

                      goto LABEL_59;
                    }
                  }

                  else
                  {
                    v56 = v55;
                    v57 = 0;
                    v20 = v177;
                    v19 = v180;
                  }

LABEL_166:
                  v138 = v57;

                  goto LABEL_167;
                }

                v169 = v51;
                goto LABEL_52;
              }
            }

            else
            {
              v50 = v49;
              v51 = 0;
              v20 = v177;
              v19 = v180;
            }

LABEL_168:

            goto LABEL_169;
          }

          goto LABEL_46;
        }
      }

      else
      {
        v19 = v180;
      }

LABEL_170:
      v176 = v9;
      v139 = v31;
      v140 = v11;
      v141 = v13;
      v142 = v33;

      v13 = v141;
      v11 = v140;
      v9 = v176;
      v26 = v139;
      goto LABEL_171;
    }

    v178 = v30;

    v179 = v27;
    goto LABEL_30;
  }

  LOBYTE(parameters3) = 1;
LABEL_177:

  return parameters3;
}

- (unint64_t)hash
{
  identifier = [(LNActionMetadata *)self identifier];
  v3 = [identifier hash];
  parameters = [(LNActionMetadata *)self parameters];
  v4 = [parameters hash] ^ v3;
  title = [(LNActionMetadata *)self title];
  v5 = [title hash];
  descriptionMetadata = [(LNActionMetadata *)self descriptionMetadata];
  v6 = v4 ^ v5 ^ [descriptionMetadata hash];
  deprecationMetadata = [(LNActionMetadata *)self deprecationMetadata];
  v7 = [deprecationMetadata hash];
  v8 = v6 ^ v7 ^ [(LNActionMetadata *)self openAppWhenRun];
  visibilityMetadata = [(LNActionMetadata *)self visibilityMetadata];
  v9 = [visibilityMetadata hash];
  explicitAuthenticationPolicy = [(LNActionMetadata *)self explicitAuthenticationPolicy];
  v10 = v9 ^ [explicitAuthenticationPolicy integerValue];
  outputType = [(LNActionMetadata *)self outputType];
  v11 = v10 ^ [outputType hash];
  systemProtocolMetadata = [(LNActionMetadata *)self systemProtocolMetadata];
  v12 = v8 ^ v11 ^ [systemProtocolMetadata hash];
  actionConfiguration = [(LNActionMetadata *)self actionConfiguration];
  v13 = [actionConfiguration hash];
  typeSpecificMetadata = [(LNActionMetadata *)self typeSpecificMetadata];
  v14 = v13 ^ [typeSpecificMetadata hash];
  customIntentClassName = [(LNActionMetadata *)self customIntentClassName];
  v15 = v14 ^ [customIntentClassName hash];
  availabilityAnnotations = [(LNActionMetadata *)self availabilityAnnotations];
  v17 = v15 ^ [availabilityAnnotations hash];
  v18 = v12 ^ v17 ^ [(LNActionMetadata *)self bundleMetadataVersion];
  shortcutsMetadata = [(LNActionMetadata *)self shortcutsMetadata];
  v20 = [shortcutsMetadata hash];
  requiredCapabilities = [(LNActionMetadata *)self requiredCapabilities];
  v22 = v20 ^ [requiredCapabilities hash];
  attributionBundleIdentifier = [(LNActionMetadata *)self attributionBundleIdentifier];
  v24 = v22 ^ [attributionBundleIdentifier hash];
  sideEffect = [(LNActionMetadata *)self sideEffect];
  v26 = v24 ^ [sideEffect hash];
  assistantDefinedSchemas = [(LNActionMetadata *)self assistantDefinedSchemas];
  v28 = v26 ^ [assistantDefinedSchemas hash];
  assistantDefinedSchemaTraits = [(LNActionMetadata *)self assistantDefinedSchemaTraits];
  v35 = v18 ^ v28 ^ [assistantDefinedSchemaTraits hash];
  fullyQualifiedTypeName = [(LNActionMetadata *)self fullyQualifiedTypeName];
  v31 = [fullyQualifiedTypeName hash];
  allowedTargets = [(LNActionMetadata *)self allowedTargets];
  v33 = v31 ^ [allowedTargets hash];

  return v35 ^ v33;
}

- (NSString)description
{
  v22 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v46 = NSStringFromClass(v3);
  identifier = [(LNActionMetadata *)self identifier];
  effectiveBundleIdentifiers = [(LNActionMetadata *)self effectiveBundleIdentifiers];
  array = [effectiveBundleIdentifiers array];
  v26 = [array valueForKeyPath:@"description"];
  v44 = [v26 componentsJoinedByString:{@", "}];
  allowedTargets = [(LNActionMetadata *)self allowedTargets];
  v24 = [allowedTargets valueForKeyPath:@"description"];
  v43 = [v24 componentsJoinedByString:{@", "}];
  bundleMetadataVersion = [(LNActionMetadata *)self bundleMetadataVersion];
  v5 = @"1.0";
  if (!bundleMetadataVersion)
  {
    v5 = @"0.0";
  }

  v42 = v5;
  title = [(LNActionMetadata *)self title];
  descriptionMetadata = [(LNActionMetadata *)self descriptionMetadata];
  deprecationMetadata = [(LNActionMetadata *)self deprecationMetadata];
  parameters = [(LNActionMetadata *)self parameters];
  v21 = [parameters valueForKeyPath:@"description"];
  v38 = [v21 componentsJoinedByString:{@", "}];
  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[LNActionMetadata openAppWhenRun](self, "openAppWhenRun")}];
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[LNActionMetadata supportedModes](self, "supportedModes")}];
  visibilityMetadata = [(LNActionMetadata *)self visibilityMetadata];
  explicitAuthenticationPolicy = [(LNActionMetadata *)self explicitAuthenticationPolicy];
  outputType = [(LNActionMetadata *)self outputType];
  systemProtocolMetadata = [(LNActionMetadata *)self systemProtocolMetadata];
  v19 = [systemProtocolMetadata valueForKeyPath:@"description"];
  v32 = [v19 componentsJoinedByString:{@", "}];
  actionConfiguration = [(LNActionMetadata *)self actionConfiguration];
  typeSpecificMetadata = [(LNActionMetadata *)self typeSpecificMetadata];
  v17 = [typeSpecificMetadata count];
  if (v17)
  {
    typeSpecificMetadata2 = [(LNActionMetadata *)self typeSpecificMetadata];
  }

  else
  {
    typeSpecificMetadata2 = @"{}";
  }

  customIntentClassName = [(LNActionMetadata *)self customIntentClassName];
  mangledTypeNameByBundleIdentifier = [(LNActionMetadata *)self mangledTypeNameByBundleIdentifier];
  availabilityAnnotations = [(LNActionMetadata *)self availabilityAnnotations];
  shortcutsMetadata = [(LNActionMetadata *)self shortcutsMetadata];
  requiredCapabilities = [(LNActionMetadata *)self requiredCapabilities];
  attributionBundleIdentifier = [(LNActionMetadata *)self attributionBundleIdentifier];
  sideEffect = [(LNActionMetadata *)self sideEffect];
  assistantDefinedSchemas = [(LNActionMetadata *)self assistantDefinedSchemas];
  assistantDefinedSchemaTraits = [(LNActionMetadata *)self assistantDefinedSchemaTraits];
  fullyQualifiedTypeName = [(LNActionMetadata *)self fullyQualifiedTypeName];
  v15 = [v22 stringWithFormat:@"<%@: %p, identifier: %@, effectiveBundleIdentifiers: [%@], allowedTargets: [%@], bundleMetadataVersion: %@, title: %@, description: %@, deprecation: %@, parameters: [%@], openAppWhenRun: %@, supportedModes: %@, visibility: %@, explicitAuthenticationPolicy: %@, outputType: %@, systemProtocolMetadata: [%@], actionConfiguration: %@, typeSpecificMetadata: %@, customIntentClassName: %@, mangledTypeNameByBundleIdentifier: %@, availabilityAnnotations: %@, shortcutsMetadata: %@, requiredCapabilities: %@, attributionBundleIdentifier: %@, sideEffect: %@, assistantDefinedSchemas: %@, assistantDefinedSchemaTraits: %@, fullyQualifiedTypeName: %@>", v46, self, identifier, v44, v43, v42, title, descriptionMetadata, deprecationMetadata, v38, v37, v36, visibilityMetadata, explicitAuthenticationPolicy, outputType, v32, actionConfiguration, typeSpecificMetadata2, customIntentClassName, mangledTypeNameByBundleIdentifier, availabilityAnnotations, shortcutsMetadata, requiredCapabilities, attributionBundleIdentifier, sideEffect, assistantDefinedSchemas, assistantDefinedSchemaTraits, fullyQualifiedTypeName];

  if (v17)
  {
  }

  return v15;
}

- (LNActionMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v107 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v103 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mangledTypeName"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v102 = [coderCopy decodeObjectOfClasses:v6 forKey:@"effectiveBundleIdentifiers"];

  v101 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v100 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptionMetadata"];
  v99 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deprecationMetadata"];
  v98 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outputType"];
  v92 = [coderCopy decodeIntegerForKey:@"outputFlags"];
  v91 = [coderCopy decodeIntegerForKey:@"supportedModes"];
  v89 = [coderCopy decodeIntegerForKey:@"openAppWhenRun"];
  v97 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"explicitAuthenticationPolicy"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v106 = [coderCopy decodeObjectOfClasses:v9 forKey:@"parameters"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v96 = [coderCopy decodeObjectOfClasses:v12 forKey:@"constraints"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v74 = objc_opt_class();
  v20 = [v13 setWithObjects:{v14, v15, v16, v17, v18, v19, v74, objc_opt_class(), 0}];
  v104 = [coderCopy decodeObjectOfClasses:v20 forKey:@"systemProtocolMetadata"];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v105 = [coderCopy decodeObjectOfClasses:v23 forKey:@"mangledTypeNameByBundleIdentifier"];

  v24 = 0;
  if (!v107)
  {
    selfCopy6 = self;
    v30 = v102;
    v25 = v103;
    v27 = v100;
    v26 = v101;
    v29 = v98;
    v28 = v99;
    goto LABEL_15;
  }

  v25 = v103;
  v27 = v100;
  v26 = v101;
  v29 = v98;
  v28 = v99;
  if (!v103)
  {
    selfCopy6 = self;
    v30 = v102;
    goto LABEL_15;
  }

  v30 = v102;
  if (!v106)
  {
    selfCopy6 = self;
LABEL_15:
    v31 = v104;
    goto LABEL_16;
  }

  v31 = v104;
  if (!v104 || !v102)
  {
    selfCopy6 = self;
LABEL_16:
    v32 = v105;
    goto LABEL_17;
  }

  v32 = v105;
  if (v105)
  {
    v88 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customIntentClassName"];
    v87 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionConfiguration"];
    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = [v33 setWithObjects:{v34, v35, v36, v37, v38, objc_opt_class(), 0}];
    v86 = [coderCopy decodeObjectOfClasses:v39 forKey:@"typeSpecificMetadata"];

    v80 = [coderCopy decodeIntegerForKey:@"bundleMetadataVersion"];
    v40 = MEMORY[0x1E695DFD8];
    v41 = objc_opt_class();
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = [v40 setWithObjects:{v41, v42, v43, v44, v45, v46, objc_opt_class(), 0}];
    v82 = [coderCopy decodeObjectOfClasses:v47 forKey:@"shortcutsMetadata"];

    v48 = MEMORY[0x1E695DFD8];
    v49 = objc_opt_class();
    v50 = objc_opt_class();
    v51 = [v48 setWithObjects:{v49, v50, objc_opt_class(), 0}];
    v85 = [coderCopy decodeObjectOfClasses:v51 forKey:@"availabilityAnnotations"];

    v52 = MEMORY[0x1E695DFD8];
    v53 = objc_opt_class();
    v54 = [v52 setWithObjects:{v53, objc_opt_class(), 0}];
    v84 = [coderCopy decodeObjectOfClasses:v54 forKey:@"requiredCapabilities"];

    v83 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributionBundleIdentifier"];
    v81 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sideEffect"];
    v55 = MEMORY[0x1E695DFD8];
    v56 = objc_opt_class();
    v57 = [v55 setWithObjects:{v56, objc_opt_class(), 0}];
    v58 = [coderCopy decodeObjectOfClasses:v57 forKey:@"assistantDefinedSchemas"];

    v59 = MEMORY[0x1E695DFD8];
    v60 = objc_opt_class();
    v61 = [v59 setWithObjects:{v60, objc_opt_class(), 0}];
    v62 = [coderCopy decodeObjectOfClasses:v61 forKey:@"assistantDefinedSchemaTraits"];

    v63 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visibilityMetadata"];
    if (!v63)
    {
      v63 = -[LNVisibilityMetadata initWithIsDiscoverable:assistantOnly:]([LNVisibilityMetadata alloc], "initWithIsDiscoverable:assistantOnly:", [coderCopy decodeBoolForKey:@"isDiscoverable"], 0);
    }

    v64 = v89 != 0;
    v65 = v63;
    v79 = v63;
    v90 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullyQualifiedTypeName"];
    v66 = MEMORY[0x1E695DFD8];
    v67 = objc_opt_class();
    v68 = [v66 setWithObjects:{v67, objc_opt_class(), 0}];
    v69 = [coderCopy decodeObjectOfClasses:v68 forKey:@"allowedTargets"];

    v77 = v62;
    v78 = v65;
    v76 = v58;
    v31 = v104;
    v75 = v92;
    v29 = v98;
    LOBYTE(v73) = v64;
    v28 = v99;
    v93 = v62;
    v27 = v100;
    selfCopy5 = self;
    v30 = v102;
    v25 = v103;
    v95 = v58;
    v26 = v101;
    v24 = [(LNActionMetadata *)selfCopy5 initWithIdentifier:v107 mangledTypeName:v103 mangledTypeNameByBundleIdentifier:v105 effectiveBundleIdentifiers:v102 bundleMetadataVersion:v80 title:v101 descriptionMetadata:v100 deprecationMetadata:v99 openAppWhenRun:v73 supportedModes:v91 explicitAuthenticationPolicy:v97 outputType:v98 outputFlags:v75 parameters:v106 systemProtocolMetadata:v104 actionConfiguration:v87 typeSpecificMetadata:v86 customIntentClassName:v88 availabilityAnnotations:v85 shortcutsMetadata:v82 requiredCapabilities:v84 attributionBundleIdentifier:v83 sideEffect:v81 assistantDefinedSchemas:v76 assistantDefinedSchemaTraits:v77 visibilityMetadata:v78 fullyQualifiedTypeName:v90 constraints:v96 allowedTargets:v69];

    selfCopy6 = v24;
    goto LABEL_16;
  }

  selfCopy6 = self;
  v31 = v104;
LABEL_17:

  return v24;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNActionMetadata *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  mangledTypeName = [(LNActionMetadata *)self mangledTypeName];
  [coderCopy encodeObject:mangledTypeName forKey:@"mangledTypeName"];

  effectiveBundleIdentifiers = [(LNActionMetadata *)self effectiveBundleIdentifiers];
  [coderCopy encodeObject:effectiveBundleIdentifiers forKey:@"effectiveBundleIdentifiers"];

  title = [(LNActionMetadata *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  descriptionMetadata = [(LNActionMetadata *)self descriptionMetadata];
  [coderCopy encodeObject:descriptionMetadata forKey:@"descriptionMetadata"];

  deprecationMetadata = [(LNActionMetadata *)self deprecationMetadata];
  [coderCopy encodeObject:deprecationMetadata forKey:@"deprecationMetadata"];

  parameters = [(LNActionMetadata *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"parameters"];

  outputType = [(LNActionMetadata *)self outputType];
  [coderCopy encodeObject:outputType forKey:@"outputType"];

  [coderCopy encodeInteger:-[LNActionMetadata outputFlags](self forKey:{"outputFlags"), @"outputFlags"}];
  [coderCopy encodeInteger:-[LNActionMetadata openAppWhenRun](self forKey:{"openAppWhenRun"), @"openAppWhenRun"}];
  [coderCopy encodeInteger:-[LNActionMetadata supportedModes](self forKey:{"supportedModes"), @"supportedModes"}];
  explicitAuthenticationPolicy = [(LNActionMetadata *)self explicitAuthenticationPolicy];
  [coderCopy encodeObject:explicitAuthenticationPolicy forKey:@"explicitAuthenticationPolicy"];

  constraints = [(LNActionMetadata *)self constraints];
  [coderCopy encodeObject:constraints forKey:@"constraints"];

  systemProtocolMetadata = [(LNActionMetadata *)self systemProtocolMetadata];
  [coderCopy encodeObject:systemProtocolMetadata forKey:@"systemProtocolMetadata"];

  actionConfiguration = [(LNActionMetadata *)self actionConfiguration];
  [coderCopy encodeObject:actionConfiguration forKey:@"actionConfiguration"];

  typeSpecificMetadata = [(LNActionMetadata *)self typeSpecificMetadata];
  [coderCopy encodeObject:typeSpecificMetadata forKey:@"typeSpecificMetadata"];

  customIntentClassName = [(LNActionMetadata *)self customIntentClassName];
  [coderCopy encodeObject:customIntentClassName forKey:@"customIntentClassName"];

  [coderCopy encodeInteger:-[LNActionMetadata bundleMetadataVersion](self forKey:{"bundleMetadataVersion"), @"bundleMetadataVersion"}];
  mangledTypeNameByBundleIdentifier = [(LNActionMetadata *)self mangledTypeNameByBundleIdentifier];
  [coderCopy encodeObject:mangledTypeNameByBundleIdentifier forKey:@"mangledTypeNameByBundleIdentifier"];

  availabilityAnnotations = [(LNActionMetadata *)self availabilityAnnotations];
  [coderCopy encodeObject:availabilityAnnotations forKey:@"availabilityAnnotations"];

  shortcutsMetadata = [(LNActionMetadata *)self shortcutsMetadata];
  [coderCopy encodeObject:shortcutsMetadata forKey:@"shortcutsMetadata"];

  requiredCapabilities = [(LNActionMetadata *)self requiredCapabilities];
  [coderCopy encodeObject:requiredCapabilities forKey:@"requiredCapabilities"];

  attributionBundleIdentifier = [(LNActionMetadata *)self attributionBundleIdentifier];
  [coderCopy encodeObject:attributionBundleIdentifier forKey:@"attributionBundleIdentifier"];

  sideEffect = [(LNActionMetadata *)self sideEffect];
  [coderCopy encodeObject:sideEffect forKey:@"sideEffect"];

  assistantDefinedSchemas = [(LNActionMetadata *)self assistantDefinedSchemas];
  [coderCopy encodeObject:assistantDefinedSchemas forKey:@"assistantDefinedSchemas"];

  assistantDefinedSchemaTraits = [(LNActionMetadata *)self assistantDefinedSchemaTraits];
  [coderCopy encodeObject:assistantDefinedSchemaTraits forKey:@"assistantDefinedSchemaTraits"];

  visibilityMetadata = [(LNActionMetadata *)self visibilityMetadata];
  [coderCopy encodeObject:visibilityMetadata forKey:@"visibilityMetadata"];

  fullyQualifiedTypeName = [(LNActionMetadata *)self fullyQualifiedTypeName];
  [coderCopy encodeObject:fullyQualifiedTypeName forKey:@"fullyQualifiedTypeName"];

  allowedTargets = [(LNActionMetadata *)self allowedTargets];
  [coderCopy encodeObject:allowedTargets forKey:@"allowedTargets"];

  systemProtocols = [(LNActionMetadata *)self systemProtocols];
  [coderCopy encodeObject:systemProtocols forKey:@"systemProtocols"];

  [coderCopy encodeInteger:-[LNActionMetadata authenticationPolicy](self forKey:{"authenticationPolicy"), @"authenticationPolicy"}];
}

- (id)copyWithoutMangledTypeNameWithAvailability:(id)availability
{
  availabilityCopy = availability;
  v6 = [(LNActionMetadata *)self copy];
  v7 = *(v6 + 16);
  *(v6 + 16) = &stru_1F02ED148;

  if (availabilityCopy)
  {
    objc_storeStrong((v6 + 136), availability);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = [LNActionMetadata alloc];
  identifier = [(LNActionMetadata *)self identifier];
  mangledTypeName = [(LNActionMetadata *)self mangledTypeName];
  mangledTypeNameByBundleIdentifier = [(LNActionMetadata *)self mangledTypeNameByBundleIdentifier];
  effectiveBundleIdentifiers = [(LNActionMetadata *)self effectiveBundleIdentifiers];
  bundleMetadataVersion = [(LNActionMetadata *)self bundleMetadataVersion];
  title = [(LNActionMetadata *)self title];
  descriptionMetadata = [(LNActionMetadata *)self descriptionMetadata];
  deprecationMetadata = [(LNActionMetadata *)self deprecationMetadata];
  openAppWhenRun = [(LNActionMetadata *)self openAppWhenRun];
  supportedModes = [(LNActionMetadata *)self supportedModes];
  explicitAuthenticationPolicy = [(LNActionMetadata *)self explicitAuthenticationPolicy];
  outputType = [(LNActionMetadata *)self outputType];
  outputFlags = [(LNActionMetadata *)self outputFlags];
  parameters = [(LNActionMetadata *)self parameters];
  systemProtocolMetadata = [(LNActionMetadata *)self systemProtocolMetadata];
  actionConfiguration = [(LNActionMetadata *)self actionConfiguration];
  typeSpecificMetadata = [(LNActionMetadata *)self typeSpecificMetadata];
  customIntentClassName = [(LNActionMetadata *)self customIntentClassName];
  availabilityAnnotations = [(LNActionMetadata *)self availabilityAnnotations];
  shortcutsMetadata = [(LNActionMetadata *)self shortcutsMetadata];
  requiredCapabilities = [(LNActionMetadata *)self requiredCapabilities];
  attributionBundleIdentifier = [(LNActionMetadata *)self attributionBundleIdentifier];
  sideEffect = [(LNActionMetadata *)self sideEffect];
  assistantDefinedSchemas = [(LNActionMetadata *)self assistantDefinedSchemas];
  assistantDefinedSchemaTraits = [(LNActionMetadata *)self assistantDefinedSchemaTraits];
  visibilityMetadata = [(LNActionMetadata *)self visibilityMetadata];
  fullyQualifiedTypeName = [(LNActionMetadata *)self fullyQualifiedTypeName];
  constraints = [(LNActionMetadata *)self constraints];
  allowedTargets = [(LNActionMetadata *)self allowedTargets];
  LOBYTE(v12) = openAppWhenRun;
  v24 = [(LNActionMetadata *)v23 initWithIdentifier:identifier mangledTypeName:mangledTypeName mangledTypeNameByBundleIdentifier:mangledTypeNameByBundleIdentifier effectiveBundleIdentifiers:effectiveBundleIdentifiers bundleMetadataVersion:bundleMetadataVersion title:title descriptionMetadata:descriptionMetadata deprecationMetadata:deprecationMetadata openAppWhenRun:v12 supportedModes:supportedModes explicitAuthenticationPolicy:explicitAuthenticationPolicy outputType:outputType outputFlags:outputFlags parameters:parameters systemProtocolMetadata:systemProtocolMetadata actionConfiguration:actionConfiguration typeSpecificMetadata:typeSpecificMetadata customIntentClassName:customIntentClassName availabilityAnnotations:availabilityAnnotations shortcutsMetadata:shortcutsMetadata requiredCapabilities:requiredCapabilities attributionBundleIdentifier:attributionBundleIdentifier sideEffect:sideEffect assistantDefinedSchemas:assistantDefinedSchemas assistantDefinedSchemaTraits:assistantDefinedSchemaTraits visibilityMetadata:visibilityMetadata fullyQualifiedTypeName:fullyQualifiedTypeName constraints:constraints allowedTargets:allowedTargets];

  return v24;
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

- (BOOL)visibleForUse:(int64_t)use
{
  if (([(LNActionMetadata *)self outputFlags]& 8) != 0)
  {
    systemProtocols = [(LNActionMetadata *)self systemProtocols];
    v7 = +[LNSystemProtocol urlRepresentableProtocol];
    v5 = [systemProtocols containsObject:v7];
  }

  else
  {
    v5 = 1;
  }

  visibilityMetadata = [(LNActionMetadata *)self visibilityMetadata];
  v9 = [visibilityMetadata visibleForUse:use];

  return v9 & v5;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers bundleMetadataVersion:(int64_t)version title:(id)title descriptionMetadata:(id)metadata deprecationMetadata:(id)self0 openAppWhenRun:(BOOL)self1 supportedModes:(unint64_t)self2 explicitAuthenticationPolicy:(id)self3 outputType:(id)self4 outputFlags:(unint64_t)self5 parameters:(id)self6 systemProtocolMetadata:(id)self7 actionConfiguration:(id)self8 typeSpecificMetadata:(id)self9 customIntentClassName:(id)className availabilityAnnotations:(id)annotations shortcutsMetadata:(id)shortcutsMetadata requiredCapabilities:(id)capabilities attributionBundleIdentifier:(id)attributionBundleIdentifier sideEffect:(id)effect assistantDefinedSchemas:(id)schemas assistantDefinedSchemaTraits:(id)traits visibilityMetadata:(id)visibilityMetadata fullyQualifiedTypeName:(id)typeName constraints:(id)identifier0 allowedTargets:(id)identifier1
{
  v131[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  bundleIdentifierCopy = bundleIdentifier;
  identifiersCopy = identifiers;
  titleCopy = title;
  metadataCopy = metadata;
  deprecationMetadataCopy = deprecationMetadata;
  policyCopy = policy;
  typeCopy = type;
  parametersCopy = parameters;
  protocolMetadataCopy = protocolMetadata;
  configurationCopy = configuration;
  specificMetadataCopy = specificMetadata;
  classNameCopy = className;
  annotationsCopy = annotations;
  shortcutsMetadataCopy = shortcutsMetadata;
  capabilitiesCopy = capabilities;
  attributionBundleIdentifierCopy = attributionBundleIdentifier;
  effectCopy = effect;
  schemasCopy = schemas;
  traitsCopy = traits;
  visibilityMetadataCopy = visibilityMetadata;
  typeNameCopy = typeName;
  constraintsCopy = constraints;
  targetsCopy = targets;
  if (!identifierCopy)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v102 = v101 = specificMetadataCopy;
    [v102 handleFailureInMethod:a2 object:self file:@"LNActionMetadata.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    specificMetadataCopy = v101;
  }

  v41 = nameCopy;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionMetadata.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"mangledTypeName"}];
  }

  v42 = parametersCopy;
  if (parametersCopy)
  {
    if (visibilityMetadataCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNActionMetadata.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"parameters"}];

    if (visibilityMetadataCopy)
    {
      goto LABEL_7;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNActionMetadata.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"visibilityMetadata"}];

LABEL_7:
  v129.receiver = self;
  v129.super_class = LNActionMetadata;
  v43 = [(LNActionMetadata *)&v129 init];
  if (!v43)
  {
    v82 = titleCopy;
    goto LABEL_32;
  }

  v110 = specificMetadataCopy;
  v44 = [identifierCopy copy];
  identifier = v43->_identifier;
  v43->_identifier = v44;

  v46 = [v41 copy];
  mangledTypeName = v43->_mangledTypeName;
  v43->_mangledTypeName = v46;

  v48 = [identifiersCopy copy];
  effectiveBundleIdentifiers = v43->_effectiveBundleIdentifiers;
  v43->_effectiveBundleIdentifiers = v48;

  objc_storeStrong(&v43->_title, title);
  objc_storeStrong(&v43->_descriptionMetadata, metadata);
  objc_storeStrong(&v43->_deprecationMetadata, deprecationMetadata);
  v50 = [parametersCopy copy];
  parameters = v43->_parameters;
  v43->_parameters = v50;

  v43->_discoverable = [visibilityMetadataCopy isDiscoverable];
  objc_storeStrong(&v43->_explicitAuthenticationPolicy, policy);
  objc_storeStrong(&v43->_outputType, type);
  v43->_outputFlags = flags;
  objc_storeStrong(&v43->_actionConfiguration, configuration);
  v52 = [specificMetadataCopy copy];
  typeSpecificMetadata = v43->_typeSpecificMetadata;
  v43->_typeSpecificMetadata = v52;

  v54 = [classNameCopy copy];
  customIntentClassName = v43->_customIntentClassName;
  v43->_customIntentClassName = v54;

  v43->_bundleMetadataVersion = version;
  v56 = [bundleIdentifierCopy copy];
  mangledTypeNameByBundleIdentifier = v43->_mangledTypeNameByBundleIdentifier;
  v43->_mangledTypeNameByBundleIdentifier = v56;

  v58 = [annotationsCopy copy];
  availabilityAnnotations = v43->_availabilityAnnotations;
  v43->_availabilityAnnotations = v58;

  v60 = [shortcutsMetadataCopy copy];
  shortcutsMetadata = v43->_shortcutsMetadata;
  v43->_shortcutsMetadata = v60;

  v62 = [capabilitiesCopy copy];
  requiredCapabilities = v43->_requiredCapabilities;
  v43->_requiredCapabilities = v62;

  v64 = [attributionBundleIdentifierCopy copy];
  attributionBundleIdentifier = v43->_attributionBundleIdentifier;
  v43->_attributionBundleIdentifier = v64;

  objc_storeStrong(&v43->_sideEffect, effect);
  v66 = [schemasCopy copy];
  assistantDefinedSchemas = v43->_assistantDefinedSchemas;
  v43->_assistantDefinedSchemas = v66;

  v68 = [traitsCopy copy];
  assistantDefinedSchemaTraits = v43->_assistantDefinedSchemaTraits;
  v43->_assistantDefinedSchemaTraits = v68;

  v70 = [visibilityMetadataCopy copy];
  visibilityMetadata = v43->_visibilityMetadata;
  v43->_visibilityMetadata = v70;

  v72 = [typeNameCopy copy];
  fullyQualifiedTypeName = v43->_fullyQualifiedTypeName;
  v43->_fullyQualifiedTypeName = v72;

  v74 = [constraintsCopy copy];
  constraints = v43->_constraints;
  v43->_constraints = v74;

  v76 = [targetsCopy copy];
  allowedTargets = v43->_allowedTargets;
  v43->_allowedTargets = v76;

  v43->_openAppWhenRun = run;
  v43->_supportedModes = modes;
  if (modes == 1)
  {
    goto LABEL_17;
  }

  if (modes)
  {
    if ((modes & 8) == 0)
    {
      if ((modes & 6) == 0)
      {
        goto LABEL_19;
      }

      v84 = 1;
LABEL_18:
      v43->_openAppWhenRun = v84;
LABEL_19:
      v78 = bundleIdentifierCopy;
      v79 = configurationCopy;
      if ((modes & 0xC) != 0)
      {
        v85 = [protocolMetadataCopy objectForKeyedSubscript:@"com.apple.link.systemProtocol.ForegroundContinuable"];

        v82 = titleCopy;
        if (!v85)
        {
          v130 = @"com.apple.link.systemProtocol.ForegroundContinuable";
          v86 = objc_opt_new();
          v131[0] = v86;
          v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:&v130 count:1];
          v88 = [protocolMetadataCopy if_dictionaryByAddingEntriesFromDictionary:v87];

          protocolMetadataCopy = v88;
        }
      }

      else
      {
        v82 = titleCopy;
      }

      goto LABEL_27;
    }

LABEL_17:
    v84 = 0;
    goto LABEL_18;
  }

  v78 = bundleIdentifierCopy;
  v79 = configurationCopy;
  v43->_supportedModes = 1;
  allKeys = [protocolMetadataCopy allKeys];
  v81 = [allKeys containsObject:@"com.apple.link.systemProtocol.ForegroundContinuable"];

  if (v81)
  {
    v82 = titleCopy;
    if (run)
    {
      v83 = 4;
    }

    else
    {
      v83 = 8;
    }

    goto LABEL_26;
  }

  v82 = titleCopy;
  if (run)
  {
    v83 = 2;
LABEL_26:
    v43->_supportedModes = v83;
  }

LABEL_27:
  v89 = [protocolMetadataCopy copy];
  systemProtocolMetadata = v43->_systemProtocolMetadata;
  v43->_systemProtocolMetadata = v89;

  allKeys2 = [protocolMetadataCopy allKeys];
  v92 = [allKeys2 if_compactMap:&__block_literal_global_8061];
  systemProtocols = v43->_systemProtocols;
  v43->_systemProtocols = v92;

  v94 = v43->_systemProtocols;
  v95 = +[LNSystemProtocol openEntitySystemProtocol];
  if ([(NSArray *)v94 containsObject:v95])
  {
    v96 = v43->_systemProtocols;
    v97 = +[LNSystemProtocol urlRepresentableProtocol];
    LODWORD(v96) = [(NSArray *)v96 containsObject:v97];

    v42 = parametersCopy;
    if (v96)
    {
      v43->_supportedModes = 2;
      v43->_openAppWhenRun = 1;
    }
  }

  else
  {

    v42 = parametersCopy;
  }

  v98 = v43;
  configurationCopy = v79;
  specificMetadataCopy = v110;
  bundleIdentifierCopy = v78;
LABEL_32:

  v99 = *MEMORY[0x1E69E9840];
  return v43;
}

- (LNActionMetadata)actionMetadataWithAttributionBundleIdentifier:(id)identifier icon:(id)icon
{
  iconCopy = icon;
  identifierCopy = identifier;
  descriptionMetadata = [(LNActionMetadata *)self descriptionMetadata];
  v9 = [descriptionMetadata actionDescriptionMetadataWithIcon:iconCopy];

  v10 = [(LNActionMetadata *)self actionMetadataDescriptionMetadata:v9];
  v11 = [identifierCopy copy];

  v12 = v10[23];
  v10[23] = v11;

  return v10;
}

- (id)actionMetadataDescriptionMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [(LNActionMetadata *)self copy];
  v6 = [metadataCopy copy];

  v7 = v5[6];
  v5[6] = v6;

  return v5;
}

- (LNActionMetadata)actionMetadataWithParameters:(id)parameters
{
  parametersCopy = parameters;
  if (!parametersCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionMetadata.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"parameters"}];
  }

  v6 = [(LNActionMetadata *)self copy];
  v7 = [parametersCopy copy];
  v8 = v6[19];
  v6[19] = v7;

  return v6;
}

- (id)mangledTypeNameForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNActionMetadata.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  mangledTypeNameByBundleIdentifier = [(LNActionMetadata *)self mangledTypeNameByBundleIdentifier];
  v7 = [mangledTypeNameByBundleIdentifier objectForKeyedSubscript:identifierCopy];
  v8 = v7;
  if (v7)
  {
    mangledTypeName = v7;
  }

  else
  {
    mangledTypeName = [(LNActionMetadata *)self mangledTypeName];
  }

  v10 = mangledTypeName;

  return v10;
}

- (LNActionMetadata)initWithCoder_Sydro:(id)sydro
{
  sydroCopy = sydro;
  v4 = [sydroCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v63 = [sydroCopy decodeObjectOfClass:objc_opt_class() forKey:@"mangledTypeName"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v62 = [sydroCopy decodeObjectOfClasses:v7 forKey:@"effectiveBundleIdentifiers"];

  v56 = [sydroCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v55 = [sydroCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptionMetadata"];
  v57 = [sydroCopy decodeObjectOfClass:objc_opt_class() forKey:@"outputType"];
  v8 = [sydroCopy decodeIntegerForKey:@"outputFlags"];
  v9 = [sydroCopy decodeIntegerForKey:@"openAppWhenRun"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v60 = [sydroCopy decodeObjectOfClasses:v12 forKey:@"parameters"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v59 = [sydroCopy decodeObjectOfClasses:v15 forKey:@"systemProtocols"];

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v19 = [sydroCopy decodeObjectOfClasses:v18 forKey:@"mangledTypeNameByBundleIdentifier"];

  v20 = 0;
  v58 = v4;
  if (!v4)
  {
    v43 = v55;
    v21 = v57;
LABEL_13:
    v23 = v59;
    v22 = v60;
    goto LABEL_10;
  }

  v21 = v57;
  if (!v63)
  {
    v43 = v55;
    goto LABEL_13;
  }

  v22 = v60;
  if (!v60)
  {
    goto LABEL_8;
  }

  v54 = v8;
  v23 = v59;
  if (!v59 || !v62)
  {
    v43 = v55;
    goto LABEL_10;
  }

  if (v19)
  {
    v52 = v9 != 0;
    v53 = v19;
    v51 = [sydroCopy decodeObjectOfClass:objc_opt_class() forKey:@"customIntentClassName"];
    v50 = [sydroCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionConfiguration"];
    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = [v24 setWithObjects:{v25, v26, v27, objc_opt_class(), 0}];
    v47 = [sydroCopy decodeObjectOfClasses:v28 forKey:@"typeSpecificMetadata"];

    v29 = [sydroCopy decodeIntegerForKey:@"bundleMetadataVersion"];
    v48 = MEMORY[0x1E695DFD8];
    v49 = v29;
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v21 = v57;
    v36 = [v48 setWithObjects:{v30, v31, v32, v33, v34, v35, objc_opt_class(), 0}];
    v37 = [sydroCopy decodeObjectOfClasses:v36 forKey:@"shortcutsMetadata"];

    v38 = MEMORY[0x1E695DFD8];
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v41 = [v38 setWithObjects:{v39, v40, objc_opt_class(), 0}];
    v42 = [sydroCopy decodeObjectOfClasses:v41 forKey:@"availabilityAnnotations"];

    v23 = v59;
    v43 = v55;
    LOBYTE(v46) = v52;
    v44 = -[LNActionMetadata initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:descriptionMetadata:openAppWhenRun:authenticationPolicy:outputType:outputFlags:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:customIntentClassName:availabilityAnnotations:shortcutsMetadata:](self, "initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:descriptionMetadata:openAppWhenRun:authenticationPolicy:outputType:outputFlags:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:customIntentClassName:availabilityAnnotations:shortcutsMetadata:", v58, v63, v53, v62, v49, v56, v55, v46, [sydroCopy decodeIntegerForKey:@"authenticationPolicy"], v57, v54, v60, v59, v50, v47, v51, v42, v37);

    self = v44;
    v20 = v44;
    v22 = v60;
    v19 = v53;
  }

  else
  {
LABEL_8:
    v43 = v55;
    v23 = v59;
  }

LABEL_10:

  return v20;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier effectiveBundleIdentifier:(id)bundleIdentifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)parameters systemProtocols:(id)self0 actionConfiguration:(id)self1 typeSpecificMetadata:(id)self2 shortcutsMetadata:(id)self3
{
  bundleIdentifierCopy = bundleIdentifier;
  v41 = MEMORY[0x1E695DFB8];
  v47 = bundleIdentifierCopy;
  if (bundleIdentifierCopy)
  {
    shortcutsMetadataCopy = shortcutsMetadata;
    metadataCopy = metadata;
    configurationCopy = configuration;
    protocolsCopy = protocols;
    parametersCopy = parameters;
    typeCopy = type;
    descriptionCopy = description;
    titleCopy = title;
    identifierCopy = identifier;
    v22 = [[LNEffectiveBundleIdentifier alloc] initWithType:0 bundleIdentifier:v47 url:0];
    v42 = [v41 orderedSetWithObject:v22];
    LOBYTE(v35) = 0;
    v45 = [(LNActionMetadata *)self initWithIdentifier:identifierCopy mangledTypeName:identifierCopy effectiveBundleIdentifiers:v42 bundleMetadataVersion:0 title:titleCopy description:descriptionCopy presentationStyle:style outputType:typeCopy parameters:parametersCopy systemProtocols:protocolsCopy sessionStartingAction:v35 actionConfiguration:configurationCopy typeSpecificMetadata:metadataCopy iconSystemImageName:0 shortcutsMetadata:shortcutsMetadataCopy customIntentClassName:0];

    orderedSet = v22;
    v24 = v45;
  }

  else
  {
    shortcutsMetadataCopy2 = shortcutsMetadata;
    metadataCopy2 = metadata;
    configurationCopy2 = configuration;
    protocolsCopy2 = protocols;
    parametersCopy2 = parameters;
    typeCopy2 = type;
    descriptionCopy2 = description;
    titleCopy2 = title;
    identifierCopy2 = identifier;
    orderedSet = [v41 orderedSet];
    LOBYTE(v35) = 0;
    v46 = [(LNActionMetadata *)self initWithIdentifier:identifierCopy2 mangledTypeName:identifierCopy2 effectiveBundleIdentifiers:orderedSet bundleMetadataVersion:0 title:titleCopy2 description:descriptionCopy2 presentationStyle:style outputType:typeCopy2 parameters:parametersCopy2 systemProtocols:protocolsCopy2 sessionStartingAction:v35 actionConfiguration:configurationCopy2 typeSpecificMetadata:metadataCopy2 iconSystemImageName:0 shortcutsMetadata:shortcutsMetadataCopy2 customIntentClassName:0];

    v24 = v46;
  }

  return v24;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier effectiveBundleIdentifier:(id)bundleIdentifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)parameters systemProtocols:(id)self0 actionConfiguration:(id)self1 typeSpecificMetadata:(id)self2 iconSystemImageName:(id)self3 shortcutsMetadata:(id)self4
{
  bundleIdentifierCopy = bundleIdentifier;
  v45 = MEMORY[0x1E695DFB8];
  v51 = bundleIdentifierCopy;
  if (bundleIdentifierCopy)
  {
    shortcutsMetadataCopy = shortcutsMetadata;
    nameCopy = name;
    metadataCopy = metadata;
    configurationCopy = configuration;
    protocolsCopy = protocols;
    parametersCopy = parameters;
    typeCopy = type;
    descriptionCopy = description;
    titleCopy = title;
    identifierCopy = identifier;
    v23 = [[LNEffectiveBundleIdentifier alloc] initWithType:0 bundleIdentifier:v51 url:0];
    v24 = v45;
    v46 = v23;
    v44 = [v24 orderedSetWithObject:?];
    LOBYTE(v36) = 0;
    v49 = [(LNActionMetadata *)self initWithIdentifier:identifierCopy mangledTypeName:identifierCopy effectiveBundleIdentifiers:v44 bundleMetadataVersion:0 title:titleCopy description:descriptionCopy presentationStyle:style outputType:typeCopy parameters:parametersCopy systemProtocols:protocolsCopy sessionStartingAction:v36 actionConfiguration:configurationCopy typeSpecificMetadata:metadataCopy iconSystemImageName:nameCopy shortcutsMetadata:shortcutsMetadataCopy customIntentClassName:0];

    v25 = v49;
  }

  else
  {
    shortcutsMetadataCopy2 = shortcutsMetadata;
    nameCopy2 = name;
    metadataCopy2 = metadata;
    configurationCopy2 = configuration;
    protocolsCopy2 = protocols;
    parametersCopy2 = parameters;
    typeCopy2 = type;
    descriptionCopy2 = description;
    titleCopy2 = title;
    identifierCopy2 = identifier;
    [v45 orderedSet];
    v46 = LOBYTE(v36) = 0;
    v50 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:sessionStartingAction:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:identifierCopy2 effectiveBundleIdentifiers:identifierCopy2 bundleMetadataVersion:style title:typeCopy2 description:parametersCopy2 presentationStyle:protocolsCopy2 outputType:v36 parameters:configurationCopy2 systemProtocols:metadataCopy2 sessionStartingAction:nameCopy2 actionConfiguration:shortcutsMetadataCopy2 typeSpecificMetadata:0 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

    v25 = v50;
  }

  return v25;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifier:(id)bundleIdentifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)self0 systemProtocols:(id)self1 actionConfiguration:(id)self2 typeSpecificMetadata:(id)self3 iconSystemImageName:(id)self4 shortcutsMetadata:(id)self5
{
  bundleIdentifierCopy = bundleIdentifier;
  v46 = MEMORY[0x1E695DFB8];
  v52 = bundleIdentifierCopy;
  if (bundleIdentifierCopy)
  {
    shortcutsMetadataCopy = shortcutsMetadata;
    metadataCopy = metadata;
    configurationCopy = configuration;
    protocolsCopy = protocols;
    parametersCopy = parameters;
    typeCopy = type;
    descriptionCopy = description;
    titleCopy = title;
    nameCopy = name;
    identifierCopy = identifier;
    v22 = [[LNEffectiveBundleIdentifier alloc] initWithType:0 bundleIdentifier:v52 url:0];
    v23 = v46;
    v47 = v22;
    v24 = [v23 orderedSetWithObject:?];
    LOBYTE(v36) = 0;
    v50 = [(LNActionMetadata *)self initWithIdentifier:identifierCopy mangledTypeName:nameCopy effectiveBundleIdentifiers:v24 bundleMetadataVersion:0 title:titleCopy description:descriptionCopy presentationStyle:style outputType:typeCopy parameters:parametersCopy systemProtocols:protocolsCopy sessionStartingAction:v36 actionConfiguration:configurationCopy typeSpecificMetadata:metadataCopy iconSystemImageName:0 shortcutsMetadata:shortcutsMetadataCopy customIntentClassName:0];

    v25 = v50;
  }

  else
  {
    shortcutsMetadataCopy2 = shortcutsMetadata;
    metadataCopy2 = metadata;
    configurationCopy2 = configuration;
    protocolsCopy2 = protocols;
    parametersCopy2 = parameters;
    typeCopy2 = type;
    descriptionCopy2 = description;
    titleCopy2 = title;
    nameCopy2 = name;
    identifierCopy2 = identifier;
    [v46 orderedSet];
    v47 = LOBYTE(v36) = 0;
    v51 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:sessionStartingAction:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:identifierCopy2 effectiveBundleIdentifiers:nameCopy2 bundleMetadataVersion:style title:typeCopy2 description:parametersCopy2 presentationStyle:protocolsCopy2 outputType:v36 parameters:configurationCopy2 systemProtocols:metadataCopy2 sessionStartingAction:0 actionConfiguration:shortcutsMetadataCopy2 typeSpecificMetadata:0 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

    v25 = v51;
  }

  return v25;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifier:(id)bundleIdentifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)self0 systemProtocols:(id)self1 actionConfiguration:(id)self2 typeSpecificMetadata:(id)self3 iconSystemImageName:(id)self4 shortcutsMetadata:(id)self5 customIntentClassName:(id)self6
{
  bundleIdentifierCopy = bundleIdentifier;
  v53 = MEMORY[0x1E695DFB8];
  v58 = bundleIdentifierCopy;
  if (bundleIdentifierCopy)
  {
    classNameCopy = className;
    shortcutsMetadataCopy = shortcutsMetadata;
    imageNameCopy = imageName;
    metadataCopy = metadata;
    configurationCopy = configuration;
    protocolsCopy = protocols;
    parametersCopy = parameters;
    typeCopy = type;
    descriptionCopy = description;
    titleCopy = title;
    nameCopy = name;
    identifierCopy = identifier;
    v24 = [[LNEffectiveBundleIdentifier alloc] initWithType:0 bundleIdentifier:v58 url:0];
    v25 = v53;
    v54 = v24;
    v51 = [v25 orderedSetWithObject:?];
    LOBYTE(v35) = 0;
    v26 = descriptionCopy;
    v27 = [(LNActionMetadata *)self initWithIdentifier:identifierCopy mangledTypeName:nameCopy effectiveBundleIdentifiers:v51 bundleMetadataVersion:0 title:titleCopy description:descriptionCopy presentationStyle:style outputType:typeCopy parameters:parametersCopy systemProtocols:protocolsCopy sessionStartingAction:v35 actionConfiguration:configurationCopy typeSpecificMetadata:metadataCopy iconSystemImageName:imageNameCopy shortcutsMetadata:shortcutsMetadataCopy customIntentClassName:classNameCopy];

    v28 = v27;
  }

  else
  {
    classNameCopy2 = className;
    shortcutsMetadataCopy2 = shortcutsMetadata;
    imageNameCopy2 = imageName;
    metadataCopy2 = metadata;
    configurationCopy2 = configuration;
    protocolsCopy2 = protocols;
    parametersCopy2 = parameters;
    typeCopy2 = type;
    descriptionCopy2 = description;
    titleCopy2 = title;
    nameCopy2 = name;
    identifierCopy2 = identifier;
    [v53 orderedSet];
    v54 = LOBYTE(v35) = 0;
    v57 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:sessionStartingAction:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:identifierCopy2 effectiveBundleIdentifiers:nameCopy2 bundleMetadataVersion:style title:typeCopy2 description:parametersCopy2 presentationStyle:protocolsCopy2 outputType:v35 parameters:configurationCopy2 systemProtocols:metadataCopy2 sessionStartingAction:imageNameCopy2 actionConfiguration:shortcutsMetadataCopy2 typeSpecificMetadata:classNameCopy2 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

    v28 = v57;
  }

  return v28;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifier:(id)bundleIdentifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)self0 systemProtocols:(id)self1 sessionStartingAction:(BOOL)self2 actionConfiguration:(id)self3 typeSpecificMetadata:(id)self4 iconSystemImageName:(id)self5 shortcutsMetadata:(id)self6 customIntentClassName:(id)self7
{
  bundleIdentifierCopy = bundleIdentifier;
  v54 = MEMORY[0x1E695DFB8];
  v59 = bundleIdentifierCopy;
  if (bundleIdentifierCopy)
  {
    classNameCopy = className;
    shortcutsMetadataCopy = shortcutsMetadata;
    imageNameCopy = imageName;
    metadataCopy = metadata;
    configurationCopy = configuration;
    protocolsCopy = protocols;
    parametersCopy = parameters;
    typeCopy = type;
    descriptionCopy = description;
    titleCopy = title;
    nameCopy = name;
    identifierCopy = identifier;
    v25 = [[LNEffectiveBundleIdentifier alloc] initWithType:0 bundleIdentifier:v59 url:0];
    v26 = v54;
    v55 = v25;
    v53 = [v26 orderedSetWithObject:?];
    LOBYTE(v36) = action;
    v27 = descriptionCopy;
    v28 = [(LNActionMetadata *)self initWithIdentifier:identifierCopy mangledTypeName:nameCopy effectiveBundleIdentifiers:v53 bundleMetadataVersion:0 title:titleCopy description:descriptionCopy presentationStyle:style outputType:typeCopy parameters:parametersCopy systemProtocols:protocolsCopy sessionStartingAction:v36 actionConfiguration:configurationCopy typeSpecificMetadata:metadataCopy iconSystemImageName:imageNameCopy shortcutsMetadata:shortcutsMetadataCopy customIntentClassName:classNameCopy];

    v29 = v28;
  }

  else
  {
    classNameCopy2 = className;
    shortcutsMetadataCopy2 = shortcutsMetadata;
    imageNameCopy2 = imageName;
    metadataCopy2 = metadata;
    configurationCopy2 = configuration;
    protocolsCopy2 = protocols;
    parametersCopy2 = parameters;
    typeCopy2 = type;
    descriptionCopy2 = description;
    titleCopy2 = title;
    nameCopy2 = name;
    identifierCopy2 = identifier;
    [v54 orderedSet];
    v55 = LOBYTE(v36) = action;
    v58 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:sessionStartingAction:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:identifierCopy2 effectiveBundleIdentifiers:nameCopy2 bundleMetadataVersion:style title:typeCopy2 description:parametersCopy2 presentationStyle:protocolsCopy2 outputType:v36 parameters:configurationCopy2 systemProtocols:metadataCopy2 sessionStartingAction:imageNameCopy2 actionConfiguration:shortcutsMetadataCopy2 typeSpecificMetadata:classNameCopy2 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

    v29 = v58;
  }

  return v29;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifiers:(id)identifiers bundleMetadataVersion:(int64_t)version title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)self0 parameters:(id)self1 systemProtocols:(id)self2 sessionStartingAction:(BOOL)self3 actionConfiguration:(id)self4 typeSpecificMetadata:(id)self5 iconSystemImageName:(id)self6 shortcutsMetadata:(id)self7 customIntentClassName:(id)self8 requiresMDMChecks:(BOOL)self9
{
  identifierCopy = identifier;
  nameCopy = name;
  identifiersCopy = identifiers;
  titleCopy = title;
  descriptionCopy = description;
  typeCopy = type;
  parametersCopy = parameters;
  protocolsCopy = protocols;
  configurationCopy = configuration;
  metadataCopy = metadata;
  imageNameCopy = imageName;
  shortcutsMetadataCopy = shortcutsMetadata;
  classNameCopy = className;
  v41 = [protocolsCopy mutableCopy];
  if (action)
  {
    v31 = +[LNSystemProtocol sessionStartingProtocol];
    [v41 addObject:v31];
  }

  if (checks)
  {
    v32 = +[LNSystemProtocol requiresMDMChecksProtocol];
    [v41 addObject:v32];
  }

  v36 = [(LNActionMetadata *)self initWithIdentifier:identifierCopy mangledTypeName:nameCopy mangledTypeNameByBundleIdentifier:MEMORY[0x1E695E0F8] effectiveBundleIdentifiers:identifiersCopy bundleMetadataVersion:version title:titleCopy description:descriptionCopy presentationStyle:style outputType:typeCopy parameters:parametersCopy systemProtocols:protocolsCopy actionConfiguration:configurationCopy typeSpecificMetadata:metadataCopy iconSystemImageName:imageNameCopy shortcutsMetadata:shortcutsMetadataCopy customIntentClassName:classNameCopy];

  return v36;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifiers:(id)identifiers bundleMetadataVersion:(int64_t)version title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)self0 parameters:(id)self1 systemProtocols:(id)self2 actionConfiguration:(id)self3 typeSpecificMetadata:(id)self4 iconSystemImageName:(id)self5 shortcutsMetadata:(id)self6 customIntentClassName:(id)self7
{
  v32 = MEMORY[0x1E695DFB8];
  classNameCopy = className;
  shortcutsMetadataCopy = shortcutsMetadata;
  imageNameCopy = imageName;
  metadataCopy = metadata;
  configurationCopy = configuration;
  protocolsCopy = protocols;
  parametersCopy = parameters;
  typeCopy = type;
  descriptionCopy = description;
  titleCopy = title;
  nameCopy = name;
  identifierCopy = identifier;
  orderedSet = [v32 orderedSet];
  v26 = titleCopy;
  v27 = [(LNActionMetadata *)self initWithIdentifier:identifierCopy mangledTypeName:nameCopy mangledTypeNameByBundleIdentifier:MEMORY[0x1E695E0F8] effectiveBundleIdentifiers:orderedSet bundleMetadataVersion:0 title:titleCopy description:descriptionCopy presentationStyle:style outputType:typeCopy parameters:parametersCopy systemProtocols:protocolsCopy actionConfiguration:configurationCopy typeSpecificMetadata:metadataCopy iconSystemImageName:imageNameCopy shortcutsMetadata:shortcutsMetadataCopy customIntentClassName:classNameCopy];

  return v27;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers bundleMetadataVersion:(int64_t)version title:(id)title description:(id)description presentationStyle:(int64_t)self0 outputType:(id)self1 parameters:(id)self2 systemProtocols:(id)self3 actionConfiguration:(id)self4 typeSpecificMetadata:(id)self5 iconSystemImageName:(id)self6 shortcutsMetadata:(id)self7 customIntentClassName:(id)self8
{
  identifierCopy = identifier;
  nameCopy = name;
  bundleIdentifierCopy = bundleIdentifier;
  identifiersCopy = identifiers;
  titleCopy = title;
  typeCopy = type;
  parametersCopy = parameters;
  protocolsCopy = protocols;
  configurationCopy = configuration;
  metadataCopy = metadata;
  imageNameCopy = imageName;
  shortcutsMetadataCopy = shortcutsMetadata;
  classNameCopy = className;
  if (description)
  {
    descriptionCopy = description;
    v31 = [LNActionDescriptionMetadata alloc];
    v32 = [(LNActionDescriptionMetadata *)v31 initWithDescriptionText:descriptionCopy categoryName:0 searchKeywords:MEMORY[0x1E695E0F0] resultValueName:0];
  }

  else
  {
    v32 = 0;
  }

  v37 = [(LNActionMetadata *)self initWithIdentifier:identifierCopy mangledTypeName:nameCopy mangledTypeNameByBundleIdentifier:bundleIdentifierCopy effectiveBundleIdentifiers:identifiersCopy bundleMetadataVersion:version title:titleCopy descriptionMetadata:v32 presentationStyle:style authenticationPolicy:0 outputType:typeCopy parameters:parametersCopy systemProtocols:protocolsCopy actionConfiguration:configurationCopy typeSpecificMetadata:metadataCopy iconSystemImageName:imageNameCopy customIntentClassName:classNameCopy shortcutsMetadata:shortcutsMetadataCopy];

  return v37;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)parameters systemProtocols:(id)protocols actionConfiguration:(id)self0
{
  v17 = MEMORY[0x1E695DFB8];
  configurationCopy = configuration;
  protocolsCopy = protocols;
  parametersCopy = parameters;
  typeCopy = type;
  descriptionCopy = description;
  titleCopy = title;
  identifierCopy = identifier;
  orderedSet = [v17 orderedSet];
  v26 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:identifierCopy mangledTypeNameByBundleIdentifier:identifierCopy effectiveBundleIdentifiers:descriptionCopy bundleMetadataVersion:style title:typeCopy description:parametersCopy presentationStyle:protocolsCopy outputType:configurationCopy parameters:MEMORY[0x1E695E0F8] systemProtocols:0 actionConfiguration:MEMORY[0x1E695E0F8] typeSpecificMetadata:0 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

  return v26;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier effectiveBundleIdentifier:(id)bundleIdentifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)parameters systemProtocols:(id)self0 actionConfiguration:(id)self1 typeSpecificMetadata:(id)self2
{
  v16 = MEMORY[0x1E695DFB8];
  metadataCopy = metadata;
  configurationCopy = configuration;
  protocolsCopy = protocols;
  parametersCopy = parameters;
  typeCopy = type;
  descriptionCopy = description;
  titleCopy = title;
  identifierCopy = identifier;
  orderedSet = [v16 orderedSet];
  v26 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:identifierCopy mangledTypeNameByBundleIdentifier:identifierCopy effectiveBundleIdentifiers:descriptionCopy bundleMetadataVersion:style title:typeCopy description:parametersCopy presentationStyle:protocolsCopy outputType:configurationCopy parameters:metadataCopy systemProtocols:0 actionConfiguration:MEMORY[0x1E695E0F8] typeSpecificMetadata:0 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

  return v26;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifier:(id)bundleIdentifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)self0 systemProtocols:(id)self1 actionConfiguration:(id)self2 typeSpecificMetadata:(id)self3
{
  v27 = MEMORY[0x1E695DFB8];
  metadataCopy = metadata;
  configurationCopy = configuration;
  protocolsCopy = protocols;
  parametersCopy = parameters;
  typeCopy = type;
  descriptionCopy = description;
  titleCopy = title;
  nameCopy = name;
  identifierCopy = identifier;
  orderedSet = [v27 orderedSet];
  v31 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:identifierCopy mangledTypeNameByBundleIdentifier:nameCopy effectiveBundleIdentifiers:descriptionCopy bundleMetadataVersion:style title:typeCopy description:parametersCopy presentationStyle:protocolsCopy outputType:configurationCopy parameters:metadataCopy systemProtocols:0 actionConfiguration:MEMORY[0x1E695E0F8] typeSpecificMetadata:0 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

  return v31;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifier:(id)bundleIdentifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)self0 systemProtocols:(id)self1 actionConfiguration:(id)self2 typeSpecificMetadata:(id)self3 customIntentClassName:(id)self4
{
  v25 = MEMORY[0x1E695DFB8];
  classNameCopy = className;
  metadataCopy = metadata;
  configurationCopy = configuration;
  protocolsCopy = protocols;
  parametersCopy = parameters;
  typeCopy = type;
  descriptionCopy = description;
  titleCopy = title;
  nameCopy = name;
  identifierCopy = identifier;
  orderedSet = [v25 orderedSet];
  v33 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:identifierCopy mangledTypeNameByBundleIdentifier:nameCopy effectiveBundleIdentifiers:descriptionCopy bundleMetadataVersion:style title:typeCopy description:parametersCopy presentationStyle:protocolsCopy outputType:configurationCopy parameters:metadataCopy systemProtocols:0 actionConfiguration:MEMORY[0x1E695E0F8] typeSpecificMetadata:classNameCopy iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

  return v33;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifier:(id)bundleIdentifier title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)self0 systemProtocols:(id)self1 sessionStartingAction:(BOOL)self2 actionConfiguration:(id)self3 typeSpecificMetadata:(id)self4 customIntentClassName:(id)self5
{
  v26 = MEMORY[0x1E695DFB8];
  classNameCopy = className;
  metadataCopy = metadata;
  configurationCopy = configuration;
  protocolsCopy = protocols;
  parametersCopy = parameters;
  typeCopy = type;
  descriptionCopy = description;
  titleCopy = title;
  nameCopy = name;
  identifierCopy = identifier;
  orderedSet = [v26 orderedSet];
  v34 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:identifierCopy mangledTypeNameByBundleIdentifier:nameCopy effectiveBundleIdentifiers:descriptionCopy bundleMetadataVersion:style title:typeCopy description:parametersCopy presentationStyle:protocolsCopy outputType:configurationCopy parameters:metadataCopy systemProtocols:0 actionConfiguration:MEMORY[0x1E695E0F8] typeSpecificMetadata:classNameCopy iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

  return v34;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifiers:(id)identifiers title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)self0 systemProtocols:(id)self1 sessionStartingAction:(BOOL)self2 actionConfiguration:(id)self3 typeSpecificMetadata:(id)self4 customIntentClassName:(id)self5
{
  v26 = MEMORY[0x1E695DFB8];
  classNameCopy = className;
  metadataCopy = metadata;
  configurationCopy = configuration;
  protocolsCopy = protocols;
  parametersCopy = parameters;
  typeCopy = type;
  descriptionCopy = description;
  titleCopy = title;
  nameCopy = name;
  identifierCopy = identifier;
  orderedSet = [v26 orderedSet];
  v34 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:identifierCopy mangledTypeNameByBundleIdentifier:nameCopy effectiveBundleIdentifiers:descriptionCopy bundleMetadataVersion:style title:typeCopy description:parametersCopy presentationStyle:protocolsCopy outputType:configurationCopy parameters:metadataCopy systemProtocols:0 actionConfiguration:MEMORY[0x1E695E0F8] typeSpecificMetadata:classNameCopy iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

  return v34;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name effectiveBundleIdentifiers:(id)identifiers title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)self0 systemProtocols:(id)self1 actionConfiguration:(id)self2 typeSpecificMetadata:(id)self3 customIntentClassName:(id)self4
{
  v25 = MEMORY[0x1E695DFB8];
  classNameCopy = className;
  metadataCopy = metadata;
  configurationCopy = configuration;
  protocolsCopy = protocols;
  parametersCopy = parameters;
  typeCopy = type;
  descriptionCopy = description;
  titleCopy = title;
  nameCopy = name;
  identifierCopy = identifier;
  orderedSet = [v25 orderedSet];
  v33 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:identifierCopy mangledTypeNameByBundleIdentifier:nameCopy effectiveBundleIdentifiers:descriptionCopy bundleMetadataVersion:style title:typeCopy description:parametersCopy presentationStyle:protocolsCopy outputType:configurationCopy parameters:metadataCopy systemProtocols:0 actionConfiguration:MEMORY[0x1E695E0F8] typeSpecificMetadata:classNameCopy iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

  return v33;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name title:(id)title description:(id)description presentationStyle:(int64_t)style outputType:(id)type parameters:(id)parameters systemProtocols:(id)self0 actionConfiguration:(id)self1 typeSpecificMetadata:(id)self2 customIntentClassName:(id)self3
{
  v25 = MEMORY[0x1E695DFB8];
  classNameCopy = className;
  metadataCopy = metadata;
  configurationCopy = configuration;
  protocolsCopy = protocols;
  parametersCopy = parameters;
  typeCopy = type;
  descriptionCopy = description;
  titleCopy = title;
  nameCopy = name;
  identifierCopy = identifier;
  orderedSet = [v25 orderedSet];
  v33 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:identifierCopy mangledTypeNameByBundleIdentifier:nameCopy effectiveBundleIdentifiers:descriptionCopy bundleMetadataVersion:style title:typeCopy description:parametersCopy presentationStyle:protocolsCopy outputType:configurationCopy parameters:metadataCopy systemProtocols:0 actionConfiguration:MEMORY[0x1E695E0F8] typeSpecificMetadata:classNameCopy iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

  return v33;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name title:(id)title descriptionMetadata:(id)metadata openAppWhenRun:(BOOL)run authenticationPolicy:(int64_t)policy outputType:(id)type outputFlags:(unint64_t)self0 parameters:(id)self1 systemProtocols:(id)self2 actionConfiguration:(id)self3 typeSpecificMetadata:(id)self4 customIntentClassName:(id)self5
{
  v28 = MEMORY[0x1E695DFB8];
  classNameCopy = className;
  specificMetadataCopy = specificMetadata;
  configurationCopy = configuration;
  protocolsCopy = protocols;
  parametersCopy = parameters;
  typeCopy = type;
  metadataCopy = metadata;
  titleCopy = title;
  nameCopy = name;
  identifierCopy = identifier;
  orderedSet = [v28 orderedSet];
  LOBYTE(v26) = run;
  v36 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:descriptionMetadata:openAppWhenRun:authenticationPolicy:outputType:outputFlags:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:customIntentClassName:availabilityAnnotations:shortcutsMetadata:" mangledTypeName:identifierCopy mangledTypeNameByBundleIdentifier:nameCopy effectiveBundleIdentifiers:metadataCopy bundleMetadataVersion:v26 title:policy descriptionMetadata:typeCopy openAppWhenRun:flags authenticationPolicy:parametersCopy outputType:protocolsCopy outputFlags:configurationCopy parameters:specificMetadataCopy systemProtocols:classNameCopy actionConfiguration:0 typeSpecificMetadata:MEMORY[0x1E695E0F8] customIntentClassName:? availabilityAnnotations:? shortcutsMetadata:?];

  return v36;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers bundleMetadataVersion:(int64_t)version title:(id)title descriptionMetadata:(id)metadata openAppWhenRun:(BOOL)self0 authenticationPolicy:(int64_t)self1 outputType:(id)self2 outputFlags:(unint64_t)self3 parameters:(id)self4 systemProtocols:(id)self5 actionConfiguration:(id)self6 typeSpecificMetadata:(id)self7 customIntentClassName:(id)self8 availabilityAnnotations:(id)self9 shortcutsMetadata:(id)shortcutsMetadata
{
  v58 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  bundleIdentifierCopy = bundleIdentifier;
  identifiersCopy = identifiers;
  titleCopy = title;
  metadataCopy = metadata;
  typeCopy = type;
  parametersCopy = parameters;
  protocolsCopy = protocols;
  configurationCopy = configuration;
  specificMetadataCopy = specificMetadata;
  classNameCopy = className;
  annotationsCopy = annotations;
  shortcutsMetadataCopy = shortcutsMetadata;
  v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(protocolsCopy, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v28 = protocolsCopy;
  v29 = [v28 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v54;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v54 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v53 + 1) + 8 * i);
        v34 = objc_alloc_init(LNEmptySystemProtocolMetadata);
        identifier = [v33 identifier];
        [v27 setValue:v34 forKey:identifier];
      }

      v30 = [v28 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v30);
  }

  LOBYTE(v38) = run;
  v47 = [(LNActionMetadata *)self initWithIdentifier:identifierCopy mangledTypeName:nameCopy mangledTypeNameByBundleIdentifier:bundleIdentifierCopy effectiveBundleIdentifiers:identifiersCopy bundleMetadataVersion:version title:titleCopy descriptionMetadata:metadataCopy openAppWhenRun:v38 authenticationPolicy:policy outputType:typeCopy outputFlags:flags parameters:parametersCopy systemProtocolMetadata:v27 actionConfiguration:configurationCopy typeSpecificMetadata:specificMetadataCopy customIntentClassName:classNameCopy availabilityAnnotations:annotationsCopy shortcutsMetadata:shortcutsMetadataCopy];

  v36 = *MEMORY[0x1E69E9840];
  return v47;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers bundleMetadataVersion:(int64_t)version title:(id)title descriptionMetadata:(id)metadata deprecationMetadata:(id)self0 openAppWhenRun:(BOOL)self1 discoverable:(BOOL)self2 authenticationPolicy:(int64_t)self3 outputType:(id)self4 outputFlags:(unint64_t)self5 parameters:(id)self6 systemProtocolMetadata:(id)self7 actionConfiguration:(id)self8 typeSpecificMetadata:(id)self9 customIntentClassName:(id)className availabilityAnnotations:(id)annotations shortcutsMetadata:(id)shortcutsMetadata requiredCapabilities:(id)capabilities attributionBundleIdentifier:(id)attributionBundleIdentifier sideEffect:(id)effect assistantDefinedSchemas:(id)schemas assistantDefinedSchemaTraits:(id)traits
{
  traitsCopy = traits;
  schemasCopy = schemas;
  effectCopy = effect;
  attributionBundleIdentifierCopy = attributionBundleIdentifier;
  capabilitiesCopy = capabilities;
  shortcutsMetadataCopy = shortcutsMetadata;
  annotationsCopy = annotations;
  classNameCopy = className;
  specificMetadataCopy = specificMetadata;
  configurationCopy = configuration;
  protocolMetadataCopy = protocolMetadata;
  parametersCopy = parameters;
  typeCopy = type;
  deprecationMetadataCopy = deprecationMetadata;
  metadataCopy = metadata;
  titleCopy = title;
  identifiersCopy = identifiers;
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  identifierCopy = identifier;
  v41 = [[LNVisibilityMetadata alloc] initWithIsDiscoverable:discoverable assistantOnly:0];
  v42 = [MEMORY[0x1E696AD98] numberWithInteger:policy];
  LOBYTE(v31) = run;
  v45 = [(LNActionMetadata *)self initWithIdentifier:identifierCopy mangledTypeName:nameCopy mangledTypeNameByBundleIdentifier:bundleIdentifierCopy effectiveBundleIdentifiers:identifiersCopy bundleMetadataVersion:version title:titleCopy descriptionMetadata:metadataCopy deprecationMetadata:deprecationMetadataCopy openAppWhenRun:v31 supportedModes:0 explicitAuthenticationPolicy:v42 outputType:typeCopy outputFlags:flags parameters:parametersCopy systemProtocolMetadata:protocolMetadataCopy actionConfiguration:configurationCopy typeSpecificMetadata:specificMetadataCopy customIntentClassName:classNameCopy availabilityAnnotations:annotationsCopy shortcutsMetadata:shortcutsMetadataCopy requiredCapabilities:capabilitiesCopy attributionBundleIdentifier:attributionBundleIdentifierCopy sideEffect:effectCopy assistantDefinedSchemas:schemasCopy assistantDefinedSchemaTraits:traitsCopy visibilityMetadata:v41 fullyQualifiedTypeName:0 constraints:0 allowedTargets:0];

  return v45;
}

- (LNActionMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers bundleMetadataVersion:(int64_t)version title:(id)title descriptionMetadata:(id)metadata deprecationMetadata:(id)self0 openAppWhenRun:(BOOL)self1 authenticationPolicy:(int64_t)self2 outputType:(id)self3 outputFlags:(unint64_t)self4 parameters:(id)self5 systemProtocolMetadata:(id)self6 actionConfiguration:(id)self7 typeSpecificMetadata:(id)self8 customIntentClassName:(id)self9 availabilityAnnotations:(id)annotations shortcutsMetadata:(id)shortcutsMetadata requiredCapabilities:(id)capabilities attributionBundleIdentifier:(id)attributionBundleIdentifier sideEffect:(id)effect assistantDefinedSchemas:(id)schemas assistantDefinedSchemaTraits:(id)traits visibilityMetadata:(id)visibilityMetadata fullyQualifiedTypeName:(id)typeName
{
  v38 = MEMORY[0x1E696AD98];
  typeNameCopy = typeName;
  visibilityMetadataCopy = visibilityMetadata;
  traitsCopy = traits;
  schemasCopy = schemas;
  effectCopy = effect;
  attributionBundleIdentifierCopy = attributionBundleIdentifier;
  capabilitiesCopy = capabilities;
  shortcutsMetadataCopy = shortcutsMetadata;
  annotationsCopy = annotations;
  classNameCopy = className;
  specificMetadataCopy = specificMetadata;
  configurationCopy = configuration;
  protocolMetadataCopy = protocolMetadata;
  parametersCopy = parameters;
  typeCopy = type;
  deprecationMetadataCopy = deprecationMetadata;
  metadataCopy = metadata;
  titleCopy = title;
  identifiersCopy = identifiers;
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  identifierCopy = identifier;
  v47 = [v38 numberWithInteger:policy];
  LOBYTE(v34) = run;
  v50 = [(LNActionMetadata *)self initWithIdentifier:identifierCopy mangledTypeName:nameCopy mangledTypeNameByBundleIdentifier:bundleIdentifierCopy effectiveBundleIdentifiers:identifiersCopy bundleMetadataVersion:version title:titleCopy descriptionMetadata:metadataCopy deprecationMetadata:deprecationMetadataCopy openAppWhenRun:v34 explicitAuthenticationPolicy:v47 outputType:typeCopy outputFlags:flags parameters:parametersCopy systemProtocolMetadata:protocolMetadataCopy actionConfiguration:configurationCopy typeSpecificMetadata:specificMetadataCopy customIntentClassName:classNameCopy availabilityAnnotations:annotationsCopy shortcutsMetadata:shortcutsMetadataCopy requiredCapabilities:capabilitiesCopy attributionBundleIdentifier:attributionBundleIdentifierCopy sideEffect:effectCopy assistantDefinedSchemas:schemasCopy assistantDefinedSchemaTraits:traitsCopy visibilityMetadata:visibilityMetadataCopy fullyQualifiedTypeName:typeNameCopy];

  return v50;
}

- (BOOL)requiresMDMChecks
{
  systemProtocols = [(LNActionMetadata *)self systemProtocols];
  v3 = +[LNSystemProtocol requiresMDMChecksProtocol];
  v4 = [systemProtocols containsObject:v3];

  return v4;
}

- (BOOL)isSessionStartingAction
{
  systemProtocols = [(LNActionMetadata *)self systemProtocols];
  v3 = +[LNSystemProtocol sessionStartingProtocol];
  v4 = [systemProtocols containsObject:v3];

  return v4;
}

- (int64_t)presentationStyle
{
  if ([(LNActionMetadata *)self openAppWhenRun])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (NSString)effectiveBundleIdentifier
{
  effectiveBundleIdentifiers = [(LNActionMetadata *)self effectiveBundleIdentifiers];
  firstObject = [effectiveBundleIdentifiers firstObject];
  bundleIdentifier = [firstObject bundleIdentifier];
  v5 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v6 = bundleIdentifier;
  }

  else
  {
    v6 = &stru_1F02ED148;
  }

  v7 = v6;

  return &v6->isa;
}

- (LNStaticDeferredLocalizedString)actionDescription
{
  descriptionMetadata = [(LNActionMetadata *)self descriptionMetadata];
  descriptionText = [descriptionMetadata descriptionText];

  return descriptionText;
}

@end