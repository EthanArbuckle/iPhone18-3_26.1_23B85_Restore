@interface LNEnumMetadata
+ (BOOL)ln_enumIdentifierIsSystem:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)visibleForUse:(int64_t)a3;
- (LNEnumMetadata)initWithCoder:(id)a3;
- (LNEnumMetadata)initWithIdentifier:(id)a3 cases:(id)a4;
- (LNEnumMetadata)initWithIdentifier:(id)a3 displayTypeName:(id)a4 cases:(id)a5 customIntentEnumTypeName:(id)a6;
- (LNEnumMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 mangledTypeNameByBundleIdentifier:(id)a5 effectiveBundleIdentifiers:(id)a6 displayRepresentation:(id)a7 cases:(id)a8 customIntentEnumTypeName:(id)a9 availabilityAnnotations:(id)a10 system:(id)a11 fullyQualifiedTypeName:(id)a12 assistantDefinedSchemas:(id)a13;
- (LNEnumMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 mangledTypeNameByBundleIdentifier:(id)a5 effectiveBundleIdentifiers:(id)a6 displayRepresentation:(id)a7 cases:(id)a8 customIntentEnumTypeName:(id)a9 availabilityAnnotations:(id)a10 system:(id)a11 fullyQualifiedTypeName:(id)a12 assistantDefinedSchemas:(id)a13 visibilityMetadata:(id)a14 allowedTargets:(id)a15;
- (LNEnumMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 mangledTypeNameByBundleIdentifier:(id)a5 effectiveBundleIdentifiers:(id)a6 displayTypeName:(id)a7 cases:(id)a8 customIntentEnumTypeName:(id)a9;
- (LNStaticDeferredLocalizedString)displayTypeName;
- (NSNumber)isSystem;
- (NSString)description;
- (id)copyWithDescriptiveMetadataFromEnum:(id)a3 usingLibraryKey:(id)a4;
- (id)mangledTypeNameForBundleIdentifier:(id)a3;
- (id)metadataByAddingEffectiveBundleIdentifiers:(id)a3 mangledTypeNameByBundleIdentifier:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNEnumMetadata

+ (BOOL)ln_enumIdentifierIsSystem:(id)a3
{
  v3 = sub_18F093B8C();
  v5 = static LNEnumMetadata.enumIdentifierIsSystem(enumIdentifier:)(v3, v4);

  return v5 & 1;
}

- (id)metadataByAddingEffectiveBundleIdentifiers:(id)a3 mangledTypeNameByBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNEnumMetadata *)self copy];
  v9 = [v8 effectiveBundleIdentifiers];
  v10 = [v7 array];

  v11 = [v9 if_orderedSetByAddingObjectsFromArray:v10];
  v12 = v8[8];
  v8[8] = v11;

  v13 = [v8 mangledTypeNameByBundleIdentifier];
  v14 = [v13 if_dictionaryByAddingEntriesFromDictionary:v6];

  v15 = v8[7];
  v8[7] = v14;

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNEnumMetadata *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNEnumMetadata *)self displayRepresentation];
  [v4 encodeObject:v6 forKey:@"displayRepresentation"];

  v7 = [(LNEnumMetadata *)self cases];
  [v4 encodeObject:v7 forKey:@"cases"];

  v8 = [(LNEnumMetadata *)self customIntentEnumTypeName];
  [v4 encodeObject:v8 forKey:@"customIntentEnumTypeName"];

  v9 = [(LNEnumMetadata *)self mangledTypeName];
  [v4 encodeObject:v9 forKey:@"mangledTypeName"];

  v10 = [(LNEnumMetadata *)self mangledTypeNameByBundleIdentifier];
  [v4 encodeObject:v10 forKey:@"mangledTypeNameByBundleIdentifier"];

  v11 = [(LNEnumMetadata *)self effectiveBundleIdentifiers];
  [v4 encodeObject:v11 forKey:@"effectiveBundleIdentifiers"];

  v12 = [(LNEnumMetadata *)self availabilityAnnotations];
  [v4 encodeObject:v12 forKey:@"availabilityAnnotations"];

  v13 = [(LNEnumMetadata *)self isSystem];
  [v4 encodeObject:v13 forKey:@"system"];

  v14 = [(LNEnumMetadata *)self fullyQualifiedTypeName];
  [v4 encodeObject:v14 forKey:@"fullyQualifiedTypeName"];

  v15 = [(LNEnumMetadata *)self assistantDefinedSchemas];
  [v4 encodeObject:v15 forKey:@"assistantDefinedSchemas"];

  v16 = [(LNEnumMetadata *)self visibilityMetadata];
  [v4 encodeObject:v16 forKey:@"visibilityMetadata"];

  v17 = [(LNEnumMetadata *)self allowedTargets];
  [v4 encodeObject:v17 forKey:@"allowedTargets"];
}

