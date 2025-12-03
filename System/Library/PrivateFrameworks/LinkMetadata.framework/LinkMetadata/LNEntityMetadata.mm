@interface LNEntityMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)visibleForUse:(int64_t)use;
- (LNEntityMetadata)entityMetadataWithAttributionBundleIdentifier:(id)identifier;
- (LNEntityMetadata)initWithCoder:(id)coder;
- (LNEntityMetadata)initWithIdentifier:(id)identifier transient:(BOOL)transient mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers displayRepresentation:(id)representation properties:(id)properties customIntentTypeClassName:(id)self0 availabilityAnnotations:(id)self1 requiredCapabilities:(id)self2 systemProtocolMetadata:(id)self3 attributionBundleIdentifier:(id)self4 transferableContentTypes:(id)self5 assistantDefinedSchemas:(id)self6 fullyQualifiedTypeName:(id)self7;
- (LNEntityMetadata)initWithIdentifier:(id)identifier transient:(BOOL)transient mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers displayRepresentation:(id)representation properties:(id)properties customIntentTypeClassName:(id)self0 availabilityAnnotations:(id)self1 requiredCapabilities:(id)self2 systemProtocolMetadata:(id)self3 attributionBundleIdentifier:(id)self4 transferableContentTypes:(id)self5 assistantDefinedSchemas:(id)self6 fullyQualifiedTypeName:(id)self7 visibilityMetadata:(id)self8 defaultQueryIdentifier:(id)self9 allowedTargets:(id)targets;
- (LNEntityMetadata)initWithIdentifier:(id)identifier transient:(BOOL)transient mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers displayTypeName:(id)typeName properties:(id)properties customIntentTypeClassName:(id)self0;
- (LNEntityMetadata)initWithTypeName:(id)name displayTypeName:(id)typeName properties:(id)properties customIntentTypeClassName:(id)className;
- (LNEntityMetadata)initWithTypeName:(id)name properties:(id)properties;
- (LNStaticDeferredLocalizedString)displayTypeName;
- (NSString)description;
- (id)copyWithAdditionalTransferableContentTypes:(id)types;
- (id)copyWithDescriptiveMetadataFromEntity:(id)entity usingLibraryKey:(id)key;
- (id)identifierIndexedProperties;
- (id)mangledTypeNameForBundleIdentifier:(id)identifier;
- (id)metadataByAddingEffectiveBundleIdentifiers:(id)identifiers mangledTypeNameByBundleIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNEntityMetadata

- (id)identifierIndexedProperties
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  properties = [(LNEntityMetadata *)self properties];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__LNEntityMetadata_identifierIndexedProperties__block_invoke;
  v7[3] = &unk_1E72B0F10;
  v5 = v3;
  v8 = v5;
  [properties enumerateObjectsUsingBlock:v7];

  return v5;
}

void __47__LNEntityMetadata_identifierIndexedProperties__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 identifier];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 identifier];
    [v4 setObject:v6 forKeyedSubscript:v5];
  }
}

- (id)copyWithAdditionalTransferableContentTypes:(id)types
{
  typesCopy = types;
  v5 = [(LNEntityMetadata *)self copy];
  transferableContentTypes = [v5 transferableContentTypes];
  exportableTypes = [transferableContentTypes exportableTypes];
  v8 = exportableTypes;
  v9 = MEMORY[0x1E695E0F0];
  if (exportableTypes)
  {
    v10 = exportableTypes;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = v10;

  transferableContentTypes2 = [v5 transferableContentTypes];
  importableTypes = [transferableContentTypes2 importableTypes];
  v14 = importableTypes;
  if (importableTypes)
  {
    v15 = importableTypes;
  }

  else
  {
    v15 = v9;
  }

  v16 = v15;

  exportableTypes2 = [typesCopy exportableTypes];
  v18 = [v11 arrayByAddingObjectsFromArray:exportableTypes2];

  importableTypes2 = [typesCopy importableTypes];

  v20 = [v16 arrayByAddingObjectsFromArray:importableTypes2];

  v21 = [[LNContentTypeMetadata alloc] initWithExportableTypes:v18 importableTypes:v20];
  v22 = v5[12];
  v5[12] = v21;

  return v5;
}

- (id)copyWithDescriptiveMetadataFromEntity:(id)entity usingLibraryKey:(id)key
{
  entityCopy = entity;
  keyCopy = key;
  v8 = [(LNEntityMetadata *)self copy];
  name = [*(v8 + 56) name];
  v10 = [name key];
  v11 = [v10 length];

  if (!v11)
  {
    v12 = [LNTypeDisplayRepresentation alloc];
    displayRepresentation = [entityCopy displayRepresentation];
    name2 = [displayRepresentation name];
    displayRepresentation2 = [(LNEntityMetadata *)self displayRepresentation];
    numericFormat = [displayRepresentation2 numericFormat];
    displayRepresentation3 = [(LNEntityMetadata *)self displayRepresentation];
    synonyms = [displayRepresentation3 synonyms];
    v18 = [(LNTypeDisplayRepresentation *)v12 initWithName:name2 numericFormat:numericFormat synonyms:synonyms];
    v19 = *(v8 + 56);
    *(v8 + 56) = v18;
  }

  identifierIndexedProperties = [entityCopy identifierIndexedProperties];
  properties = [(LNEntityMetadata *)self properties];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __74__LNEntityMetadata_copyWithDescriptiveMetadataFromEntity_usingLibraryKey___block_invoke;
  v28[3] = &unk_1E72B0EE8;
  v29 = identifierIndexedProperties;
  v30 = keyCopy;
  v22 = keyCopy;
  v23 = identifierIndexedProperties;
  v24 = [properties if_map:v28];
  v25 = *(v8 + 48);
  *(v8 + 48) = v24;

  return v8;
}

id __74__LNEntityMetadata_copyWithDescriptiveMetadataFromEntity_usingLibraryKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 identifier];
  v6 = [v3 objectForKey:v5];

  if (v6)
  {
    v7 = [v4 copyWithDescriptiveMetadataFromProperty:v6 usingLibraryKey:*(a1 + 40)];
  }

  else
  {
    v7 = [v4 copy];
  }

  v8 = v7;

  return v8;
}

