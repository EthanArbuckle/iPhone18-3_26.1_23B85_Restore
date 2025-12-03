@interface LNEnumMetadata
+ (BOOL)ln_enumIdentifierIsSystem:(id)system;
- (BOOL)isEqual:(id)equal;
- (BOOL)visibleForUse:(int64_t)use;
- (LNEnumMetadata)initWithCoder:(id)coder;
- (LNEnumMetadata)initWithIdentifier:(id)identifier cases:(id)cases;
- (LNEnumMetadata)initWithIdentifier:(id)identifier displayTypeName:(id)name cases:(id)cases customIntentEnumTypeName:(id)typeName;
- (LNEnumMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers displayRepresentation:(id)representation cases:(id)cases customIntentEnumTypeName:(id)typeName availabilityAnnotations:(id)self0 system:(id)self1 fullyQualifiedTypeName:(id)self2 assistantDefinedSchemas:(id)self3;
- (LNEnumMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers displayRepresentation:(id)representation cases:(id)cases customIntentEnumTypeName:(id)typeName availabilityAnnotations:(id)self0 system:(id)self1 fullyQualifiedTypeName:(id)self2 assistantDefinedSchemas:(id)self3 visibilityMetadata:(id)self4 allowedTargets:(id)self5;
- (LNEnumMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers displayTypeName:(id)typeName cases:(id)cases customIntentEnumTypeName:(id)enumTypeName;
- (LNStaticDeferredLocalizedString)displayTypeName;
- (NSNumber)isSystem;
- (NSString)description;
- (id)copyWithDescriptiveMetadataFromEnum:(id)enum usingLibraryKey:(id)key;
- (id)mangledTypeNameForBundleIdentifier:(id)identifier;
- (id)metadataByAddingEffectiveBundleIdentifiers:(id)identifiers mangledTypeNameByBundleIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNEnumMetadata

+ (BOOL)ln_enumIdentifierIsSystem:(id)system
{
  v3 = sub_18F093B8C();
  v5 = static LNEnumMetadata.enumIdentifierIsSystem(enumIdentifier:)(v3, v4);

  return v5 & 1;
}

- (id)metadataByAddingEffectiveBundleIdentifiers:(id)identifiers mangledTypeNameByBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v8 = [(LNEnumMetadata *)self copy];
  effectiveBundleIdentifiers = [v8 effectiveBundleIdentifiers];
  array = [identifiersCopy array];

  v11 = [effectiveBundleIdentifiers if_orderedSetByAddingObjectsFromArray:array];
  v12 = v8[8];
  v8[8] = v11;

  mangledTypeNameByBundleIdentifier = [v8 mangledTypeNameByBundleIdentifier];
  v14 = [mangledTypeNameByBundleIdentifier if_dictionaryByAddingEntriesFromDictionary:identifierCopy];

  v15 = v8[7];
  v8[7] = v14;

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNEnumMetadata *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  displayRepresentation = [(LNEnumMetadata *)self displayRepresentation];
  [coderCopy encodeObject:displayRepresentation forKey:@"displayRepresentation"];

  cases = [(LNEnumMetadata *)self cases];
  [coderCopy encodeObject:cases forKey:@"cases"];

  customIntentEnumTypeName = [(LNEnumMetadata *)self customIntentEnumTypeName];
  [coderCopy encodeObject:customIntentEnumTypeName forKey:@"customIntentEnumTypeName"];

  mangledTypeName = [(LNEnumMetadata *)self mangledTypeName];
  [coderCopy encodeObject:mangledTypeName forKey:@"mangledTypeName"];

  mangledTypeNameByBundleIdentifier = [(LNEnumMetadata *)self mangledTypeNameByBundleIdentifier];
  [coderCopy encodeObject:mangledTypeNameByBundleIdentifier forKey:@"mangledTypeNameByBundleIdentifier"];

  effectiveBundleIdentifiers = [(LNEnumMetadata *)self effectiveBundleIdentifiers];
  [coderCopy encodeObject:effectiveBundleIdentifiers forKey:@"effectiveBundleIdentifiers"];

  availabilityAnnotations = [(LNEnumMetadata *)self availabilityAnnotations];
  [coderCopy encodeObject:availabilityAnnotations forKey:@"availabilityAnnotations"];

  isSystem = [(LNEnumMetadata *)self isSystem];
  [coderCopy encodeObject:isSystem forKey:@"system"];

  fullyQualifiedTypeName = [(LNEnumMetadata *)self fullyQualifiedTypeName];
  [coderCopy encodeObject:fullyQualifiedTypeName forKey:@"fullyQualifiedTypeName"];

  assistantDefinedSchemas = [(LNEnumMetadata *)self assistantDefinedSchemas];
  [coderCopy encodeObject:assistantDefinedSchemas forKey:@"assistantDefinedSchemas"];

  visibilityMetadata = [(LNEnumMetadata *)self visibilityMetadata];
  [coderCopy encodeObject:visibilityMetadata forKey:@"visibilityMetadata"];

  allowedTargets = [(LNEnumMetadata *)self allowedTargets];
  [coderCopy encodeObject:allowedTargets forKey:@"allowedTargets"];
}

- (LNEnumMetadata)initWithCoder:(id)coder
{
  v55[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayRepresentation"];
  v6 = MEMORY[0x1E695DFD8];
  v55[0] = objc_opt_class();
  v55[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v8 = [v6 setWithArray:v7];
  v52 = [coderCopy decodeObjectOfClasses:v8 forKey:@"cases"];

  v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mangledTypeName"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"effectiveBundleIdentifiers"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v54 = [coderCopy decodeObjectOfClasses:v15 forKey:@"mangledTypeNameByBundleIdentifier"];

  v16 = 0;
  if (!v4 || !v5)
  {
    selfCopy4 = self;
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
    selfCopy4 = self;
    goto LABEL_12;
  }

  if (v12)
  {
    v49 = v5;
    v48 = v4;
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customIntentEnumTypeName"];
    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v21 setWithObjects:{v22, v23, objc_opt_class(), 0}];
    v47 = [coderCopy decodeObjectOfClasses:v24 forKey:@"availabilityAnnotations"];

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"system"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullyQualifiedTypeName"];
    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"assistantDefinedSchemas"];

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visibilityMetadata"];
    if (!v31)
    {
      v31 = [[LNVisibilityMetadata alloc] initWithIsDiscoverable:1 assistantOnly:0];
    }

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"allowedTargets"];

    v43 = v26;
    v44 = v30;
    v45 = v30;
    v46 = v25;
    v36 = v26;
    v4 = v48;
    v42 = v25;
    v41 = v20;
    v5 = v49;
    selfCopy3 = self;
    v51 = v20;
    v19 = v53;
    selfCopy4 = [(LNEnumMetadata *)selfCopy3 initWithIdentifier:v48 mangledTypeName:v53 mangledTypeNameByBundleIdentifier:v54 effectiveBundleIdentifiers:v12 displayRepresentation:v49 cases:v52 customIntentEnumTypeName:v41 availabilityAnnotations:v47 system:v42 fullyQualifiedTypeName:v43 assistantDefinedSchemas:v44 visibilityMetadata:v31 allowedTargets:v35];

    v17 = v52;
    v18 = v54;
    v16 = selfCopy4;
  }

  else
  {
LABEL_10:
    selfCopy4 = self;
    v19 = v53;
  }

LABEL_12:

  v39 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)copyWithDescriptiveMetadataFromEnum:(id)enum usingLibraryKey:(id)key
{
  enumCopy = enum;
  v6 = [(LNEnumMetadata *)self copy];
  name = [v6[3] name];
  v8 = [name key];
  v9 = [v8 length];

  if (!v9)
  {
    v10 = [LNTypeDisplayRepresentation alloc];
    displayRepresentation = [enumCopy displayRepresentation];
    name2 = [displayRepresentation name];
    displayRepresentation2 = [(LNEnumMetadata *)self displayRepresentation];
    numericFormat = [displayRepresentation2 numericFormat];
    displayRepresentation3 = [(LNEnumMetadata *)self displayRepresentation];
    synonyms = [displayRepresentation3 synonyms];
    v17 = [(LNTypeDisplayRepresentation *)v10 initWithName:name2 numericFormat:numericFormat synonyms:synonyms];
    v18 = v6[3];
    v6[3] = v17;
  }

  return v6;
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
      LOBYTE(assistantDefinedSchemas3) = 0;
LABEL_72:

      goto LABEL_73;
    }

    identifier = [(LNEnumMetadata *)self identifier];
    identifier2 = [(LNEnumMetadata *)v6 identifier];
    v9 = identifier;
    v10 = identifier2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(assistantDefinedSchemas3) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_70;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(assistantDefinedSchemas3) = 0;
LABEL_71:

        goto LABEL_72;
      }
    }

    displayRepresentation = [(LNEnumMetadata *)self displayRepresentation];
    displayRepresentation2 = [(LNEnumMetadata *)v6 displayRepresentation];
    v14 = displayRepresentation;
    v18 = displayRepresentation2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(assistantDefinedSchemas3) = 0;
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
        LOBYTE(assistantDefinedSchemas3) = 0;