- (LNEnumMetadata)initWithCoder:(id)a3
{
  v55[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"displayRepresentation"];
  v6 = MEMORY[0x1E695DFD8];
  v55[0] = objc_opt_class();
  v55[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v8 = [v6 setWithArray:v7];
  v52 = [v3 decodeObjectOfClasses:v8 forKey:@"cases"];

  v53 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"mangledTypeName"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v3 decodeObjectOfClasses:v11 forKey:@"effectiveBundleIdentifiers"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v54 = [v3 decodeObjectOfClasses:v15 forKey:@"mangledTypeNameByBundleIdentifier"];

  v16 = 0;
  if (!v4 || !v5)
  {
    v38 = self;
    v17 = v52;
    v19 = v53;
    v18 = v54;
    goto LABEL_12;
  }

  v17 = v52;
  v18 = v54;
  if (!v52)
  {
    goto LABEL_10;
  }

  v19 = v53;
  if (!v53 || !v54)
  {
    v38 = self;
    goto LABEL_12;
  }

  if (v12)
  {
    v49 = v5;
    v48 = v4;
    v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"customIntentEnumTypeName"];
    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v21 setWithObjects:{v22, v23, objc_opt_class(), 0}];
    v47 = [v3 decodeObjectOfClasses:v24 forKey:@"availabilityAnnotations"];

    v25 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"system"];
    v26 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"fullyQualifiedTypeName"];
    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v3 decodeObjectOfClasses:v29 forKey:@"assistantDefinedSchemas"];

    v31 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"visibilityMetadata"];
    if (!v31)
    {
      v31 = [[LNVisibilityMetadata alloc] initWithIsDiscoverable:1 assistantOnly:0];
    }

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [v3 decodeObjectOfClasses:v34 forKey:@"allowedTargets"];

    v43 = v26;
    v44 = v30;
    v45 = v30;
    v46 = v25;
    v36 = v26;
    v4 = v48;
    v42 = v25;
    v41 = v20;
    v5 = v49;
    v37 = self;
    v51 = v20;
    v19 = v53;
    v38 = [(LNEnumMetadata *)v37 initWithIdentifier:v48 mangledTypeName:v53 mangledTypeNameByBundleIdentifier:v54 effectiveBundleIdentifiers:v12 displayRepresentation:v49 cases:v52 customIntentEnumTypeName:v41 availabilityAnnotations:v47 system:v42 fullyQualifiedTypeName:v43 assistantDefinedSchemas:v44 visibilityMetadata:v31 allowedTargets:v35];

    v17 = v52;
    v18 = v54;
    v16 = v38;
  }

  else
  {
LABEL_10:
    v38 = self;
    v19 = v53;
  }