- (id)metadataByAddingEffectiveBundleIdentifiers:(id)identifiers mangledTypeNameByBundleIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  if (!identifiersCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNEntityMetadata.m" lineNumber:263 description:{@"Invalid parameter not satisfying: %@", @"effectiveBundleIdentifiers"}];
  }

  v9 = [(LNEntityMetadata *)self copy];
  effectiveBundleIdentifiers = [v9 effectiveBundleIdentifiers];
  array = [identifiersCopy array];
  v12 = [effectiveBundleIdentifiers if_orderedSetByAddingObjectsFromArray:array];
  v13 = v9[5];
  v9[5] = v12;

  mangledTypeNameByBundleIdentifier = [v9 mangledTypeNameByBundleIdentifier];
  v15 = [mangledTypeNameByBundleIdentifier if_dictionaryByAddingEntriesFromDictionary:identifierCopy];
  v16 = v9[4];
  v9[4] = v15;

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
      LOBYTE(requiredCapabilities3) = 0;
LABEL_104:

      goto LABEL_105;
    }

    identifier = [(LNEntityMetadata *)self identifier];
    identifier2 = [(LNEntityMetadata *)v6 identifier];
    v9 = identifier;
    v10 = identifier2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(requiredCapabilities3) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_102;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(requiredCapabilities3) = 0;
