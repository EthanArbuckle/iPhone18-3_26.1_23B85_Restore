@interface LNQueryMetadata
- (BOOL)isEqual:(id)a3;
- (BOOL)visibleForUse:(int64_t)a3;
- (LNQueryMetadata)initWithCoder:(id)a3;
- (LNQueryMetadata)initWithIdentifier:(id)a3 entityType:(id)a4 mangledTypeName:(id)a5 mangledTypeNameByBundleIdentifier:(id)a6 effectiveBundleIdentifiers:(id)a7 parameters:(id)a8 sortingOptions:(id)a9 availabilityAnnotations:(id)a10 capabilities:(unint64_t)a11 descriptionMetadata:(id)a12;
- (LNQueryMetadata)initWithIdentifier:(id)a3 entityType:(id)a4 mangledTypeName:(id)a5 mangledTypeNameByBundleIdentifier:(id)a6 effectiveBundleIdentifiers:(id)a7 parameters:(id)a8 sortingOptions:(id)a9 availabilityAnnotations:(id)a10 capabilities:(unint64_t)a11 descriptionMetadata:(id)a12 visibilityMetadata:(id)a13 defaultQueryForEntity:(BOOL)a14 fullyQualifiedIdentifier:(id)a15;
- (LNQueryMetadata)initWithIdentifier:(id)a3 inputValueType:(id)a4 resultValueType:(id)a5 mangledTypeName:(id)a6 mangledTypeNameByBundleIdentifier:(id)a7 effectiveBundleIdentifiers:(id)a8 parameters:(id)a9 sortingOptions:(id)a10 availabilityAnnotations:(id)a11 capabilities:(unint64_t)a12 descriptionMetadata:(id)a13 visibilityMetadata:(id)a14 defaultQueryForEntity:(BOOL)a15 fullyQualifiedIdentifier:(id)a16 allowedTargets:(id)a17;
- (LNQueryMetadata)initWithIdentifier:(id)a3 queryType:(id)a4 entityType:(id)a5 parameters:(id)a6 sortingOptions:(id)a7;
- (NSString)description;
- (NSString)entityType;
- (NSString)queryType;
- (id)mangledTypeNameForBundleIdentifier:(id)a3;
- (id)metadataByAddingEffectiveBundleIdentifiers:(id)a3 mangledTypeNameByBundleIdentifier:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNQueryMetadata

- (id)metadataByAddingEffectiveBundleIdentifiers:(id)a3 mangledTypeNameByBundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"LNQueryMetadata.m" lineNumber:218 description:{@"Invalid parameter not satisfying: %@", @"effectiveBundleIdentifiers"}];
  }

  v9 = [(LNQueryMetadata *)self copy];
  v10 = [v9 effectiveBundleIdentifiers];
  v11 = [v7 array];
  v12 = [v10 if_orderedSetByAddingObjectsFromArray:v11];
  v13 = v9[10];
  v9[10] = v12;

  v14 = [v9 mangledTypeNameByBundleIdentifier];
  v15 = [v14 if_dictionaryByAddingEntriesFromDictionary:v8];
  v16 = v9[9];
  v9[9] = v15;

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
LABEL_82:

      goto LABEL_83;
    }

    v7 = [(LNQueryMetadata *)self identifier];
    v8 = [(LNQueryMetadata *)v6 identifier];
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
        goto LABEL_80;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_81:

        goto LABEL_82;
      }
    }

    v16 = [(LNQueryMetadata *)self inputValueType];
    v17 = [(LNQueryMetadata *)v6 inputValueType];
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
        goto LABEL_79;
      }

      v21 = [v14 isEqual:v18];

      if (!v21)
      {
        LOBYTE(v12) = 0;
LABEL_80:

        goto LABEL_81;
      }
    }

    v22 = [(LNQueryMetadata *)self resultValueType];
    v23 = [(LNQueryMetadata *)v6 resultValueType];
    v20 = v22;
    v24 = v23;
    v19 = v24;
    if (v20 == v24)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v95 = v20;
      v25 = v24;
      if (!v20 || !v24)
      {
        goto LABEL_78;
      }

      LODWORD(v12) = [v20 isEqual:v24];

      if (!v12)
      {
        goto LABEL_79;
      }
    }

    v94 = v19;
    v26 = [(LNQueryMetadata *)self parameters];
    v27 = [(LNQueryMetadata *)v6 parameters];

    if (v26 != v27)
    {
      v12 = [(LNQueryMetadata *)self parameters];
      if (!v12)
      {
        goto LABEL_38;
      }

      v28 = [(LNQueryMetadata *)v6 parameters];

      if (!v28)
      {
        goto LABEL_37;
      }

      v29 = MEMORY[0x1E695DFD8];
      v91 = [(LNQueryMetadata *)self parameters];
      v30 = [v29 setWithArray:v91];
      v31 = MEMORY[0x1E695DFD8];
      v85 = [(LNQueryMetadata *)v6 parameters];
      v32 = [v31 setWithArray:v85];
      v88 = [v30 isEqualToSet:v32];

      if (!v88)
      {
LABEL_37:
        LOBYTE(v12) = 0;
        goto LABEL_38;
      }
    }

    v33 = [(LNQueryMetadata *)self sortingOptions];
    v34 = [(LNQueryMetadata *)v6 sortingOptions];

    if (v33 == v34)
    {
      goto LABEL_32;
    }

    v12 = [(LNQueryMetadata *)self sortingOptions];
    if (v12)
    {
      v35 = [(LNQueryMetadata *)v6 sortingOptions];

      if (v35)
      {
        v36 = MEMORY[0x1E695DFD8];
        v92 = [(LNQueryMetadata *)self sortingOptions];
        v37 = [v36 setWithArray:v92];
        v38 = MEMORY[0x1E695DFD8];
        v86 = [(LNQueryMetadata *)v6 sortingOptions];
        v39 = [v38 setWithArray:v86];
        v89 = [v37 isEqualToSet:v39];

        if (v89)
        {
LABEL_32:
          v40 = [(LNQueryMetadata *)self availabilityAnnotations];
          v41 = [(LNQueryMetadata *)v6 availabilityAnnotations];
          v42 = v40;
          v43 = v41;
          v90 = v43;
          v93 = v42;
          v95 = v20;
          if (v42 != v43)
          {
            LOBYTE(v12) = 0;
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
                  LOBYTE(v12) = 0;
                  v19 = v94;
LABEL_77:
                  v25 = v90;
                  v20 = v93;
LABEL_78:

                  v20 = v95;
                  goto LABEL_79;
                }

LABEL_40:
                v47 = [(LNQueryMetadata *)self descriptionMetadata];
                v48 = [(LNQueryMetadata *)v6 descriptionMetadata];
                v49 = v47;
                v50 = v48;
                v84 = v50;
                v87 = v49;
                if (v49 != v50)
                {
                  LOBYTE(v12) = 0;
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
                        LOBYTE(v12) = 0;
                        v19 = v94;
LABEL_75:
                        v44 = v84;
                        v45 = v87;
                        goto LABEL_76;
                      }

LABEL_46:
                      v53 = [(LNQueryMetadata *)self visibilityMetadata];
                      v54 = [(LNQueryMetadata *)v6 visibilityMetadata];
                      v55 = v53;
                      v56 = v54;
                      v81 = v56;
                      v83 = v55;
                      if (v55 != v56)
                      {
                        LOBYTE(v12) = 0;
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
                            v60 = [(LNQueryMetadata *)self defaultQueryForEntity];
                            if (v60 != [(LNQueryMetadata *)v6 defaultQueryForEntity])
                            {
LABEL_54:
                              LOBYTE(v12) = 0;
                              v19 = v94;
LABEL_73:
                              v51 = v81;
                              v52 = v83;
                              goto LABEL_74;
                            }

                            v61 = [(LNQueryMetadata *)self fullyQualifiedIdentifier];
                            v62 = [(LNQueryMetadata *)v6 fullyQualifiedIdentifier];
                            v63 = v61;
                            v64 = v62;
                            v78 = v64;
                            v80 = v63;
                            if (v63 != v64)
                            {
                              LOBYTE(v12) = 0;
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
                                    LOBYTE(v12) = 0;
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
                            v67 = [(LNQueryMetadata *)self allowedTargets];
                            v68 = [(LNQueryMetadata *)v6 allowedTargets];
                            v69 = v67;
                            v70 = v68;
                            v71 = v69;
                            v77 = v70;
                            if (v69 == v70)
                            {
                              LOBYTE(v12) = 1;
                              v19 = v94;
                            }

                            else
                            {
                              LOBYTE(v12) = 0;
                              v19 = v94;
                              if (v71 && v70)
                              {
                                LOBYTE(v12) = [v71 isEqualToArray:v70];
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

  LOBYTE(v12) = 1;
LABEL_83:

  return v12;
}

- (unint64_t)hash
{
  v26 = [(LNQueryMetadata *)self identifier];
  v3 = [v26 hash];
  v25 = [(LNQueryMetadata *)self inputValueType];
  v4 = [v25 hash] ^ v3;
  v24 = [(LNQueryMetadata *)self resultValueType];
  v5 = [v24 hash];
  v6 = [(LNQueryMetadata *)self parameters];
  v7 = v4 ^ v5 ^ [v6 hash];
  v8 = [(LNQueryMetadata *)self sortingOptions];
  v9 = [v8 hash];
  v10 = [(LNQueryMetadata *)self availabilityAnnotations];
  v11 = v9 ^ [v10 hash];
  v12 = [(LNQueryMetadata *)self descriptionMetadata];
  v13 = v7 ^ v11 ^ [v12 hash];
  v14 = [(LNQueryMetadata *)self visibilityMetadata];
  v15 = [v14 hash];
  v16 = v15 ^ [(LNQueryMetadata *)self defaultQueryForEntity];
  v17 = [(LNQueryMetadata *)self fullyQualifiedIdentifier];
  v18 = v13 ^ v16 ^ [v17 hash];
  v19 = [(LNQueryMetadata *)self effectiveBundleIdentifiers];
  v20 = [v19 hash];
  v21 = [(LNQueryMetadata *)self allowedTargets];
  v22 = v20 ^ [v21 hash];

  return v18 ^ v22;
}

- (NSString)description
{
  v24 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v30 = NSStringFromClass(v3);
  v27 = [(LNQueryMetadata *)self fullyQualifiedIdentifier];
  v28 = v27;
  if (!v27)
  {
    v28 = [(LNQueryMetadata *)self identifier];
  }

  v20 = [(LNQueryMetadata *)self inputValueType];
  v29 = [(LNQueryMetadata *)self resultValueType];
  v26 = [(LNQueryMetadata *)self effectiveBundleIdentifiers];
  v25 = [v26 array];
  v23 = [v25 valueForKeyPath:@"description"];
  v17 = [v23 componentsJoinedByString:{@", "}];
  v22 = [(LNQueryMetadata *)self allowedTargets];
  v21 = [v22 valueForKeyPath:@"description"];
  v4 = [v21 componentsJoinedByString:{@", "}];
  v5 = [(LNQueryMetadata *)self mangledTypeNameByBundleIdentifier];
  v19 = [(LNQueryMetadata *)self parameters];
  v18 = [v19 valueForKeyPath:@"description"];
  v6 = [v18 componentsJoinedByString:{@", "}];
  v7 = [(LNQueryMetadata *)self sortingOptions];
  v8 = [v7 valueForKeyPath:@"description"];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [(LNQueryMetadata *)self availabilityAnnotations];
  v11 = [(LNQueryMetadata *)self descriptionMetadata];
  v12 = [(LNQueryMetadata *)self visibilityMetadata];
  v13 = [(LNQueryMetadata *)self defaultQueryForEntity];
  v14 = @"NO";
  if (v13)
  {
    v14 = @"YES";
  }

  v15 = [v24 stringWithFormat:@"<%@: %p, identifier: %@, inputValueType: %@, resultValueType: %@, effectiveBundleIdentifiers: [%@], allowedTargets: [%@], mangledTypeNameByBundleIdentifier: %@, parameters: [%@], sortingOptions: [%@], availabilityAnnotations: %@, descriptionMetadata: %@, visibility: %@, defaultEntityQuery: %@>", v30, self, v28, v20, v29, v17, v4, v5, v6, v9, v10, v11, v12, v14];

  if (!v27)
  {
  }

  return v15;
}

- (LNQueryMetadata)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v56 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"inputValueType"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"resultValueType"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v55 = [v3 decodeObjectOfClasses:v8 forKey:@"parameters"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v3 decodeObjectOfClasses:v11 forKey:@"sortingOptions"];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"mangledTypeName"];
  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v54 = [v3 decodeObjectOfClasses:v16 forKey:@"effectiveBundleIdentifiers"];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v53 = [v3 decodeObjectOfClasses:v19 forKey:@"mangledTypeNameByBundleIdentifier"];

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
        v31 = [v3 decodeObjectOfClasses:v30 forKey:@"availabilityAnnotations"];

        v32 = [v3 decodeIntForKey:@"capabilities"];
        v33 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"descriptionMetadata"];
        v34 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"visibilityMetadata"];
        if (!v34)
        {
          v34 = [[LNVisibilityMetadata alloc] initWithIsDiscoverable:1 assistantOnly:0];
        }

        v35 = v34;
        v49 = v34;
        v36 = [v3 decodeBoolForKey:@"defaultQueryForEntity"];
        v48 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"fullyQualifiedIdentifier"];
        v37 = MEMORY[0x1E695DFD8];
        v38 = objc_opt_class();
        v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
        v40 = [v3 decodeObjectOfClasses:v39 forKey:@"allowedTargets"];

        LOBYTE(v47) = v36;
        v46 = v32;
        v12 = v26;
        v45 = v26;
        v25 = v55;
        v41 = self;
        v52 = v31;
        v42 = [(LNQueryMetadata *)v41 initWithIdentifier:v57 inputValueType:v56 resultValueType:v50 mangledTypeName:v13 mangledTypeNameByBundleIdentifier:v53 effectiveBundleIdentifiers:v54 parameters:v55 sortingOptions:v45 availabilityAnnotations:v31 capabilities:v46 descriptionMetadata:v33 visibilityMetadata:v35 defaultQueryForEntity:v47 fullyQualifiedIdentifier:v48 allowedTargets:v40];

        v22 = v50;
        v23 = v54;

        v21 = v56;
        v24 = v53;
        v43 = v57;
        v20 = v42;
      }

      else
      {
        v42 = self;
        v43 = v57;
      }
    }

    else
    {
      v42 = self;
      v43 = v57;
      v25 = v55;
    }
  }

  else
  {
    v42 = self;
    v24 = v53;
    v21 = v56;
    v43 = 0;
    v22 = v5;
    v23 = v54;
    v25 = v55;
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNQueryMetadata *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNQueryMetadata *)self inputValueType];
  [v4 encodeObject:v6 forKey:@"inputValueType"];

  v7 = [(LNQueryMetadata *)self resultValueType];
  [v4 encodeObject:v7 forKey:@"resultValueType"];

  v8 = [(LNQueryMetadata *)self parameters];
  [v4 encodeObject:v8 forKey:@"parameters"];

  v9 = [(LNQueryMetadata *)self sortingOptions];
  [v4 encodeObject:v9 forKey:@"sortingOptions"];

  v10 = [(LNQueryMetadata *)self mangledTypeName];
  [v4 encodeObject:v10 forKey:@"mangledTypeName"];

  v11 = [(LNQueryMetadata *)self mangledTypeNameByBundleIdentifier];
  [v4 encodeObject:v11 forKey:@"mangledTypeNameByBundleIdentifier"];

  v12 = [(LNQueryMetadata *)self effectiveBundleIdentifiers];
  [v4 encodeObject:v12 forKey:@"effectiveBundleIdentifiers"];

  v13 = [(LNQueryMetadata *)self availabilityAnnotations];
  [v4 encodeObject:v13 forKey:@"availabilityAnnotations"];

  [v4 encodeInteger:-[LNQueryMetadata capabilities](self forKey:{"capabilities"), @"capabilities"}];
  v14 = [(LNQueryMetadata *)self descriptionMetadata];
  [v4 encodeObject:v14 forKey:@"descriptionMetadata"];

  v15 = [(LNQueryMetadata *)self visibilityMetadata];
  [v4 encodeObject:v15 forKey:@"visibilityMetadata"];

  [v4 encodeBool:-[LNQueryMetadata defaultQueryForEntity](self forKey:{"defaultQueryForEntity"), @"defaultQueryForEntity"}];
  v16 = [(LNQueryMetadata *)self fullyQualifiedIdentifier];
  [v4 encodeObject:v16 forKey:@"fullyQualifiedIdentifier"];

  v17 = [(LNQueryMetadata *)self allowedTargets];
  [v4 encodeObject:v17 forKey:@"allowedTargets"];
}