LABEL_70:

        goto LABEL_71;
      }
    }

    cases = [(LNEnumMetadata *)self cases];
    cases2 = [(LNEnumMetadata *)v6 cases];

    if (cases != cases2)
    {
      cases3 = [(LNEnumMetadata *)self cases];
      if (!cases3)
      {
        goto LABEL_27;
      }

      v25 = cases3;
      cases4 = [(LNEnumMetadata *)v6 cases];

      if (!cases4)
      {
        goto LABEL_27;
      }

      v27 = MEMORY[0x1E695DFD8];
      cases5 = [(LNEnumMetadata *)self cases];
      v28 = [v27 setWithArray:cases5];
      v29 = MEMORY[0x1E695DFD8];
      cases6 = [(LNEnumMetadata *)v6 cases];
      v31 = [v29 setWithArray:cases6];
      v79 = [v28 isEqualToSet:v31];

      if (!v79)
      {
        goto LABEL_27;
      }
    }

    customIntentEnumTypeName = [(LNEnumMetadata *)self customIntentEnumTypeName];
    customIntentEnumTypeName2 = [(LNEnumMetadata *)v6 customIntentEnumTypeName];
    v20 = customIntentEnumTypeName;
    v34 = customIntentEnumTypeName2;
    v19 = v34;
    v82 = v20;
    if (v20 == v34)
    {
    }

    else
    {
      LOBYTE(assistantDefinedSchemas3) = 0;
      v35 = v34;
      if (!v20 || !v34)
      {
        goto LABEL_68;
      }

      LODWORD(assistantDefinedSchemas3) = [v20 isEqualToString:v34];

      if (!assistantDefinedSchemas3)
      {
        goto LABEL_69;
      }
    }

    v80 = v19;
    availabilityAnnotations = [(LNEnumMetadata *)self availabilityAnnotations];
    availabilityAnnotations2 = [(LNEnumMetadata *)v6 availabilityAnnotations];
    v38 = availabilityAnnotations;
    v39 = availabilityAnnotations2;
    v77 = v39;
    v78 = v38;
    if (v38 == v39)
    {
    }

    else
    {
      LOBYTE(assistantDefinedSchemas3) = 0;
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
        LOBYTE(assistantDefinedSchemas3) = 0;
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

    fullyQualifiedTypeName = [(LNEnumMetadata *)self fullyQualifiedTypeName];
    fullyQualifiedTypeName2 = [(LNEnumMetadata *)v6 fullyQualifiedTypeName];
    v38 = fullyQualifiedTypeName;
    v44 = fullyQualifiedTypeName2;
    v45 = v44;
    if (v38 != v44)
    {
      LOBYTE(assistantDefinedSchemas3) = 0;
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
          assistantDefinedSchemas = [(LNEnumMetadata *)self assistantDefinedSchemas];
          assistantDefinedSchemas2 = [(LNEnumMetadata *)v6 assistantDefinedSchemas];

          if (assistantDefinedSchemas != assistantDefinedSchemas2)
          {
            assistantDefinedSchemas3 = [(LNEnumMetadata *)self assistantDefinedSchemas];
            if (!assistantDefinedSchemas3)
            {
LABEL_51:
              v19 = v80;
              v40 = v75;
              goto LABEL_66;
            }

            assistantDefinedSchemas4 = [(LNEnumMetadata *)v6 assistantDefinedSchemas];

            if (!assistantDefinedSchemas4)
            {
              goto LABEL_50;
            }

            v52 = MEMORY[0x1E695DFD8];
            assistantDefinedSchemas5 = [(LNEnumMetadata *)self assistantDefinedSchemas];
            v53 = [v52 setWithArray:assistantDefinedSchemas5];
            v54 = MEMORY[0x1E695DFD8];
            assistantDefinedSchemas6 = [(LNEnumMetadata *)v6 assistantDefinedSchemas];
            v55 = [v54 setWithArray:assistantDefinedSchemas6];
            v71 = [v53 isEqualToSet:v55];

            if (!v71)
            {
LABEL_50:
              LOBYTE(assistantDefinedSchemas3) = 0;
              goto LABEL_51;
            }
          }

          visibilityMetadata = [(LNEnumMetadata *)self visibilityMetadata];
          visibilityMetadata2 = [(LNEnumMetadata *)v6 visibilityMetadata];
          v58 = visibilityMetadata;
          v59 = visibilityMetadata2;
          v72 = v59;
          v74 = v58;
          v76 = v38;
          if (v58 == v59)
          {
          }

          else
          {
            LOBYTE(assistantDefinedSchemas3) = 0;
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
              LOBYTE(assistantDefinedSchemas3) = 0;
              v19 = v80;
LABEL_64:
              v38 = v74;
              v45 = v75;
              v46 = v72;
              goto LABEL_65;
            }
          }

          allowedTargets = [(LNEnumMetadata *)self allowedTargets];
          allowedTargets2 = [(LNEnumMetadata *)v6 allowedTargets];
          v65 = allowedTargets;
          v66 = allowedTargets2;
          v70 = v66;
          if (v65 == v66)
          {
            LOBYTE(assistantDefinedSchemas3) = 1;
          }

          else
          {
            LOBYTE(assistantDefinedSchemas3) = 0;
            if (v65)
            {
              v19 = v80;
              if (v66)
              {
                LOBYTE(assistantDefinedSchemas3) = [v65 isEqualToArray:v66];
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

  LOBYTE(assistantDefinedSchemas3) = 1;
LABEL_73:

  return assistantDefinedSchemas3;
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
  displayRepresentation = [(LNEnumMetadata *)self displayRepresentation];
  mangledTypeNameByBundleIdentifier = [(LNEnumMetadata *)self mangledTypeNameByBundleIdentifier];
  effectiveBundleIdentifiers = [(LNEnumMetadata *)self effectiveBundleIdentifiers];
  array = [effectiveBundleIdentifiers array];
  v17 = [array valueForKeyPath:@"description"];
  v5 = [v17 componentsJoinedByString:{@", "}];
  allowedTargets = [(LNEnumMetadata *)self allowedTargets];
  v6 = [allowedTargets valueForKeyPath:@"description"];
  v7 = [v6 componentsJoinedByString:{@", "}];
  availabilityAnnotations = [(LNEnumMetadata *)self availabilityAnnotations];
  fullyQualifiedTypeName = [(LNEnumMetadata *)self fullyQualifiedTypeName];
  assistantDefinedSchemas = [(LNEnumMetadata *)self assistantDefinedSchemas];
  visibilityMetadata = [(LNEnumMetadata *)self visibilityMetadata];
  v12 = [v18 stringWithFormat:@"<%@: %p, displayRepresentation: %@, mangledTypeNameByBundleIdentifier: %@, effectiveBundleIdentifiers: [%@], allowedTargets: [%@], availabilityAnnotations: %@, fullyQualifiedTypeName: %@, assistantDefinedSchemas: %@, visibility: %@>", v16, self, displayRepresentation, mangledTypeNameByBundleIdentifier, v5, v7, availabilityAnnotations, fullyQualifiedTypeName, assistantDefinedSchemas, visibilityMetadata];

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
    identifier = [(LNEnumMetadata *)self identifier];
    v3 = [v4 numberWithBool:{+[LNEnumMetadata ln_enumIdentifierIsSystem:](LNEnumMetadata, "ln_enumIdentifierIsSystem:", identifier)}];
  }

  return v3;
}

- (BOOL)visibleForUse:(int64_t)use
{
  visibilityMetadata = [(LNEnumMetadata *)self visibilityMetadata];
  LOBYTE(use) = [visibilityMetadata visibleForUse:use];

  return use;
}

- (LNEnumMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers displayRepresentation:(id)representation cases:(id)cases customIntentEnumTypeName:(id)typeName availabilityAnnotations:(id)self0 system:(id)self1 fullyQualifiedTypeName:(id)self2 assistantDefinedSchemas:(id)self3 visibilityMetadata:(id)self4 allowedTargets:(id)self5
{
  identifierCopy = identifier;
  nameCopy = name;
  bundleIdentifierCopy = bundleIdentifier;
  identifiersCopy = identifiers;
  representationCopy = representation;
  casesCopy = cases;
  typeNameCopy = typeName;
  annotationsCopy = annotations;
  systemCopy = system;
  qualifiedTypeNameCopy = qualifiedTypeName;
  schemasCopy = schemas;
  metadataCopy = metadata;
  targetsCopy = targets;
  v70 = identifierCopy;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNEnumMetadata.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v27 = representationCopy;
  if (!representationCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNEnumMetadata.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"displayRepresentation"}];
  }

  v28 = bundleIdentifierCopy;
  if (!nameCopy)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNEnumMetadata.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"mangledTypeName"}];
  }

  if (!casesCopy)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"LNEnumMetadata.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"cases"}];
  }

  v29 = v28;
  if (!metadataCopy)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"LNEnumMetadata.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"visibilityMetadata"}];
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

    v35 = [casesCopy copy];
    cases = v30->_cases;
    v30->_cases = v35;

    v37 = [typeNameCopy copy];
    customIntentEnumTypeName = v30->_customIntentEnumTypeName;
    v30->_customIntentEnumTypeName = v37;

    v39 = [nameCopy copy];
    mangledTypeName = v30->_mangledTypeName;
    v30->_mangledTypeName = v39;

    v41 = [v29 copy];
    mangledTypeNameByBundleIdentifier = v30->_mangledTypeNameByBundleIdentifier;
    v30->_mangledTypeNameByBundleIdentifier = v41;

    v43 = [identifiersCopy copy];
    effectiveBundleIdentifiers = v30->_effectiveBundleIdentifiers;
    v30->_effectiveBundleIdentifiers = v43;

    v45 = [annotationsCopy copy];
    availabilityAnnotations = v30->_availabilityAnnotations;
    v30->_availabilityAnnotations = v45;

    v47 = [systemCopy copy];
    system = v30->_system;
    v30->_system = v47;

    v49 = [qualifiedTypeNameCopy copy];
    fullyQualifiedTypeName = v30->_fullyQualifiedTypeName;
    v30->_fullyQualifiedTypeName = v49;

    v51 = [schemasCopy copy];
    assistantDefinedSchemas = v30->_assistantDefinedSchemas;
    v30->_assistantDefinedSchemas = v51;

    v53 = [metadataCopy copy];
    visibilityMetadata = v30->_visibilityMetadata;
    v30->_visibilityMetadata = v53;

    v55 = [targetsCopy copy];
    allowedTargets = v30->_allowedTargets;
    v30->_allowedTargets = v55;

    v57 = v30;
  }

  return v30;
}