LABEL_103:

        goto LABEL_104;
      }
    }

    displayRepresentation = [(LNEntityMetadata *)self displayRepresentation];
    displayRepresentation2 = [(LNEntityMetadata *)v6 displayRepresentation];
    v14 = displayRepresentation;
    v18 = displayRepresentation2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(requiredCapabilities3) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_101;
      }

      v21 = [v14 isEqual:v18];

      if (!v21)
      {
LABEL_27:
        LOBYTE(requiredCapabilities3) = 0;
LABEL_102:

        goto LABEL_103;
      }
    }

    properties = [(LNEntityMetadata *)self properties];
    properties2 = [(LNEntityMetadata *)v6 properties];

    if (properties != properties2)
    {
      properties3 = [(LNEntityMetadata *)self properties];
      if (!properties3)
      {
        goto LABEL_27;
      }

      v25 = properties3;
      properties4 = [(LNEntityMetadata *)v6 properties];

      if (!properties4)
      {
        goto LABEL_27;
      }

      v114 = v13;
      v27 = MEMORY[0x1E695DFD8];
      properties5 = [(LNEntityMetadata *)self properties];
      v28 = [v27 setWithArray:properties5];
      v29 = MEMORY[0x1E695DFD8];
      properties6 = [(LNEntityMetadata *)v6 properties];
      v31 = [v29 setWithArray:properties6];
      v32 = [v28 isEqualToSet:v31];

      v13 = v114;
      if (!v32)
      {
        goto LABEL_27;
      }
    }

    v115 = v13;
    customIntentTypeClassName = [(LNEntityMetadata *)self customIntentTypeClassName];
    customIntentTypeClassName2 = [(LNEntityMetadata *)v6 customIntentTypeClassName];
    v20 = customIntentTypeClassName;
    v35 = customIntentTypeClassName2;
    v19 = v35;
    v113 = v20;
    if (v20 != v35)
    {
      LOBYTE(requiredCapabilities3) = 0;
      v36 = v35;
      if (v20)
      {
        v13 = v115;
        if (v35)
        {
          v37 = [v20 isEqualToString:v35];

          if (!v37)
          {
            LOBYTE(requiredCapabilities3) = 0;
            v13 = v115;
LABEL_101:

            goto LABEL_102;
          }

LABEL_29:
          availabilityAnnotations = [(LNEntityMetadata *)self availabilityAnnotations];
          availabilityAnnotations2 = [(LNEntityMetadata *)v6 availabilityAnnotations];
          v40 = availabilityAnnotations;
          v41 = availabilityAnnotations2;
          v110 = v41;
          v111 = v40;
          if (v40 == v41)
          {
          }

          else
          {
            LOBYTE(requiredCapabilities3) = 0;
            if (!v40)
            {
              v42 = v41;
              v13 = v115;
              goto LABEL_98;
            }

            v42 = v41;
            v13 = v115;
            if (!v41)
            {
LABEL_98:

              goto LABEL_99;
            }

            v43 = [v40 isEqualToDictionary:v41];

            if (!v43)
            {
              goto LABEL_44;
            }
          }

          requiredCapabilities = [(LNEntityMetadata *)self requiredCapabilities];
          requiredCapabilities2 = [(LNEntityMetadata *)v6 requiredCapabilities];

          if (requiredCapabilities != requiredCapabilities2)
          {
            requiredCapabilities3 = [(LNEntityMetadata *)self requiredCapabilities];
            if (!requiredCapabilities3)
            {
LABEL_45:
              v13 = v115;
LABEL_99:
              v36 = v110;
              v20 = v111;
              goto LABEL_100;
            }

            requiredCapabilities4 = [(LNEntityMetadata *)v6 requiredCapabilities];

            if (!requiredCapabilities4)
            {
              goto LABEL_44;
            }

            v47 = MEMORY[0x1E695DFD8];
            requiredCapabilities5 = [(LNEntityMetadata *)self requiredCapabilities];
            v48 = [v47 setWithArray:requiredCapabilities5];
            v49 = MEMORY[0x1E695DFD8];
            requiredCapabilities6 = [(LNEntityMetadata *)v6 requiredCapabilities];
            v51 = [v49 setWithArray:requiredCapabilities6];
            v106 = [v48 isEqualToSet:v51];

            if (!v106)
            {
LABEL_44:
              LOBYTE(requiredCapabilities3) = 0;
              goto LABEL_45;
            }
          }

          systemProtocolMetadata = [(LNEntityMetadata *)self systemProtocolMetadata];
          systemProtocolMetadata2 = [(LNEntityMetadata *)v6 systemProtocolMetadata];
          v40 = systemProtocolMetadata;
          v54 = systemProtocolMetadata2;
          v107 = v40;
          v109 = v54;
          if (v40 != v54)
          {
            LOBYTE(requiredCapabilities3) = 0;
            if (v40)
            {
              v55 = v54;
              v13 = v115;
              if (v54)
              {
                v56 = [v40 isEqualToDictionary:v54];

                if (!v56)
                {
                  LOBYTE(requiredCapabilities3) = 0;
                  v13 = v115;
                  v42 = v109;
                  goto LABEL_98;
                }

LABEL_49:
                attributionBundleIdentifier = [(LNEntityMetadata *)self attributionBundleIdentifier];
                attributionBundleIdentifier2 = [(LNEntityMetadata *)v6 attributionBundleIdentifier];
                v59 = attributionBundleIdentifier;
                v60 = attributionBundleIdentifier2;
                v104 = v60;
                v105 = v59;
                if (v59 == v60)
                {
                }

                else
                {
                  LOBYTE(requiredCapabilities3) = 0;
                  if (!v59)
                  {
                    v61 = v60;
                    v13 = v115;
                    goto LABEL_95;
                  }

                  v61 = v60;
                  v13 = v115;
                  if (!v60)
                  {
LABEL_95:

                    goto LABEL_96;
                  }

                  v62 = [v59 isEqualToString:v60];

                  if (!v62)
                  {
                    LOBYTE(requiredCapabilities3) = 0;
                    v13 = v115;
LABEL_96:
                    v55 = v104;
                    v40 = v105;
                    goto LABEL_97;
                  }
                }

                transferableContentTypes = [(LNEntityMetadata *)self transferableContentTypes];
                transferableContentTypes2 = [(LNEntityMetadata *)v6 transferableContentTypes];
                v59 = transferableContentTypes;
                v65 = transferableContentTypes2;
                v66 = v65;
                if (v59 != v65)
                {
                  LOBYTE(requiredCapabilities3) = 0;
                  v103 = v59;
                  v67 = v65;
                  if (v59)
                  {
                    v13 = v115;
                    if (v65)
                    {
                      v68 = v65;
                      v69 = [v59 isEqual:v65];
                      v102 = v68;

                      if (!v69)
                      {
                        goto LABEL_71;
                      }

LABEL_62:
                      assistantDefinedSchemas = [(LNEntityMetadata *)self assistantDefinedSchemas];
                      assistantDefinedSchemas2 = [(LNEntityMetadata *)v6 assistantDefinedSchemas];

                      if (assistantDefinedSchemas != assistantDefinedSchemas2)
                      {
                        requiredCapabilities3 = [(LNEntityMetadata *)self assistantDefinedSchemas];
                        if (!requiredCapabilities3)
                        {
LABEL_72:
                          v13 = v115;
                          v61 = v102;
                          goto LABEL_95;
                        }

                        assistantDefinedSchemas3 = [(LNEntityMetadata *)v6 assistantDefinedSchemas];

                        if (!assistantDefinedSchemas3)
                        {
                          goto LABEL_71;
                        }

                        v73 = MEMORY[0x1E695DFD8];
                        assistantDefinedSchemas4 = [(LNEntityMetadata *)self assistantDefinedSchemas];
                        v74 = [v73 setWithArray:assistantDefinedSchemas4];
                        v75 = MEMORY[0x1E695DFD8];
                        assistantDefinedSchemas5 = [(LNEntityMetadata *)v6 assistantDefinedSchemas];
                        v76 = [v75 setWithArray:assistantDefinedSchemas5];
                        v98 = [v74 isEqualToSet:v76];

                        if (!v98)
                        {
LABEL_71:
                          LOBYTE(requiredCapabilities3) = 0;
                          goto LABEL_72;
                        }
                      }

                      visibilityMetadata = [(LNEntityMetadata *)self visibilityMetadata];
                      visibilityMetadata2 = [(LNEntityMetadata *)v6 visibilityMetadata];
                      v79 = visibilityMetadata;
                      v80 = visibilityMetadata2;
                      v99 = v80;
                      v101 = v79;
                      v103 = v59;
                      if (v79 != v80)
                      {
                        LOBYTE(requiredCapabilities3) = 0;
                        if (v79)
                        {
                          v81 = v80;
                          v82 = v79;
                          v13 = v115;
                          if (v80)
                          {
                            v83 = [v101 isEqual:v80];

                            if (!v83)
                            {
                              LOBYTE(requiredCapabilities3) = 0;
                              v13 = v115;
LABEL_93:
                              v59 = v101;
                              v66 = v102;
                              v67 = v99;
                              goto LABEL_94;
                            }

LABEL_76:
                            defaultQueryIdentifier = [(LNEntityMetadata *)self defaultQueryIdentifier];
                            defaultQueryIdentifier2 = [(LNEntityMetadata *)v6 defaultQueryIdentifier];
                            v82 = defaultQueryIdentifier;
                            v86 = defaultQueryIdentifier2;
                            v97 = v86;
                            if (v82 != v86)
                            {
                              LOBYTE(requiredCapabilities3) = 0;
                              if (v82)
                              {
                                v87 = v86;
                                v88 = v82;
                                if (v86)
                                {
                                  v89 = [v82 isEqualToString:v86];

                                  if (!v89)
                                  {
                                    LOBYTE(requiredCapabilities3) = 0;
LABEL_91:
                                    v13 = v115;
                                    v81 = v97;
                                    goto LABEL_92;
                                  }

                                  goto LABEL_82;
                                }
                              }

                              else
                              {
                                v87 = v86;
                                v88 = 0;
                              }

LABEL_90:

                              goto LABEL_91;
                            }

LABEL_82:
                            allowedTargets = [(LNEntityMetadata *)self allowedTargets];
                            allowedTargets2 = [(LNEntityMetadata *)v6 allowedTargets];
                            v88 = allowedTargets;
                            v92 = allowedTargets2;
                            v93 = v92;
                            if (v88 == v92)
                            {
                              LOBYTE(requiredCapabilities3) = 1;
                            }

                            else
                            {
                              LOBYTE(requiredCapabilities3) = 0;
                              if (v88 && v92)
                              {
                                LOBYTE(requiredCapabilities3) = [v88 isEqualToArray:v92];
                              }
                            }

                            v87 = v93;
                            goto LABEL_90;
                          }
                        }

                        else
                        {
                          v81 = v80;
                          v82 = 0;
                          v13 = v115;
                        }

LABEL_92:

                        goto LABEL_93;
                      }

                      goto LABEL_76;
                    }
                  }

                  else
                  {
                    v13 = v115;
                  }

LABEL_94:
                  v94 = v66;

                  v61 = v94;
                  v59 = v103;
                  goto LABEL_95;
                }

                v102 = v65;

                goto LABEL_62;
              }
            }

            else
            {
              v55 = v54;
              v13 = v115;
            }

LABEL_97:

            v40 = v107;
            v42 = v109;
            goto LABEL_98;
          }

          goto LABEL_49;
        }
      }

      else
      {
        v13 = v115;
      }

LABEL_100:

      v20 = v113;
      goto LABEL_101;
    }

    goto LABEL_29;
  }

  LOBYTE(requiredCapabilities3) = 1;