LABEL_12:

  v39 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)copyWithDescriptiveMetadataFromEnum:(id)a3 usingLibraryKey:(id)a4
{
  v5 = a3;
  v6 = [(LNEnumMetadata *)self copy];
  v7 = [v6[3] name];
  v8 = [v7 key];
  v9 = [v8 length];

  if (!v9)
  {
    v10 = [LNTypeDisplayRepresentation alloc];
    v11 = [v5 displayRepresentation];
    v12 = [v11 name];
    v13 = [(LNEnumMetadata *)self displayRepresentation];
    v14 = [v13 numericFormat];
    v15 = [(LNEnumMetadata *)self displayRepresentation];
    v16 = [v15 synonyms];
    v17 = [(LNTypeDisplayRepresentation *)v10 initWithName:v12 numericFormat:v14 synonyms:v16];
    v18 = v6[3];
    v6[3] = v17;
  }

  return v6;
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
LABEL_72:

      goto LABEL_73;
    }

    v7 = [(LNEnumMetadata *)self identifier];
    v8 = [(LNEnumMetadata *)v6 identifier];
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
        goto LABEL_70;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_71:

        goto LABEL_72;
      }
    }

    v16 = [(LNEnumMetadata *)self displayRepresentation];
    v17 = [(LNEnumMetadata *)v6 displayRepresentation];
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
        goto LABEL_69;
      }

      v21 = [v14 isEqual:v18];

      if (!v21)
      {
LABEL_27:
        LOBYTE(v12) = 0;
LABEL_70:

        goto LABEL_71;
      }
    }

    v22 = [(LNEnumMetadata *)self cases];
    v23 = [(LNEnumMetadata *)v6 cases];

    if (v22 != v23)
    {
      v24 = [(LNEnumMetadata *)self cases];
      if (!v24)
      {
        goto LABEL_27;
      }

      v25 = v24;
      v26 = [(LNEnumMetadata *)v6 cases];

      if (!v26)
      {
        goto LABEL_27;
      }

      v27 = MEMORY[0x1E695DFD8];
      v81 = [(LNEnumMetadata *)self cases];
      v28 = [v27 setWithArray:v81];
      v29 = MEMORY[0x1E695DFD8];
      v30 = [(LNEnumMetadata *)v6 cases];
      v31 = [v29 setWithArray:v30];
      v79 = [v28 isEqualToSet:v31];

      if (!v79)
      {
        goto LABEL_27;
      }
    }

    v32 = [(LNEnumMetadata *)self customIntentEnumTypeName];
    v33 = [(LNEnumMetadata *)v6 customIntentEnumTypeName];
    v20 = v32;
    v34 = v33;
    v19 = v34;
    v82 = v20;
    if (v20 == v34)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v35 = v34;
      if (!v20 || !v34)
      {
        goto LABEL_68;
      }

      LODWORD(v12) = [v20 isEqualToString:v34];

      if (!v12)
      {
        goto LABEL_69;
      }
    }

    v80 = v19;
    v36 = [(LNEnumMetadata *)self availabilityAnnotations];
    v37 = [(LNEnumMetadata *)v6 availabilityAnnotations];
    v38 = v36;
    v39 = v37;
    v77 = v39;
    v78 = v38;
    if (v38 == v39)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      if (!v38)
      {
        v40 = v39;
        v19 = v80;
        goto LABEL_66;
      }

      v40 = v39;
      v19 = v80;
      if (!v39)
      {
LABEL_66:

        goto LABEL_67;
      }

      v41 = [v38 isEqualToDictionary:v39];

      if (!v41)
      {
        LOBYTE(v12) = 0;
        v19 = v80;
LABEL_67:
        v35 = v77;
        v20 = v78;
LABEL_68:

        v20 = v82;
LABEL_69:

        goto LABEL_70;
      }
    }

    v42 = [(LNEnumMetadata *)self fullyQualifiedTypeName];
    v43 = [(LNEnumMetadata *)v6 fullyQualifiedTypeName];
    v38 = v42;
    v44 = v43;
    v45 = v44;
    if (v38 != v44)
    {
      LOBYTE(v12) = 0;
      v76 = v38;
      v46 = v44;
      if (v38)
      {
        v19 = v80;
        if (v44)
        {
          v47 = v44;
          v48 = [v38 isEqualToString:v44];
          v75 = v47;

          if (!v48)
          {
            goto LABEL_50;
          }

LABEL_41:
          v49 = [(LNEnumMetadata *)self assistantDefinedSchemas];
          v50 = [(LNEnumMetadata *)v6 assistantDefinedSchemas];

          if (v49 != v50)
          {
            v12 = [(LNEnumMetadata *)self assistantDefinedSchemas];
            if (!v12)
            {
LABEL_51:
              v19 = v80;
              v40 = v75;
              goto LABEL_66;
            }

            v51 = [(LNEnumMetadata *)v6 assistantDefinedSchemas];

            if (!v51)
            {
              goto LABEL_50;
            }

            v52 = MEMORY[0x1E695DFD8];
            v73 = [(LNEnumMetadata *)self assistantDefinedSchemas];
            v53 = [v52 setWithArray:v73];
            v54 = MEMORY[0x1E695DFD8];
            v69 = [(LNEnumMetadata *)v6 assistantDefinedSchemas];
            v55 = [v54 setWithArray:v69];
            v71 = [v53 isEqualToSet:v55];

            if (!v71)
            {
LABEL_50:
              LOBYTE(v12) = 0;
              goto LABEL_51;
            }
          }

          v56 = [(LNEnumMetadata *)self visibilityMetadata];
          v57 = [(LNEnumMetadata *)v6 visibilityMetadata];
          v58 = v56;
          v59 = v57;
          v72 = v59;
          v74 = v58;
          v76 = v38;
          if (v58 == v59)
          {
          }

          else
          {
            LOBYTE(v12) = 0;
            if (!v58)
            {
              v60 = v59;
              v61 = 0;
              v19 = v80;
              goto LABEL_63;
            }

            v60 = v59;
            v61 = v58;
            v19 = v80;
            if (!v59)
            {
LABEL_63:

              goto LABEL_64;
            }

            v62 = [v74 isEqual:v59];

            if (!v62)
            {
              LOBYTE(v12) = 0;
              v19 = v80;
LABEL_64:
              v38 = v74;
              v45 = v75;
              v46 = v72;
              goto LABEL_65;
            }
          }

          v63 = [(LNEnumMetadata *)self allowedTargets];
          v64 = [(LNEnumMetadata *)v6 allowedTargets];
          v65 = v63;
          v66 = v64;
          v70 = v66;
          if (v65 == v66)
          {
            LOBYTE(v12) = 1;
          }

          else
          {
            LOBYTE(v12) = 0;
            if (v65)
            {
              v19 = v80;
              if (v66)
              {
                LOBYTE(v12) = [v65 isEqualToArray:v66];
              }

              goto LABEL_61;
            }
          }

          v19 = v80;
LABEL_61:

          v60 = v70;
          v61 = v65;
          goto LABEL_63;
        }
      }

      else
      {
        v19 = v80;
      }

LABEL_65:
      v67 = v45;

      v40 = v67;
      v38 = v76;
      goto LABEL_66;
    }

    v75 = v44;

    goto LABEL_41;
  }

  LOBYTE(v12) = 1;