- (id)mangledTypeNameForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNEnumMetadata.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  mangledTypeNameByBundleIdentifier = [(LNEnumMetadata *)self mangledTypeNameByBundleIdentifier];
  v7 = [mangledTypeNameByBundleIdentifier objectForKeyedSubscript:identifierCopy];
  v8 = v7;
  if (v7)
  {
    mangledTypeName = v7;
  }

  else
  {
    mangledTypeName = [(LNEnumMetadata *)self mangledTypeName];
  }

  v10 = mangledTypeName;

  return v10;
}

- (LNEnumMetadata)initWithIdentifier:(id)identifier cases:(id)cases
{
  casesCopy = cases;
  identifierCopy = identifier;
  v8 = [[LNStaticDeferredLocalizedString alloc] initWithLocalizedKey:identifierCopy bundleIdentifier:0 bundleURL:0 table:0];
  v9 = [(LNEnumMetadata *)self initWithIdentifier:identifierCopy displayTypeName:v8 cases:casesCopy];

  return v9;
}

- (LNEnumMetadata)initWithIdentifier:(id)identifier displayTypeName:(id)name cases:(id)cases customIntentEnumTypeName:(id)typeName
{
  v10 = MEMORY[0x1E695DFB8];
  typeNameCopy = typeName;
  casesCopy = cases;
  nameCopy = name;
  identifierCopy = identifier;
  orderedSet = [v10 orderedSet];
  v16 = [(LNEnumMetadata *)self initWithIdentifier:identifierCopy mangledTypeName:identifierCopy mangledTypeNameByBundleIdentifier:MEMORY[0x1E695E0F8] effectiveBundleIdentifiers:orderedSet displayTypeName:nameCopy cases:casesCopy customIntentEnumTypeName:typeNameCopy];

  return v16;
}

