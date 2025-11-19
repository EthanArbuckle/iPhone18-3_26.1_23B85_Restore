@interface LNActionMetadata
- (BOOL)isEqual:(id)a3;
- (BOOL)isSessionStartingAction;
- (BOOL)requiresMDMChecks;
- (BOOL)visibleForUse:(int64_t)a3;
- (LNActionMetadata)actionMetadataWithAttributionBundleIdentifier:(id)a3 icon:(id)a4;
- (LNActionMetadata)actionMetadataWithParameters:(id)a3;
- (LNActionMetadata)actionMetadataWithSystemProtocolMetadata:(id)a3;
- (LNActionMetadata)initWithCoder:(id)a3;
- (LNActionMetadata)initWithCoder_Sydro:(id)a3;
- (LNActionMetadata)initWithIdentifier:(id)a3 effectiveBundleIdentifier:(id)a4 title:(id)a5 description:(id)a6 presentationStyle:(int64_t)a7 outputType:(id)a8 parameters:(id)a9 systemProtocols:(id)a10 actionConfiguration:(id)a11 typeSpecificMetadata:(id)a12;
- (LNActionMetadata)initWithIdentifier:(id)a3 effectiveBundleIdentifier:(id)a4 title:(id)a5 description:(id)a6 presentationStyle:(int64_t)a7 outputType:(id)a8 parameters:(id)a9 systemProtocols:(id)a10 actionConfiguration:(id)a11 typeSpecificMetadata:(id)a12 iconSystemImageName:(id)a13 shortcutsMetadata:(id)a14;
- (LNActionMetadata)initWithIdentifier:(id)a3 effectiveBundleIdentifier:(id)a4 title:(id)a5 description:(id)a6 presentationStyle:(int64_t)a7 outputType:(id)a8 parameters:(id)a9 systemProtocols:(id)a10 actionConfiguration:(id)a11 typeSpecificMetadata:(id)a12 shortcutsMetadata:(id)a13;
- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifier:(id)a5 title:(id)a6 description:(id)a7 presentationStyle:(int64_t)a8 outputType:(id)a9 parameters:(id)a10 systemProtocols:(id)a11 actionConfiguration:(id)a12 typeSpecificMetadata:(id)a13;
- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifier:(id)a5 title:(id)a6 description:(id)a7 presentationStyle:(int64_t)a8 outputType:(id)a9 parameters:(id)a10 systemProtocols:(id)a11 actionConfiguration:(id)a12 typeSpecificMetadata:(id)a13 customIntentClassName:(id)a14;
- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifier:(id)a5 title:(id)a6 description:(id)a7 presentationStyle:(int64_t)a8 outputType:(id)a9 parameters:(id)a10 systemProtocols:(id)a11 actionConfiguration:(id)a12 typeSpecificMetadata:(id)a13 iconSystemImageName:(id)a14 shortcutsMetadata:(id)a15;
- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifier:(id)a5 title:(id)a6 description:(id)a7 presentationStyle:(int64_t)a8 outputType:(id)a9 parameters:(id)a10 systemProtocols:(id)a11 actionConfiguration:(id)a12 typeSpecificMetadata:(id)a13 iconSystemImageName:(id)a14 shortcutsMetadata:(id)a15 customIntentClassName:(id)a16;
- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifier:(id)a5 title:(id)a6 description:(id)a7 presentationStyle:(int64_t)a8 outputType:(id)a9 parameters:(id)a10 systemProtocols:(id)a11 sessionStartingAction:(BOOL)a12 actionConfiguration:(id)a13 typeSpecificMetadata:(id)a14 customIntentClassName:(id)a15;
- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifier:(id)a5 title:(id)a6 description:(id)a7 presentationStyle:(int64_t)a8 outputType:(id)a9 parameters:(id)a10 systemProtocols:(id)a11 sessionStartingAction:(BOOL)a12 actionConfiguration:(id)a13 typeSpecificMetadata:(id)a14 iconSystemImageName:(id)a15 shortcutsMetadata:(id)a16 customIntentClassName:(id)a17;
- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifiers:(id)a5 bundleMetadataVersion:(int64_t)a6 title:(id)a7 description:(id)a8 presentationStyle:(int64_t)a9 outputType:(id)a10 parameters:(id)a11 systemProtocols:(id)a12 actionConfiguration:(id)a13 typeSpecificMetadata:(id)a14 iconSystemImageName:(id)a15 shortcutsMetadata:(id)a16 customIntentClassName:(id)a17;
- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifiers:(id)a5 bundleMetadataVersion:(int64_t)a6 title:(id)a7 description:(id)a8 presentationStyle:(int64_t)a9 outputType:(id)a10 parameters:(id)a11 systemProtocols:(id)a12 sessionStartingAction:(BOOL)a13 actionConfiguration:(id)a14 typeSpecificMetadata:(id)a15 iconSystemImageName:(id)a16 shortcutsMetadata:(id)a17 customIntentClassName:(id)a18 requiresMDMChecks:(BOOL)a19;
- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifiers:(id)a5 title:(id)a6 description:(id)a7 presentationStyle:(int64_t)a8 outputType:(id)a9 parameters:(id)a10 systemProtocols:(id)a11 actionConfiguration:(id)a12 typeSpecificMetadata:(id)a13 customIntentClassName:(id)a14;
- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifiers:(id)a5 title:(id)a6 description:(id)a7 presentationStyle:(int64_t)a8 outputType:(id)a9 parameters:(id)a10 systemProtocols:(id)a11 sessionStartingAction:(BOOL)a12 actionConfiguration:(id)a13 typeSpecificMetadata:(id)a14 customIntentClassName:(id)a15;
- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 mangledTypeNameByBundleIdentifier:(id)a5 effectiveBundleIdentifiers:(id)a6 bundleMetadataVersion:(int64_t)a7 title:(id)a8 description:(id)a9 presentationStyle:(int64_t)a10 outputType:(id)a11 parameters:(id)a12 systemProtocols:(id)a13 actionConfiguration:(id)a14 typeSpecificMetadata:(id)a15 iconSystemImageName:(id)a16 shortcutsMetadata:(id)a17 customIntentClassName:(id)a18;
- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 mangledTypeNameByBundleIdentifier:(id)a5 effectiveBundleIdentifiers:(id)a6 bundleMetadataVersion:(int64_t)a7 title:(id)a8 descriptionMetadata:(id)a9 deprecationMetadata:(id)a10 openAppWhenRun:(BOOL)a11 authenticationPolicy:(int64_t)a12 outputType:(id)a13 outputFlags:(unint64_t)a14 parameters:(id)a15 systemProtocolMetadata:(id)a16 actionConfiguration:(id)a17 typeSpecificMetadata:(id)a18 customIntentClassName:(id)a19 availabilityAnnotations:(id)a20 shortcutsMetadata:(id)a21 requiredCapabilities:(id)a22 attributionBundleIdentifier:(id)a23 sideEffect:(id)a24 assistantDefinedSchemas:(id)a25 assistantDefinedSchemaTraits:(id)a26 visibilityMetadata:(id)a27 fullyQualifiedTypeName:(id)a28;
- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 mangledTypeNameByBundleIdentifier:(id)a5 effectiveBundleIdentifiers:(id)a6 bundleMetadataVersion:(int64_t)a7 title:(id)a8 descriptionMetadata:(id)a9 deprecationMetadata:(id)a10 openAppWhenRun:(BOOL)a11 discoverable:(BOOL)a12 authenticationPolicy:(int64_t)a13 outputType:(id)a14 outputFlags:(unint64_t)a15 parameters:(id)a16 systemProtocolMetadata:(id)a17 actionConfiguration:(id)a18 typeSpecificMetadata:(id)a19 customIntentClassName:(id)a20 availabilityAnnotations:(id)a21 shortcutsMetadata:(id)a22 requiredCapabilities:(id)a23 attributionBundleIdentifier:(id)a24 sideEffect:(id)a25 assistantDefinedSchemas:(id)a26 assistantDefinedSchemaTraits:(id)a27;
- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 mangledTypeNameByBundleIdentifier:(id)a5 effectiveBundleIdentifiers:(id)a6 bundleMetadataVersion:(int64_t)a7 title:(id)a8 descriptionMetadata:(id)a9 deprecationMetadata:(id)a10 openAppWhenRun:(BOOL)a11 supportedModes:(unint64_t)a12 explicitAuthenticationPolicy:(id)a13 outputType:(id)a14 outputFlags:(unint64_t)a15 parameters:(id)a16 systemProtocolMetadata:(id)a17 actionConfiguration:(id)a18 typeSpecificMetadata:(id)a19 customIntentClassName:(id)a20 availabilityAnnotations:(id)a21 shortcutsMetadata:(id)a22 requiredCapabilities:(id)a23 attributionBundleIdentifier:(id)a24 sideEffect:(id)a25 assistantDefinedSchemas:(id)a26 assistantDefinedSchemaTraits:(id)a27 visibilityMetadata:(id)a28 fullyQualifiedTypeName:(id)a29 constraints:(id)a30 allowedTargets:(id)a31;
- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 mangledTypeNameByBundleIdentifier:(id)a5 effectiveBundleIdentifiers:(id)a6 bundleMetadataVersion:(int64_t)a7 title:(id)a8 descriptionMetadata:(id)a9 openAppWhenRun:(BOOL)a10 authenticationPolicy:(int64_t)a11 outputType:(id)a12 outputFlags:(unint64_t)a13 parameters:(id)a14 systemProtocols:(id)a15 actionConfiguration:(id)a16 typeSpecificMetadata:(id)a17 customIntentClassName:(id)a18 availabilityAnnotations:(id)a19 shortcutsMetadata:(id)a20;
- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 title:(id)a5 description:(id)a6 presentationStyle:(int64_t)a7 outputType:(id)a8 parameters:(id)a9 systemProtocols:(id)a10 actionConfiguration:(id)a11 typeSpecificMetadata:(id)a12 customIntentClassName:(id)a13;
- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 title:(id)a5 descriptionMetadata:(id)a6 openAppWhenRun:(BOOL)a7 authenticationPolicy:(int64_t)a8 outputType:(id)a9 outputFlags:(unint64_t)a10 parameters:(id)a11 systemProtocols:(id)a12 actionConfiguration:(id)a13 typeSpecificMetadata:(id)a14 customIntentClassName:(id)a15;
- (LNActionMetadata)initWithIdentifier:(id)a3 title:(id)a4 description:(id)a5 presentationStyle:(int64_t)a6 outputType:(id)a7 parameters:(id)a8 systemProtocols:(id)a9 actionConfiguration:(id)a10;
- (LNStaticDeferredLocalizedString)actionDescription;
- (NSString)description;
- (NSString)effectiveBundleIdentifier;
- (id)actionMetadataDescriptionMetadata:(id)a3;
- (id)authenticationPolicyAllowingImplicit:(BOOL)a3;
- (id)copyWithDescriptiveMetadataFromAction:(id)a3 usingLibraryKey:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyWithoutMangledTypeNameWithAvailability:(id)a3;
- (id)mangledTypeNameForBundleIdentifier:(id)a3;
- (id)metadataByAddingEffectiveBundleIdentifiers:(id)a3 mangledTypeNameByBundleIdentifier:(id)a4;
- (id)nameIndexedParameters;
- (int64_t)authenticationPolicy;
- (int64_t)presentationStyle;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNActionMetadata

- (int64_t)authenticationPolicy
{
  v2 = [(LNActionMetadata *)self authenticationPolicyAllowingImplicit:1];
  v3 = [v2 integerValue];

  return v3;
}

- (id)nameIndexedParameters
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(LNActionMetadata *)self parameters];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__LNActionMetadata_nameIndexedParameters__block_invoke;
  v7[3] = &unk_1E72B14A8;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

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