LABEL_73:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_fullyQualifiedTypeName hash]^ v3;
  return v4 ^ [(NSArray *)self->_allowedTargets hash];
}

- (NSString)description
{
  v18 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v16 = NSStringFromClass(v3);
  v14 = [(LNEnumMetadata *)self displayRepresentation];
  v4 = [(LNEnumMetadata *)self mangledTypeNameByBundleIdentifier];
  v20 = [(LNEnumMetadata *)self effectiveBundleIdentifiers];
  v19 = [v20 array];
  v17 = [v19 valueForKeyPath:@"description"];
  v5 = [v17 componentsJoinedByString:{@", "}];
  v15 = [(LNEnumMetadata *)self allowedTargets];
  v6 = [v15 valueForKeyPath:@"description"];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [(LNEnumMetadata *)self availabilityAnnotations];
  v9 = [(LNEnumMetadata *)self fullyQualifiedTypeName];
  v10 = [(LNEnumMetadata *)self assistantDefinedSchemas];
  v11 = [(LNEnumMetadata *)self visibilityMetadata];
  v12 = [v18 stringWithFormat:@"<%@: %p, displayRepresentation: %@, mangledTypeNameByBundleIdentifier: %@, effectiveBundleIdentifiers: [%@], allowedTargets: [%@], availabilityAnnotations: %@, fullyQualifiedTypeName: %@, assistantDefinedSchemas: %@, visibility: %@>", v16, self, v14, v4, v5, v7, v8, v9, v10, v11];

  return v12;
}

