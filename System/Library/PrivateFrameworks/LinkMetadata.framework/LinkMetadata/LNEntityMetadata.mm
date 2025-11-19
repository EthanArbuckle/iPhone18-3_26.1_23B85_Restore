@interface LNEntityMetadata
- (BOOL)isEqual:(id)a3;
- (BOOL)visibleForUse:(int64_t)a3;
- (LNEntityMetadata)entityMetadataWithAttributionBundleIdentifier:(id)a3;
- (LNEntityMetadata)initWithCoder:(id)a3;
- (LNEntityMetadata)initWithIdentifier:(id)a3 transient:(BOOL)a4 mangledTypeName:(id)a5 mangledTypeNameByBundleIdentifier:(id)a6 effectiveBundleIdentifiers:(id)a7 displayRepresentation:(id)a8 properties:(id)a9 customIntentTypeClassName:(id)a10 availabilityAnnotations:(id)a11 requiredCapabilities:(id)a12 systemProtocolMetadata:(id)a13 attributionBundleIdentifier:(id)a14 transferableContentTypes:(id)a15 assistantDefinedSchemas:(id)a16 fullyQualifiedTypeName:(id)a17;
- (LNEntityMetadata)initWithIdentifier:(id)a3 transient:(BOOL)a4 mangledTypeName:(id)a5 mangledTypeNameByBundleIdentifier:(id)a6 effectiveBundleIdentifiers:(id)a7 displayRepresentation:(id)a8 properties:(id)a9 customIntentTypeClassName:(id)a10 availabilityAnnotations:(id)a11 requiredCapabilities:(id)a12 systemProtocolMetadata:(id)a13 attributionBundleIdentifier:(id)a14 transferableContentTypes:(id)a15 assistantDefinedSchemas:(id)a16 fullyQualifiedTypeName:(id)a17 visibilityMetadata:(id)a18 defaultQueryIdentifier:(id)a19 allowedTargets:(id)a20;
- (LNEntityMetadata)initWithIdentifier:(id)a3 transient:(BOOL)a4 mangledTypeName:(id)a5 mangledTypeNameByBundleIdentifier:(id)a6 effectiveBundleIdentifiers:(id)a7 displayTypeName:(id)a8 properties:(id)a9 customIntentTypeClassName:(id)a10;
- (LNEntityMetadata)initWithTypeName:(id)a3 displayTypeName:(id)a4 properties:(id)a5 customIntentTypeClassName:(id)a6;
- (LNEntityMetadata)initWithTypeName:(id)a3 properties:(id)a4;
- (LNStaticDeferredLocalizedString)displayTypeName;
- (NSString)description;
- (id)copyWithAdditionalTransferableContentTypes:(id)a3;
- (id)copyWithDescriptiveMetadataFromEntity:(id)a3 usingLibraryKey:(id)a4;
- (id)identifierIndexedProperties;
- (id)mangledTypeNameForBundleIdentifier:(id)a3;
- (id)metadataByAddingEffectiveBundleIdentifiers:(id)a3 mangledTypeNameByBundleIdentifier:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNEntityMetadata

- (id)identifierIndexedProperties
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(LNEntityMetadata *)self properties];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__LNEntityMetadata_identifierIndexedProperties__block_invoke;
  v7[3] = &unk_1E72B0F10;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

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

- (id)copyWithAdditionalTransferableContentTypes:(id)a3
{
  v4 = a3;
  v5 = [(LNEntityMetadata *)self copy];
  v6 = [v5 transferableContentTypes];
  v7 = [v6 exportableTypes];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = v10;

  v12 = [v5 transferableContentTypes];
  v13 = [v12 importableTypes];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v9;
  }

  v16 = v15;

  v17 = [v4 exportableTypes];
  v18 = [v11 arrayByAddingObjectsFromArray:v17];

  v19 = [v4 importableTypes];

  v20 = [v16 arrayByAddingObjectsFromArray:v19];

  v21 = [[LNContentTypeMetadata alloc] initWithExportableTypes:v18 importableTypes:v20];
  v22 = v5[12];
  v5[12] = v21;

  return v5;
}