- (LNActionMetadata)actionMetadataWithSystemProtocolMetadata:(id)a3
{
  v4 = a3;
  v5 = [(LNActionMetadata *)self copy];
  v6 = [v4 copy];
  v7 = v5[12];
  v5[12] = v6;

  v8 = [v4 allKeys];

  v9 = [v8 if_compactMap:&__block_literal_global_168];
  v10 = v5[13];
  v5[13] = v9;

  return v5;
}

- (id)copyWithDescriptiveMetadataFromAction:(id)a3 usingLibraryKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(LNActionMetadata *)self copy];
  v9 = *(v8 + 40);
  if (!v9 || ([v9 key], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, !v11))
  {
    v12 = [v6 title];
    v13 = *(v8 + 40);
    *(v8 + 40) = v12;
  }

  if (!*(v8 + 48))
  {
    v75 = [LNActionDescriptionMetadata alloc];
    v78 = [v6 descriptionMetadata];
    [v78 descriptionText];
    v14 = v77 = v6;
    v76 = [(LNActionMetadata *)self descriptionMetadata];
    [v76 categoryName];
    v15 = v79 = v7;
    v16 = [(LNActionMetadata *)self descriptionMetadata];
    v17 = [v16 searchKeywords];
    v18 = [(LNActionMetadata *)self descriptionMetadata];
    v19 = [v18 resultValueName];
    v20 = [(LNActionMetadata *)self descriptionMetadata];
    v21 = [v20 icon];
    v22 = [(LNActionDescriptionMetadata *)v75 initWithDescriptionText:v14 categoryName:v15 searchKeywords:v17 resultValueName:v19 icon:v21];
    v23 = *(v8 + 48);
    *(v8 + 48) = v22;

    v7 = v79;
    v6 = v77;
  }

  if (!*(v8 + 112))
  {
    v24 = [v6 actionConfiguration];
    if (v24)
    {
      objc_opt_class();
      v25 = objc_opt_isKindOfClass() ^ 1;
    }

    else
    {
      v25 = 1;
    }

    v26 = [v6 actionConfiguration];
    v27 = v26;
    if ((v25 & 1) == 0)
    {
      v30 = [v26 summaryString];
      v31 = [v30 formatString];
      v32 = [v31 length];

      if (v32)
      {
        v33 = [LNStaticDeferredLocalizedString alloc];
        v34 = [v27 summaryString];
        v35 = [v34 formatString];
        [_TtC12LinkMetadata18SchemaLocalization tableForLibraryKey:v7];
        v36 = v80 = v7;
        v37 = +[_TtC12LinkMetadata18SchemaLocalization bundleURL];
        v38 = [(LNStaticDeferredLocalizedString *)v33 initWithKey:v35 table:v36 bundleURL:v37];

        v39 = [LNActionSummaryString alloc];
        v40 = [(LNStaticDeferredLocalizedString *)v38 key];
        v41 = [v27 summaryString];
        v42 = [v41 parameterIdentifiers];
        v43 = [(LNActionSummaryString *)v39 initWithFormatString:v40 parameterIdentifiers:v42];

        v44 = [LNActionSummary alloc];
        v45 = [(LNStaticDeferredLocalizedString *)v38 bundleURL];
        v46 = [(LNStaticDeferredLocalizedString *)v38 table];
        v47 = [v27 otherParameterIdentifiers];
        v48 = [(LNActionSummary *)v44 initWithSummaryString:v43 bundleURL:v45 table:v46 otherParameterIdentifiers:v47];
        v49 = *(v8 + 112);
        *(v8 + 112) = v48;

        v7 = v80;
      }

      goto LABEL_16;
    }

    if (!v26)
    {
LABEL_16:

      goto LABEL_17;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v29 = [v6 actionConfiguration];
      v27 = *(v8 + 112);
      *(v8 + 112) = v29;
      goto LABEL_16;
    }
  }

