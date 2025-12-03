@interface LNBundleMetadata
- (BOOL)isEqual:(id)equal;
- (LNBundleMetadata)initWithActions:(id)actions entities:(id)entities queries:(id)queries enums:(id)enums autoShortcutProviderMangledName:(id)name autoShortcuts:(id)shortcuts shortcutTileColor:(int64_t)color version:(int64_t)self0 generator:(id)self1 negativePhrases:(id)self2 examplePhrases:(id)self3 assistantIntents:(id)self4 assistantIntentNegativePhrases:(id)self5 assistantEntities:(id)self6;
- (LNBundleMetadata)initWithArray:(id)array;
- (LNBundleMetadata)initWithCoder:(id)coder;
- (id)_initWithMetadataFileURL:(id)l bundleURL:(id)rL effectiveBundleIdentifier:(id)identifier error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)verboseDescription;
- (unint64_t)hash;
- (void)applyAttributionBundleIdentifier:(id)identifier icon:(id)icon;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNBundleMetadata

- (id)_initWithMetadataFileURL:(id)l bundleURL:(id)rL effectiveBundleIdentifier:(id)identifier error:(id *)error
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21[-v10];
  v12 = sub_18F0932BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v21[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  sub_18F09327C();
  if (rL)
  {
    sub_18F09327C();
    (*(v13 + 32))(v11, v17, v12);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v18, 1, v12);
  identifierCopy = identifier;
  LNBundleMetadata.init(metadataFileURL:bundleURL:effectiveBundleIdentifier:)();
  return result;
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
      LOBYTE(negativePhrases3) = 0;
LABEL_78:

      goto LABEL_79;
    }

    actions = [(LNBundleMetadata *)self actions];
    actions2 = [(LNBundleMetadata *)v6 actions];
    v9 = actions;
    v10 = actions2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(negativePhrases3) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_76;
      }

      v15 = [v9 isEqualToDictionary:v10];

      if (!v15)
      {
        LOBYTE(negativePhrases3) = 0;
LABEL_77:

        goto LABEL_78;
      }
    }

    entities = [(LNBundleMetadata *)self entities];
    entities2 = [(LNBundleMetadata *)v6 entities];
    v14 = entities;
    v18 = entities2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(negativePhrases3) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_75;
      }

      v21 = [v14 isEqualToDictionary:v18];

      if (!v21)
      {
        LOBYTE(negativePhrases3) = 0;
LABEL_76:

        goto LABEL_77;
      }
    }

    queries = [(LNBundleMetadata *)self queries];
    queries2 = [(LNBundleMetadata *)v6 queries];
    v20 = queries;
    v24 = queries2;
    v19 = v24;
    v108 = v20;
    if (v20 == v24)
    {
    }

    else
    {
      LOBYTE(negativePhrases3) = 0;
      v25 = v24;
      if (!v20 || !v24)
      {
        goto LABEL_74;
      }

      LODWORD(negativePhrases3) = [v20 isEqualToDictionary:v24];

      if (!negativePhrases3)
      {
        goto LABEL_75;
      }
    }

    v107 = v19;
    enums = [(LNBundleMetadata *)self enums];
    enums2 = [(LNBundleMetadata *)v6 enums];
    v28 = enums;
    v29 = enums2;
    v105 = v29;
    v106 = v28;
    if (v28 == v29)
    {
    }

    else
    {
      LOBYTE(negativePhrases3) = 0;
      if (!v28)
      {
        v30 = v29;
        v19 = v107;
        goto LABEL_72;
      }

      v30 = v29;
      v19 = v107;
      if (!v29)
      {
LABEL_72:

        goto LABEL_73;
      }

      v31 = [v28 isEqualToDictionary:v29];

      if (!v31)
      {
        goto LABEL_36;
      }
    }

    version = [(LNBundleMetadata *)self version];
    if (version != [(LNBundleMetadata *)v6 version])
    {
LABEL_36:
      LOBYTE(negativePhrases3) = 0;
      v19 = v107;
LABEL_73:
      v25 = v105;
      v20 = v106;
LABEL_74:

      v20 = v108;
LABEL_75:

      goto LABEL_76;
    }

    generator = [(LNBundleMetadata *)self generator];
    generator2 = [(LNBundleMetadata *)v6 generator];
    v28 = generator;
    v35 = generator2;
    v103 = v28;
    v104 = v35;
    if (v28 == v35)
    {
    }

    else
    {
      LOBYTE(negativePhrases3) = 0;
      if (!v28)
      {
        v36 = v35;
        goto LABEL_70;
      }

      v36 = v35;
      v19 = v107;
      if (!v35)
      {
LABEL_71:

        v28 = v103;
        v30 = v104;
        goto LABEL_72;
      }

      v37 = [v28 isEqual:v35];

      if (!v37)
      {
        LOBYTE(negativePhrases3) = 0;
        v19 = v107;
        v30 = v104;
        goto LABEL_72;
      }
    }

    autoShortcuts = [(LNBundleMetadata *)self autoShortcuts];
    autoShortcuts2 = [(LNBundleMetadata *)v6 autoShortcuts];
    v40 = autoShortcuts;
    v41 = autoShortcuts2;
    v42 = v41;
    if (v40 == v41)
    {
      v102 = v41;

      v101 = v40;
    }

    else
    {
      LOBYTE(negativePhrases3) = 0;
      v43 = v41;
      v44 = v40;
      if (!v40 || !v41)
      {
        goto LABEL_66;
      }

      v45 = v41;
      v46 = v40;
      v47 = [v40 isEqualToArray:v41];
      v102 = v45;

      v101 = v46;
      if (!v47)
      {
        goto LABEL_67;
      }
    }

    shortcutTileColor = [(LNBundleMetadata *)self shortcutTileColor];
    if (shortcutTileColor != [(LNBundleMetadata *)v6 shortcutTileColor])
    {
LABEL_67:
      LOBYTE(negativePhrases3) = 0;
      goto LABEL_68;
    }

    negativePhrases = [(LNBundleMetadata *)self negativePhrases];
    negativePhrases2 = [(LNBundleMetadata *)v6 negativePhrases];

    if (negativePhrases != negativePhrases2)
    {
      negativePhrases3 = [(LNBundleMetadata *)self negativePhrases];
      if (!negativePhrases3)
      {
        goto LABEL_68;
      }

      negativePhrases4 = [(LNBundleMetadata *)v6 negativePhrases];

      if (!negativePhrases4)
      {
        goto LABEL_67;
      }

      v52 = MEMORY[0x1E695DFD8];
      negativePhrases5 = [(LNBundleMetadata *)self negativePhrases];
      v53 = [v52 setWithArray:negativePhrases5];
      v54 = MEMORY[0x1E695DFD8];
      negativePhrases6 = [(LNBundleMetadata *)v6 negativePhrases];
      v56 = [v54 setWithArray:negativePhrases6];
      v92 = [v53 isEqualToSet:v56];

      if (!v92)
      {
        goto LABEL_67;
      }
    }

    examplePhrases = [(LNBundleMetadata *)self examplePhrases];
    examplePhrases2 = [(LNBundleMetadata *)v6 examplePhrases];

    if (examplePhrases != examplePhrases2)
    {
      negativePhrases3 = [(LNBundleMetadata *)self examplePhrases];
      if (!negativePhrases3)
      {
        goto LABEL_68;
      }

      examplePhrases3 = [(LNBundleMetadata *)v6 examplePhrases];

      if (!examplePhrases3)
      {
        goto LABEL_67;
      }

      v60 = MEMORY[0x1E695DFD8];
      examplePhrases4 = [(LNBundleMetadata *)self examplePhrases];
      v61 = [v60 setWithArray:examplePhrases4];
      v62 = MEMORY[0x1E695DFD8];
      examplePhrases5 = [(LNBundleMetadata *)v6 examplePhrases];
      v64 = [v62 setWithArray:examplePhrases5];
      v93 = [v61 isEqualToSet:v64];

      if (!v93)
      {
        goto LABEL_67;
      }
    }

    assistantIntents = [(LNBundleMetadata *)self assistantIntents];
    assistantIntents2 = [(LNBundleMetadata *)v6 assistantIntents];

    if (assistantIntents != assistantIntents2)
    {
      negativePhrases3 = [(LNBundleMetadata *)self assistantIntents];
      if (!negativePhrases3)
      {
        goto LABEL_68;
      }

      assistantIntents3 = [(LNBundleMetadata *)v6 assistantIntents];

      if (!assistantIntents3)
      {
        goto LABEL_67;
      }

      v68 = MEMORY[0x1E695DFD8];
      assistantIntents4 = [(LNBundleMetadata *)self assistantIntents];
      v69 = [v68 setWithArray:assistantIntents4];
      v70 = MEMORY[0x1E695DFD8];
      assistantIntents5 = [(LNBundleMetadata *)v6 assistantIntents];
      v72 = [v70 setWithArray:assistantIntents5];
      v94 = [v69 isEqualToSet:v72];

      if (!v94)
      {
        goto LABEL_67;
      }
    }

    assistantIntentNegativePhrases = [(LNBundleMetadata *)self assistantIntentNegativePhrases];
    assistantIntentNegativePhrases2 = [(LNBundleMetadata *)v6 assistantIntentNegativePhrases];

    if (assistantIntentNegativePhrases != assistantIntentNegativePhrases2)
    {
      negativePhrases3 = [(LNBundleMetadata *)self assistantIntentNegativePhrases];
      if (!negativePhrases3)
      {
        goto LABEL_68;
      }

      assistantIntentNegativePhrases3 = [(LNBundleMetadata *)v6 assistantIntentNegativePhrases];

      if (!assistantIntentNegativePhrases3)
      {
        goto LABEL_67;
      }

      v76 = MEMORY[0x1E695DFD8];
      assistantIntentNegativePhrases4 = [(LNBundleMetadata *)self assistantIntentNegativePhrases];
      v77 = [v76 setWithArray:assistantIntentNegativePhrases4];
      v78 = MEMORY[0x1E695DFD8];
      assistantIntentNegativePhrases5 = [(LNBundleMetadata *)v6 assistantIntentNegativePhrases];
      v80 = [v78 setWithArray:assistantIntentNegativePhrases5];
      v95 = [v77 isEqualToSet:v80];

      if (!v95)
      {
        goto LABEL_67;
      }
    }

    assistantEntities = [(LNBundleMetadata *)self assistantEntities];
    assistantEntities2 = [(LNBundleMetadata *)v6 assistantEntities];

    if (assistantEntities == assistantEntities2)
    {
      LOBYTE(negativePhrases3) = 1;
      goto LABEL_68;
    }

    negativePhrases3 = [(LNBundleMetadata *)self assistantEntities];
    if (negativePhrases3)
    {
      assistantEntities3 = [(LNBundleMetadata *)v6 assistantEntities];

      if (assistantEntities3)
      {
        v84 = MEMORY[0x1E695DFD8];
        assistantEntities4 = [(LNBundleMetadata *)self assistantEntities];
        v85 = [v84 setWithArray:assistantEntities4];
        v86 = MEMORY[0x1E695DFD8];
        assistantEntities5 = [(LNBundleMetadata *)v6 assistantEntities];
        v88 = [v86 setWithArray:assistantEntities5];
        LOBYTE(negativePhrases3) = [v85 isEqualToSet:v88];

        v43 = v85;
        v44 = assistantEntities4;
        v40 = v101;
        v42 = v102;
LABEL_66:
        v89 = v42;
        v90 = v44;

        v36 = v89;
        v28 = v40;
LABEL_70:
        v19 = v107;
        goto LABEL_71;
      }

      goto LABEL_67;
    }

