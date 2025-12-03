@interface LNQueryMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)visibleForUse:(int64_t)use;
- (LNQueryMetadata)initWithCoder:(id)coder;
- (LNQueryMetadata)initWithIdentifier:(id)identifier entityType:(id)type mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers parameters:(id)parameters sortingOptions:(id)options availabilityAnnotations:(id)self0 capabilities:(unint64_t)self1 descriptionMetadata:(id)self2;
- (LNQueryMetadata)initWithIdentifier:(id)identifier entityType:(id)type mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers parameters:(id)parameters sortingOptions:(id)options availabilityAnnotations:(id)self0 capabilities:(unint64_t)self1 descriptionMetadata:(id)self2 visibilityMetadata:(id)self3 defaultQueryForEntity:(BOOL)self4 fullyQualifiedIdentifier:(id)self5;
- (LNQueryMetadata)initWithIdentifier:(id)identifier inputValueType:(id)type resultValueType:(id)valueType mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers parameters:(id)parameters sortingOptions:(id)self0 availabilityAnnotations:(id)self1 capabilities:(unint64_t)self2 descriptionMetadata:(id)self3 visibilityMetadata:(id)self4 defaultQueryForEntity:(BOOL)self5 fullyQualifiedIdentifier:(id)self6 allowedTargets:(id)self7;
- (LNQueryMetadata)initWithIdentifier:(id)identifier queryType:(id)type entityType:(id)entityType parameters:(id)parameters sortingOptions:(id)options;
- (NSString)description;
- (NSString)entityType;
- (NSString)queryType;
- (id)mangledTypeNameForBundleIdentifier:(id)identifier;
- (id)metadataByAddingEffectiveBundleIdentifiers:(id)identifiers mangledTypeNameByBundleIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNQueryMetadata

- (id)metadataByAddingEffectiveBundleIdentifiers:(id)identifiers mangledTypeNameByBundleIdentifier:(id)identifier
{
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  if (!identifiersCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNQueryMetadata.m" lineNumber:218 description:{@"Invalid parameter not satisfying: %@", @"effectiveBundleIdentifiers"}];
  }

  v9 = [(LNQueryMetadata *)self copy];
  effectiveBundleIdentifiers = [v9 effectiveBundleIdentifiers];
  array = [identifiersCopy array];
  v12 = [effectiveBundleIdentifiers if_orderedSetByAddingObjectsFromArray:array];
  v13 = v9[10];
  v9[10] = v12;

  mangledTypeNameByBundleIdentifier = [v9 mangledTypeNameByBundleIdentifier];
  v15 = [mangledTypeNameByBundleIdentifier if_dictionaryByAddingEntriesFromDictionary:identifierCopy];
  v16 = v9[9];
  v9[9] = v15;

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
LABEL_82:

      goto LABEL_83;
    }

    identifier = [(LNQueryMetadata *)self identifier];
    identifier2 = [(LNQueryMetadata *)v6 identifier];
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
        goto LABEL_80;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(parameters3) = 0;