LABEL_17:
  v50 = [v6 nameIndexedParameters];
  v51 = [(LNActionMetadata *)self parameters];
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __74__LNActionMetadata_copyWithDescriptiveMetadataFromAction_usingLibraryKey___block_invoke;
  v84[3] = &unk_1E72B1458;
  v52 = v50;
  v85 = v52;
  v53 = v7;
  v86 = v53;
  v54 = [v51 if_map:v84];
  v55 = *(v8 + 152);
  *(v8 + 152) = v54;

  v56 = [v8 systemProtocolMetadata];
  v57 = [v56 mutableCopy];

  v58 = [v6 assistantDefinedSchemaTraits];
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __74__LNActionMetadata_copyWithDescriptiveMetadataFromAction_usingLibraryKey___block_invoke_2;
  v82[3] = &unk_1E72B1480;
  v59 = v57;
  v83 = v59;
  [v58 enumerateObjectsUsingBlock:v82];
  objc_storeStrong((v8 + 96), v57);
  v60 = [v6 constraints];
  if (v60)
  {
    v61 = v60;
    v62 = [v6 constraints];
    v63 = [v62 count];

    if (v63)
    {
      v64 = MEMORY[0x1E695DF70];
      v65 = [v6 constraints];
      v66 = [v64 arrayWithArray:v65];

      v81 = self;
      v67 = [(LNActionMetadata *)self constraints];
      if (v67)
      {
        v68 = v67;
        v69 = [v6 constraints];
        v70 = [v69 count];

        if (v70)
        {
          v71 = [(LNActionMetadata *)v81 constraints];
          [v66 addObjectsFromArray:v71];
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

- (id)metadataByAddingEffectiveBundleIdentifiers:(id)a3 mangledTypeNameByBundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"LNActionMetadata.m" lineNumber:504 description:{@"Invalid parameter not satisfying: %@", @"effectiveBundleIdentifiers"}];
  }

  v9 = [(LNActionMetadata *)self copy];
  v10 = [v9 effectiveBundleIdentifiers];
  v11 = [v7 array];
  v12 = [v10 if_orderedSetByAddingObjectsFromArray:v11];
  v13 = v9[4];
  v9[4] = v12;

  v14 = [v9 mangledTypeNameByBundleIdentifier];
  v15 = [v14 if_dictionaryByAddingEntriesFromDictionary:v8];
  v16 = v9[18];
  v9[18] = v15;

  return v9;
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
LABEL_176:

      goto LABEL_177;
    }

    v7 = [(LNActionMetadata *)self identifier];
    v8 = [(LNActionMetadata *)v6 identifier];
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
        goto LABEL_174;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_175:

        goto LABEL_176;
      }
    }

    v16 = [(LNActionMetadata *)self title];
    v17 = [(LNActionMetadata *)v6 title];
    v14 = v16;
    v18 = v17;
    v13 = v18;
    if (v14 == v18)
    {

      v181 = v14;
    }

    else
    {
      LOBYTE(v12) = 0;
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
        LOBYTE(v12) = 0;
        v14 = v21;
LABEL_174:

        goto LABEL_175;
      }
    }

    v23 = [(LNActionMetadata *)self descriptionMetadata];
    v24 = [(LNActionMetadata *)v6 descriptionMetadata];
    v20 = v23;
    v25 = v24;
    v19 = v25;
    if (v20 == v25)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v26 = v25;
      v27 = v20;
      if (!v20 || !v25)
      {
        goto LABEL_171;
      }

      LODWORD(v12) = [v20 isEqual:v25];

      if (!v12)
      {
        goto LABEL_172;
      }
    }

    v180 = v19;
    v28 = [(LNActionMetadata *)self deprecationMetadata];
    v29 = [(LNActionMetadata *)v6 deprecationMetadata];
    v27 = v28;
    v30 = v29;
    v31 = v30;
    if (v27 != v30)
    {
      LOBYTE(v12) = 0;
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
          v36 = [(LNActionMetadata *)self parameters];
          v37 = [(LNActionMetadata *)v6 parameters];

          if (v36 != v37)
          {
            v12 = [(LNActionMetadata *)self parameters];
            if (!v12)
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

            v38 = [(LNActionMetadata *)v6 parameters];

            if (!v38)
            {
              goto LABEL_41;
            }

            v39 = MEMORY[0x1E695DFD8];
            v173 = [(LNActionMetadata *)self parameters];
            v40 = [v39 setWithArray:v173];
            v41 = MEMORY[0x1E695DFD8];
            v42 = [(LNActionMetadata *)v6 parameters];
            v43 = [v41 setWithArray:v42];
            v171 = [v40 isEqualToSet:v43];

            if (!v171)
            {
LABEL_41:
              LOBYTE(v12) = 0;
              goto LABEL_43;
            }
          }

          v177 = v20;
          v44 = [(LNActionMetadata *)self openAppWhenRun];
          if (v44 != [(LNActionMetadata *)v6 openAppWhenRun]|| (v45 = [(LNActionMetadata *)self supportedModes], v45 != [(LNActionMetadata *)v6 supportedModes]))
          {
            LOBYTE(v12) = 0;
            goto LABEL_43;
          }

          v46 = [(LNActionMetadata *)self visibilityMetadata];
          v47 = [(LNActionMetadata *)v6 visibilityMetadata];
          v48 = v46;
          v49 = v47;
          v172 = v49;
          v174 = v48;
          if (v48 != v49)
          {
            LOBYTE(v12) = 0;
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
                  LOBYTE(v12) = 0;
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
                v53 = [(LNActionMetadata *)self explicitAuthenticationPolicy];
                v54 = [(LNActionMetadata *)v6 explicitAuthenticationPolicy];
                v51 = v53;
                v55 = v54;
                v170 = v55;
                if (v51 != v55)
                {
                  LOBYTE(v12) = 0;
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
                        LOBYTE(v12) = 0;
                        v20 = v177;
                        v19 = v180;
                        v51 = v169;
LABEL_167:
                        v50 = v170;
                        goto LABEL_168;
                      }

LABEL_52:
                      v60 = [(LNActionMetadata *)self outputType];
                      v61 = [(LNActionMetadata *)v6 outputType];
                      v62 = v60;
                      v63 = v61;
                      v167 = v62;
                      v168 = v63;
                      if (v62 != v63)
                      {
                        LOBYTE(v12) = 0;
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
                              LOBYTE(v12) = 0;
                              v57 = v167;
                              v20 = v177;
                              v19 = v180;
                              v51 = v169;
LABEL_165:
                              v56 = v168;
                              goto LABEL_166;
                            }

LABEL_59:
                            v67 = [(LNActionMetadata *)self systemProtocolMetadata];
                            v68 = [(LNActionMetadata *)v6 systemProtocolMetadata];
                            v69 = v67;
                            v70 = v68;
                            v165 = v70;
                            v166 = v69;
                            if (v69 != v70)
                            {
                              LOBYTE(v12) = 0;
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
                                    LOBYTE(v12) = 0;
                                    v20 = v177;
                                    v19 = v180;
                                    v51 = v169;
LABEL_163:
                                    v64 = v165;
                                    v65 = v166;
                                    goto LABEL_164;
                                  }

LABEL_66:
                                  v73 = [(LNActionMetadata *)self actionConfiguration];
                                  v74 = [(LNActionMetadata *)v6 actionConfiguration];
                                  v75 = v73;
                                  v76 = v74;
                                  v163 = v76;
                                  v164 = v75;
                                  if (v75 != v76)
                                  {
                                    LOBYTE(v12) = 0;
                                    if (v75)
                                    {
                                      v77 = v76;
                                      v19 = v180;
                                      if (v76)
                                      {
                                        v78 = [v75 isEqual:v76];

                                        if (!v78)
                                        {
                                          LOBYTE(v12) = 0;
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
                                        v79 = [(LNActionMetadata *)self typeSpecificMetadata];
                                        v80 = [(LNActionMetadata *)v6 typeSpecificMetadata];
                                        v75 = v79;
                                        v162 = v80;
                                        if (v75 != v162)
                                        {
                                          LOBYTE(v12) = 0;
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
                                                LOBYTE(v12) = 0;
                                                v19 = v180;
                                                v11 = v161;
                                                v77 = v162;
LABEL_159:
                                                v9 = v175;
                                                goto LABEL_160;
                                              }

LABEL_80:
                                              v84 = [(LNActionMetadata *)self customIntentClassName];
                                              v85 = [(LNActionMetadata *)v6 customIntentClassName];
                                              v86 = v84;
                                              v87 = v85;
                                              v82 = v86;
                                              v81 = v87;
                                              if (v86 == v87)
                                              {
                                              }

                                              else
                                              {
                                                LOBYTE(v12) = 0;
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

                                              v89 = [(LNActionMetadata *)self bundleMetadataVersion];
                                              if (v89 != [(LNActionMetadata *)v6 bundleMetadataVersion])
                                              {
LABEL_93:
                                                LOBYTE(v12) = 0;
LABEL_157:
                                                v77 = v162;
                                                goto LABEL_158;
                                              }

                                              v90 = [(LNActionMetadata *)self availabilityAnnotations];
                                              v91 = [(LNActionMetadata *)v6 availabilityAnnotations];
                                              v92 = v90;
                                              v159 = v91;
                                              v160 = v92;
                                              if (v92 == v159)
                                              {
                                              }

                                              else
                                              {
                                                LOBYTE(v12) = 0;
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
                                                  LOBYTE(v12) = 0;
                                                  goto LABEL_155;
                                                }
                                              }

                                              v94 = [(LNActionMetadata *)self shortcutsMetadata];
                                              v95 = [(LNActionMetadata *)v6 shortcutsMetadata];
                                              v96 = v94;
                                              v157 = v95;
                                              v158 = v96;
                                              if (v96 == v157)
                                              {
                                              }

                                              else
                                              {
                                                LOBYTE(v12) = 0;
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
                                                  LOBYTE(v12) = 0;
                                                  goto LABEL_153;
                                                }
                                              }

                                              v98 = [(LNActionMetadata *)self requiredCapabilities];
                                              v99 = [(LNActionMetadata *)v6 requiredCapabilities];

                                              if (v98 == v99)
                                              {
LABEL_107:
                                                v106 = [(LNActionMetadata *)self attributionBundleIdentifier];
                                                v107 = [(LNActionMetadata *)v6 attributionBundleIdentifier];
                                                v108 = v106;
                                                v153 = v107;
                                                v155 = v108;
                                                if (v108 == v153)
                                                {
                                                }

                                                else
                                                {
                                                  LOBYTE(v12) = 0;
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
                                                    LOBYTE(v12) = 0;
                                                    goto LABEL_151;
                                                  }
                                                }

                                                v110 = [(LNActionMetadata *)self sideEffect];
                                                v111 = [(LNActionMetadata *)v6 sideEffect];
                                                v112 = v110;
                                                v151 = v111;
                                                v152 = v112;
                                                if (v112 == v151)
                                                {
                                                }

                                                else
                                                {
                                                  LOBYTE(v12) = 0;
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
                                                    LOBYTE(v12) = 0;
                                                    goto LABEL_149;
                                                  }
                                                }

                                                v115 = [(LNActionMetadata *)self assistantDefinedSchemas];
                                                v116 = [(LNActionMetadata *)v6 assistantDefinedSchemas];

                                                if (v115 != v116)
                                                {
                                                  v12 = [(LNActionMetadata *)self assistantDefinedSchemas];
                                                  if (!v12)
                                                  {
                                                    goto LABEL_149;
                                                  }

                                                  v117 = [(LNActionMetadata *)v6 assistantDefinedSchemas];

                                                  if (!v117)
                                                  {
                                                    goto LABEL_135;
                                                  }

                                                  v118 = MEMORY[0x1E695DFD8];
                                                  v149 = [(LNActionMetadata *)self assistantDefinedSchemas];
                                                  v119 = [v118 setWithArray:v149];
                                                  v120 = MEMORY[0x1E695DFD8];
                                                  v121 = [(LNActionMetadata *)v6 assistantDefinedSchemas];
                                                  v122 = [v120 setWithArray:v121];
                                                  v144 = [v119 isEqualToSet:v122];

                                                  if (!v144)
                                                  {
                                                    goto LABEL_135;
                                                  }
                                                }

                                                v123 = [(LNActionMetadata *)self assistantDefinedSchemaTraits];
                                                v124 = [(LNActionMetadata *)v6 assistantDefinedSchemaTraits];

                                                if (v123 == v124)
                                                {
                                                  goto LABEL_130;
                                                }

                                                v12 = [(LNActionMetadata *)self assistantDefinedSchemaTraits];
                                                if (v12)
                                                {
                                                  v125 = [(LNActionMetadata *)v6 assistantDefinedSchemaTraits];

                                                  if (!v125)
                                                  {
                                                    goto LABEL_135;
                                                  }

                                                  v126 = MEMORY[0x1E695DFD8];
                                                  v150 = [(LNActionMetadata *)self assistantDefinedSchemaTraits];
                                                  v127 = [v126 setWithArray:v150];
                                                  v128 = MEMORY[0x1E695DFD8];
                                                  v129 = [(LNActionMetadata *)v6 assistantDefinedSchemaTraits];
                                                  v130 = [v128 setWithArray:v129];
                                                  v145 = [v127 isEqualToSet:v130];

                                                  if (!v145)
                                                  {
                                                    goto LABEL_135;
                                                  }

LABEL_130:
                                                  v131 = [(LNActionMetadata *)self fullyQualifiedTypeName];
                                                  v132 = [(LNActionMetadata *)v6 fullyQualifiedTypeName];
                                                  v133 = v131;
                                                  v134 = v132;
                                                  v113 = v133;
                                                  v148 = v134;
                                                  if (v133 != v134)
                                                  {
                                                    LOBYTE(v12) = 0;
                                                    if (v133)
                                                    {
                                                      v146 = v134;
                                                      if (v134)
                                                      {
                                                        v147 = [v133 isEqualToString:v134];

                                                        if (!v147)
                                                        {
                                                          LOBYTE(v12) = 0;
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
                                                  v135 = [(LNActionMetadata *)self allowedTargets];
                                                  v136 = [(LNActionMetadata *)v6 allowedTargets];
                                                  v133 = v135;
                                                  v146 = v136;
                                                  if (v133 == v146)
                                                  {
                                                    LOBYTE(v12) = 1;
                                                  }

                                                  else
                                                  {
                                                    LOBYTE(v12) = 0;
                                                    if (v133 && v146)
                                                    {
                                                      LOBYTE(v12) = [v133 isEqualToArray:v146];
                                                    }
                                                  }

                                                  goto LABEL_146;
                                                }

LABEL_149:

                                                goto LABEL_150;
                                              }

                                              v12 = [(LNActionMetadata *)self requiredCapabilities];
                                              if (v12)
                                              {
                                                v100 = [(LNActionMetadata *)v6 requiredCapabilities];

                                                if (!v100)
                                                {
                                                  goto LABEL_112;
                                                }

                                                v101 = MEMORY[0x1E695DFD8];
                                                v156 = [(LNActionMetadata *)self requiredCapabilities];
                                                v102 = [v101 setWithArray:v156];
                                                v103 = MEMORY[0x1E695DFD8];
                                                v104 = [(LNActionMetadata *)v6 requiredCapabilities];
                                                v105 = [v103 setWithArray:v104];
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

  LOBYTE(v12) = 1;
LABEL_177:

  return v12;
}

- (unint64_t)hash
{
  v47 = [(LNActionMetadata *)self identifier];
  v3 = [v47 hash];
  v46 = [(LNActionMetadata *)self parameters];
  v4 = [v46 hash] ^ v3;
  v45 = [(LNActionMetadata *)self title];
  v5 = [v45 hash];
  v44 = [(LNActionMetadata *)self descriptionMetadata];
  v6 = v4 ^ v5 ^ [v44 hash];
  v43 = [(LNActionMetadata *)self deprecationMetadata];
  v7 = [v43 hash];
  v8 = v6 ^ v7 ^ [(LNActionMetadata *)self openAppWhenRun];
  v42 = [(LNActionMetadata *)self visibilityMetadata];
  v9 = [v42 hash];
  v41 = [(LNActionMetadata *)self explicitAuthenticationPolicy];
  v10 = v9 ^ [v41 integerValue];
  v40 = [(LNActionMetadata *)self outputType];
  v11 = v10 ^ [v40 hash];
  v39 = [(LNActionMetadata *)self systemProtocolMetadata];
  v12 = v8 ^ v11 ^ [v39 hash];
  v38 = [(LNActionMetadata *)self actionConfiguration];
  v13 = [v38 hash];
  v37 = [(LNActionMetadata *)self typeSpecificMetadata];
  v14 = v13 ^ [v37 hash];
  v36 = [(LNActionMetadata *)self customIntentClassName];
  v15 = v14 ^ [v36 hash];
  v16 = [(LNActionMetadata *)self availabilityAnnotations];
  v17 = v15 ^ [v16 hash];
  v18 = v12 ^ v17 ^ [(LNActionMetadata *)self bundleMetadataVersion];
  v19 = [(LNActionMetadata *)self shortcutsMetadata];
  v20 = [v19 hash];
  v21 = [(LNActionMetadata *)self requiredCapabilities];
  v22 = v20 ^ [v21 hash];
  v23 = [(LNActionMetadata *)self attributionBundleIdentifier];
  v24 = v22 ^ [v23 hash];
  v25 = [(LNActionMetadata *)self sideEffect];
  v26 = v24 ^ [v25 hash];
  v27 = [(LNActionMetadata *)self assistantDefinedSchemas];
  v28 = v26 ^ [v27 hash];
  v29 = [(LNActionMetadata *)self assistantDefinedSchemaTraits];
  v35 = v18 ^ v28 ^ [v29 hash];
  v30 = [(LNActionMetadata *)self fullyQualifiedTypeName];
  v31 = [v30 hash];
  v32 = [(LNActionMetadata *)self allowedTargets];
  v33 = v31 ^ [v32 hash];

  return v35 ^ v33;
}

- (NSString)description
{
  v22 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v46 = NSStringFromClass(v3);
  v45 = [(LNActionMetadata *)self identifier];
  v28 = [(LNActionMetadata *)self effectiveBundleIdentifiers];
  v27 = [v28 array];
  v26 = [v27 valueForKeyPath:@"description"];
  v44 = [v26 componentsJoinedByString:{@", "}];
  v25 = [(LNActionMetadata *)self allowedTargets];
  v24 = [v25 valueForKeyPath:@"description"];
  v43 = [v24 componentsJoinedByString:{@", "}];
  v4 = [(LNActionMetadata *)self bundleMetadataVersion];
  v5 = @"1.0";
  if (!v4)
  {
    v5 = @"0.0";
  }

  v42 = v5;
  v41 = [(LNActionMetadata *)self title];
  v40 = [(LNActionMetadata *)self descriptionMetadata];
  v39 = [(LNActionMetadata *)self deprecationMetadata];
  v23 = [(LNActionMetadata *)self parameters];
  v21 = [v23 valueForKeyPath:@"description"];
  v38 = [v21 componentsJoinedByString:{@", "}];
  v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[LNActionMetadata openAppWhenRun](self, "openAppWhenRun")}];
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[LNActionMetadata supportedModes](self, "supportedModes")}];
  v35 = [(LNActionMetadata *)self visibilityMetadata];
  v34 = [(LNActionMetadata *)self explicitAuthenticationPolicy];
  v33 = [(LNActionMetadata *)self outputType];
  v20 = [(LNActionMetadata *)self systemProtocolMetadata];
  v19 = [v20 valueForKeyPath:@"description"];
  v32 = [v19 componentsJoinedByString:{@", "}];
  v31 = [(LNActionMetadata *)self actionConfiguration];
  v18 = [(LNActionMetadata *)self typeSpecificMetadata];
  v17 = [v18 count];
  if (v17)
  {
    v29 = [(LNActionMetadata *)self typeSpecificMetadata];
  }

  else
  {
    v29 = @"{}";
  }

  v30 = [(LNActionMetadata *)self customIntentClassName];
  v6 = [(LNActionMetadata *)self mangledTypeNameByBundleIdentifier];
  v7 = [(LNActionMetadata *)self availabilityAnnotations];
  v8 = [(LNActionMetadata *)self shortcutsMetadata];
  v9 = [(LNActionMetadata *)self requiredCapabilities];
  v10 = [(LNActionMetadata *)self attributionBundleIdentifier];
  v11 = [(LNActionMetadata *)self sideEffect];
  v12 = [(LNActionMetadata *)self assistantDefinedSchemas];
  v13 = [(LNActionMetadata *)self assistantDefinedSchemaTraits];
  v14 = [(LNActionMetadata *)self fullyQualifiedTypeName];
  v15 = [v22 stringWithFormat:@"<%@: %p, identifier: %@, effectiveBundleIdentifiers: [%@], allowedTargets: [%@], bundleMetadataVersion: %@, title: %@, description: %@, deprecation: %@, parameters: [%@], openAppWhenRun: %@, supportedModes: %@, visibility: %@, explicitAuthenticationPolicy: %@, outputType: %@, systemProtocolMetadata: [%@], actionConfiguration: %@, typeSpecificMetadata: %@, customIntentClassName: %@, mangledTypeNameByBundleIdentifier: %@, availabilityAnnotations: %@, shortcutsMetadata: %@, requiredCapabilities: %@, attributionBundleIdentifier: %@, sideEffect: %@, assistantDefinedSchemas: %@, assistantDefinedSchemaTraits: %@, fullyQualifiedTypeName: %@>", v46, self, v45, v44, v43, v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v29, v30, v6, v7, v8, v9, v10, v11, v12, v13, v14];

  if (v17)
  {
  }

  return v15;
}

- (LNActionMetadata)initWithCoder:(id)a3
{
  v3 = a3;
  v107 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v103 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"mangledTypeName"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v102 = [v3 decodeObjectOfClasses:v6 forKey:@"effectiveBundleIdentifiers"];

  v101 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v100 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"descriptionMetadata"];
  v99 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"deprecationMetadata"];
  v98 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"outputType"];
  v92 = [v3 decodeIntegerForKey:@"outputFlags"];
  v91 = [v3 decodeIntegerForKey:@"supportedModes"];
  v89 = [v3 decodeIntegerForKey:@"openAppWhenRun"];
  v97 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"explicitAuthenticationPolicy"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v106 = [v3 decodeObjectOfClasses:v9 forKey:@"parameters"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v96 = [v3 decodeObjectOfClasses:v12 forKey:@"constraints"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v74 = objc_opt_class();
  v20 = [v13 setWithObjects:{v14, v15, v16, v17, v18, v19, v74, objc_opt_class(), 0}];
  v104 = [v3 decodeObjectOfClasses:v20 forKey:@"systemProtocolMetadata"];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v105 = [v3 decodeObjectOfClasses:v23 forKey:@"mangledTypeNameByBundleIdentifier"];

  v24 = 0;
  if (!v107)
  {
    v71 = self;
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
    v71 = self;
    v30 = v102;
    goto LABEL_15;
  }

  v30 = v102;
  if (!v106)
  {
    v71 = self;
LABEL_15:
    v31 = v104;
    goto LABEL_16;
  }

  v31 = v104;
  if (!v104 || !v102)
  {
    v71 = self;
LABEL_16:
    v32 = v105;
    goto LABEL_17;
  }

  v32 = v105;
  if (v105)
  {
    v88 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"customIntentClassName"];
    v87 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"actionConfiguration"];
    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = [v33 setWithObjects:{v34, v35, v36, v37, v38, objc_opt_class(), 0}];
    v86 = [v3 decodeObjectOfClasses:v39 forKey:@"typeSpecificMetadata"];

    v80 = [v3 decodeIntegerForKey:@"bundleMetadataVersion"];
    v40 = MEMORY[0x1E695DFD8];
    v41 = objc_opt_class();
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = [v40 setWithObjects:{v41, v42, v43, v44, v45, v46, objc_opt_class(), 0}];
    v82 = [v3 decodeObjectOfClasses:v47 forKey:@"shortcutsMetadata"];

    v48 = MEMORY[0x1E695DFD8];
    v49 = objc_opt_class();
    v50 = objc_opt_class();
    v51 = [v48 setWithObjects:{v49, v50, objc_opt_class(), 0}];
    v85 = [v3 decodeObjectOfClasses:v51 forKey:@"availabilityAnnotations"];

    v52 = MEMORY[0x1E695DFD8];
    v53 = objc_opt_class();
    v54 = [v52 setWithObjects:{v53, objc_opt_class(), 0}];
    v84 = [v3 decodeObjectOfClasses:v54 forKey:@"requiredCapabilities"];

    v83 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"attributionBundleIdentifier"];
    v81 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"sideEffect"];
    v55 = MEMORY[0x1E695DFD8];
    v56 = objc_opt_class();
    v57 = [v55 setWithObjects:{v56, objc_opt_class(), 0}];
    v58 = [v3 decodeObjectOfClasses:v57 forKey:@"assistantDefinedSchemas"];

    v59 = MEMORY[0x1E695DFD8];
    v60 = objc_opt_class();
    v61 = [v59 setWithObjects:{v60, objc_opt_class(), 0}];
    v62 = [v3 decodeObjectOfClasses:v61 forKey:@"assistantDefinedSchemaTraits"];

    v63 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"visibilityMetadata"];
    if (!v63)
    {
      v63 = -[LNVisibilityMetadata initWithIsDiscoverable:assistantOnly:]([LNVisibilityMetadata alloc], "initWithIsDiscoverable:assistantOnly:", [v3 decodeBoolForKey:@"isDiscoverable"], 0);
    }

    v64 = v89 != 0;
    v65 = v63;
    v79 = v63;
    v90 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"fullyQualifiedTypeName"];
    v66 = MEMORY[0x1E695DFD8];
    v67 = objc_opt_class();
    v68 = [v66 setWithObjects:{v67, objc_opt_class(), 0}];
    v69 = [v3 decodeObjectOfClasses:v68 forKey:@"allowedTargets"];

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
    v70 = self;
    v30 = v102;
    v25 = v103;
    v95 = v58;
    v26 = v101;
    v24 = [(LNActionMetadata *)v70 initWithIdentifier:v107 mangledTypeName:v103 mangledTypeNameByBundleIdentifier:v105 effectiveBundleIdentifiers:v102 bundleMetadataVersion:v80 title:v101 descriptionMetadata:v100 deprecationMetadata:v99 openAppWhenRun:v73 supportedModes:v91 explicitAuthenticationPolicy:v97 outputType:v98 outputFlags:v75 parameters:v106 systemProtocolMetadata:v104 actionConfiguration:v87 typeSpecificMetadata:v86 customIntentClassName:v88 availabilityAnnotations:v85 shortcutsMetadata:v82 requiredCapabilities:v84 attributionBundleIdentifier:v83 sideEffect:v81 assistantDefinedSchemas:v76 assistantDefinedSchemaTraits:v77 visibilityMetadata:v78 fullyQualifiedTypeName:v90 constraints:v96 allowedTargets:v69];

    v71 = v24;
    goto LABEL_16;
  }

  v71 = self;
  v31 = v104;