LABEL_68:
    v19 = v107;
    v28 = v101;
    v36 = v102;
    goto LABEL_71;
  }

  LOBYTE(negativePhrases3) = 1;
LABEL_79:

  return negativePhrases3;
}

- (unint64_t)hash
{
  actions = [(LNBundleMetadata *)self actions];
  v3 = [actions hash];
  entities = [(LNBundleMetadata *)self entities];
  v4 = [entities hash] ^ v3;
  queries = [(LNBundleMetadata *)self queries];
  v5 = [queries hash];
  enums = [(LNBundleMetadata *)self enums];
  v7 = v4 ^ v5 ^ [enums hash];
  autoShortcuts = [(LNBundleMetadata *)self autoShortcuts];
  v9 = [autoShortcuts hash];
  v10 = v9 ^ [(LNBundleMetadata *)self shortcutTileColor];
  v11 = v7 ^ v10 ^ [(LNBundleMetadata *)self version];
  generator = [(LNBundleMetadata *)self generator];
  v13 = [generator hash];
  negativePhrases = [(LNBundleMetadata *)self negativePhrases];
  v15 = v13 ^ [negativePhrases hash];
  examplePhrases = [(LNBundleMetadata *)self examplePhrases];
  v17 = v15 ^ [examplePhrases hash];
  assistantIntents = [(LNBundleMetadata *)self assistantIntents];
  v19 = v11 ^ v17 ^ [assistantIntents hash];
  assistantIntentNegativePhrases = [(LNBundleMetadata *)self assistantIntentNegativePhrases];
  v21 = [assistantIntentNegativePhrases hash];
  assistantEntities = [(LNBundleMetadata *)self assistantEntities];
  v23 = v21 ^ [assistantEntities hash];

  return v19 ^ v23;
}