LABEL_81:

        goto LABEL_82;
      }
    }

    inputValueType = [(LNQueryMetadata *)self inputValueType];
    inputValueType2 = [(LNQueryMetadata *)v6 inputValueType];
    v14 = inputValueType;
    v18 = inputValueType2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(parameters3) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_79;
      }

      v21 = [v14 isEqual:v18];

      if (!v21)
      {
        LOBYTE(parameters3) = 0;
LABEL_80:

        goto LABEL_81;
      }
    }

    resultValueType = [(LNQueryMetadata *)self resultValueType];
    resultValueType2 = [(LNQueryMetadata *)v6 resultValueType];
    v20 = resultValueType;
    v24 = resultValueType2;
    v19 = v24;
    if (v20 == v24)
    {
    }

    else
    {
      LOBYTE(parameters3) = 0;
      v95 = v20;
      v25 = v24;
      if (!v20 || !v24)
      {
        goto LABEL_78;
      }

      LODWORD(parameters3) = [v20 isEqual:v24];

      if (!parameters3)
      {
        goto LABEL_79;
      }
    }

    v94 = v19;
    parameters = [(LNQueryMetadata *)self parameters];
    parameters2 = [(LNQueryMetadata *)v6 parameters];

    if (parameters != parameters2)
    {
      parameters3 = [(LNQueryMetadata *)self parameters];
      if (!parameters3)
      {
        goto LABEL_38;
      }

      parameters4 = [(LNQueryMetadata *)v6 parameters];

      if (!parameters4)
      {
        goto LABEL_37;
      }

      v29 = MEMORY[0x1E695DFD8];
      parameters5 = [(LNQueryMetadata *)self parameters];
      v30 = [v29 setWithArray:parameters5];
      v31 = MEMORY[0x1E695DFD8];
      parameters6 = [(LNQueryMetadata *)v6 parameters];
      v32 = [v31 setWithArray:parameters6];
      v88 = [v30 isEqualToSet:v32];

      if (!v88)
      {
LABEL_37:
        LOBYTE(parameters3) = 0;
        goto LABEL_38;
      }
    }

    sortingOptions = [(LNQueryMetadata *)self sortingOptions];
    sortingOptions2 = [(LNQueryMetadata *)v6 sortingOptions];

    if (sortingOptions == sortingOptions2)
    {
      goto LABEL_32;
    }

    parameters3 = [(LNQueryMetadata *)self sortingOptions];
    if (parameters3)
    {
      sortingOptions3 = [(LNQueryMetadata *)v6 sortingOptions];

      if (sortingOptions3)
      {
        v36 = MEMORY[0x1E695DFD8];
        sortingOptions4 = [(LNQueryMetadata *)self sortingOptions];
        v37 = [v36 setWithArray:sortingOptions4];
        v38 = MEMORY[0x1E695DFD8];
        sortingOptions5 = [(LNQueryMetadata *)v6 sortingOptions];
        v39 = [v38 setWithArray:sortingOptions5];
        v89 = [v37 isEqualToSet:v39];

        if (v89)
        {
LABEL_32:
          availabilityAnnotations = [(LNQueryMetadata *)self availabilityAnnotations];
          availabilityAnnotations2 = [(LNQueryMetadata *)v6 availabilityAnnotations];
          v42 = availabilityAnnotations;
          v43 = availabilityAnnotations2;
          v90 = v43;
          v93 = v42;
          v95 = v20;
          if (v42 != v43)
          {
            LOBYTE(parameters3) = 0;
            if (v42)
            {
              v44 = v43;
              v45 = v42;
              v19 = v94;
              if (v43)
              {
                v46 = [v93 isEqualToDictionary:v43];

                if (!v46)
                {
                  LOBYTE(parameters3) = 0;
                  v19 = v94;
LABEL_77:
                  v25 = v90;
                  v20 = v93;
LABEL_78:

                  v20 = v95;
                  goto LABEL_79;
                }

LABEL_40:
                descriptionMetadata = [(LNQueryMetadata *)self descriptionMetadata];
                descriptionMetadata2 = [(LNQueryMetadata *)v6 descriptionMetadata];
                v49 = descriptionMetadata;
                v50 = descriptionMetadata2;
                v84 = v50;
                v87 = v49;
                if (v49 != v50)
                {
                  LOBYTE(parameters3) = 0;
                  if (v49)
                  {
                    v51 = v50;
                    v52 = v49;
                    v19 = v94;
                    if (v50)
                    {
                      v82 = [v87 isEqual:v50];

                      if (!v82)
                      {
                        LOBYTE(parameters3) = 0;
                        v19 = v94;
LABEL_75:
                        v44 = v84;
                        v45 = v87;
                        goto LABEL_76;
                      }

LABEL_46:
                      visibilityMetadata = [(LNQueryMetadata *)self visibilityMetadata];
                      visibilityMetadata2 = [(LNQueryMetadata *)v6 visibilityMetadata];
                      v55 = visibilityMetadata;
                      v56 = visibilityMetadata2;
                      v81 = v56;
                      v83 = v55;
                      if (v55 != v56)
                      {
                        LOBYTE(parameters3) = 0;
                        if (v55)
                        {
                          v57 = v56;
                          v58 = v55;
                          v19 = v94;
                          if (v56)
                          {
                            v59 = v56;
                            v79 = [v83 isEqual:v56];

                            if (!v79)
                            {
                              goto LABEL_54;
                            }

LABEL_53:
                            defaultQueryForEntity = [(LNQueryMetadata *)self defaultQueryForEntity];
                            if (defaultQueryForEntity != [(LNQueryMetadata *)v6 defaultQueryForEntity])
                            {
LABEL_54:
                              LOBYTE(parameters3) = 0;
                              v19 = v94;
LABEL_73:
                              v51 = v81;
                              v52 = v83;
                              goto LABEL_74;
                            }

                            fullyQualifiedIdentifier = [(LNQueryMetadata *)self fullyQualifiedIdentifier];
                            fullyQualifiedIdentifier2 = [(LNQueryMetadata *)v6 fullyQualifiedIdentifier];
                            v63 = fullyQualifiedIdentifier;
                            v64 = fullyQualifiedIdentifier2;
                            v78 = v64;
                            v80 = v63;
                            if (v63 != v64)
                            {
                              LOBYTE(parameters3) = 0;
                              if (v63)
                              {
                                v65 = v64;
                                v66 = v63;
                                v19 = v94;
                                if (v64)
                                {
                                  v76 = [v80 isEqualToString:v64];

                                  if (!v76)
                                  {
                                    LOBYTE(parameters3) = 0;
                                    v19 = v94;
LABEL_71:
                                    v57 = v78;
                                    v58 = v80;
                                    goto LABEL_72;
                                  }

                                  goto LABEL_63;
                                }
                              }

                              else
                              {
                                v65 = v64;
                                v66 = 0;
                                v19 = v94;
                              }

LABEL_70:
                              v72 = v66;

                              goto LABEL_71;
                            }

LABEL_63:
                            allowedTargets = [(LNQueryMetadata *)self allowedTargets];
                            allowedTargets2 = [(LNQueryMetadata *)v6 allowedTargets];
                            v69 = allowedTargets;
                            v70 = allowedTargets2;
                            v71 = v69;
                            v77 = v70;
                            if (v69 == v70)
                            {
                              LOBYTE(parameters3) = 1;
                              v19 = v94;
                            }

                            else
                            {
                              LOBYTE(parameters3) = 0;
                              v19 = v94;
                              if (v71 && v70)
                              {
                                LOBYTE(parameters3) = [v71 isEqualToArray:v70];
                              }
                            }

                            v65 = v77;
                            v66 = v71;
                            goto LABEL_70;
                          }
                        }

                        else
                        {
                          v57 = v56;
                          v58 = 0;
                          v19 = v94;
                        }

LABEL_72:
                        v73 = v58;

                        goto LABEL_73;
                      }

                      goto LABEL_53;
                    }
                  }

                  else
                  {
                    v51 = v50;
                    v52 = 0;
                    v19 = v94;
                  }

LABEL_74:
                  v74 = v52;

                  goto LABEL_75;
                }

                goto LABEL_46;
              }
            }

            else
            {
              v44 = v43;
              v45 = 0;
              v19 = v94;
            }

LABEL_76:

            goto LABEL_77;
          }

          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }

LABEL_38:
    v19 = v94;
LABEL_79:

    goto LABEL_80;
  }

  LOBYTE(parameters3) = 1;
LABEL_83:

  return parameters3;
}