LABEL_17:

  return v24;
}

- (void)encodeWithCoder:(id)a3
{
  v30 = a3;
  v4 = [(LNActionMetadata *)self identifier];
  [v30 encodeObject:v4 forKey:@"identifier"];

  v5 = [(LNActionMetadata *)self mangledTypeName];
  [v30 encodeObject:v5 forKey:@"mangledTypeName"];

  v6 = [(LNActionMetadata *)self effectiveBundleIdentifiers];
  [v30 encodeObject:v6 forKey:@"effectiveBundleIdentifiers"];

  v7 = [(LNActionMetadata *)self title];
  [v30 encodeObject:v7 forKey:@"title"];

  v8 = [(LNActionMetadata *)self descriptionMetadata];
  [v30 encodeObject:v8 forKey:@"descriptionMetadata"];

  v9 = [(LNActionMetadata *)self deprecationMetadata];
  [v30 encodeObject:v9 forKey:@"deprecationMetadata"];

  v10 = [(LNActionMetadata *)self parameters];
  [v30 encodeObject:v10 forKey:@"parameters"];

  v11 = [(LNActionMetadata *)self outputType];
  [v30 encodeObject:v11 forKey:@"outputType"];

  [v30 encodeInteger:-[LNActionMetadata outputFlags](self forKey:{"outputFlags"), @"outputFlags"}];
  [v30 encodeInteger:-[LNActionMetadata openAppWhenRun](self forKey:{"openAppWhenRun"), @"openAppWhenRun"}];
  [v30 encodeInteger:-[LNActionMetadata supportedModes](self forKey:{"supportedModes"), @"supportedModes"}];
  v12 = [(LNActionMetadata *)self explicitAuthenticationPolicy];
  [v30 encodeObject:v12 forKey:@"explicitAuthenticationPolicy"];

  v13 = [(LNActionMetadata *)self constraints];
  [v30 encodeObject:v13 forKey:@"constraints"];

  v14 = [(LNActionMetadata *)self systemProtocolMetadata];
  [v30 encodeObject:v14 forKey:@"systemProtocolMetadata"];

  v15 = [(LNActionMetadata *)self actionConfiguration];
  [v30 encodeObject:v15 forKey:@"actionConfiguration"];

  v16 = [(LNActionMetadata *)self typeSpecificMetadata];
  [v30 encodeObject:v16 forKey:@"typeSpecificMetadata"];

  v17 = [(LNActionMetadata *)self customIntentClassName];
  [v30 encodeObject:v17 forKey:@"customIntentClassName"];

  [v30 encodeInteger:-[LNActionMetadata bundleMetadataVersion](self forKey:{"bundleMetadataVersion"), @"bundleMetadataVersion"}];
  v18 = [(LNActionMetadata *)self mangledTypeNameByBundleIdentifier];
  [v30 encodeObject:v18 forKey:@"mangledTypeNameByBundleIdentifier"];

  v19 = [(LNActionMetadata *)self availabilityAnnotations];
  [v30 encodeObject:v19 forKey:@"availabilityAnnotations"];

  v20 = [(LNActionMetadata *)self shortcutsMetadata];
  [v30 encodeObject:v20 forKey:@"shortcutsMetadata"];

  v21 = [(LNActionMetadata *)self requiredCapabilities];
  [v30 encodeObject:v21 forKey:@"requiredCapabilities"];

  v22 = [(LNActionMetadata *)self attributionBundleIdentifier];
  [v30 encodeObject:v22 forKey:@"attributionBundleIdentifier"];

  v23 = [(LNActionMetadata *)self sideEffect];
  [v30 encodeObject:v23 forKey:@"sideEffect"];

  v24 = [(LNActionMetadata *)self assistantDefinedSchemas];
  [v30 encodeObject:v24 forKey:@"assistantDefinedSchemas"];

  v25 = [(LNActionMetadata *)self assistantDefinedSchemaTraits];
  [v30 encodeObject:v25 forKey:@"assistantDefinedSchemaTraits"];

  v26 = [(LNActionMetadata *)self visibilityMetadata];
  [v30 encodeObject:v26 forKey:@"visibilityMetadata"];

  v27 = [(LNActionMetadata *)self fullyQualifiedTypeName];
  [v30 encodeObject:v27 forKey:@"fullyQualifiedTypeName"];

  v28 = [(LNActionMetadata *)self allowedTargets];
  [v30 encodeObject:v28 forKey:@"allowedTargets"];

  v29 = [(LNActionMetadata *)self systemProtocols];
  [v30 encodeObject:v29 forKey:@"systemProtocols"];

  [v30 encodeInteger:-[LNActionMetadata authenticationPolicy](self forKey:{"authenticationPolicy"), @"authenticationPolicy"}];
}