- (id)verboseDescription
{
  v20 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v23 = NSStringFromClass(v3);
  actions = [(LNBundleMetadata *)self actions];
  entities = [(LNBundleMetadata *)self entities];
  queries = [(LNBundleMetadata *)self queries];
  enums = [(LNBundleMetadata *)self enums];
  autoShortcuts = [(LNBundleMetadata *)self autoShortcuts];
  shortcutTileColor = [(LNBundleMetadata *)self shortcutTileColor];
  if ((shortcutTileColor - 1) > 0xD)
  {
    v6 = @"red";
  }

  else
  {
    v6 = off_1E72B0D18[shortcutTileColor - 1];
  }

  v7 = v6;
  version = [(LNBundleMetadata *)self version];
  v9 = @"1.0";
  if (!version)
  {
    v9 = @"0.0";
  }

  v10 = v9;
  generator = [(LNBundleMetadata *)self generator];
  negativePhrases = [(LNBundleMetadata *)self negativePhrases];
  examplePhrases = [(LNBundleMetadata *)self examplePhrases];
  assistantIntents = [(LNBundleMetadata *)self assistantIntents];
  assistantIntentNegativePhrases = [(LNBundleMetadata *)self assistantIntentNegativePhrases];
  assistantEntities = [(LNBundleMetadata *)self assistantEntities];
  v21 = [v20 stringWithFormat:@"<%@: %p, actions: %@, entities: %@, queries: %@, enums: %@, autoShortcuts: %@, shortcutTileColor: %@, version: %@, generator: %@, negativePhrases: %@ examplePhrases: %@, assistantIntents: %@, assistantIntentNegativePhrases: %@, assistantEntities: %@>", v23, self, actions, entities, queries, enums, autoShortcuts, v7, v10, generator, negativePhrases, examplePhrases, assistantIntents, assistantIntentNegativePhrases, assistantEntities];

  return v21;
}