- (unint64_t)hash
{
  identifier = [(LNQueryMetadata *)self identifier];
  v3 = [identifier hash];
  inputValueType = [(LNQueryMetadata *)self inputValueType];
  v4 = [inputValueType hash] ^ v3;
  resultValueType = [(LNQueryMetadata *)self resultValueType];
  v5 = [resultValueType hash];
  parameters = [(LNQueryMetadata *)self parameters];
  v7 = v4 ^ v5 ^ [parameters hash];
  sortingOptions = [(LNQueryMetadata *)self sortingOptions];
  v9 = [sortingOptions hash];
  availabilityAnnotations = [(LNQueryMetadata *)self availabilityAnnotations];
  v11 = v9 ^ [availabilityAnnotations hash];
  descriptionMetadata = [(LNQueryMetadata *)self descriptionMetadata];
  v13 = v7 ^ v11 ^ [descriptionMetadata hash];
  visibilityMetadata = [(LNQueryMetadata *)self visibilityMetadata];
  v15 = [visibilityMetadata hash];
  v16 = v15 ^ [(LNQueryMetadata *)self defaultQueryForEntity];
  fullyQualifiedIdentifier = [(LNQueryMetadata *)self fullyQualifiedIdentifier];
  v18 = v13 ^ v16 ^ [fullyQualifiedIdentifier hash];
  effectiveBundleIdentifiers = [(LNQueryMetadata *)self effectiveBundleIdentifiers];
  v20 = [effectiveBundleIdentifiers hash];
  allowedTargets = [(LNQueryMetadata *)self allowedTargets];
  v22 = v20 ^ [allowedTargets hash];

  return v18 ^ v22;
}