LABEL_105:

  return requiredCapabilities3;
}

- (unint64_t)hash
{
  identifier = [(LNEntityMetadata *)self identifier];
  v3 = [identifier hash];
  isTransient = [(LNEntityMetadata *)self isTransient];
  displayRepresentation = [(LNEntityMetadata *)self displayRepresentation];
  v5 = v3 ^ [displayRepresentation hash] ^ isTransient;
  properties = [(LNEntityMetadata *)self properties];
  v6 = [properties hash];
  customIntentTypeClassName = [(LNEntityMetadata *)self customIntentTypeClassName];
  v7 = v6 ^ [customIntentTypeClassName hash];
  availabilityAnnotations = [(LNEntityMetadata *)self availabilityAnnotations];
  v8 = v5 ^ v7 ^ [availabilityAnnotations hash];
  requiredCapabilities = [(LNEntityMetadata *)self requiredCapabilities];
  v9 = [requiredCapabilities hash];
  systemProtocolMetadata = [(LNEntityMetadata *)self systemProtocolMetadata];
  v10 = v9 ^ [systemProtocolMetadata hash];
  attributionBundleIdentifier = [(LNEntityMetadata *)self attributionBundleIdentifier];
  v12 = v10 ^ [attributionBundleIdentifier hash];
  transferableContentTypes = [(LNEntityMetadata *)self transferableContentTypes];
  v14 = v8 ^ v12 ^ [transferableContentTypes hash];
  assistantDefinedSchemas = [(LNEntityMetadata *)self assistantDefinedSchemas];
  v16 = [assistantDefinedSchemas hash];
  fullyQualifiedTypeName = [(LNEntityMetadata *)self fullyQualifiedTypeName];
  v18 = v16 ^ [fullyQualifiedTypeName hash];
  visibilityMetadata = [(LNEntityMetadata *)self visibilityMetadata];
  v20 = v18 ^ [visibilityMetadata hash];
  defaultQueryIdentifier = [(LNEntityMetadata *)self defaultQueryIdentifier];
  v22 = v20 ^ [defaultQueryIdentifier hash];
  effectiveBundleIdentifiers = [(LNEntityMetadata *)self effectiveBundleIdentifiers];
  v24 = v14 ^ v22 ^ [effectiveBundleIdentifiers hash];
  allowedTargets = [(LNEntityMetadata *)self allowedTargets];
  v26 = [allowedTargets hash];

  return v24 ^ v26;
}