- (id)description
{
  v27 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v25 = NSStringFromClass(v3);
  actions = [(LNBundleMetadata *)self actions];
  v23 = [actions count];
  entities = [(LNBundleMetadata *)self entities];
  v22 = [entities count];
  queries = [(LNBundleMetadata *)self queries];
  v21 = [queries count];
  enums = [(LNBundleMetadata *)self enums];
  v20 = [enums count];
  autoShortcuts = [(LNBundleMetadata *)self autoShortcuts];
  v18 = [autoShortcuts count];
  version = [(LNBundleMetadata *)self version];
  v5 = @"1.0";
  if (!version)
  {
    v5 = @"0.0";
  }

  v6 = v5;
  generator = [(LNBundleMetadata *)self generator];
  negativePhrases = [(LNBundleMetadata *)self negativePhrases];
  v7 = [negativePhrases count];
  examplePhrases = [(LNBundleMetadata *)self examplePhrases];
  v9 = [examplePhrases count];
  assistantIntents = [(LNBundleMetadata *)self assistantIntents];
  v11 = [assistantIntents count];
  assistantIntentNegativePhrases = [(LNBundleMetadata *)self assistantIntentNegativePhrases];
  v13 = [assistantIntentNegativePhrases count];
  assistantEntities = [(LNBundleMetadata *)self assistantEntities];
  v15 = [v27 stringWithFormat:@"<%@: %p, actions: %lu, entities: %lu, queries: %lu, enums: %lu, autoShortcuts: %lu, version: %@, generator: %@>, negativePhrases: %lu examplePhrases: %lu, assistantIntents: %lu, assistantIntentNegativePhrases: %lu, assistantEntities: %lu", v25, self, v23, v22, v21, v20, v18, v6, generator, v7, v9, v11, v13, objc_msgSend(assistantEntities, "count")];

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = [LNBundleMetadata alloc];
  actions = [(LNBundleMetadata *)self actions];
  entities = [(LNBundleMetadata *)self entities];
  queries = [(LNBundleMetadata *)self queries];
  enums = [(LNBundleMetadata *)self enums];
  allValues = [enums allValues];
  autoShortcutProviderMangledName = [(LNBundleMetadata *)self autoShortcutProviderMangledName];
  autoShortcuts = [(LNBundleMetadata *)self autoShortcuts];
  shortcutTileColor = [(LNBundleMetadata *)self shortcutTileColor];
  version = [(LNBundleMetadata *)self version];
  generator = [(LNBundleMetadata *)self generator];
  negativePhrases = [(LNBundleMetadata *)self negativePhrases];
  examplePhrases = [(LNBundleMetadata *)self examplePhrases];
  assistantIntents = [(LNBundleMetadata *)self assistantIntents];
  assistantIntentNegativePhrases = [(LNBundleMetadata *)self assistantIntentNegativePhrases];
  assistantEntities = [(LNBundleMetadata *)self assistantEntities];
  v19 = [(LNBundleMetadata *)v18 initWithActions:actions entities:entities queries:queries enums:allValues autoShortcutProviderMangledName:autoShortcutProviderMangledName autoShortcuts:autoShortcuts shortcutTileColor:shortcutTileColor version:version generator:generator negativePhrases:negativePhrases examplePhrases:examplePhrases assistantIntents:assistantIntents assistantIntentNegativePhrases:assistantIntentNegativePhrases assistantEntities:assistantEntities];

  return v19;
}