- (NSString)description
{
  v24 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v30 = NSStringFromClass(v3);
  fullyQualifiedIdentifier = [(LNQueryMetadata *)self fullyQualifiedIdentifier];
  identifier = fullyQualifiedIdentifier;
  if (!fullyQualifiedIdentifier)
  {
    identifier = [(LNQueryMetadata *)self identifier];
  }

  inputValueType = [(LNQueryMetadata *)self inputValueType];
  resultValueType = [(LNQueryMetadata *)self resultValueType];
  effectiveBundleIdentifiers = [(LNQueryMetadata *)self effectiveBundleIdentifiers];
  array = [effectiveBundleIdentifiers array];
  v23 = [array valueForKeyPath:@"description"];
  v17 = [v23 componentsJoinedByString:{@", "}];
  allowedTargets = [(LNQueryMetadata *)self allowedTargets];
  v21 = [allowedTargets valueForKeyPath:@"description"];
  v4 = [v21 componentsJoinedByString:{@", "}];
  mangledTypeNameByBundleIdentifier = [(LNQueryMetadata *)self mangledTypeNameByBundleIdentifier];
  parameters = [(LNQueryMetadata *)self parameters];
  v18 = [parameters valueForKeyPath:@"description"];
  v6 = [v18 componentsJoinedByString:{@", "}];
  sortingOptions = [(LNQueryMetadata *)self sortingOptions];
  v8 = [sortingOptions valueForKeyPath:@"description"];
  v9 = [v8 componentsJoinedByString:{@", "}];
  availabilityAnnotations = [(LNQueryMetadata *)self availabilityAnnotations];
  descriptionMetadata = [(LNQueryMetadata *)self descriptionMetadata];
  visibilityMetadata = [(LNQueryMetadata *)self visibilityMetadata];
  defaultQueryForEntity = [(LNQueryMetadata *)self defaultQueryForEntity];
  v14 = @"NO";
  if (defaultQueryForEntity)
  {
    v14 = @"YES";
  }

  v15 = [v24 stringWithFormat:@"<%@: %p, identifier: %@, inputValueType: %@, resultValueType: %@, effectiveBundleIdentifiers: [%@], allowedTargets: [%@], mangledTypeNameByBundleIdentifier: %@, parameters: [%@], sortingOptions: [%@], availabilityAnnotations: %@, descriptionMetadata: %@, visibility: %@, defaultEntityQuery: %@>", v30, self, identifier, inputValueType, resultValueType, v17, v4, mangledTypeNameByBundleIdentifier, v6, v9, availabilityAnnotations, descriptionMetadata, visibilityMetadata, v14];

  if (!fullyQualifiedIdentifier)
  {
  }

  return v15;
}