- (NSString)description
{
  v22 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v20 = NSStringFromClass(v3);
  identifier = [(LNEntityMetadata *)self identifier];
  isTransient = [(LNEntityMetadata *)self isTransient];
  v5 = @"NO";
  if (isTransient)
  {
    v5 = @"YES";
  }

  v19 = v5;
  displayRepresentation = [(LNEntityMetadata *)self displayRepresentation];
  effectiveBundleIdentifiers = [(LNEntityMetadata *)self effectiveBundleIdentifiers];
  array = [effectiveBundleIdentifiers array];
  v25 = [array valueForKeyPath:@"description"];
  v16 = [v25 componentsJoinedByString:{@", "}];
  allowedTargets = [(LNEntityMetadata *)self allowedTargets];
  v21 = [allowedTargets valueForKeyPath:@"description"];
  v29 = [v21 componentsJoinedByString:{@", "}];
  mangledTypeNameByBundleIdentifier = [(LNEntityMetadata *)self mangledTypeNameByBundleIdentifier];
  properties = [(LNEntityMetadata *)self properties];
  v17 = [properties valueForKeyPath:@"description"];
  v15 = [v17 componentsJoinedByString:{@", "}];
  availabilityAnnotations = [(LNEntityMetadata *)self availabilityAnnotations];
  requiredCapabilities = [(LNEntityMetadata *)self requiredCapabilities];
  systemProtocolMetadata = [(LNEntityMetadata *)self systemProtocolMetadata];
  attributionBundleIdentifier = [(LNEntityMetadata *)self attributionBundleIdentifier];
  assistantDefinedSchemas = [(LNEntityMetadata *)self assistantDefinedSchemas];
  fullyQualifiedTypeName = [(LNEntityMetadata *)self fullyQualifiedTypeName];
  visibilityMetadata = [(LNEntityMetadata *)self visibilityMetadata];
  defaultQueryIdentifier = [(LNEntityMetadata *)self defaultQueryIdentifier];
  v23 = [v22 stringWithFormat:@"<%@: %p, identifier: %@, transient: %@, displayRepresentation: %@, effectiveBundleIdentifiers: [%@], allowedTargets: [%@], mangledTypeNameByBundleIdentifier: %@, properties: [%@], availabilityAnnotations: %@, requiredCapabilities: %@, systemProtocolMetadata: %@, attributionBundleIdentifier: %@, assistantDefinedSchemas: %@, fullyQualifiedTypeName: %@, visibility: %@, query: %@>", v20, self, identifier, v19, displayRepresentation, v16, v29, mangledTypeNameByBundleIdentifier, v15, availabilityAnnotations, requiredCapabilities, systemProtocolMetadata, attributionBundleIdentifier, assistantDefinedSchemas, fullyQualifiedTypeName, visibilityMetadata, defaultQueryIdentifier];

  return v23;
}