- (LNEnumMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers displayTypeName:(id)typeName cases:(id)cases customIntentEnumTypeName:(id)enumTypeName
{
  v13 = MEMORY[0x1E695DFB8];
  enumTypeNameCopy = enumTypeName;
  casesCopy = cases;
  typeNameCopy = typeName;
  identifierCopy = identifier;
  orderedSet = [v13 orderedSet];
  v19 = [[LNTypeDisplayRepresentation alloc] initWithName:typeNameCopy numericFormat:0];

  v20 = [(LNEnumMetadata *)self initWithIdentifier:identifierCopy mangledTypeName:identifierCopy mangledTypeNameByBundleIdentifier:MEMORY[0x1E695E0F8] effectiveBundleIdentifiers:orderedSet displayRepresentation:v19 cases:casesCopy customIntentEnumTypeName:enumTypeNameCopy];
  return v20;
}

- (LNEnumMetadata)initWithIdentifier:(id)identifier mangledTypeName:(id)name mangledTypeNameByBundleIdentifier:(id)bundleIdentifier effectiveBundleIdentifiers:(id)identifiers displayRepresentation:(id)representation cases:(id)cases customIntentEnumTypeName:(id)typeName availabilityAnnotations:(id)self0 system:(id)self1 fullyQualifiedTypeName:(id)self2 assistantDefinedSchemas:(id)self3
{
  schemasCopy = schemas;
  qualifiedTypeNameCopy = qualifiedTypeName;
  systemCopy = system;
  annotationsCopy = annotations;
  typeNameCopy = typeName;
  casesCopy = cases;
  representationCopy = representation;
  identifiersCopy = identifiers;
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  identifierCopy = identifier;
  v29 = [[LNVisibilityMetadata alloc] initWithIsDiscoverable:1 assistantOnly:0];
  v33 = [(LNEnumMetadata *)self initWithIdentifier:identifierCopy mangledTypeName:nameCopy mangledTypeNameByBundleIdentifier:bundleIdentifierCopy effectiveBundleIdentifiers:identifiersCopy displayRepresentation:representationCopy cases:casesCopy customIntentEnumTypeName:typeNameCopy availabilityAnnotations:annotationsCopy system:systemCopy fullyQualifiedTypeName:qualifiedTypeNameCopy assistantDefinedSchemas:schemasCopy visibilityMetadata:v29];

  return v33;
}

- (LNStaticDeferredLocalizedString)displayTypeName
{
  displayRepresentation = [(LNEnumMetadata *)self displayRepresentation];
  name = [displayRepresentation name];

  return name;
}

@end