- (LNQueryMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputValueType"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resultValueType"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v55 = [coderCopy decodeObjectOfClasses:v8 forKey:@"parameters"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"sortingOptions"];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mangledTypeName"];
  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v54 = [coderCopy decodeObjectOfClasses:v16 forKey:@"effectiveBundleIdentifiers"];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v53 = [coderCopy decodeObjectOfClasses:v19 forKey:@"mangledTypeNameByBundleIdentifier"];

  v20 = 0;
  v57 = v4;
  if (v4)
  {
    v21 = v56;
    v22 = v5;
    v23 = v54;
    v24 = v53;
    if (v5)
    {
      v25 = v55;
      if (v55 && v12 && v13 && v53 && v54)
      {
        v50 = v22;
        v26 = v12;
        v27 = MEMORY[0x1E695DFD8];
        v28 = objc_opt_class();
        v29 = objc_opt_class();
        v30 = [v27 setWithObjects:{v28, v29, objc_opt_class(), 0}];
        v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"availabilityAnnotations"];

        v32 = [coderCopy decodeIntForKey:@"capabilities"];
        v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptionMetadata"];
        v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visibilityMetadata"];
        if (!v34)
        {
          v34 = [[LNVisibilityMetadata alloc] initWithIsDiscoverable:1 assistantOnly:0];
        }

        v35 = v34;
        v49 = v34;
        v36 = [coderCopy decodeBoolForKey:@"defaultQueryForEntity"];
        v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullyQualifiedIdentifier"];
        v37 = MEMORY[0x1E695DFD8];
        v38 = objc_opt_class();
        v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
        v40 = [coderCopy decodeObjectOfClasses:v39 forKey:@"allowedTargets"];

        LOBYTE(v47) = v36;
        v46 = v32;
        v12 = v26;
        v45 = v26;
        v25 = v55;
        selfCopy = self;
        v52 = v31;
        selfCopy4 = [(LNQueryMetadata *)selfCopy initWithIdentifier:v57 inputValueType:v56 resultValueType:v50 mangledTypeName:v13 mangledTypeNameByBundleIdentifier:v53 effectiveBundleIdentifiers:v54 parameters:v55 sortingOptions:v45 availabilityAnnotations:v31 capabilities:v46 descriptionMetadata:v33 visibilityMetadata:v35 defaultQueryForEntity:v47 fullyQualifiedIdentifier:v48 allowedTargets:v40];

        v22 = v50;
        v23 = v54;

        v21 = v56;
        v24 = v53;
        v43 = v57;
        v20 = selfCopy4;
      }

      else
      {
        selfCopy4 = self;
        v43 = v57;
      }
    }

    else
    {
      selfCopy4 = self;
      v43 = v57;
      v25 = v55;
    }
  }

  else
  {
    selfCopy4 = self;
    v24 = v53;
    v21 = v56;
    v43 = 0;
    v22 = v5;
    v23 = v54;
    v25 = v55;
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNQueryMetadata *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  inputValueType = [(LNQueryMetadata *)self inputValueType];
  [coderCopy encodeObject:inputValueType forKey:@"inputValueType"];

  resultValueType = [(LNQueryMetadata *)self resultValueType];
  [coderCopy encodeObject:resultValueType forKey:@"resultValueType"];

  parameters = [(LNQueryMetadata *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"parameters"];

  sortingOptions = [(LNQueryMetadata *)self sortingOptions];
  [coderCopy encodeObject:sortingOptions forKey:@"sortingOptions"];

  mangledTypeName = [(LNQueryMetadata *)self mangledTypeName];
  [coderCopy encodeObject:mangledTypeName forKey:@"mangledTypeName"];

  mangledTypeNameByBundleIdentifier = [(LNQueryMetadata *)self mangledTypeNameByBundleIdentifier];
  [coderCopy encodeObject:mangledTypeNameByBundleIdentifier forKey:@"mangledTypeNameByBundleIdentifier"];

  effectiveBundleIdentifiers = [(LNQueryMetadata *)self effectiveBundleIdentifiers];
  [coderCopy encodeObject:effectiveBundleIdentifiers forKey:@"effectiveBundleIdentifiers"];

  availabilityAnnotations = [(LNQueryMetadata *)self availabilityAnnotations];
  [coderCopy encodeObject:availabilityAnnotations forKey:@"availabilityAnnotations"];

  [coderCopy encodeInteger:-[LNQueryMetadata capabilities](self forKey:{"capabilities"), @"capabilities"}];
  descriptionMetadata = [(LNQueryMetadata *)self descriptionMetadata];
  [coderCopy encodeObject:descriptionMetadata forKey:@"descriptionMetadata"];

  visibilityMetadata = [(LNQueryMetadata *)self visibilityMetadata];
  [coderCopy encodeObject:visibilityMetadata forKey:@"visibilityMetadata"];

  [coderCopy encodeBool:-[LNQueryMetadata defaultQueryForEntity](self forKey:{"defaultQueryForEntity"), @"defaultQueryForEntity"}];
  fullyQualifiedIdentifier = [(LNQueryMetadata *)self fullyQualifiedIdentifier];
  [coderCopy encodeObject:fullyQualifiedIdentifier forKey:@"fullyQualifiedIdentifier"];

  allowedTargets = [(LNQueryMetadata *)self allowedTargets];
  [coderCopy encodeObject:allowedTargets forKey:@"allowedTargets"];
}

- (BOOL)visibleForUse:(int64_t)use
{
  visibilityMetadata = [(LNQueryMetadata *)self visibilityMetadata];
  LOBYTE(use) = [visibilityMetadata visibleForUse:use];

  return use;
}

- (LNQueryMetadata)initWithIdentifier:(id)identifier inputValueType:(id)type resultValueType:(id)valueType mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers parameters:(id)parameters sortingOptions:(id)self0 availabilityAnnotations:(id)self1 capabilities:(unint64_t)self2 descriptionMetadata:(id)self3 visibilityMetadata:(id)self4 defaultQueryForEntity:(BOOL)self5 fullyQualifiedIdentifier:(id)self6 allowedTargets:(id)self7
{
  identifierCopy = identifier;
  typeCopy = type;
  valueTypeCopy = valueType;
  nameCopy = name;
  bundleIdentifierCopy = bundleIdentifier;
  identifiersCopy = identifiers;
  parametersCopy = parameters;
  optionsCopy = options;
  annotationsCopy = annotations;
  metadataCopy = metadata;
  visibilityMetadataCopy = visibilityMetadata;
  qualifiedIdentifierCopy = qualifiedIdentifier;
  targetsCopy = targets;
  v75 = identifierCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNQueryMetadata.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  if (valueTypeCopy)
  {
    if (parametersCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNQueryMetadata.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"resultValueType"}];

    if (parametersCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNQueryMetadata.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"parameters"}];

LABEL_5:
  if (!optionsCopy)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"LNQueryMetadata.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"sortingOptions"}];
  }

  v29 = annotationsCopy;
  v30 = qualifiedIdentifierCopy;
  v31 = nameCopy;
  if (!nameCopy)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"LNQueryMetadata.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"mangledTypeName"}];
  }

  v32 = parametersCopy;
  v33 = visibilityMetadataCopy;
  if (!visibilityMetadataCopy)
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:self file:@"LNQueryMetadata.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"visibilityMetadata"}];
  }

  v78.receiver = self;
  v78.super_class = LNQueryMetadata;
  v34 = [(LNQueryMetadata *)&v78 init];
  if (v34)
  {
    v35 = [v75 copy];
    identifier = v34->_identifier;
    v34->_identifier = v35;

    v37 = [typeCopy copy];
    inputValueType = v34->_inputValueType;
    v34->_inputValueType = v37;

    v39 = [valueTypeCopy copy];
    resultValueType = v34->_resultValueType;
    v34->_resultValueType = v39;

    v41 = [v32 copy];
    parameters = v34->_parameters;
    v34->_parameters = v41;

    v43 = [optionsCopy copy];
    sortingOptions = v34->_sortingOptions;
    v34->_sortingOptions = v43;

    v45 = [v31 copy];
    mangledTypeName = v34->_mangledTypeName;
    v34->_mangledTypeName = v45;

    v47 = [bundleIdentifierCopy copy];
    mangledTypeNameByBundleIdentifier = v34->_mangledTypeNameByBundleIdentifier;
    v34->_mangledTypeNameByBundleIdentifier = v47;

    v49 = [identifiersCopy copy];
    effectiveBundleIdentifiers = v34->_effectiveBundleIdentifiers;
    v34->_effectiveBundleIdentifiers = v49;

    v51 = [v29 copy];
    availabilityAnnotations = v34->_availabilityAnnotations;
    v34->_availabilityAnnotations = v51;

    v34->_capabilities = capabilities;
    v30 = qualifiedIdentifierCopy;
    v53 = [metadataCopy copy];
    descriptionMetadata = v34->_descriptionMetadata;
    v34->_descriptionMetadata = v53;

    v55 = [v33 copy];
    visibilityMetadata = v34->_visibilityMetadata;
    v34->_visibilityMetadata = v55;

    v34->_defaultQueryForEntity = entity;
    v57 = [qualifiedIdentifierCopy copy];
    fullyQualifiedIdentifier = v34->_fullyQualifiedIdentifier;
    v34->_fullyQualifiedIdentifier = v57;

    v59 = [targetsCopy copy];
    allowedTargets = v34->_allowedTargets;
    v34->_allowedTargets = v59;

    v61 = v34;
  }

  return v34;
}