- (LNBundleMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"actions"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"autoShortcuts"];

  v58 = [coderCopy decodeIntegerForKey:@"shortcutTileColor"];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
  v67 = [coderCopy decodeObjectOfClasses:v16 forKey:@"entities"];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
  v66 = [coderCopy decodeObjectOfClasses:v20 forKey:@"queries"];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"enums"];

  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
  v63 = [coderCopy decodeObjectOfClasses:v27 forKey:@"negativePhrases"];

  v28 = MEMORY[0x1E695DFD8];
  v29 = objc_opt_class();
  v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
  v62 = [coderCopy decodeObjectOfClasses:v30 forKey:@"examplePhrases"];

  v31 = MEMORY[0x1E695DFD8];
  v32 = objc_opt_class();
  v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
  v61 = [coderCopy decodeObjectOfClasses:v33 forKey:@"assistantIntents"];

  v34 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
  v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"assistantIntentNegativePhrases"];

  v38 = MEMORY[0x1E695DFD8];
  v39 = objc_opt_class();
  v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
  v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"assistantEntities"];

  v42 = 0;
  v65 = v8;
  v60 = v24;
  if (!v8)
  {
    selfCopy4 = self;
    v45 = v66;
    v43 = v67;
    v53 = v41;
    v50 = v62;
    v51 = v63;
    v49 = v61;
    goto LABEL_11;
  }

  v59 = v37;
  if (!v12)
  {
    selfCopy4 = self;
    v43 = v67;
    goto LABEL_8;
  }

  v43 = v67;
  if (!v67)
  {
    goto LABEL_7;
  }

  v44 = v24;
  v45 = v66;
  if (!v66)
  {
    selfCopy4 = self;
    goto LABEL_10;
  }

  if (!v44)
  {
LABEL_7:
    selfCopy4 = self;
LABEL_8:
    v45 = v66;
LABEL_10:
    v53 = v41;
    v50 = v62;
    v51 = v63;
    v49 = v61;
    v37 = v59;
    goto LABEL_11;
  }

  v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoShortcutProviderMangledName"];
  v46 = [coderCopy decodeIntegerForKey:@"version"];
  v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"generator"];
  allValues = [v44 allValues];
  v37 = v59;
  v55 = v41;
  v49 = v61;
  v50 = v62;
  v56 = v41;
  v51 = v63;
  v45 = v66;
  selfCopy4 = [(LNBundleMetadata *)self initWithActions:v65 entities:v67 queries:v66 enums:allValues autoShortcutProviderMangledName:v57 autoShortcuts:v12 shortcutTileColor:v58 version:v46 generator:v47 negativePhrases:v63 examplePhrases:v62 assistantIntents:v61 assistantIntentNegativePhrases:v59 assistantEntities:v55];

  v43 = v67;
  v53 = v56;
  v42 = selfCopy4;