- (id)copyWithoutMangledTypeNameWithAvailability:(id)a3
{
  v5 = a3;
  v6 = [(LNActionMetadata *)self copy];
  v7 = *(v6 + 16);
  *(v6 + 16) = &stru_1F02ED148;

  if (v5)
  {
    objc_storeStrong((v6 + 136), a3);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = [LNActionMetadata alloc];
  v36 = [(LNActionMetadata *)self identifier];
  v35 = [(LNActionMetadata *)self mangledTypeName];
  v22 = [(LNActionMetadata *)self mangledTypeNameByBundleIdentifier];
  v21 = [(LNActionMetadata *)self effectiveBundleIdentifiers];
  v20 = [(LNActionMetadata *)self bundleMetadataVersion];
  v19 = [(LNActionMetadata *)self title];
  v34 = [(LNActionMetadata *)self descriptionMetadata];
  v33 = [(LNActionMetadata *)self deprecationMetadata];
  v18 = [(LNActionMetadata *)self openAppWhenRun];
  v17 = [(LNActionMetadata *)self supportedModes];
  v32 = [(LNActionMetadata *)self explicitAuthenticationPolicy];
  v31 = [(LNActionMetadata *)self outputType];
  v16 = [(LNActionMetadata *)self outputFlags];
  v30 = [(LNActionMetadata *)self parameters];
  v29 = [(LNActionMetadata *)self systemProtocolMetadata];
  v28 = [(LNActionMetadata *)self actionConfiguration];
  v27 = [(LNActionMetadata *)self typeSpecificMetadata];
  v26 = [(LNActionMetadata *)self customIntentClassName];
  v25 = [(LNActionMetadata *)self availabilityAnnotations];
  v15 = [(LNActionMetadata *)self shortcutsMetadata];
  v14 = [(LNActionMetadata *)self requiredCapabilities];
  v13 = [(LNActionMetadata *)self attributionBundleIdentifier];
  v4 = [(LNActionMetadata *)self sideEffect];
  v5 = [(LNActionMetadata *)self assistantDefinedSchemas];
  v6 = [(LNActionMetadata *)self assistantDefinedSchemaTraits];
  v7 = [(LNActionMetadata *)self visibilityMetadata];
  v8 = [(LNActionMetadata *)self fullyQualifiedTypeName];
  v9 = [(LNActionMetadata *)self constraints];
  v10 = [(LNActionMetadata *)self allowedTargets];
  LOBYTE(v12) = v18;
  v24 = [(LNActionMetadata *)v23 initWithIdentifier:v36 mangledTypeName:v35 mangledTypeNameByBundleIdentifier:v22 effectiveBundleIdentifiers:v21 bundleMetadataVersion:v20 title:v19 descriptionMetadata:v34 deprecationMetadata:v33 openAppWhenRun:v12 supportedModes:v17 explicitAuthenticationPolicy:v32 outputType:v31 outputFlags:v16 parameters:v30 systemProtocolMetadata:v29 actionConfiguration:v28 typeSpecificMetadata:v27 customIntentClassName:v26 availabilityAnnotations:v25 shortcutsMetadata:v15 requiredCapabilities:v14 attributionBundleIdentifier:v13 sideEffect:v4 assistantDefinedSchemas:v5 assistantDefinedSchemaTraits:v6 visibilityMetadata:v7 fullyQualifiedTypeName:v8 constraints:v9 allowedTargets:v10];

  return v24;
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

- (BOOL)visibleForUse:(int64_t)a3
{
  if (([(LNActionMetadata *)self outputFlags]& 8) != 0)
  {
    v6 = [(LNActionMetadata *)self systemProtocols];
    v7 = +[LNSystemProtocol urlRepresentableProtocol];
    v5 = [v6 containsObject:v7];
  }

  else
  {
    v5 = 1;
  }

  v8 = [(LNActionMetadata *)self visibilityMetadata];
  v9 = [v8 visibleForUse:a3];

  return v9 & v5;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 mangledTypeNameByBundleIdentifier:(id)a5 effectiveBundleIdentifiers:(id)a6 bundleMetadataVersion:(int64_t)a7 title:(id)a8 descriptionMetadata:(id)a9 deprecationMetadata:(id)a10 openAppWhenRun:(BOOL)a11 supportedModes:(unint64_t)a12 explicitAuthenticationPolicy:(id)a13 outputType:(id)a14 outputFlags:(unint64_t)a15 parameters:(id)a16 systemProtocolMetadata:(id)a17 actionConfiguration:(id)a18 typeSpecificMetadata:(id)a19 customIntentClassName:(id)a20 availabilityAnnotations:(id)a21 shortcutsMetadata:(id)a22 requiredCapabilities:(id)a23 attributionBundleIdentifier:(id)a24 sideEffect:(id)a25 assistantDefinedSchemas:(id)a26 assistantDefinedSchemaTraits:(id)a27 visibilityMetadata:(id)a28 fullyQualifiedTypeName:(id)a29 constraints:(id)a30 allowedTargets:(id)a31
{
  v131[1] = *MEMORY[0x1E69E9840];
  v128 = a3;
  v35 = a4;
  v36 = a5;
  v127 = a6;
  v108 = a8;
  v115 = a9;
  v114 = a10;
  v113 = a13;
  v112 = a14;
  v126 = a16;
  v37 = a17;
  v38 = a18;
  v39 = a19;
  v125 = a20;
  v124 = a21;
  v123 = a22;
  v122 = a23;
  v121 = a24;
  v111 = a25;
  v120 = a26;
  v119 = a27;
  v40 = a28;
  v118 = a29;
  v117 = a30;
  v116 = a31;
  if (!v128)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v102 = v101 = v39;
    [v102 handleFailureInMethod:a2 object:self file:@"LNActionMetadata.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    v39 = v101;
  }

  v41 = v35;
  if (!v35)
  {
    v103 = [MEMORY[0x1E696AAA8] currentHandler];
    [v103 handleFailureInMethod:a2 object:self file:@"LNActionMetadata.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"mangledTypeName"}];
  }

  v42 = v126;
  if (v126)
  {
    if (v40)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v104 = [MEMORY[0x1E696AAA8] currentHandler];
    [v104 handleFailureInMethod:a2 object:self file:@"LNActionMetadata.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"parameters"}];

    if (v40)
    {
      goto LABEL_7;
    }
  }

  v105 = [MEMORY[0x1E696AAA8] currentHandler];
  [v105 handleFailureInMethod:a2 object:self file:@"LNActionMetadata.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"visibilityMetadata"}];

LABEL_7:
  v129.receiver = self;
  v129.super_class = LNActionMetadata;
  v43 = [(LNActionMetadata *)&v129 init];
  if (!v43)
  {
    v82 = v108;
    goto LABEL_32;
  }

  v110 = v39;
  v44 = [v128 copy];
  identifier = v43->_identifier;
  v43->_identifier = v44;

  v46 = [v41 copy];
  mangledTypeName = v43->_mangledTypeName;
  v43->_mangledTypeName = v46;

  v48 = [v127 copy];
  effectiveBundleIdentifiers = v43->_effectiveBundleIdentifiers;
  v43->_effectiveBundleIdentifiers = v48;

  objc_storeStrong(&v43->_title, a8);
  objc_storeStrong(&v43->_descriptionMetadata, a9);
  objc_storeStrong(&v43->_deprecationMetadata, a10);
  v50 = [v126 copy];
  parameters = v43->_parameters;
  v43->_parameters = v50;

  v43->_discoverable = [v40 isDiscoverable];
  objc_storeStrong(&v43->_explicitAuthenticationPolicy, a13);
  objc_storeStrong(&v43->_outputType, a14);
  v43->_outputFlags = a15;
  objc_storeStrong(&v43->_actionConfiguration, a18);
  v52 = [v39 copy];
  typeSpecificMetadata = v43->_typeSpecificMetadata;
  v43->_typeSpecificMetadata = v52;

  v54 = [v125 copy];
  customIntentClassName = v43->_customIntentClassName;
  v43->_customIntentClassName = v54;

  v43->_bundleMetadataVersion = a7;
  v56 = [v36 copy];
  mangledTypeNameByBundleIdentifier = v43->_mangledTypeNameByBundleIdentifier;
  v43->_mangledTypeNameByBundleIdentifier = v56;

  v58 = [v124 copy];
  availabilityAnnotations = v43->_availabilityAnnotations;
  v43->_availabilityAnnotations = v58;

  v60 = [v123 copy];
  shortcutsMetadata = v43->_shortcutsMetadata;
  v43->_shortcutsMetadata = v60;

  v62 = [v122 copy];
  requiredCapabilities = v43->_requiredCapabilities;
  v43->_requiredCapabilities = v62;

  v64 = [v121 copy];
  attributionBundleIdentifier = v43->_attributionBundleIdentifier;
  v43->_attributionBundleIdentifier = v64;

  objc_storeStrong(&v43->_sideEffect, a25);
  v66 = [v120 copy];
  assistantDefinedSchemas = v43->_assistantDefinedSchemas;
  v43->_assistantDefinedSchemas = v66;

  v68 = [v119 copy];
  assistantDefinedSchemaTraits = v43->_assistantDefinedSchemaTraits;
  v43->_assistantDefinedSchemaTraits = v68;

  v70 = [v40 copy];
  visibilityMetadata = v43->_visibilityMetadata;
  v43->_visibilityMetadata = v70;

  v72 = [v118 copy];
  fullyQualifiedTypeName = v43->_fullyQualifiedTypeName;
  v43->_fullyQualifiedTypeName = v72;

  v74 = [v117 copy];
  constraints = v43->_constraints;
  v43->_constraints = v74;

  v76 = [v116 copy];
  allowedTargets = v43->_allowedTargets;
  v43->_allowedTargets = v76;

  v43->_openAppWhenRun = a11;
  v43->_supportedModes = a12;
  if (a12 == 1)
  {
    goto LABEL_17;
  }

  if (a12)
  {
    if ((a12 & 8) == 0)
    {
      if ((a12 & 6) == 0)
      {
        goto LABEL_19;
      }

      v84 = 1;
LABEL_18:
      v43->_openAppWhenRun = v84;
LABEL_19:
      v78 = v36;
      v79 = v38;
      if ((a12 & 0xC) != 0)
      {
        v85 = [v37 objectForKeyedSubscript:@"com.apple.link.systemProtocol.ForegroundContinuable"];

        v82 = v108;
        if (!v85)
        {
          v130 = @"com.apple.link.systemProtocol.ForegroundContinuable";
          v86 = objc_opt_new();
          v131[0] = v86;
          v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:&v130 count:1];
          v88 = [v37 if_dictionaryByAddingEntriesFromDictionary:v87];

          v37 = v88;
        }
      }

      else
      {
        v82 = v108;
      }

      goto LABEL_27;
    }

LABEL_17:
    v84 = 0;
    goto LABEL_18;
  }

  v78 = v36;
  v79 = v38;
  v43->_supportedModes = 1;
  v80 = [v37 allKeys];
  v81 = [v80 containsObject:@"com.apple.link.systemProtocol.ForegroundContinuable"];

  if (v81)
  {
    v82 = v108;
    if (a11)
    {
      v83 = 4;
    }

    else
    {
      v83 = 8;
    }

    goto LABEL_26;
  }

  v82 = v108;
  if (a11)
  {
    v83 = 2;
LABEL_26:
    v43->_supportedModes = v83;
  }

LABEL_27:
  v89 = [v37 copy];
  systemProtocolMetadata = v43->_systemProtocolMetadata;
  v43->_systemProtocolMetadata = v89;

  v91 = [v37 allKeys];
  v92 = [v91 if_compactMap:&__block_literal_global_8061];
  systemProtocols = v43->_systemProtocols;
  v43->_systemProtocols = v92;

  v94 = v43->_systemProtocols;
  v95 = +[LNSystemProtocol openEntitySystemProtocol];
  if ([(NSArray *)v94 containsObject:v95])
  {
    v96 = v43->_systemProtocols;
    v97 = +[LNSystemProtocol urlRepresentableProtocol];
    LODWORD(v96) = [(NSArray *)v96 containsObject:v97];

    v42 = v126;
    if (v96)
    {
      v43->_supportedModes = 2;
      v43->_openAppWhenRun = 1;
    }
  }

  else
  {

    v42 = v126;
  }

  v98 = v43;
  v38 = v79;
  v39 = v110;
  v36 = v78;
LABEL_32:

  v99 = *MEMORY[0x1E69E9840];
  return v43;
}

- (LNActionMetadata)actionMetadataWithAttributionBundleIdentifier:(id)a3 icon:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNActionMetadata *)self descriptionMetadata];
  v9 = [v8 actionDescriptionMetadataWithIcon:v6];

  v10 = [(LNActionMetadata *)self actionMetadataDescriptionMetadata:v9];
  v11 = [v7 copy];

  v12 = v10[23];
  v10[23] = v11;

  return v10;
}

- (id)actionMetadataDescriptionMetadata:(id)a3
{
  v4 = a3;
  v5 = [(LNActionMetadata *)self copy];
  v6 = [v4 copy];

  v7 = v5[6];
  v5[6] = v6;

  return v5;
}

- (LNActionMetadata)actionMetadataWithParameters:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"LNActionMetadata.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"parameters"}];
  }

  v6 = [(LNActionMetadata *)self copy];
  v7 = [v5 copy];
  v8 = v6[19];
  v6[19] = v7;

  return v6;
}

- (id)mangledTypeNameForBundleIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"LNActionMetadata.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v6 = [(LNActionMetadata *)self mangledTypeNameByBundleIdentifier];
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(LNActionMetadata *)self mangledTypeName];
  }

  v10 = v9;

  return v10;
}

- (LNActionMetadata)initWithCoder_Sydro:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v63 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"mangledTypeName"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v62 = [v3 decodeObjectOfClasses:v7 forKey:@"effectiveBundleIdentifiers"];

  v56 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v55 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"descriptionMetadata"];
  v57 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"outputType"];
  v8 = [v3 decodeIntegerForKey:@"outputFlags"];
  v9 = [v3 decodeIntegerForKey:@"openAppWhenRun"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v60 = [v3 decodeObjectOfClasses:v12 forKey:@"parameters"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v59 = [v3 decodeObjectOfClasses:v15 forKey:@"systemProtocols"];

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v19 = [v3 decodeObjectOfClasses:v18 forKey:@"mangledTypeNameByBundleIdentifier"];

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
    v51 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"customIntentClassName"];
    v50 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"actionConfiguration"];
    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = [v24 setWithObjects:{v25, v26, v27, objc_opt_class(), 0}];
    v47 = [v3 decodeObjectOfClasses:v28 forKey:@"typeSpecificMetadata"];

    v29 = [v3 decodeIntegerForKey:@"bundleMetadataVersion"];
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
    v37 = [v3 decodeObjectOfClasses:v36 forKey:@"shortcutsMetadata"];

    v38 = MEMORY[0x1E695DFD8];
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v41 = [v38 setWithObjects:{v39, v40, objc_opt_class(), 0}];
    v42 = [v3 decodeObjectOfClasses:v41 forKey:@"availabilityAnnotations"];

    v23 = v59;
    v43 = v55;
    LOBYTE(v46) = v52;
    v44 = -[LNActionMetadata initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:descriptionMetadata:openAppWhenRun:authenticationPolicy:outputType:outputFlags:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:customIntentClassName:availabilityAnnotations:shortcutsMetadata:](self, "initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:descriptionMetadata:openAppWhenRun:authenticationPolicy:outputType:outputFlags:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:customIntentClassName:availabilityAnnotations:shortcutsMetadata:", v58, v63, v53, v62, v49, v56, v55, v46, [v3 decodeIntegerForKey:@"authenticationPolicy"], v57, v54, v60, v59, v50, v47, v51, v42, v37);

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