- (LNEntityMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v74 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayRepresentation"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v73 = [coderCopy decodeObjectOfClasses:v7 forKey:@"properties"];

  v72 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mangledTypeName"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v71 = [coderCopy decodeObjectOfClasses:v10 forKey:@"effectiveBundleIdentifiers"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v70 = [coderCopy decodeObjectOfClasses:v13 forKey:@"mangledTypeNameByBundleIdentifier"];

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [v14 setWithObjects:{v15, v16, v17, v18, v19, objc_opt_class(), 0}];
  v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"systemProtocolMetadata"];
  v22 = v21;
  v23 = MEMORY[0x1E695E0F8];
  if (v21)
  {
    v23 = v21;
  }

  v24 = v23;

  v25 = 0;
  v67 = v4;
  if (!v4)
  {
    v4 = 0;
    selfCopy3 = self;
    v52 = v24;
    v27 = v73;
    v26 = v74;
    v30 = v71;
    v28 = v72;
    v29 = v70;
    goto LABEL_14;
  }

  v66 = v24;
  v26 = v74;
  if (!v74)
  {
    selfCopy3 = self;
    v28 = v72;
    v27 = v73;
    v29 = v70;
    v30 = v71;
    goto LABEL_13;
  }

  v28 = v72;
  v27 = v73;
  v29 = v70;
  v30 = v71;
  if (!v73 || !v72 || !v70 || !v71)
  {
    selfCopy3 = self;
LABEL_13:
    v52 = v66;
    goto LABEL_14;
  }

  v63 = [coderCopy decodeBoolForKey:@"transient"];
  v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customIntentTypeClassName"];
  v31 = MEMORY[0x1E695DFD8];
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = [v31 setWithObjects:{v32, v33, objc_opt_class(), 0}];
  v65 = [coderCopy decodeObjectOfClasses:v34 forKey:@"availabilityAnnotations"];

  v35 = MEMORY[0x1E695DFD8];
  v36 = objc_opt_class();
  v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
  v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"requiredCapabilities"];

  v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributionBundleIdentifier"];
  v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferableContentTypes"];
  v41 = MEMORY[0x1E695DFD8];
  v42 = objc_opt_class();
  v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
  v44 = [coderCopy decodeObjectOfClasses:v43 forKey:@"assistantDefinedSchemas"];

  v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullyQualifiedTypeName"];
  v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visibilityMetadata"];
  if (!v46)
  {
    v46 = [[LNVisibilityMetadata alloc] initWithIsDiscoverable:1 assistantOnly:0];
  }

  v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultQueryIdentifier"];
  v47 = MEMORY[0x1E695DFD8];
  v48 = objc_opt_class();
  v49 = [v47 setWithObjects:{v48, objc_opt_class(), 0}];
  v50 = [coderCopy decodeObjectOfClasses:v49 forKey:@"allowedTargets"];

  v58 = v45;
  v61 = v40;
  v62 = coderCopy;
  v51 = v45;
  v56 = v40;
  v57 = v44;
  v52 = v66;
  v60 = v44;
  v27 = v73;
  selfCopy4 = self;
  v69 = v38;
  v30 = v71;
  v29 = v70;
  selfCopy3 = [(LNEntityMetadata *)selfCopy4 initWithIdentifier:v67 transient:v63 mangledTypeName:v72 mangledTypeNameByBundleIdentifier:v70 effectiveBundleIdentifiers:v71 displayRepresentation:v74 properties:v73 customIntentTypeClassName:v64 availabilityAnnotations:v65 requiredCapabilities:v38 systemProtocolMetadata:v66 attributionBundleIdentifier:v39 transferableContentTypes:v56 assistantDefinedSchemas:v57 fullyQualifiedTypeName:v58 visibilityMetadata:v46 defaultQueryIdentifier:v59 allowedTargets:v50];

  v4 = v67;
  v28 = v72;

  coderCopy = v62;
  v26 = v74;

  v25 = selfCopy3;
LABEL_14:

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNEntityMetadata *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeBool:-[LNEntityMetadata isTransient](self forKey:{"isTransient"), @"transient"}];
  displayRepresentation = [(LNEntityMetadata *)self displayRepresentation];
  [coderCopy encodeObject:displayRepresentation forKey:@"displayRepresentation"];

  properties = [(LNEntityMetadata *)self properties];
  [coderCopy encodeObject:properties forKey:@"properties"];

  mangledTypeName = [(LNEntityMetadata *)self mangledTypeName];
  [coderCopy encodeObject:mangledTypeName forKey:@"mangledTypeName"];

  mangledTypeNameByBundleIdentifier = [(LNEntityMetadata *)self mangledTypeNameByBundleIdentifier];
  [coderCopy encodeObject:mangledTypeNameByBundleIdentifier forKey:@"mangledTypeNameByBundleIdentifier"];

  effectiveBundleIdentifiers = [(LNEntityMetadata *)self effectiveBundleIdentifiers];
  [coderCopy encodeObject:effectiveBundleIdentifiers forKey:@"effectiveBundleIdentifiers"];

  availabilityAnnotations = [(LNEntityMetadata *)self availabilityAnnotations];
  [coderCopy encodeObject:availabilityAnnotations forKey:@"availabilityAnnotations"];

  requiredCapabilities = [(LNEntityMetadata *)self requiredCapabilities];
  [coderCopy encodeObject:requiredCapabilities forKey:@"requiredCapabilities"];

  systemProtocolMetadata = [(LNEntityMetadata *)self systemProtocolMetadata];
  [coderCopy encodeObject:systemProtocolMetadata forKey:@"systemProtocolMetadata"];

  attributionBundleIdentifier = [(LNEntityMetadata *)self attributionBundleIdentifier];
  [coderCopy encodeObject:attributionBundleIdentifier forKey:@"attributionBundleIdentifier"];

  transferableContentTypes = [(LNEntityMetadata *)self transferableContentTypes];
  [coderCopy encodeObject:transferableContentTypes forKey:@"transferableContentTypes"];

  assistantDefinedSchemas = [(LNEntityMetadata *)self assistantDefinedSchemas];
  [coderCopy encodeObject:assistantDefinedSchemas forKey:@"assistantDefinedSchemas"];

  fullyQualifiedTypeName = [(LNEntityMetadata *)self fullyQualifiedTypeName];
  [coderCopy encodeObject:fullyQualifiedTypeName forKey:@"fullyQualifiedTypeName"];

  visibilityMetadata = [(LNEntityMetadata *)self visibilityMetadata];
  [coderCopy encodeObject:visibilityMetadata forKey:@"visibilityMetadata"];

  defaultQueryIdentifier = [(LNEntityMetadata *)self defaultQueryIdentifier];
  [coderCopy encodeObject:defaultQueryIdentifier forKey:@"defaultQueryIdentifier"];

  allowedTargets = [(LNEntityMetadata *)self allowedTargets];
  [coderCopy encodeObject:allowedTargets forKey:@"allowedTargets"];
}