- (id)mangledTypeNameForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNQueryMetadata.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  mangledTypeNameByBundleIdentifier = [(LNQueryMetadata *)self mangledTypeNameByBundleIdentifier];
  v7 = [mangledTypeNameByBundleIdentifier objectForKeyedSubscript:identifierCopy];
  v8 = v7;
  if (v7)
  {
    mangledTypeName = v7;
  }

  else
  {
    mangledTypeName = [(LNQueryMetadata *)self mangledTypeName];
  }

  v10 = mangledTypeName;

  return v10;
}

- (LNQueryMetadata)initWithIdentifier:(id)identifier queryType:(id)type entityType:(id)entityType parameters:(id)parameters sortingOptions:(id)options
{
  v12 = MEMORY[0x1E695DFB8];
  optionsCopy = options;
  parametersCopy = parameters;
  entityTypeCopy = entityType;
  typeCopy = type;
  identifierCopy = identifier;
  orderedSet = [v12 orderedSet];
  v19 = [(LNQueryMetadata *)self initWithIdentifier:identifierCopy queryType:typeCopy entityType:entityTypeCopy mangledTypeName:typeCopy mangledTypeNameByBundleIdentifier:MEMORY[0x1E695E0F8] effectiveBundleIdentifiers:orderedSet parameters:parametersCopy sortingOptions:optionsCopy];

  return v19;
}