LABEL_11:

  return v42;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actions = [(LNBundleMetadata *)self actions];
  [coderCopy encodeObject:actions forKey:@"actions"];

  autoShortcutProviderMangledName = [(LNBundleMetadata *)self autoShortcutProviderMangledName];
  [coderCopy encodeObject:autoShortcutProviderMangledName forKey:@"autoShortcutProviderMangledName"];

  autoShortcuts = [(LNBundleMetadata *)self autoShortcuts];
  [coderCopy encodeObject:autoShortcuts forKey:@"autoShortcuts"];

  [coderCopy encodeInteger:-[LNBundleMetadata shortcutTileColor](self forKey:{"shortcutTileColor"), @"shortcutTileColor"}];
  entities = [(LNBundleMetadata *)self entities];
  [coderCopy encodeObject:entities forKey:@"entities"];

  queries = [(LNBundleMetadata *)self queries];
  [coderCopy encodeObject:queries forKey:@"queries"];

  enums = [(LNBundleMetadata *)self enums];
  [coderCopy encodeObject:enums forKey:@"enums"];

  [coderCopy encodeInteger:-[LNBundleMetadata version](self forKey:{"version"), @"version"}];
  generator = [(LNBundleMetadata *)self generator];
  [coderCopy encodeObject:generator forKey:@"generator"];

  negativePhrases = [(LNBundleMetadata *)self negativePhrases];
  [coderCopy encodeObject:negativePhrases forKey:@"negativePhrases"];

  examplePhrases = [(LNBundleMetadata *)self examplePhrases];
  [coderCopy encodeObject:examplePhrases forKey:@"examplePhrases"];

  assistantIntents = [(LNBundleMetadata *)self assistantIntents];
  [coderCopy encodeObject:assistantIntents forKey:@"assistantIntents"];

  assistantIntentNegativePhrases = [(LNBundleMetadata *)self assistantIntentNegativePhrases];
  [coderCopy encodeObject:assistantIntentNegativePhrases forKey:@"assistantIntentNegativePhrases"];

  assistantEntities = [(LNBundleMetadata *)self assistantEntities];
  [coderCopy encodeObject:assistantEntities forKey:@"assistantEntities"];
}