- (id)copyWithDescriptiveMetadataFromEntity:(id)a3 usingLibraryKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(LNEntityMetadata *)self copy];
  v9 = [*(v8 + 56) name];
  v10 = [v9 key];
  v11 = [v10 length];

  if (!v11)
  {
    v12 = [LNTypeDisplayRepresentation alloc];
    v27 = [v6 displayRepresentation];
    v13 = [v27 name];
    v14 = [(LNEntityMetadata *)self displayRepresentation];
    v15 = [v14 numericFormat];
    v16 = [(LNEntityMetadata *)self displayRepresentation];
    v17 = [v16 synonyms];
    v18 = [(LNTypeDisplayRepresentation *)v12 initWithName:v13 numericFormat:v15 synonyms:v17];
    v19 = *(v8 + 56);
    *(v8 + 56) = v18;
  }

  v20 = [v6 identifierIndexedProperties];
  v21 = [(LNEntityMetadata *)self properties];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __74__LNEntityMetadata_copyWithDescriptiveMetadataFromEntity_usingLibraryKey___block_invoke;
  v28[3] = &unk_1E72B0EE8;
  v29 = v20;
  v30 = v7;
  v22 = v7;
  v23 = v20;
  v24 = [v21 if_map:v28];
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

- (id)metadataByAddingEffectiveBundleIdentifiers:(id)a3 mangledTypeNameByBundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"LNEntityMetadata.m" lineNumber:263 description:{@"Invalid parameter not satisfying: %@", @"effectiveBundleIdentifiers"}];
  }

  v9 = [(LNEntityMetadata *)self copy];
  v10 = [v9 effectiveBundleIdentifiers];
  v11 = [v7 array];
  v12 = [v10 if_orderedSetByAddingObjectsFromArray:v11];
  v13 = v9[5];
  v9[5] = v12;

  v14 = [v9 mangledTypeNameByBundleIdentifier];
  v15 = [v14 if_dictionaryByAddingEntriesFromDictionary:v8];
  v16 = v9[4];
  v9[4] = v15;

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
LABEL_104:

      goto LABEL_105;
    }

    v7 = [(LNEntityMetadata *)self identifier];
    v8 = [(LNEntityMetadata *)v6 identifier];
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
        goto LABEL_102;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_103:

        goto LABEL_104;
      }
    }

    v16 = [(LNEntityMetadata *)self displayRepresentation];
    v17 = [(LNEntityMetadata *)v6 displayRepresentation];
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
        goto LABEL_101;
      }

      v21 = [v14 isEqual:v18];

      if (!v21)
      {
LABEL_27:
        LOBYTE(v12) = 0;
LABEL_102:

        goto LABEL_103;
      }
    }

    v22 = [(LNEntityMetadata *)self properties];
    v23 = [(LNEntityMetadata *)v6 properties];

    if (v22 != v23)
    {
      v24 = [(LNEntityMetadata *)self properties];
      if (!v24)
      {
        goto LABEL_27;
      }

      v25 = v24;
      v26 = [(LNEntityMetadata *)v6 properties];

      if (!v26)
      {
        goto LABEL_27;
      }

      v114 = v13;
      v27 = MEMORY[0x1E695DFD8];
      v112 = [(LNEntityMetadata *)self properties];
      v28 = [v27 setWithArray:v112];
      v29 = MEMORY[0x1E695DFD8];
      v30 = [(LNEntityMetadata *)v6 properties];
      v31 = [v29 setWithArray:v30];
      v32 = [v28 isEqualToSet:v31];

      v13 = v114;
      if (!v32)
      {
        goto LABEL_27;
      }
    }

    v115 = v13;
    v33 = [(LNEntityMetadata *)self customIntentTypeClassName];
    v34 = [(LNEntityMetadata *)v6 customIntentTypeClassName];
    v20 = v33;
    v35 = v34;
    v19 = v35;
    v113 = v20;
    if (v20 != v35)
    {
      LOBYTE(v12) = 0;
      v36 = v35;
      if (v20)
      {
        v13 = v115;
        if (v35)
        {
          v37 = [v20 isEqualToString:v35];

          if (!v37)
          {
            LOBYTE(v12) = 0;
            v13 = v115;
LABEL_101:

            goto LABEL_102;
          }

LABEL_29:
          v38 = [(LNEntityMetadata *)self availabilityAnnotations];
          v39 = [(LNEntityMetadata *)v6 availabilityAnnotations];
          v40 = v38;
          v41 = v39;
          v110 = v41;
          v111 = v40;
          if (v40 == v41)
          {
          }

          else
          {
            LOBYTE(v12) = 0;
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

          v44 = [(LNEntityMetadata *)self requiredCapabilities];
          v45 = [(LNEntityMetadata *)v6 requiredCapabilities];

          if (v44 != v45)
          {
            v12 = [(LNEntityMetadata *)self requiredCapabilities];
            if (!v12)
            {
LABEL_45:
              v13 = v115;
LABEL_99:
              v36 = v110;
              v20 = v111;
              goto LABEL_100;
            }

            v46 = [(LNEntityMetadata *)v6 requiredCapabilities];

            if (!v46)
            {
              goto LABEL_44;
            }

            v47 = MEMORY[0x1E695DFD8];
            v108 = [(LNEntityMetadata *)self requiredCapabilities];
            v48 = [v47 setWithArray:v108];
            v49 = MEMORY[0x1E695DFD8];
            v50 = [(LNEntityMetadata *)v6 requiredCapabilities];
            v51 = [v49 setWithArray:v50];
            v106 = [v48 isEqualToSet:v51];

            if (!v106)
            {
LABEL_44:
              LOBYTE(v12) = 0;
              goto LABEL_45;
            }
          }

          v52 = [(LNEntityMetadata *)self systemProtocolMetadata];
          v53 = [(LNEntityMetadata *)v6 systemProtocolMetadata];
          v40 = v52;
          v54 = v53;
          v107 = v40;
          v109 = v54;
          if (v40 != v54)
          {
            LOBYTE(v12) = 0;
            if (v40)
            {
              v55 = v54;
              v13 = v115;
              if (v54)
              {
                v56 = [v40 isEqualToDictionary:v54];

                if (!v56)
                {
                  LOBYTE(v12) = 0;
                  v13 = v115;
                  v42 = v109;
                  goto LABEL_98;
                }

LABEL_49:
                v57 = [(LNEntityMetadata *)self attributionBundleIdentifier];
                v58 = [(LNEntityMetadata *)v6 attributionBundleIdentifier];
                v59 = v57;
                v60 = v58;
                v104 = v60;
                v105 = v59;
                if (v59 == v60)
                {
                }

                else
                {
                  LOBYTE(v12) = 0;
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
                    LOBYTE(v12) = 0;
                    v13 = v115;
LABEL_96:
                    v55 = v104;
                    v40 = v105;
                    goto LABEL_97;
                  }
                }

                v63 = [(LNEntityMetadata *)self transferableContentTypes];
                v64 = [(LNEntityMetadata *)v6 transferableContentTypes];
                v59 = v63;
                v65 = v64;
                v66 = v65;
                if (v59 != v65)
                {
                  LOBYTE(v12) = 0;
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
                      v70 = [(LNEntityMetadata *)self assistantDefinedSchemas];
                      v71 = [(LNEntityMetadata *)v6 assistantDefinedSchemas];

                      if (v70 != v71)
                      {
                        v12 = [(LNEntityMetadata *)self assistantDefinedSchemas];
                        if (!v12)
                        {
LABEL_72:
                          v13 = v115;
                          v61 = v102;
                          goto LABEL_95;
                        }

                        v72 = [(LNEntityMetadata *)v6 assistantDefinedSchemas];

                        if (!v72)
                        {
                          goto LABEL_71;
                        }

                        v73 = MEMORY[0x1E695DFD8];
                        v100 = [(LNEntityMetadata *)self assistantDefinedSchemas];
                        v74 = [v73 setWithArray:v100];
                        v75 = MEMORY[0x1E695DFD8];
                        v96 = [(LNEntityMetadata *)v6 assistantDefinedSchemas];
                        v76 = [v75 setWithArray:v96];
                        v98 = [v74 isEqualToSet:v76];

                        if (!v98)
                        {
LABEL_71:
                          LOBYTE(v12) = 0;
                          goto LABEL_72;
                        }
                      }

                      v77 = [(LNEntityMetadata *)self visibilityMetadata];
                      v78 = [(LNEntityMetadata *)v6 visibilityMetadata];
                      v79 = v77;
                      v80 = v78;
                      v99 = v80;
                      v101 = v79;
                      v103 = v59;
                      if (v79 != v80)
                      {
                        LOBYTE(v12) = 0;
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
                              LOBYTE(v12) = 0;
                              v13 = v115;
LABEL_93:
                              v59 = v101;
                              v66 = v102;
                              v67 = v99;
                              goto LABEL_94;
                            }

LABEL_76:
                            v84 = [(LNEntityMetadata *)self defaultQueryIdentifier];
                            v85 = [(LNEntityMetadata *)v6 defaultQueryIdentifier];
                            v82 = v84;
                            v86 = v85;
                            v97 = v86;
                            if (v82 != v86)
                            {
                              LOBYTE(v12) = 0;
                              if (v82)
                              {
                                v87 = v86;
                                v88 = v82;
                                if (v86)
                                {
                                  v89 = [v82 isEqualToString:v86];

                                  if (!v89)
                                  {
                                    LOBYTE(v12) = 0;
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
                            v90 = [(LNEntityMetadata *)self allowedTargets];
                            v91 = [(LNEntityMetadata *)v6 allowedTargets];
                            v88 = v90;
                            v92 = v91;
                            v93 = v92;
                            if (v88 == v92)
                            {
                              LOBYTE(v12) = 1;
                            }

                            else
                            {
                              LOBYTE(v12) = 0;
                              if (v88 && v92)
                              {
                                LOBYTE(v12) = [v88 isEqualToArray:v92];
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

  LOBYTE(v12) = 1;
LABEL_105:

  return v12;
}

- (unint64_t)hash
{
  v34 = [(LNEntityMetadata *)self identifier];
  v3 = [v34 hash];
  v4 = [(LNEntityMetadata *)self isTransient];
  v33 = [(LNEntityMetadata *)self displayRepresentation];
  v5 = v3 ^ [v33 hash] ^ v4;
  v32 = [(LNEntityMetadata *)self properties];
  v6 = [v32 hash];
  v31 = [(LNEntityMetadata *)self customIntentTypeClassName];
  v7 = v6 ^ [v31 hash];
  v30 = [(LNEntityMetadata *)self availabilityAnnotations];
  v8 = v5 ^ v7 ^ [v30 hash];
  v29 = [(LNEntityMetadata *)self requiredCapabilities];
  v9 = [v29 hash];
  v28 = [(LNEntityMetadata *)self systemProtocolMetadata];
  v10 = v9 ^ [v28 hash];
  v11 = [(LNEntityMetadata *)self attributionBundleIdentifier];
  v12 = v10 ^ [v11 hash];
  v13 = [(LNEntityMetadata *)self transferableContentTypes];
  v14 = v8 ^ v12 ^ [v13 hash];
  v15 = [(LNEntityMetadata *)self assistantDefinedSchemas];
  v16 = [v15 hash];
  v17 = [(LNEntityMetadata *)self fullyQualifiedTypeName];
  v18 = v16 ^ [v17 hash];
  v19 = [(LNEntityMetadata *)self visibilityMetadata];
  v20 = v18 ^ [v19 hash];
  v21 = [(LNEntityMetadata *)self defaultQueryIdentifier];
  v22 = v20 ^ [v21 hash];
  v23 = [(LNEntityMetadata *)self effectiveBundleIdentifiers];
  v24 = v14 ^ v22 ^ [v23 hash];
  v25 = [(LNEntityMetadata *)self allowedTargets];
  v26 = [v25 hash];

  return v24 ^ v26;
}

- (NSString)description
{
  v22 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v20 = NSStringFromClass(v3);
  v30 = [(LNEntityMetadata *)self identifier];
  v4 = [(LNEntityMetadata *)self isTransient];
  v5 = @"NO";
  if (v4)
  {
    v5 = @"YES";
  }

  v19 = v5;
  v31 = [(LNEntityMetadata *)self displayRepresentation];
  v27 = [(LNEntityMetadata *)self effectiveBundleIdentifiers];
  v26 = [v27 array];
  v25 = [v26 valueForKeyPath:@"description"];
  v16 = [v25 componentsJoinedByString:{@", "}];
  v24 = [(LNEntityMetadata *)self allowedTargets];
  v21 = [v24 valueForKeyPath:@"description"];
  v29 = [v21 componentsJoinedByString:{@", "}];
  v28 = [(LNEntityMetadata *)self mangledTypeNameByBundleIdentifier];
  v18 = [(LNEntityMetadata *)self properties];
  v17 = [v18 valueForKeyPath:@"description"];
  v15 = [v17 componentsJoinedByString:{@", "}];
  v6 = [(LNEntityMetadata *)self availabilityAnnotations];
  v7 = [(LNEntityMetadata *)self requiredCapabilities];
  v8 = [(LNEntityMetadata *)self systemProtocolMetadata];
  v9 = [(LNEntityMetadata *)self attributionBundleIdentifier];
  v10 = [(LNEntityMetadata *)self assistantDefinedSchemas];
  v11 = [(LNEntityMetadata *)self fullyQualifiedTypeName];
  v12 = [(LNEntityMetadata *)self visibilityMetadata];
  v13 = [(LNEntityMetadata *)self defaultQueryIdentifier];
  v23 = [v22 stringWithFormat:@"<%@: %p, identifier: %@, transient: %@, displayRepresentation: %@, effectiveBundleIdentifiers: [%@], allowedTargets: [%@], mangledTypeNameByBundleIdentifier: %@, properties: [%@], availabilityAnnotations: %@, requiredCapabilities: %@, systemProtocolMetadata: %@, attributionBundleIdentifier: %@, assistantDefinedSchemas: %@, fullyQualifiedTypeName: %@, visibility: %@, query: %@>", v20, self, v30, v19, v31, v16, v29, v28, v15, v6, v7, v8, v9, v10, v11, v12, v13];

  return v23;
}

- (LNEntityMetadata)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v74 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"displayRepresentation"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v73 = [v3 decodeObjectOfClasses:v7 forKey:@"properties"];

  v72 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"mangledTypeName"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v71 = [v3 decodeObjectOfClasses:v10 forKey:@"effectiveBundleIdentifiers"];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v70 = [v3 decodeObjectOfClasses:v13 forKey:@"mangledTypeNameByBundleIdentifier"];

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [v14 setWithObjects:{v15, v16, v17, v18, v19, objc_opt_class(), 0}];
  v21 = [v3 decodeObjectOfClasses:v20 forKey:@"systemProtocolMetadata"];
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
    v54 = self;
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
    v54 = self;
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
    v54 = self;
LABEL_13:
    v52 = v66;
    goto LABEL_14;
  }

  v63 = [v3 decodeBoolForKey:@"transient"];
  v64 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"customIntentTypeClassName"];
  v31 = MEMORY[0x1E695DFD8];
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = [v31 setWithObjects:{v32, v33, objc_opt_class(), 0}];
  v65 = [v3 decodeObjectOfClasses:v34 forKey:@"availabilityAnnotations"];

  v35 = MEMORY[0x1E695DFD8];
  v36 = objc_opt_class();
  v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
  v38 = [v3 decodeObjectOfClasses:v37 forKey:@"requiredCapabilities"];

  v39 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"attributionBundleIdentifier"];
  v40 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"transferableContentTypes"];
  v41 = MEMORY[0x1E695DFD8];
  v42 = objc_opt_class();
  v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
  v44 = [v3 decodeObjectOfClasses:v43 forKey:@"assistantDefinedSchemas"];

  v45 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"fullyQualifiedTypeName"];
  v46 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"visibilityMetadata"];
  if (!v46)
  {
    v46 = [[LNVisibilityMetadata alloc] initWithIsDiscoverable:1 assistantOnly:0];
  }

  v59 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"defaultQueryIdentifier"];
  v47 = MEMORY[0x1E695DFD8];
  v48 = objc_opt_class();
  v49 = [v47 setWithObjects:{v48, objc_opt_class(), 0}];
  v50 = [v3 decodeObjectOfClasses:v49 forKey:@"allowedTargets"];

  v58 = v45;
  v61 = v40;
  v62 = v3;
  v51 = v45;
  v56 = v40;
  v57 = v44;
  v52 = v66;
  v60 = v44;
  v27 = v73;
  v53 = self;
  v69 = v38;
  v30 = v71;
  v29 = v70;
  v54 = [(LNEntityMetadata *)v53 initWithIdentifier:v67 transient:v63 mangledTypeName:v72 mangledTypeNameByBundleIdentifier:v70 effectiveBundleIdentifiers:v71 displayRepresentation:v74 properties:v73 customIntentTypeClassName:v64 availabilityAnnotations:v65 requiredCapabilities:v38 systemProtocolMetadata:v66 attributionBundleIdentifier:v39 transferableContentTypes:v56 assistantDefinedSchemas:v57 fullyQualifiedTypeName:v58 visibilityMetadata:v46 defaultQueryIdentifier:v59 allowedTargets:v50];

  v4 = v67;
  v28 = v72;

  v3 = v62;
  v26 = v74;

  v25 = v54;
LABEL_14:

  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNEntityMetadata *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  [v4 encodeBool:-[LNEntityMetadata isTransient](self forKey:{"isTransient"), @"transient"}];
  v6 = [(LNEntityMetadata *)self displayRepresentation];
  [v4 encodeObject:v6 forKey:@"displayRepresentation"];

  v7 = [(LNEntityMetadata *)self properties];
  [v4 encodeObject:v7 forKey:@"properties"];

  v8 = [(LNEntityMetadata *)self mangledTypeName];
  [v4 encodeObject:v8 forKey:@"mangledTypeName"];

  v9 = [(LNEntityMetadata *)self mangledTypeNameByBundleIdentifier];
  [v4 encodeObject:v9 forKey:@"mangledTypeNameByBundleIdentifier"];

  v10 = [(LNEntityMetadata *)self effectiveBundleIdentifiers];
  [v4 encodeObject:v10 forKey:@"effectiveBundleIdentifiers"];

  v11 = [(LNEntityMetadata *)self availabilityAnnotations];
  [v4 encodeObject:v11 forKey:@"availabilityAnnotations"];

  v12 = [(LNEntityMetadata *)self requiredCapabilities];
  [v4 encodeObject:v12 forKey:@"requiredCapabilities"];

  v13 = [(LNEntityMetadata *)self systemProtocolMetadata];
  [v4 encodeObject:v13 forKey:@"systemProtocolMetadata"];

  v14 = [(LNEntityMetadata *)self attributionBundleIdentifier];
  [v4 encodeObject:v14 forKey:@"attributionBundleIdentifier"];

  v15 = [(LNEntityMetadata *)self transferableContentTypes];
  [v4 encodeObject:v15 forKey:@"transferableContentTypes"];

  v16 = [(LNEntityMetadata *)self assistantDefinedSchemas];
  [v4 encodeObject:v16 forKey:@"assistantDefinedSchemas"];

  v17 = [(LNEntityMetadata *)self fullyQualifiedTypeName];
  [v4 encodeObject:v17 forKey:@"fullyQualifiedTypeName"];

  v18 = [(LNEntityMetadata *)self visibilityMetadata];
  [v4 encodeObject:v18 forKey:@"visibilityMetadata"];

  v19 = [(LNEntityMetadata *)self defaultQueryIdentifier];
  [v4 encodeObject:v19 forKey:@"defaultQueryIdentifier"];

  v20 = [(LNEntityMetadata *)self allowedTargets];
  [v4 encodeObject:v20 forKey:@"allowedTargets"];
}

- (BOOL)visibleForUse:(int64_t)a3
{
  v4 = [(LNEntityMetadata *)self visibilityMetadata];
  LOBYTE(a3) = [v4 visibleForUse:a3];

  return a3;
}

- (LNEntityMetadata)entityMetadataWithAttributionBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(LNEntityMetadata *)self copy];
  v6 = [v4 copy];

  v7 = v5[14];
  v5[14] = v6;

  return v5;
}

- (LNEntityMetadata)initWithIdentifier:(id)a3 transient:(BOOL)a4 mangledTypeName:(id)a5 mangledTypeNameByBundleIdentifier:(id)a6 effectiveBundleIdentifiers:(id)a7 displayRepresentation:(id)a8 properties:(id)a9 customIntentTypeClassName:(id)a10 availabilityAnnotations:(id)a11 requiredCapabilities:(id)a12 systemProtocolMetadata:(id)a13 attributionBundleIdentifier:(id)a14 transferableContentTypes:(id)a15 assistantDefinedSchemas:(id)a16 fullyQualifiedTypeName:(id)a17 visibilityMetadata:(id)a18 defaultQueryIdentifier:(id)a19 allowedTargets:(id)a20
{
  v24 = a3;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  obj = a8;
  v88 = a8;
  v28 = a9;
  v83 = a10;
  v87 = a11;
  v29 = a12;
  v30 = a13;
  v31 = a14;
  v82 = a15;
  v81 = a16;
  v80 = a17;
  v32 = a18;
  v79 = a19;
  v33 = a20;
  v86 = v24;
  if (!v24)
  {
    v69 = [MEMORY[0x1E696AAA8] currentHandler];
    [v69 handleFailureInMethod:a2 object:self file:@"LNEntityMetadata.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v78 = v25;
  if (!v25)
  {
    v70 = [MEMORY[0x1E696AAA8] currentHandler];
    [v70 handleFailureInMethod:a2 object:self file:@"LNEntityMetadata.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"mangledTypeName"}];
  }

  v85 = v26;
  if (!v88)
  {
    v71 = [MEMORY[0x1E696AAA8] currentHandler];
    [v71 handleFailureInMethod:a2 object:self file:@"LNEntityMetadata.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"displayRepresentation"}];
  }

  v34 = v31;
  v35 = v28;
  if (!v28)
  {
    v72 = [MEMORY[0x1E696AAA8] currentHandler];
    [v72 handleFailureInMethod:a2 object:self file:@"LNEntityMetadata.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"properties"}];
  }

  if (!v32)
  {
    v73 = [MEMORY[0x1E696AAA8] currentHandler];
    [v73 handleFailureInMethod:a2 object:self file:@"LNEntityMetadata.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"visibilityMetadata"}];

    v74 = [MEMORY[0x1E696AAA8] currentHandler];
    [v74 handleFailureInMethod:a2 object:self file:@"LNEntityMetadata.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"visibilityMetadata"}];
  }

  v89.receiver = self;
  v89.super_class = LNEntityMetadata;
  v36 = [(LNEntityMetadata *)&v89 init];
  if (v36)
  {
    v37 = [v86 copy];
    identifier = v36->_identifier;
    v36->_identifier = v37;

    v36->_transient = a4;
    v39 = [v78 copy];
    mangledTypeName = v36->_mangledTypeName;
    v36->_mangledTypeName = v39;

    v41 = [v85 copy];
    mangledTypeNameByBundleIdentifier = v36->_mangledTypeNameByBundleIdentifier;
    v36->_mangledTypeNameByBundleIdentifier = v41;

    v43 = [v27 copy];
    effectiveBundleIdentifiers = v36->_effectiveBundleIdentifiers;
    v36->_effectiveBundleIdentifiers = v43;

    objc_storeStrong(&v36->_displayRepresentation, obj);
    v45 = [v35 copy];
    properties = v36->_properties;
    v36->_properties = v45;

    objc_storeStrong(&v36->_customIntentTypeClassName, a10);
    v47 = [v87 copy];
    availabilityAnnotations = v36->_availabilityAnnotations;
    v36->_availabilityAnnotations = v47;

    v49 = [v29 copy];
    requiredCapabilities = v36->_requiredCapabilities;
    v36->_requiredCapabilities = v49;

    v51 = [v30 copy];
    systemProtocolMetadata = v36->_systemProtocolMetadata;
    v36->_systemProtocolMetadata = v51;

    v53 = [v34 copy];
    attributionBundleIdentifier = v36->_attributionBundleIdentifier;
    v36->_attributionBundleIdentifier = v53;

    v55 = [v82 copy];
    transferableContentTypes = v36->_transferableContentTypes;
    v36->_transferableContentTypes = v55;

    v57 = [v81 copy];
    assistantDefinedSchemas = v36->_assistantDefinedSchemas;
    v36->_assistantDefinedSchemas = v57;

    v59 = [v80 copy];
    fullyQualifiedTypeName = v36->_fullyQualifiedTypeName;
    v36->_fullyQualifiedTypeName = v59;

    v61 = [v32 copy];
    visibilityMetadata = v36->_visibilityMetadata;
    v36->_visibilityMetadata = v61;

    v63 = [v79 copy];
    defaultQueryIdentifier = v36->_defaultQueryIdentifier;
    v36->_defaultQueryIdentifier = v63;

    v65 = [v33 copy];
    allowedTargets = v36->_allowedTargets;
    v36->_allowedTargets = v65;

    v67 = v36;
  }

  return v36;
}

- (id)mangledTypeNameForBundleIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"LNEntityMetadata.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v6 = [(LNEntityMetadata *)self mangledTypeNameByBundleIdentifier];
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(LNEntityMetadata *)self mangledTypeName];
  }

  v10 = v9;

  return v10;
}

- (LNEntityMetadata)initWithTypeName:(id)a3 properties:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[LNStaticDeferredLocalizedString alloc] initWithLocalizedKey:v7 bundleIdentifier:0 bundleURL:0 table:0];
  v9 = [(LNEntityMetadata *)self initWithTypeName:v7 displayTypeName:v8 properties:v6];

  return v9;
}

- (LNEntityMetadata)initWithTypeName:(id)a3 displayTypeName:(id)a4 properties:(id)a5 customIntentTypeClassName:(id)a6
{
  v10 = MEMORY[0x1E695DFB8];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 orderedSet];
  v16 = [(LNEntityMetadata *)self initWithTypeName:v14 mangledTypeName:v14 mangledTypeNameByBundleIdentifier:MEMORY[0x1E695E0F8] effectiveBundleIdentifiers:v15 displayTypeName:v13 properties:v12 customIntentTypeClassName:v11];

  return v16;
}

- (LNEntityMetadata)initWithIdentifier:(id)a3 transient:(BOOL)a4 mangledTypeName:(id)a5 mangledTypeNameByBundleIdentifier:(id)a6 effectiveBundleIdentifiers:(id)a7 displayTypeName:(id)a8 properties:(id)a9 customIntentTypeClassName:(id)a10
{
  v26 = a4;
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a3;
  v23 = [[LNTypeDisplayRepresentation alloc] initWithName:v18 numericFormat:0];

  v24 = [(LNEntityMetadata *)self initWithIdentifier:v22 transient:v26 mangledTypeName:v21 mangledTypeNameByBundleIdentifier:v20 effectiveBundleIdentifiers:v19 displayRepresentation:v23 properties:v17 customIntentTypeClassName:v16];
  return v24;
}

- (LNEntityMetadata)initWithIdentifier:(id)a3 transient:(BOOL)a4 mangledTypeName:(id)a5 mangledTypeNameByBundleIdentifier:(id)a6 effectiveBundleIdentifiers:(id)a7 displayRepresentation:(id)a8 properties:(id)a9 customIntentTypeClassName:(id)a10 availabilityAnnotations:(id)a11 requiredCapabilities:(id)a12 systemProtocolMetadata:(id)a13 attributionBundleIdentifier:(id)a14 transferableContentTypes:(id)a15 assistantDefinedSchemas:(id)a16 fullyQualifiedTypeName:(id)a17
{
  v38 = a4;
  v36 = a17;
  v33 = a16;
  v32 = a15;
  v29 = a14;
  v23 = a13;
  v26 = a12;
  v25 = a11;
  v40 = a10;
  v39 = a9;
  v24 = a8;
  v28 = a7;
  v31 = a6;
  v19 = a5;
  v20 = a3;
  v35 = [[LNVisibilityMetadata alloc] initWithIsDiscoverable:1 assistantOnly:0];
  v21 = [(LNEntityMetadata *)self initWithIdentifier:v20 transient:v38 mangledTypeName:v19 mangledTypeNameByBundleIdentifier:v31 effectiveBundleIdentifiers:v28 displayRepresentation:v24 properties:v39 customIntentTypeClassName:v40 availabilityAnnotations:v25 requiredCapabilities:v26 systemProtocolMetadata:v23 attributionBundleIdentifier:v29 transferableContentTypes:v32 assistantDefinedSchemas:v33 fullyQualifiedTypeName:v36 visibilityMetadata:v35];

  return v21;
}

- (LNStaticDeferredLocalizedString)displayTypeName
{
  v2 = [(LNEntityMetadata *)self displayRepresentation];
  v3 = [v2 name];

  return v3;
}

@end