- (LNQueryMetadata)initWithIdentifier:(id)identifier entityType:(id)type mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers parameters:(id)parameters sortingOptions:(id)options availabilityAnnotations:(id)self0 capabilities:(unint64_t)self1 descriptionMetadata:(id)self2
{
  metadataCopy = metadata;
  annotationsCopy = annotations;
  optionsCopy = options;
  parametersCopy = parameters;
  identifiersCopy = identifiers;
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  typeCopy = type;
  identifierCopy = identifier;
  v27 = [[LNVisibilityMetadata alloc] initWithIsDiscoverable:1 assistantOnly:0];
  v30 = [(LNQueryMetadata *)self initWithIdentifier:identifierCopy entityType:typeCopy mangledTypeName:nameCopy mangledTypeNameByBundleIdentifier:bundleIdentifierCopy effectiveBundleIdentifiers:identifiersCopy parameters:parametersCopy sortingOptions:optionsCopy availabilityAnnotations:annotationsCopy capabilities:capabilities descriptionMetadata:metadataCopy visibilityMetadata:v27];

  return v30;
}

- (LNQueryMetadata)initWithIdentifier:(id)identifier entityType:(id)type mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers parameters:(id)parameters sortingOptions:(id)options availabilityAnnotations:(id)self0 capabilities:(unint64_t)self1 descriptionMetadata:(id)self2 visibilityMetadata:(id)self3 defaultQueryForEntity:(BOOL)self4 fullyQualifiedIdentifier:(id)self5
{
  qualifiedIdentifierCopy = qualifiedIdentifier;
  visibilityMetadataCopy = visibilityMetadata;
  metadataCopy = metadata;
  annotationsCopy = annotations;
  optionsCopy = options;
  parametersCopy = parameters;
  identifiersCopy = identifiers;
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  typeCopy = type;
  identifierCopy = identifier;
  v22 = [[LNEntityValueType alloc] initWithIdentifier:typeCopy];

  LOBYTE(v24) = entity;
  v36 = [(LNQueryMetadata *)self initWithIdentifier:identifierCopy inputValueType:0 resultValueType:v22 mangledTypeName:nameCopy mangledTypeNameByBundleIdentifier:bundleIdentifierCopy effectiveBundleIdentifiers:identifiersCopy parameters:parametersCopy sortingOptions:optionsCopy availabilityAnnotations:annotationsCopy capabilities:capabilities descriptionMetadata:metadataCopy visibilityMetadata:visibilityMetadataCopy defaultQueryForEntity:v24 fullyQualifiedIdentifier:qualifiedIdentifierCopy];

  return v36;
}

- (NSString)entityType
{
  resultValueType = [(LNQueryMetadata *)self resultValueType];
  if (resultValueType)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = resultValueType;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  identifier = [v4 identifier];

  if (identifier)
  {
    v6 = identifier;
  }

  else
  {
    v6 = &stru_1F02ED148;
  }

  v7 = v6;

  return &v6->isa;
}

- (NSString)queryType
{
  identifier = [(LNQueryMetadata *)self identifier];
  v3 = [identifier stringByReplacingOccurrencesOfString:@"-" withString:@"."];

  return v3;
}

@end