- (void)applyAttributionBundleIdentifier:(id)identifier icon:(id)icon
{
  v40 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  iconCopy = icon;
  obj = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  actions = [(LNBundleMetadata *)self actions];
  v8 = [actions countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      v11 = 0;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(actions);
        }

        v12 = *(*(&v34 + 1) + 8 * v11);
        actions2 = [(LNBundleMetadata *)self actions];
        v14 = [actions2 objectForKeyedSubscript:v12];
        v15 = [v14 actionMetadataWithAttributionBundleIdentifier:identifierCopy icon:iconCopy];
        [obj setObject:v15 forKeyedSubscript:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [actions countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  objc_storeStrong(&self->_actions, obj);
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  entities = [(LNBundleMetadata *)self entities];
  v17 = [entities countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      v20 = 0;
      do
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(entities);
        }

        v21 = *(*(&v30 + 1) + 8 * v20);
        entities2 = [(LNBundleMetadata *)self entities];
        v23 = [entities2 objectForKeyedSubscript:v21];
        v24 = [v23 entityMetadataWithAttributionBundleIdentifier:identifierCopy];
        [(NSDictionary *)v16 setObject:v24 forKeyedSubscript:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [entities countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v18);
  }

  entities = self->_entities;
  self->_entities = v16;

  v26 = *MEMORY[0x1E69E9840];
}

- (LNBundleMetadata)initWithArray:(id)array
{
  v54 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v4 = objc_opt_new();
  v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = arrayCopy;
  v8 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v41 = *v50;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v50 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v49 + 1) + 8 * i);
        actions = [v12 actions];
        v14 = [actions ln_deduping:v4];
        [v4 addEntriesFromDictionary:v14];

        queries = [v12 queries];
        v16 = [queries ln_deduping:v6];
        [v6 addEntriesFromDictionary:v16];

        entities = [v12 entities];
        v18 = [entities ln_deduping:v5];
        [v5 addEntriesFromDictionary:v18];

        enums = [v12 enums];
        v20 = [enums ln_deduping:v7];
        [v7 addEntriesFromDictionary:v20];

        autoShortcuts = [v12 autoShortcuts];
        [v48 addObjectsFromArray:autoShortcuts];

        negativePhrases = [v12 negativePhrases];
        [v47 addObjectsFromArray:negativePhrases];

        examplePhrases = [v12 examplePhrases];
        [v46 addObjectsFromArray:examplePhrases];

        assistantIntents = [v12 assistantIntents];
        [v45 addObjectsFromArray:assistantIntents];

        assistantIntentNegativePhrases = [v12 assistantIntentNegativePhrases];
        [v44 addObjectsFromArray:assistantIntentNegativePhrases];

        assistantEntities = [v12 assistantEntities];
        [v43 addObjectsFromArray:assistantEntities];

        if (!v10)
        {
          autoShortcutProviderMangledName = [v12 autoShortcutProviderMangledName];
          whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
          v29 = [autoShortcutProviderMangledName stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

          if ([v29 length])
          {
            v10 = v29;
          }

          else
          {
            v10 = 0;
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  allValues = [v7 allValues];
  firstObject = [obj firstObject];
  shortcutTileColor = [firstObject shortcutTileColor];
  firstObject2 = [obj firstObject];
  version = [firstObject2 version];
  firstObject3 = [obj firstObject];
  generator = [firstObject3 generator];
  v39 = [(LNBundleMetadata *)self initWithActions:v4 entities:v5 queries:v6 enums:allValues autoShortcutProviderMangledName:v10 autoShortcuts:v48 shortcutTileColor:shortcutTileColor version:version generator:generator negativePhrases:v47 examplePhrases:v46 assistantIntents:v45 assistantIntentNegativePhrases:v44 assistantEntities:v43];

  v33 = *MEMORY[0x1E69E9840];
  return v39;
}

- (LNBundleMetadata)initWithActions:(id)actions entities:(id)entities queries:(id)queries enums:(id)enums autoShortcutProviderMangledName:(id)name autoShortcuts:(id)shortcuts shortcutTileColor:(int64_t)color version:(int64_t)self0 generator:(id)self1 negativePhrases:(id)self2 examplePhrases:(id)self3 assistantIntents:(id)self4 assistantIntentNegativePhrases:(id)self5 assistantEntities:(id)self6
{
  v83 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  entitiesCopy = entities;
  queriesCopy = queries;
  enumsCopy = enums;
  nameCopy = name;
  shortcutsCopy = shortcuts;
  generatorCopy = generator;
  phrasesCopy = phrases;
  examplePhrasesCopy = examplePhrases;
  intentsCopy = intents;
  negativePhrasesCopy = negativePhrases;
  assistantEntitiesCopy = assistantEntities;
  v81.receiver = self;
  v81.super_class = LNBundleMetadata;
  v30 = [(LNBundleMetadata *)&v81 init];
  if (v30)
  {
    v66 = assistantEntitiesCopy;
    v67 = examplePhrasesCopy;
    v68 = phrasesCopy;
    v69 = generatorCopy;
    v73 = actionsCopy;
    v31 = [actionsCopy copy];
    actions = v30->_actions;
    v30->_actions = v31;

    v33 = [nameCopy copy];
    autoShortcutProviderMangledName = v30->_autoShortcutProviderMangledName;
    v30->_autoShortcutProviderMangledName = v33;

    v70 = shortcutsCopy;
    v35 = [shortcutsCopy copy];
    autoShortcuts = v30->_autoShortcuts;
    v30->_autoShortcuts = v35;

    v71 = entitiesCopy;
    v37 = [entitiesCopy copy];
    entities = v30->_entities;
    v30->_entities = v37;

    v39 = [queriesCopy copy];
    queries = v30->_queries;
    v30->_queries = v39;

    v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v42 = enumsCopy;
    v43 = [v42 countByEnumeratingWithState:&v77 objects:v82 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v78;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v78 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v77 + 1) + 8 * i);
          identifier = [v47 identifier];

          if (identifier)
          {
            identifier2 = [v47 identifier];
            [(NSDictionary *)v41 setObject:v47 forKeyedSubscript:identifier2];
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v77 objects:v82 count:16];
      }

      while (v44);
    }

    enums = v30->_enums;
    v30->_enums = v41;

    v30->_shortcutTileColor = color;
    v30->_version = version;
    generatorCopy = v69;
    v51 = [v69 copy];
    generator = v30->_generator;
    v30->_generator = v51;

    phrasesCopy = v68;
    v53 = [v68 copy];
    negativePhrases = v30->_negativePhrases;
    v30->_negativePhrases = v53;

    examplePhrasesCopy = v67;
    v55 = [v67 copy];
    examplePhrases = v30->_examplePhrases;
    v30->_examplePhrases = v55;

    v57 = [intentsCopy copy];
    assistantIntents = v30->_assistantIntents;
    v30->_assistantIntents = v57;

    v59 = [negativePhrasesCopy copy];
    assistantIntentNegativePhrases = v30->_assistantIntentNegativePhrases;
    v30->_assistantIntentNegativePhrases = v59;

    assistantEntitiesCopy = v66;
    v61 = [v66 copy];
    assistantEntities = v30->_assistantEntities;
    v30->_assistantEntities = v61;

    v63 = v30;
    entitiesCopy = v71;
    actionsCopy = v73;
    shortcutsCopy = v70;
  }

  v64 = *MEMORY[0x1E69E9840];
  return v30;
}

@end