- (BOOL)visibleForUse:(int64_t)a3
{
  v4 = [(LNQueryMetadata *)self visibilityMetadata];
  LOBYTE(a3) = [v4 visibleForUse:a3];

  return a3;
}

- (LNQueryMetadata)initWithIdentifier:(id)a3 inputValueType:(id)a4 resultValueType:(id)a5 mangledTypeName:(id)a6 mangledTypeNameByBundleIdentifier:(id)a7 effectiveBundleIdentifiers:(id)a8 parameters:(id)a9 sortingOptions:(id)a10 availabilityAnnotations:(id)a11 capabilities:(unint64_t)a12 descriptionMetadata:(id)a13 visibilityMetadata:(id)a14 defaultQueryForEntity:(BOOL)a15 fullyQualifiedIdentifier:(id)a16 allowedTargets:(id)a17
{
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v72 = a7;
  v76 = a8;
  v26 = a9;
  v77 = a10;
  v27 = a11;
  v70 = a13;
  v28 = a14;
  v74 = a16;
  v71 = a17;
  v75 = v22;
  if (!v22)
  {
    v63 = [MEMORY[0x1E696AAA8] currentHandler];
    [v63 handleFailureInMethod:a2 object:self file:@"LNQueryMetadata.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  if (v24)
  {
    if (v26)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v64 = [MEMORY[0x1E696AAA8] currentHandler];
    [v64 handleFailureInMethod:a2 object:self file:@"LNQueryMetadata.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"resultValueType"}];

    if (v26)
    {
      goto LABEL_5;
    }
  }

  v65 = [MEMORY[0x1E696AAA8] currentHandler];
  [v65 handleFailureInMethod:a2 object:self file:@"LNQueryMetadata.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"parameters"}];

LABEL_5:
  if (!v77)
  {
    v66 = [MEMORY[0x1E696AAA8] currentHandler];
    [v66 handleFailureInMethod:a2 object:self file:@"LNQueryMetadata.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"sortingOptions"}];
  }

  v29 = v27;
  v30 = v74;
  v31 = v25;
  if (!v25)
  {
    v67 = [MEMORY[0x1E696AAA8] currentHandler];
    [v67 handleFailureInMethod:a2 object:self file:@"LNQueryMetadata.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"mangledTypeName"}];
  }

  v32 = v26;
  v33 = v28;
  if (!v28)
  {
    v68 = [MEMORY[0x1E696AAA8] currentHandler];
    [v68 handleFailureInMethod:a2 object:self file:@"LNQueryMetadata.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"visibilityMetadata"}];
  }

  v78.receiver = self;
  v78.super_class = LNQueryMetadata;
  v34 = [(LNQueryMetadata *)&v78 init];
  if (v34)
  {
    v35 = [v75 copy];
    identifier = v34->_identifier;
    v34->_identifier = v35;

    v37 = [v23 copy];
    inputValueType = v34->_inputValueType;
    v34->_inputValueType = v37;

    v39 = [v24 copy];
    resultValueType = v34->_resultValueType;
    v34->_resultValueType = v39;

    v41 = [v32 copy];
    parameters = v34->_parameters;
    v34->_parameters = v41;

    v43 = [v77 copy];
    sortingOptions = v34->_sortingOptions;
    v34->_sortingOptions = v43;

    v45 = [v31 copy];
    mangledTypeName = v34->_mangledTypeName;
    v34->_mangledTypeName = v45;

    v47 = [v72 copy];
    mangledTypeNameByBundleIdentifier = v34->_mangledTypeNameByBundleIdentifier;
    v34->_mangledTypeNameByBundleIdentifier = v47;

    v49 = [v76 copy];
    effectiveBundleIdentifiers = v34->_effectiveBundleIdentifiers;
    v34->_effectiveBundleIdentifiers = v49;

    v51 = [v29 copy];
    availabilityAnnotations = v34->_availabilityAnnotations;
    v34->_availabilityAnnotations = v51;

    v34->_capabilities = a12;
    v30 = v74;
    v53 = [v70 copy];
    descriptionMetadata = v34->_descriptionMetadata;
    v34->_descriptionMetadata = v53;

    v55 = [v33 copy];
    visibilityMetadata = v34->_visibilityMetadata;
    v34->_visibilityMetadata = v55;

    v34->_defaultQueryForEntity = a15;
    v57 = [v74 copy];
    fullyQualifiedIdentifier = v34->_fullyQualifiedIdentifier;
    v34->_fullyQualifiedIdentifier = v57;

    v59 = [v71 copy];
    allowedTargets = v34->_allowedTargets;
    v34->_allowedTargets = v59;

    v61 = v34;
  }

  return v34;
}

- (id)mangledTypeNameForBundleIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"LNQueryMetadata.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v6 = [(LNQueryMetadata *)self mangledTypeNameByBundleIdentifier];
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(LNQueryMetadata *)self mangledTypeName];
  }

  v10 = v9;

  return v10;
}

- (LNQueryMetadata)initWithIdentifier:(id)a3 queryType:(id)a4 entityType:(id)a5 parameters:(id)a6 sortingOptions:(id)a7
{
  v12 = MEMORY[0x1E695DFB8];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v12 orderedSet];
  v19 = [(LNQueryMetadata *)self initWithIdentifier:v17 queryType:v16 entityType:v15 mangledTypeName:v16 mangledTypeNameByBundleIdentifier:MEMORY[0x1E695E0F8] effectiveBundleIdentifiers:v18 parameters:v14 sortingOptions:v13];

  return v19;
}

- (LNQueryMetadata)initWithIdentifier:(id)a3 entityType:(id)a4 mangledTypeName:(id)a5 mangledTypeNameByBundleIdentifier:(id)a6 effectiveBundleIdentifiers:(id)a7 parameters:(id)a8 sortingOptions:(id)a9 availabilityAnnotations:(id)a10 capabilities:(unint64_t)a11 descriptionMetadata:(id)a12
{
  v18 = a12;
  v19 = a10;
  v20 = a9;
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v27 = [[LNVisibilityMetadata alloc] initWithIsDiscoverable:1 assistantOnly:0];
  v30 = [(LNQueryMetadata *)self initWithIdentifier:v26 entityType:v25 mangledTypeName:v24 mangledTypeNameByBundleIdentifier:v23 effectiveBundleIdentifiers:v22 parameters:v21 sortingOptions:v20 availabilityAnnotations:v19 capabilities:a11 descriptionMetadata:v18 visibilityMetadata:v27];

  return v30;
}

- (LNQueryMetadata)initWithIdentifier:(id)a3 entityType:(id)a4 mangledTypeName:(id)a5 mangledTypeNameByBundleIdentifier:(id)a6 effectiveBundleIdentifiers:(id)a7 parameters:(id)a8 sortingOptions:(id)a9 availabilityAnnotations:(id)a10 capabilities:(unint64_t)a11 descriptionMetadata:(id)a12 visibilityMetadata:(id)a13 defaultQueryForEntity:(BOOL)a14 fullyQualifiedIdentifier:(id)a15
{
  v34 = a15;
  v19 = a13;
  v31 = a12;
  v29 = a10;
  v28 = a9;
  v26 = a8;
  v27 = a7;
  v25 = a6;
  v20 = a5;
  v21 = a4;
  v33 = a3;
  v22 = [[LNEntityValueType alloc] initWithIdentifier:v21];

  LOBYTE(v24) = a14;
  v36 = [(LNQueryMetadata *)self initWithIdentifier:v33 inputValueType:0 resultValueType:v22 mangledTypeName:v20 mangledTypeNameByBundleIdentifier:v25 effectiveBundleIdentifiers:v27 parameters:v26 sortingOptions:v28 availabilityAnnotations:v29 capabilities:a11 descriptionMetadata:v31 visibilityMetadata:v19 defaultQueryForEntity:v24 fullyQualifiedIdentifier:v34];

  return v36;
}

- (NSString)entityType
{
  v2 = [(LNQueryMetadata *)self resultValueType];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
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

  v5 = [v4 identifier];

  if (v5)
  {
    v6 = v5;
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
  v2 = [(LNQueryMetadata *)self identifier];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"-" withString:@"."];

  return v3;
}

@end