- (NSNumber)isSystem
{
  system = self->_system;
  if (system)
  {
    v3 = system;
  }

  else
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(LNEnumMetadata *)self identifier];
    v3 = [v4 numberWithBool:{+[LNEnumMetadata ln_enumIdentifierIsSystem:](LNEnumMetadata, "ln_enumIdentifierIsSystem:", v5)}];
  }

  return v3;
}

- (BOOL)visibleForUse:(int64_t)a3
{
  v4 = [(LNEnumMetadata *)self visibilityMetadata];
  LOBYTE(a3) = [v4 visibleForUse:a3];

  return a3;
}

- (LNEnumMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 mangledTypeNameByBundleIdentifier:(id)a5 effectiveBundleIdentifiers:(id)a6 displayRepresentation:(id)a7 cases:(id)a8 customIntentEnumTypeName:(id)a9 availabilityAnnotations:(id)a10 system:(id)a11 fullyQualifiedTypeName:(id)a12 assistantDefinedSchemas:(id)a13 visibilityMetadata:(id)a14 allowedTargets:(id)a15
{
  v20 = a3;
  v71 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v72 = a8;
  v24 = a9;
  v25 = a10;
  v69 = a11;
  v67 = a12;
  v66 = a13;
  v26 = a14;
  v65 = a15;
  v70 = v20;
  if (!v20)
  {
    v59 = [MEMORY[0x1E696AAA8] currentHandler];
    [v59 handleFailureInMethod:a2 object:self file:@"LNEnumMetadata.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v27 = v23;
  if (!v23)
  {
    v60 = [MEMORY[0x1E696AAA8] currentHandler];
    [v60 handleFailureInMethod:a2 object:self file:@"LNEnumMetadata.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"displayRepresentation"}];
  }

  v28 = v21;
  if (!v71)
  {
    v61 = [MEMORY[0x1E696AAA8] currentHandler];
    [v61 handleFailureInMethod:a2 object:self file:@"LNEnumMetadata.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"mangledTypeName"}];
  }

  if (!v72)
  {
    v62 = [MEMORY[0x1E696AAA8] currentHandler];
    [v62 handleFailureInMethod:a2 object:self file:@"LNEnumMetadata.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"cases"}];
  }

  v29 = v28;
  if (!v26)
  {
    v63 = [MEMORY[0x1E696AAA8] currentHandler];
    [v63 handleFailureInMethod:a2 object:self file:@"LNEnumMetadata.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"visibilityMetadata"}];
  }

  v73.receiver = self;
  v73.super_class = LNEnumMetadata;
  v30 = [(LNEnumMetadata *)&v73 init];
  if (v30)
  {
    v31 = [v70 copy];
    identifier = v30->_identifier;
    v30->_identifier = v31;

    v33 = [v27 copy];
    displayRepresentation = v30->_displayRepresentation;
    v30->_displayRepresentation = v33;

    v35 = [v72 copy];
    cases = v30->_cases;
    v30->_cases = v35;

    v37 = [v24 copy];
    customIntentEnumTypeName = v30->_customIntentEnumTypeName;
    v30->_customIntentEnumTypeName = v37;

    v39 = [v71 copy];
    mangledTypeName = v30->_mangledTypeName;
    v30->_mangledTypeName = v39;

    v41 = [v29 copy];
    mangledTypeNameByBundleIdentifier = v30->_mangledTypeNameByBundleIdentifier;
    v30->_mangledTypeNameByBundleIdentifier = v41;

    v43 = [v22 copy];
    effectiveBundleIdentifiers = v30->_effectiveBundleIdentifiers;
    v30->_effectiveBundleIdentifiers = v43;

    v45 = [v25 copy];
    availabilityAnnotations = v30->_availabilityAnnotations;
    v30->_availabilityAnnotations = v45;

    v47 = [v69 copy];
    system = v30->_system;
    v30->_system = v47;

    v49 = [v67 copy];
    fullyQualifiedTypeName = v30->_fullyQualifiedTypeName;
    v30->_fullyQualifiedTypeName = v49;

    v51 = [v66 copy];
    assistantDefinedSchemas = v30->_assistantDefinedSchemas;
    v30->_assistantDefinedSchemas = v51;

    v53 = [v26 copy];
    visibilityMetadata = v30->_visibilityMetadata;
    v30->_visibilityMetadata = v53;

    v55 = [v65 copy];
    allowedTargets = v30->_allowedTargets;
    v30->_allowedTargets = v55;

    v57 = v30;
  }

  return v30;
}

- (id)mangledTypeNameForBundleIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"LNEnumMetadata.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v6 = [(LNEnumMetadata *)self mangledTypeNameByBundleIdentifier];
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(LNEnumMetadata *)self mangledTypeName];
  }

  v10 = v9;

  return v10;
}

- (LNEnumMetadata)initWithIdentifier:(id)a3 cases:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[LNStaticDeferredLocalizedString alloc] initWithLocalizedKey:v7 bundleIdentifier:0 bundleURL:0 table:0];
  v9 = [(LNEnumMetadata *)self initWithIdentifier:v7 displayTypeName:v8 cases:v6];

  return v9;
}

- (LNEnumMetadata)initWithIdentifier:(id)a3 displayTypeName:(id)a4 cases:(id)a5 customIntentEnumTypeName:(id)a6
{
  v10 = MEMORY[0x1E695DFB8];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 orderedSet];
  v16 = [(LNEnumMetadata *)self initWithIdentifier:v14 mangledTypeName:v14 mangledTypeNameByBundleIdentifier:MEMORY[0x1E695E0F8] effectiveBundleIdentifiers:v15 displayTypeName:v13 cases:v12 customIntentEnumTypeName:v11];

  return v16;
}

- (LNEnumMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 mangledTypeNameByBundleIdentifier:(id)a5 effectiveBundleIdentifiers:(id)a6 displayTypeName:(id)a7 cases:(id)a8 customIntentEnumTypeName:(id)a9
{
  v13 = MEMORY[0x1E695DFB8];
  v14 = a9;
  v15 = a8;
  v16 = a7;
  v17 = a3;
  v18 = [v13 orderedSet];
  v19 = [[LNTypeDisplayRepresentation alloc] initWithName:v16 numericFormat:0];

  v20 = [(LNEnumMetadata *)self initWithIdentifier:v17 mangledTypeName:v17 mangledTypeNameByBundleIdentifier:MEMORY[0x1E695E0F8] effectiveBundleIdentifiers:v18 displayRepresentation:v19 cases:v15 customIntentEnumTypeName:v14];
  return v20;
}

- (LNEnumMetadata)initWithIdentifier:(id)a3 mangledTypeName:(id)a4 mangledTypeNameByBundleIdentifier:(id)a5 effectiveBundleIdentifiers:(id)a6 displayRepresentation:(id)a7 cases:(id)a8 customIntentEnumTypeName:(id)a9 availabilityAnnotations:(id)a10 system:(id)a11 fullyQualifiedTypeName:(id)a12 assistantDefinedSchemas:(id)a13
{
  v31 = a13;
  v30 = a12;
  v27 = a11;
  v17 = a10;
  v23 = a9;
  v24 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v26 = a4;
  v21 = a3;
  v29 = [[LNVisibilityMetadata alloc] initWithIsDiscoverable:1 assistantOnly:0];
  v33 = [(LNEnumMetadata *)self initWithIdentifier:v21 mangledTypeName:v26 mangledTypeNameByBundleIdentifier:v20 effectiveBundleIdentifiers:v19 displayRepresentation:v18 cases:v24 customIntentEnumTypeName:v23 availabilityAnnotations:v17 system:v27 fullyQualifiedTypeName:v30 assistantDefinedSchemas:v31 visibilityMetadata:v29];

  return v33;
}

- (LNStaticDeferredLocalizedString)displayTypeName
{
  v2 = [(LNEnumMetadata *)self displayRepresentation];
  v3 = [v2 name];

  return v3;
}

@end