- (BOOL)visibleForUse:(int64_t)use
{
  visibilityMetadata = [(LNEntityMetadata *)self visibilityMetadata];
  LOBYTE(use) = [visibilityMetadata visibleForUse:use];

  return use;
}

- (LNEntityMetadata)entityMetadataWithAttributionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(LNEntityMetadata *)self copy];
  v6 = [identifierCopy copy];

  v7 = v5[14];
  v5[14] = v6;

  return v5;
}

- (LNEntityMetadata)initWithIdentifier:(id)identifier transient:(BOOL)transient mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers displayRepresentation:(id)representation properties:(id)properties customIntentTypeClassName:(id)self0 availabilityAnnotations:(id)self1 requiredCapabilities:(id)self2 systemProtocolMetadata:(id)self3 attributionBundleIdentifier:(id)self4 transferableContentTypes:(id)self5 assistantDefinedSchemas:(id)self6 fullyQualifiedTypeName:(id)self7 visibilityMetadata:(id)self8 defaultQueryIdentifier:(id)self9 allowedTargets:(id)targets
{
  identifierCopy = identifier;
  nameCopy = name;
  bundleIdentifierCopy = bundleIdentifier;
  identifiersCopy = identifiers;
  obj = representation;
  representationCopy = representation;
  propertiesCopy = properties;
  classNameCopy = className;
  annotationsCopy = annotations;
  capabilitiesCopy = capabilities;
  metadataCopy = metadata;
  attributionBundleIdentifierCopy = attributionBundleIdentifier;
  typesCopy = types;
  schemasCopy = schemas;
  typeNameCopy = typeName;
  visibilityMetadataCopy = visibilityMetadata;
  queryIdentifierCopy = queryIdentifier;
  targetsCopy = targets;
  v86 = identifierCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNEntityMetadata.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v78 = nameCopy;
  if (!nameCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNEntityMetadata.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"mangledTypeName"}];
  }

  v85 = bundleIdentifierCopy;
  if (!representationCopy)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNEntityMetadata.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"displayRepresentation"}];
  }

  v34 = attributionBundleIdentifierCopy;
  v35 = propertiesCopy;
  if (!propertiesCopy)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"LNEntityMetadata.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"properties"}];
  }

  if (!visibilityMetadataCopy)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"LNEntityMetadata.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"visibilityMetadata"}];

    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:self file:@"LNEntityMetadata.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"visibilityMetadata"}];
  }

  v89.receiver = self;
  v89.super_class = LNEntityMetadata;
  v36 = [(LNEntityMetadata *)&v89 init];
  if (v36)
  {
    v37 = [v86 copy];
    identifier = v36->_identifier;
    v36->_identifier = v37;

    v36->_transient = transient;
    v39 = [v78 copy];
    mangledTypeName = v36->_mangledTypeName;
    v36->_mangledTypeName = v39;

    v41 = [v85 copy];
    mangledTypeNameByBundleIdentifier = v36->_mangledTypeNameByBundleIdentifier;
    v36->_mangledTypeNameByBundleIdentifier = v41;

    v43 = [identifiersCopy copy];
    effectiveBundleIdentifiers = v36->_effectiveBundleIdentifiers;
    v36->_effectiveBundleIdentifiers = v43;

    objc_storeStrong(&v36->_displayRepresentation, obj);
    v45 = [v35 copy];
    properties = v36->_properties;
    v36->_properties = v45;

    objc_storeStrong(&v36->_customIntentTypeClassName, className);
    v47 = [annotationsCopy copy];
    availabilityAnnotations = v36->_availabilityAnnotations;
    v36->_availabilityAnnotations = v47;

    v49 = [capabilitiesCopy copy];
    requiredCapabilities = v36->_requiredCapabilities;
    v36->_requiredCapabilities = v49;

    v51 = [metadataCopy copy];
    systemProtocolMetadata = v36->_systemProtocolMetadata;
    v36->_systemProtocolMetadata = v51;

    v53 = [v34 copy];
    attributionBundleIdentifier = v36->_attributionBundleIdentifier;
    v36->_attributionBundleIdentifier = v53;

    v55 = [typesCopy copy];
    transferableContentTypes = v36->_transferableContentTypes;
    v36->_transferableContentTypes = v55;

    v57 = [schemasCopy copy];
    assistantDefinedSchemas = v36->_assistantDefinedSchemas;
    v36->_assistantDefinedSchemas = v57;

    v59 = [typeNameCopy copy];
    fullyQualifiedTypeName = v36->_fullyQualifiedTypeName;
    v36->_fullyQualifiedTypeName = v59;

    v61 = [visibilityMetadataCopy copy];
    visibilityMetadata = v36->_visibilityMetadata;
    v36->_visibilityMetadata = v61;

    v63 = [queryIdentifierCopy copy];
    defaultQueryIdentifier = v36->_defaultQueryIdentifier;
    v36->_defaultQueryIdentifier = v63;

    v65 = [targetsCopy copy];
    allowedTargets = v36->_allowedTargets;
    v36->_allowedTargets = v65;

    v67 = v36;
  }

  return v36;
}