- (LNActionMetadata)initWithIdentifier:(id)a3 effectiveBundleIdentifier:(id)a4 title:(id)a5 description:(id)a6 presentationStyle:(int64_t)a7 outputType:(id)a8 parameters:(id)a9 systemProtocols:(id)a10 actionConfiguration:(id)a11 typeSpecificMetadata:(id)a12 shortcutsMetadata:(id)a13
{
  v17 = a4;
  v41 = MEMORY[0x1E695DFB8];
  v47 = v17;
  if (v17)
  {
    v40 = a13;
    v39 = a12;
    v38 = a11;
    v37 = a10;
    v18 = a9;
    v19 = a8;
    v36 = a6;
    v20 = a5;
    v21 = a3;
    v22 = [[LNEffectiveBundleIdentifier alloc] initWithType:0 bundleIdentifier:v47 url:0];
    v42 = [v41 orderedSetWithObject:v22];
    LOBYTE(v35) = 0;
    v45 = [(LNActionMetadata *)self initWithIdentifier:v21 mangledTypeName:v21 effectiveBundleIdentifiers:v42 bundleMetadataVersion:0 title:v20 description:v36 presentationStyle:a7 outputType:v19 parameters:v18 systemProtocols:v37 sessionStartingAction:v35 actionConfiguration:v38 typeSpecificMetadata:v39 iconSystemImageName:0 shortcutsMetadata:v40 customIntentClassName:0];

    v23 = v22;
    v24 = v45;
  }

  else
  {
    v25 = a13;
    v26 = a12;
    v27 = a11;
    v28 = a10;
    v29 = a9;
    v30 = a8;
    v31 = a6;
    v32 = a5;
    v33 = a3;
    v23 = [v41 orderedSet];
    LOBYTE(v35) = 0;
    v46 = [(LNActionMetadata *)self initWithIdentifier:v33 mangledTypeName:v33 effectiveBundleIdentifiers:v23 bundleMetadataVersion:0 title:v32 description:v31 presentationStyle:a7 outputType:v30 parameters:v29 systemProtocols:v28 sessionStartingAction:v35 actionConfiguration:v27 typeSpecificMetadata:v26 iconSystemImageName:0 shortcutsMetadata:v25 customIntentClassName:0];

    v24 = v46;
  }

  return v24;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 effectiveBundleIdentifier:(id)a4 title:(id)a5 description:(id)a6 presentationStyle:(int64_t)a7 outputType:(id)a8 parameters:(id)a9 systemProtocols:(id)a10 actionConfiguration:(id)a11 typeSpecificMetadata:(id)a12 iconSystemImageName:(id)a13 shortcutsMetadata:(id)a14
{
  v16 = a4;
  v45 = MEMORY[0x1E695DFB8];
  v51 = v16;
  if (v16)
  {
    v40 = a14;
    v39 = a13;
    v38 = a12;
    v17 = a11;
    v37 = a10;
    v18 = a9;
    v19 = a8;
    v20 = a6;
    v21 = a5;
    v22 = a3;
    v23 = [[LNEffectiveBundleIdentifier alloc] initWithType:0 bundleIdentifier:v51 url:0];
    v24 = v45;
    v46 = v23;
    v44 = [v24 orderedSetWithObject:?];
    LOBYTE(v36) = 0;
    v49 = [(LNActionMetadata *)self initWithIdentifier:v22 mangledTypeName:v22 effectiveBundleIdentifiers:v44 bundleMetadataVersion:0 title:v21 description:v20 presentationStyle:a7 outputType:v19 parameters:v18 systemProtocols:v37 sessionStartingAction:v36 actionConfiguration:v17 typeSpecificMetadata:v38 iconSystemImageName:v39 shortcutsMetadata:v40 customIntentClassName:0];

    v25 = v49;
  }

  else
  {
    v41 = a14;
    v26 = a13;
    v27 = a12;
    v28 = a11;
    v29 = a10;
    v30 = a9;
    v31 = a8;
    v32 = a6;
    v33 = a5;
    v34 = a3;
    [v45 orderedSet];
    v46 = LOBYTE(v36) = 0;
    v50 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:sessionStartingAction:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:v34 effectiveBundleIdentifiers:v34 bundleMetadataVersion:a7 title:v31 description:v30 presentationStyle:v29 outputType:v36 parameters:v28 systemProtocols:v27 sessionStartingAction:v26 actionConfiguration:v41 typeSpecificMetadata:0 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

    v25 = v50;
  }

  return v25;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifier:(id)a5 title:(id)a6 description:(id)a7 presentationStyle:(int64_t)a8 outputType:(id)a9 parameters:(id)a10 systemProtocols:(id)a11 actionConfiguration:(id)a12 typeSpecificMetadata:(id)a13 iconSystemImageName:(id)a14 shortcutsMetadata:(id)a15
{
  v17 = a5;
  v46 = MEMORY[0x1E695DFB8];
  v52 = v17;
  if (v17)
  {
    v41 = a15;
    v40 = a13;
    v39 = a12;
    v18 = a11;
    v38 = a10;
    v19 = a9;
    v37 = a7;
    v20 = a6;
    v21 = a4;
    v45 = a3;
    v22 = [[LNEffectiveBundleIdentifier alloc] initWithType:0 bundleIdentifier:v52 url:0];
    v23 = v46;
    v47 = v22;
    v24 = [v23 orderedSetWithObject:?];
    LOBYTE(v36) = 0;
    v50 = [(LNActionMetadata *)self initWithIdentifier:v45 mangledTypeName:v21 effectiveBundleIdentifiers:v24 bundleMetadataVersion:0 title:v20 description:v37 presentationStyle:a8 outputType:v19 parameters:v38 systemProtocols:v18 sessionStartingAction:v36 actionConfiguration:v39 typeSpecificMetadata:v40 iconSystemImageName:0 shortcutsMetadata:v41 customIntentClassName:0];

    v25 = v50;
  }

  else
  {
    v42 = a15;
    v26 = a13;
    v27 = a12;
    v28 = a11;
    v29 = a10;
    v30 = a9;
    v31 = a7;
    v32 = a6;
    v33 = a4;
    v34 = a3;
    [v46 orderedSet];
    v47 = LOBYTE(v36) = 0;
    v51 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:sessionStartingAction:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:v34 effectiveBundleIdentifiers:v33 bundleMetadataVersion:a8 title:v30 description:v29 presentationStyle:v28 outputType:v36 parameters:v27 systemProtocols:v26 sessionStartingAction:0 actionConfiguration:v42 typeSpecificMetadata:0 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

    v25 = v51;
  }

  return v25;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifier:(id)a5 title:(id)a6 description:(id)a7 presentationStyle:(int64_t)a8 outputType:(id)a9 parameters:(id)a10 systemProtocols:(id)a11 actionConfiguration:(id)a12 typeSpecificMetadata:(id)a13 iconSystemImageName:(id)a14 shortcutsMetadata:(id)a15 customIntentClassName:(id)a16
{
  v18 = a5;
  v53 = MEMORY[0x1E695DFB8];
  v58 = v18;
  if (v18)
  {
    v44 = a16;
    v42 = a15;
    v19 = a14;
    v20 = a13;
    v40 = a12;
    v46 = a11;
    v21 = a10;
    v22 = a9;
    v23 = a7;
    v37 = a6;
    v36 = a4;
    v49 = a3;
    v24 = [[LNEffectiveBundleIdentifier alloc] initWithType:0 bundleIdentifier:v58 url:0];
    v25 = v53;
    v54 = v24;
    v51 = [v25 orderedSetWithObject:?];
    LOBYTE(v35) = 0;
    v26 = v23;
    v27 = [(LNActionMetadata *)self initWithIdentifier:v49 mangledTypeName:v36 effectiveBundleIdentifiers:v51 bundleMetadataVersion:0 title:v37 description:v23 presentationStyle:a8 outputType:v22 parameters:v21 systemProtocols:v46 sessionStartingAction:v35 actionConfiguration:v40 typeSpecificMetadata:v20 iconSystemImageName:v19 shortcutsMetadata:v42 customIntentClassName:v44];

    v28 = v27;
  }

  else
  {
    v29 = a16;
    v30 = a15;
    v45 = a14;
    v43 = a13;
    v41 = a12;
    v39 = a11;
    v47 = a10;
    v31 = a9;
    v38 = a7;
    v32 = a6;
    v52 = a4;
    v33 = a3;
    [v53 orderedSet];
    v54 = LOBYTE(v35) = 0;
    v57 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:sessionStartingAction:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:v33 effectiveBundleIdentifiers:v52 bundleMetadataVersion:a8 title:v31 description:v47 presentationStyle:v39 outputType:v35 parameters:v41 systemProtocols:v43 sessionStartingAction:v45 actionConfiguration:v30 typeSpecificMetadata:v29 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

    v28 = v57;
  }

  return v28;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifier:(id)a5 title:(id)a6 description:(id)a7 presentationStyle:(int64_t)a8 outputType:(id)a9 parameters:(id)a10 systemProtocols:(id)a11 sessionStartingAction:(BOOL)a12 actionConfiguration:(id)a13 typeSpecificMetadata:(id)a14 iconSystemImageName:(id)a15 shortcutsMetadata:(id)a16 customIntentClassName:(id)a17
{
  v19 = a5;
  v54 = MEMORY[0x1E695DFB8];
  v59 = v19;
  if (v19)
  {
    v45 = a17;
    v43 = a16;
    v20 = a15;
    v21 = a14;
    v41 = a13;
    v47 = a11;
    v22 = a10;
    v23 = a9;
    v24 = a7;
    v37 = a6;
    v38 = a4;
    v50 = a3;
    v25 = [[LNEffectiveBundleIdentifier alloc] initWithType:0 bundleIdentifier:v59 url:0];
    v26 = v54;
    v55 = v25;
    v53 = [v26 orderedSetWithObject:?];
    LOBYTE(v36) = a12;
    v27 = v24;
    v28 = [(LNActionMetadata *)self initWithIdentifier:v50 mangledTypeName:v38 effectiveBundleIdentifiers:v53 bundleMetadataVersion:0 title:v37 description:v24 presentationStyle:a8 outputType:v23 parameters:v22 systemProtocols:v47 sessionStartingAction:v36 actionConfiguration:v41 typeSpecificMetadata:v21 iconSystemImageName:v20 shortcutsMetadata:v43 customIntentClassName:v45];

    v29 = v28;
  }

  else
  {
    v30 = a17;
    v31 = a16;
    v46 = a15;
    v44 = a14;
    v42 = a13;
    v40 = a11;
    v48 = a10;
    v32 = a9;
    v39 = a7;
    v51 = a6;
    v33 = a4;
    v34 = a3;
    [v54 orderedSet];
    v55 = LOBYTE(v36) = a12;
    v58 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:sessionStartingAction:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:v34 effectiveBundleIdentifiers:v33 bundleMetadataVersion:a8 title:v32 description:v48 presentationStyle:v40 outputType:v36 parameters:v42 systemProtocols:v44 sessionStartingAction:v46 actionConfiguration:v31 typeSpecificMetadata:v30 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

    v29 = v58;
  }

  return v29;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifiers:(id)a5 bundleMetadataVersion:(int64_t)a6 title:(id)a7 description:(id)a8 presentationStyle:(int64_t)a9 outputType:(id)a10 parameters:(id)a11 systemProtocols:(id)a12 sessionStartingAction:(BOOL)a13 actionConfiguration:(id)a14 typeSpecificMetadata:(id)a15 iconSystemImageName:(id)a16 shortcutsMetadata:(id)a17 customIntentClassName:(id)a18 requiresMDMChecks:(BOOL)a19
{
  v42 = a3;
  v40 = a4;
  v39 = a5;
  v38 = a7;
  v37 = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a14;
  v27 = a15;
  v28 = a16;
  v29 = a17;
  v30 = a18;
  v41 = [v25 mutableCopy];
  if (a13)
  {
    v31 = +[LNSystemProtocol sessionStartingProtocol];
    [v41 addObject:v31];
  }

  if (a19)
  {
    v32 = +[LNSystemProtocol requiresMDMChecksProtocol];
    [v41 addObject:v32];
  }

  v36 = [(LNActionMetadata *)self initWithIdentifier:v42 mangledTypeName:v40 mangledTypeNameByBundleIdentifier:MEMORY[0x1E695E0F8] effectiveBundleIdentifiers:v39 bundleMetadataVersion:a6 title:v38 description:v37 presentationStyle:a9 outputType:v23 parameters:v24 systemProtocols:v25 actionConfiguration:v26 typeSpecificMetadata:v27 iconSystemImageName:v28 shortcutsMetadata:v29 customIntentClassName:v30];

  return v36;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifiers:(id)a5 bundleMetadataVersion:(int64_t)a6 title:(id)a7 description:(id)a8 presentationStyle:(int64_t)a9 outputType:(id)a10 parameters:(id)a11 systemProtocols:(id)a12 actionConfiguration:(id)a13 typeSpecificMetadata:(id)a14 iconSystemImageName:(id)a15 shortcutsMetadata:(id)a16 customIntentClassName:(id)a17
{
  v32 = MEMORY[0x1E695DFB8];
  v33 = a17;
  v31 = a16;
  v38 = a15;
  v37 = a14;
  v19 = a13;
  v20 = a12;
  v21 = a11;
  v22 = a10;
  v23 = a8;
  v24 = a7;
  v30 = a4;
  v25 = a3;
  v35 = [v32 orderedSet];
  v26 = v24;
  v27 = [(LNActionMetadata *)self initWithIdentifier:v25 mangledTypeName:v30 mangledTypeNameByBundleIdentifier:MEMORY[0x1E695E0F8] effectiveBundleIdentifiers:v35 bundleMetadataVersion:0 title:v24 description:v23 presentationStyle:a9 outputType:v22 parameters:v21 systemProtocols:v20 actionConfiguration:v19 typeSpecificMetadata:v37 iconSystemImageName:v38 shortcutsMetadata:v31 customIntentClassName:v33];

  return v27;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 mangledTypeNameByBundleIdentifier:(id)a5 effectiveBundleIdentifiers:(id)a6 bundleMetadataVersion:(int64_t)a7 title:(id)a8 description:(id)a9 presentationStyle:(int64_t)a10 outputType:(id)a11 parameters:(id)a12 systemProtocols:(id)a13 actionConfiguration:(id)a14 typeSpecificMetadata:(id)a15 iconSystemImageName:(id)a16 shortcutsMetadata:(id)a17 customIntentClassName:(id)a18
{
  v41 = a3;
  v40 = a4;
  v39 = a5;
  v38 = a6;
  v35 = a8;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v26 = a15;
  v27 = a16;
  v28 = a17;
  v29 = a18;
  if (a9)
  {
    v30 = a9;
    v31 = [LNActionDescriptionMetadata alloc];
    v32 = [(LNActionDescriptionMetadata *)v31 initWithDescriptionText:v30 categoryName:0 searchKeywords:MEMORY[0x1E695E0F0] resultValueName:0];
  }

  else
  {
    v32 = 0;
  }

  v37 = [(LNActionMetadata *)self initWithIdentifier:v41 mangledTypeName:v40 mangledTypeNameByBundleIdentifier:v39 effectiveBundleIdentifiers:v38 bundleMetadataVersion:a7 title:v35 descriptionMetadata:v32 presentationStyle:a10 authenticationPolicy:0 outputType:v22 parameters:v23 systemProtocols:v24 actionConfiguration:v25 typeSpecificMetadata:v26 iconSystemImageName:v27 customIntentClassName:v29 shortcutsMetadata:v28];

  return v37;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 title:(id)a4 description:(id)a5 presentationStyle:(int64_t)a6 outputType:(id)a7 parameters:(id)a8 systemProtocols:(id)a9 actionConfiguration:(id)a10
{
  v17 = MEMORY[0x1E695DFB8];
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [v17 orderedSet];
  v26 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:v24 mangledTypeNameByBundleIdentifier:v24 effectiveBundleIdentifiers:v22 bundleMetadataVersion:a6 title:v21 description:v20 presentationStyle:v19 outputType:v18 parameters:MEMORY[0x1E695E0F8] systemProtocols:0 actionConfiguration:MEMORY[0x1E695E0F8] typeSpecificMetadata:0 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

  return v26;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 effectiveBundleIdentifier:(id)a4 title:(id)a5 description:(id)a6 presentationStyle:(int64_t)a7 outputType:(id)a8 parameters:(id)a9 systemProtocols:(id)a10 actionConfiguration:(id)a11 typeSpecificMetadata:(id)a12
{
  v16 = MEMORY[0x1E695DFB8];
  v17 = a12;
  v18 = a11;
  v19 = a10;
  v20 = a9;
  v21 = a8;
  v22 = a6;
  v23 = a5;
  v24 = a3;
  v25 = [v16 orderedSet];
  v26 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:v24 mangledTypeNameByBundleIdentifier:v24 effectiveBundleIdentifiers:v22 bundleMetadataVersion:a7 title:v21 description:v20 presentationStyle:v19 outputType:v18 parameters:v17 systemProtocols:0 actionConfiguration:MEMORY[0x1E695E0F8] typeSpecificMetadata:0 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

  return v26;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifier:(id)a5 title:(id)a6 description:(id)a7 presentationStyle:(int64_t)a8 outputType:(id)a9 parameters:(id)a10 systemProtocols:(id)a11 actionConfiguration:(id)a12 typeSpecificMetadata:(id)a13
{
  v27 = MEMORY[0x1E695DFB8];
  v16 = a13;
  v17 = a12;
  v18 = a11;
  v19 = a10;
  v20 = a9;
  v21 = a7;
  v22 = a6;
  v23 = a4;
  v24 = a3;
  v25 = [v27 orderedSet];
  v31 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:v24 mangledTypeNameByBundleIdentifier:v23 effectiveBundleIdentifiers:v21 bundleMetadataVersion:a8 title:v20 description:v19 presentationStyle:v18 outputType:v17 parameters:v16 systemProtocols:0 actionConfiguration:MEMORY[0x1E695E0F8] typeSpecificMetadata:0 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

  return v31;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifier:(id)a5 title:(id)a6 description:(id)a7 presentationStyle:(int64_t)a8 outputType:(id)a9 parameters:(id)a10 systemProtocols:(id)a11 actionConfiguration:(id)a12 typeSpecificMetadata:(id)a13 customIntentClassName:(id)a14
{
  v25 = MEMORY[0x1E695DFB8];
  v28 = a14;
  v27 = a13;
  v24 = a12;
  v16 = a11;
  v17 = a10;
  v18 = a9;
  v19 = a7;
  v20 = a6;
  v21 = a4;
  v22 = a3;
  v30 = [v25 orderedSet];
  v33 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:v22 mangledTypeNameByBundleIdentifier:v21 effectiveBundleIdentifiers:v19 bundleMetadataVersion:a8 title:v18 description:v17 presentationStyle:v16 outputType:v24 parameters:v27 systemProtocols:0 actionConfiguration:MEMORY[0x1E695E0F8] typeSpecificMetadata:v28 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

  return v33;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifier:(id)a5 title:(id)a6 description:(id)a7 presentationStyle:(int64_t)a8 outputType:(id)a9 parameters:(id)a10 systemProtocols:(id)a11 sessionStartingAction:(BOOL)a12 actionConfiguration:(id)a13 typeSpecificMetadata:(id)a14 customIntentClassName:(id)a15
{
  v26 = MEMORY[0x1E695DFB8];
  v29 = a15;
  v28 = a14;
  v25 = a13;
  v17 = a11;
  v18 = a10;
  v19 = a9;
  v20 = a7;
  v21 = a6;
  v22 = a4;
  v23 = a3;
  v31 = [v26 orderedSet];
  v34 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:v23 mangledTypeNameByBundleIdentifier:v22 effectiveBundleIdentifiers:v20 bundleMetadataVersion:a8 title:v19 description:v18 presentationStyle:v17 outputType:v25 parameters:v28 systemProtocols:0 actionConfiguration:MEMORY[0x1E695E0F8] typeSpecificMetadata:v29 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

  return v34;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifiers:(id)a5 title:(id)a6 description:(id)a7 presentationStyle:(int64_t)a8 outputType:(id)a9 parameters:(id)a10 systemProtocols:(id)a11 sessionStartingAction:(BOOL)a12 actionConfiguration:(id)a13 typeSpecificMetadata:(id)a14 customIntentClassName:(id)a15
{
  v26 = MEMORY[0x1E695DFB8];
  v29 = a15;
  v28 = a14;
  v25 = a13;
  v17 = a11;
  v18 = a10;
  v19 = a9;
  v20 = a7;
  v21 = a6;
  v22 = a4;
  v23 = a3;
  v31 = [v26 orderedSet];
  v34 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:v23 mangledTypeNameByBundleIdentifier:v22 effectiveBundleIdentifiers:v20 bundleMetadataVersion:a8 title:v19 description:v18 presentationStyle:v17 outputType:v25 parameters:v28 systemProtocols:0 actionConfiguration:MEMORY[0x1E695E0F8] typeSpecificMetadata:v29 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

  return v34;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 effectiveBundleIdentifiers:(id)a5 title:(id)a6 description:(id)a7 presentationStyle:(int64_t)a8 outputType:(id)a9 parameters:(id)a10 systemProtocols:(id)a11 actionConfiguration:(id)a12 typeSpecificMetadata:(id)a13 customIntentClassName:(id)a14
{
  v25 = MEMORY[0x1E695DFB8];
  v28 = a14;
  v27 = a13;
  v24 = a12;
  v16 = a11;
  v17 = a10;
  v18 = a9;
  v19 = a7;
  v20 = a6;
  v21 = a4;
  v22 = a3;
  v30 = [v25 orderedSet];
  v33 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:v22 mangledTypeNameByBundleIdentifier:v21 effectiveBundleIdentifiers:v19 bundleMetadataVersion:a8 title:v18 description:v17 presentationStyle:v16 outputType:v24 parameters:v27 systemProtocols:0 actionConfiguration:MEMORY[0x1E695E0F8] typeSpecificMetadata:v28 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

  return v33;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 title:(id)a5 description:(id)a6 presentationStyle:(int64_t)a7 outputType:(id)a8 parameters:(id)a9 systemProtocols:(id)a10 actionConfiguration:(id)a11 typeSpecificMetadata:(id)a12 customIntentClassName:(id)a13
{
  v25 = MEMORY[0x1E695DFB8];
  v28 = a13;
  v27 = a12;
  v24 = a11;
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v30 = [v25 orderedSet];
  v33 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:description:presentationStyle:outputType:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:iconSystemImageName:shortcutsMetadata:customIntentClassName:" mangledTypeName:v22 mangledTypeNameByBundleIdentifier:v21 effectiveBundleIdentifiers:v19 bundleMetadataVersion:a7 title:v18 description:v17 presentationStyle:v16 outputType:v24 parameters:v27 systemProtocols:0 actionConfiguration:MEMORY[0x1E695E0F8] typeSpecificMetadata:v28 iconSystemImageName:? shortcutsMetadata:? customIntentClassName:?];

  return v33;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 title:(id)a5 descriptionMetadata:(id)a6 openAppWhenRun:(BOOL)a7 authenticationPolicy:(int64_t)a8 outputType:(id)a9 outputFlags:(unint64_t)a10 parameters:(id)a11 systemProtocols:(id)a12 actionConfiguration:(id)a13 typeSpecificMetadata:(id)a14 customIntentClassName:(id)a15
{
  v28 = MEMORY[0x1E695DFB8];
  v30 = a15;
  v29 = a14;
  v27 = a13;
  v18 = a12;
  v19 = a11;
  v20 = a9;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v32 = [v28 orderedSet];
  LOBYTE(v26) = a7;
  v36 = [LNActionMetadata initWithIdentifier:"initWithIdentifier:mangledTypeName:mangledTypeNameByBundleIdentifier:effectiveBundleIdentifiers:bundleMetadataVersion:title:descriptionMetadata:openAppWhenRun:authenticationPolicy:outputType:outputFlags:parameters:systemProtocols:actionConfiguration:typeSpecificMetadata:customIntentClassName:availabilityAnnotations:shortcutsMetadata:" mangledTypeName:v24 mangledTypeNameByBundleIdentifier:v23 effectiveBundleIdentifiers:v21 bundleMetadataVersion:v26 title:a8 descriptionMetadata:v20 openAppWhenRun:a10 authenticationPolicy:v19 outputType:v18 outputFlags:v27 parameters:v29 systemProtocols:v30 actionConfiguration:0 typeSpecificMetadata:MEMORY[0x1E695E0F8] customIntentClassName:? availabilityAnnotations:? shortcutsMetadata:?];

  return v36;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 mangledTypeNameByBundleIdentifier:(id)a5 effectiveBundleIdentifiers:(id)a6 bundleMetadataVersion:(int64_t)a7 title:(id)a8 descriptionMetadata:(id)a9 openAppWhenRun:(BOOL)a10 authenticationPolicy:(int64_t)a11 outputType:(id)a12 outputFlags:(unint64_t)a13 parameters:(id)a14 systemProtocols:(id)a15 actionConfiguration:(id)a16 typeSpecificMetadata:(id)a17 customIntentClassName:(id)a18 availabilityAnnotations:(id)a19 shortcutsMetadata:(id)a20
{
  v58 = *MEMORY[0x1E69E9840];
  v52 = a3;
  v51 = a4;
  v49 = a5;
  v48 = a6;
  v45 = a8;
  v43 = a9;
  v50 = a12;
  v24 = a14;
  v25 = a15;
  v42 = a16;
  v41 = a17;
  v40 = a18;
  v26 = a19;
  v39 = a20;
  v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v25, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v28 = v25;
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
        v35 = [v33 identifier];
        [v27 setValue:v34 forKey:v35];
      }

      v30 = [v28 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v30);
  }

  LOBYTE(v38) = a10;
  v47 = [(LNActionMetadata *)self initWithIdentifier:v52 mangledTypeName:v51 mangledTypeNameByBundleIdentifier:v49 effectiveBundleIdentifiers:v48 bundleMetadataVersion:a7 title:v45 descriptionMetadata:v43 openAppWhenRun:v38 authenticationPolicy:a11 outputType:v50 outputFlags:a13 parameters:v24 systemProtocolMetadata:v27 actionConfiguration:v42 typeSpecificMetadata:v41 customIntentClassName:v40 availabilityAnnotations:v26 shortcutsMetadata:v39];

  v36 = *MEMORY[0x1E69E9840];
  return v47;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 mangledTypeNameByBundleIdentifier:(id)a5 effectiveBundleIdentifiers:(id)a6 bundleMetadataVersion:(int64_t)a7 title:(id)a8 descriptionMetadata:(id)a9 deprecationMetadata:(id)a10 openAppWhenRun:(BOOL)a11 discoverable:(BOOL)a12 authenticationPolicy:(int64_t)a13 outputType:(id)a14 outputFlags:(unint64_t)a15 parameters:(id)a16 systemProtocolMetadata:(id)a17 actionConfiguration:(id)a18 typeSpecificMetadata:(id)a19 customIntentClassName:(id)a20 availabilityAnnotations:(id)a21 shortcutsMetadata:(id)a22 requiredCapabilities:(id)a23 attributionBundleIdentifier:(id)a24 sideEffect:(id)a25 assistantDefinedSchemas:(id)a26 assistantDefinedSchemaTraits:(id)a27
{
  v40 = a27;
  v27 = a26;
  v37 = a25;
  v36 = a24;
  v35 = a23;
  v34 = a22;
  v33 = a21;
  v32 = a20;
  v47 = a19;
  v46 = a18;
  v58 = a17;
  v51 = a16;
  v50 = a14;
  v57 = a10;
  v56 = a9;
  v55 = a8;
  v53 = a6;
  v49 = a5;
  v28 = a4;
  v29 = a3;
  v41 = [[LNVisibilityMetadata alloc] initWithIsDiscoverable:a12 assistantOnly:0];
  v42 = [MEMORY[0x1E696AD98] numberWithInteger:a13];
  LOBYTE(v31) = a11;
  v45 = [(LNActionMetadata *)self initWithIdentifier:v29 mangledTypeName:v28 mangledTypeNameByBundleIdentifier:v49 effectiveBundleIdentifiers:v53 bundleMetadataVersion:a7 title:v55 descriptionMetadata:v56 deprecationMetadata:v57 openAppWhenRun:v31 supportedModes:0 explicitAuthenticationPolicy:v42 outputType:v50 outputFlags:a15 parameters:v51 systemProtocolMetadata:v58 actionConfiguration:v46 typeSpecificMetadata:v47 customIntentClassName:v32 availabilityAnnotations:v33 shortcutsMetadata:v34 requiredCapabilities:v35 attributionBundleIdentifier:v36 sideEffect:v37 assistantDefinedSchemas:v27 assistantDefinedSchemaTraits:v40 visibilityMetadata:v41 fullyQualifiedTypeName:0 constraints:0 allowedTargets:0];

  return v45;
}

- (LNActionMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 mangledTypeNameByBundleIdentifier:(id)a5 effectiveBundleIdentifiers:(id)a6 bundleMetadataVersion:(int64_t)a7 title:(id)a8 descriptionMetadata:(id)a9 deprecationMetadata:(id)a10 openAppWhenRun:(BOOL)a11 authenticationPolicy:(int64_t)a12 outputType:(id)a13 outputFlags:(unint64_t)a14 parameters:(id)a15 systemProtocolMetadata:(id)a16 actionConfiguration:(id)a17 typeSpecificMetadata:(id)a18 customIntentClassName:(id)a19 availabilityAnnotations:(id)a20 shortcutsMetadata:(id)a21 requiredCapabilities:(id)a22 attributionBundleIdentifier:(id)a23 sideEffect:(id)a24 assistantDefinedSchemas:(id)a25 assistantDefinedSchemaTraits:(id)a26 visibilityMetadata:(id)a27 fullyQualifiedTypeName:(id)a28
{
  v38 = MEMORY[0x1E696AD98];
  v39 = a28;
  v28 = a27;
  v29 = a26;
  v37 = a25;
  v36 = a24;
  v35 = a23;
  v51 = a22;
  v61 = a21;
  v60 = a20;
  v59 = a19;
  v58 = a18;
  v57 = a17;
  v56 = a16;
  v55 = a15;
  v54 = a13;
  v53 = a10;
  v52 = a9;
  v41 = a8;
  v30 = a6;
  v31 = a5;
  v45 = a4;
  v32 = a3;
  v47 = [v38 numberWithInteger:a12];
  LOBYTE(v34) = a11;
  v50 = [(LNActionMetadata *)self initWithIdentifier:v32 mangledTypeName:v45 mangledTypeNameByBundleIdentifier:v31 effectiveBundleIdentifiers:v30 bundleMetadataVersion:a7 title:v41 descriptionMetadata:v52 deprecationMetadata:v53 openAppWhenRun:v34 explicitAuthenticationPolicy:v47 outputType:v54 outputFlags:a14 parameters:v55 systemProtocolMetadata:v56 actionConfiguration:v57 typeSpecificMetadata:v58 customIntentClassName:v59 availabilityAnnotations:v60 shortcutsMetadata:v61 requiredCapabilities:v51 attributionBundleIdentifier:v35 sideEffect:v36 assistantDefinedSchemas:v37 assistantDefinedSchemaTraits:v29 visibilityMetadata:v28 fullyQualifiedTypeName:v39];

  return v50;
}

- (BOOL)requiresMDMChecks
{
  v2 = [(LNActionMetadata *)self systemProtocols];
  v3 = +[LNSystemProtocol requiresMDMChecksProtocol];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (BOOL)isSessionStartingAction
{
  v2 = [(LNActionMetadata *)self systemProtocols];
  v3 = +[LNSystemProtocol sessionStartingProtocol];
  v4 = [v2 containsObject:v3];

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
  v2 = [(LNActionMetadata *)self effectiveBundleIdentifiers];
  v3 = [v2 firstObject];
  v4 = [v3 bundleIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
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
  v2 = [(LNActionMetadata *)self descriptionMetadata];
  v3 = [v2 descriptionText];

  return v3;
}

@end