- (id)mangledTypeNameForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNEntityMetadata.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  mangledTypeNameByBundleIdentifier = [(LNEntityMetadata *)self mangledTypeNameByBundleIdentifier];
  v7 = [mangledTypeNameByBundleIdentifier objectForKeyedSubscript:identifierCopy];
  v8 = v7;
  if (v7)
  {
    mangledTypeName = v7;
  }

  else
  {
    mangledTypeName = [(LNEntityMetadata *)self mangledTypeName];
  }

  v10 = mangledTypeName;

  return v10;
}

- (LNEntityMetadata)initWithTypeName:(id)name properties:(id)properties
{
  propertiesCopy = properties;
  nameCopy = name;
  v8 = [[LNStaticDeferredLocalizedString alloc] initWithLocalizedKey:nameCopy bundleIdentifier:0 bundleURL:0 table:0];
  v9 = [(LNEntityMetadata *)self initWithTypeName:nameCopy displayTypeName:v8 properties:propertiesCopy];

  return v9;
}

- (LNEntityMetadata)initWithTypeName:(id)name displayTypeName:(id)typeName properties:(id)properties customIntentTypeClassName:(id)className
{
  v10 = MEMORY[0x1E695DFB8];
  classNameCopy = className;
  propertiesCopy = properties;
  typeNameCopy = typeName;
  nameCopy = name;
  orderedSet = [v10 orderedSet];
  v16 = [(LNEntityMetadata *)self initWithTypeName:nameCopy mangledTypeName:nameCopy mangledTypeNameByBundleIdentifier:MEMORY[0x1E695E0F8] effectiveBundleIdentifiers:orderedSet displayTypeName:typeNameCopy properties:propertiesCopy customIntentTypeClassName:classNameCopy];

  return v16;
}

- (LNEntityMetadata)initWithIdentifier:(id)identifier transient:(BOOL)transient mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers displayTypeName:(id)typeName properties:(id)properties customIntentTypeClassName:(id)self0
{
  transientCopy = transient;
  classNameCopy = className;
  propertiesCopy = properties;
  typeNameCopy = typeName;
  identifiersCopy = identifiers;
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  identifierCopy = identifier;
  v23 = [[LNTypeDisplayRepresentation alloc] initWithName:typeNameCopy numericFormat:0];

  v24 = [(LNEntityMetadata *)self initWithIdentifier:identifierCopy transient:transientCopy mangledTypeName:nameCopy mangledTypeNameByBundleIdentifier:bundleIdentifierCopy effectiveBundleIdentifiers:identifiersCopy displayRepresentation:v23 properties:propertiesCopy customIntentTypeClassName:classNameCopy];
  return v24;
}

- (LNEntityMetadata)initWithIdentifier:(id)identifier transient:(BOOL)transient mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers displayRepresentation:(id)representation properties:(id)properties customIntentTypeClassName:(id)self0 availabilityAnnotations:(id)self1 requiredCapabilities:(id)self2 systemProtocolMetadata:(id)self3 attributionBundleIdentifier:(id)self4 transferableContentTypes:(id)self5 assistantDefinedSchemas:(id)self6 fullyQualifiedTypeName:(id)self7
{
  transientCopy = transient;
  typeNameCopy = typeName;
  schemasCopy = schemas;
  typesCopy = types;
  attributionBundleIdentifierCopy = attributionBundleIdentifier;
  metadataCopy = metadata;
  capabilitiesCopy = capabilities;
  annotationsCopy = annotations;
  classNameCopy = className;
  propertiesCopy = properties;
  representationCopy = representation;
  identifiersCopy = identifiers;
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  identifierCopy = identifier;
  v35 = [[LNVisibilityMetadata alloc] initWithIsDiscoverable:1 assistantOnly:0];
  v21 = [(LNEntityMetadata *)self initWithIdentifier:identifierCopy transient:transientCopy mangledTypeName:nameCopy mangledTypeNameByBundleIdentifier:bundleIdentifierCopy effectiveBundleIdentifiers:identifiersCopy displayRepresentation:representationCopy properties:propertiesCopy customIntentTypeClassName:classNameCopy availabilityAnnotations:annotationsCopy requiredCapabilities:capabilitiesCopy systemProtocolMetadata:metadataCopy attributionBundleIdentifier:attributionBundleIdentifierCopy transferableContentTypes:typesCopy assistantDefinedSchemas:schemasCopy fullyQualifiedTypeName:typeNameCopy visibilityMetadata:v35];

  return v21;
}

- (LNStaticDeferredLocalizedString)displayTypeName
{
  displayRepresentation = [(LNEntityMetadata *)self displayRepresentation];
  name = [displayRepresentation name];

  return name;
}

@end