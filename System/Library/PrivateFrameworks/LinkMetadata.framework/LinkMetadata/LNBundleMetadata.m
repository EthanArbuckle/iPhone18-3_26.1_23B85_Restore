@interface LNBundleMetadata
- (BOOL)isEqual:(id)a3;
- (LNBundleMetadata)initWithActions:(id)a3 entities:(id)a4 queries:(id)a5 enums:(id)a6 autoShortcutProviderMangledName:(id)a7 autoShortcuts:(id)a8 shortcutTileColor:(int64_t)a9 version:(int64_t)a10 generator:(id)a11 negativePhrases:(id)a12 examplePhrases:(id)a13 assistantIntents:(id)a14 assistantIntentNegativePhrases:(id)a15 assistantEntities:(id)a16;
- (LNBundleMetadata)initWithArray:(id)a3;
- (LNBundleMetadata)initWithCoder:(id)a3;
- (id)_initWithMetadataFileURL:(id)a3 bundleURL:(id)a4 effectiveBundleIdentifier:(id)a5 error:(id *)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)verboseDescription;
- (unint64_t)hash;
- (void)applyAttributionBundleIdentifier:(id)a3 icon:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNBundleMetadata

- (id)_initWithMetadataFileURL:(id)a3 bundleURL:(id)a4 effectiveBundleIdentifier:(id)a5 error:(id *)a6
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
  if (a4)
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
  v19 = a5;
  LNBundleMetadata.init(metadataFileURL:bundleURL:effectiveBundleIdentifier:)();
  return result;
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
LABEL_78:

      goto LABEL_79;
    }

    v7 = [(LNBundleMetadata *)self actions];
    v8 = [(LNBundleMetadata *)v6 actions];
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
        goto LABEL_76;
      }

      v15 = [v9 isEqualToDictionary:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_77:

        goto LABEL_78;
      }
    }

    v16 = [(LNBundleMetadata *)self entities];
    v17 = [(LNBundleMetadata *)v6 entities];
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
        goto LABEL_75;
      }

      v21 = [v14 isEqualToDictionary:v18];

      if (!v21)
      {
        LOBYTE(v12) = 0;
LABEL_76:

        goto LABEL_77;
      }
    }

    v22 = [(LNBundleMetadata *)self queries];
    v23 = [(LNBundleMetadata *)v6 queries];
    v20 = v22;
    v24 = v23;
    v19 = v24;
    v108 = v20;
    if (v20 == v24)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v25 = v24;
      if (!v20 || !v24)
      {
        goto LABEL_74;
      }

      LODWORD(v12) = [v20 isEqualToDictionary:v24];

      if (!v12)
      {
        goto LABEL_75;
      }
    }

    v107 = v19;
    v26 = [(LNBundleMetadata *)self enums];
    v27 = [(LNBundleMetadata *)v6 enums];
    v28 = v26;
    v29 = v27;
    v105 = v29;
    v106 = v28;
    if (v28 == v29)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
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

    v32 = [(LNBundleMetadata *)self version];
    if (v32 != [(LNBundleMetadata *)v6 version])
    {
LABEL_36:
      LOBYTE(v12) = 0;
      v19 = v107;
LABEL_73:
      v25 = v105;
      v20 = v106;
LABEL_74:

      v20 = v108;
LABEL_75:

      goto LABEL_76;
    }

    v33 = [(LNBundleMetadata *)self generator];
    v34 = [(LNBundleMetadata *)v6 generator];
    v28 = v33;
    v35 = v34;
    v103 = v28;
    v104 = v35;
    if (v28 == v35)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
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
        LOBYTE(v12) = 0;
        v19 = v107;
        v30 = v104;
        goto LABEL_72;
      }
    }

    v38 = [(LNBundleMetadata *)self autoShortcuts];
    v39 = [(LNBundleMetadata *)v6 autoShortcuts];
    v40 = v38;
    v41 = v39;
    v42 = v41;
    if (v40 == v41)
    {
      v102 = v41;

      v101 = v40;
    }

    else
    {
      LOBYTE(v12) = 0;
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

    v48 = [(LNBundleMetadata *)self shortcutTileColor];
    if (v48 != [(LNBundleMetadata *)v6 shortcutTileColor])
    {
LABEL_67:
      LOBYTE(v12) = 0;
      goto LABEL_68;
    }

    v49 = [(LNBundleMetadata *)self negativePhrases];
    v50 = [(LNBundleMetadata *)v6 negativePhrases];

    if (v49 != v50)
    {
      v12 = [(LNBundleMetadata *)self negativePhrases];
      if (!v12)
      {
        goto LABEL_68;
      }

      v51 = [(LNBundleMetadata *)v6 negativePhrases];

      if (!v51)
      {
        goto LABEL_67;
      }

      v52 = MEMORY[0x1E695DFD8];
      v96 = [(LNBundleMetadata *)self negativePhrases];
      v53 = [v52 setWithArray:v96];
      v54 = MEMORY[0x1E695DFD8];
      v55 = [(LNBundleMetadata *)v6 negativePhrases];
      v56 = [v54 setWithArray:v55];
      v92 = [v53 isEqualToSet:v56];

      if (!v92)
      {
        goto LABEL_67;
      }
    }

    v57 = [(LNBundleMetadata *)self examplePhrases];
    v58 = [(LNBundleMetadata *)v6 examplePhrases];

    if (v57 != v58)
    {
      v12 = [(LNBundleMetadata *)self examplePhrases];
      if (!v12)
      {
        goto LABEL_68;
      }

      v59 = [(LNBundleMetadata *)v6 examplePhrases];

      if (!v59)
      {
        goto LABEL_67;
      }

      v60 = MEMORY[0x1E695DFD8];
      v97 = [(LNBundleMetadata *)self examplePhrases];
      v61 = [v60 setWithArray:v97];
      v62 = MEMORY[0x1E695DFD8];
      v63 = [(LNBundleMetadata *)v6 examplePhrases];
      v64 = [v62 setWithArray:v63];
      v93 = [v61 isEqualToSet:v64];

      if (!v93)
      {
        goto LABEL_67;
      }
    }

    v65 = [(LNBundleMetadata *)self assistantIntents];
    v66 = [(LNBundleMetadata *)v6 assistantIntents];

    if (v65 != v66)
    {
      v12 = [(LNBundleMetadata *)self assistantIntents];
      if (!v12)
      {
        goto LABEL_68;
      }

      v67 = [(LNBundleMetadata *)v6 assistantIntents];

      if (!v67)
      {
        goto LABEL_67;
      }

      v68 = MEMORY[0x1E695DFD8];
      v98 = [(LNBundleMetadata *)self assistantIntents];
      v69 = [v68 setWithArray:v98];
      v70 = MEMORY[0x1E695DFD8];
      v71 = [(LNBundleMetadata *)v6 assistantIntents];
      v72 = [v70 setWithArray:v71];
      v94 = [v69 isEqualToSet:v72];

      if (!v94)
      {
        goto LABEL_67;
      }
    }

    v73 = [(LNBundleMetadata *)self assistantIntentNegativePhrases];
    v74 = [(LNBundleMetadata *)v6 assistantIntentNegativePhrases];

    if (v73 != v74)
    {
      v12 = [(LNBundleMetadata *)self assistantIntentNegativePhrases];
      if (!v12)
      {
        goto LABEL_68;
      }

      v75 = [(LNBundleMetadata *)v6 assistantIntentNegativePhrases];

      if (!v75)
      {
        goto LABEL_67;
      }

      v76 = MEMORY[0x1E695DFD8];
      v99 = [(LNBundleMetadata *)self assistantIntentNegativePhrases];
      v77 = [v76 setWithArray:v99];
      v78 = MEMORY[0x1E695DFD8];
      v79 = [(LNBundleMetadata *)v6 assistantIntentNegativePhrases];
      v80 = [v78 setWithArray:v79];
      v95 = [v77 isEqualToSet:v80];

      if (!v95)
      {
        goto LABEL_67;
      }
    }

    v81 = [(LNBundleMetadata *)self assistantEntities];
    v82 = [(LNBundleMetadata *)v6 assistantEntities];

    if (v81 == v82)
    {
      LOBYTE(v12) = 1;
      goto LABEL_68;
    }

    v12 = [(LNBundleMetadata *)self assistantEntities];
    if (v12)
    {
      v83 = [(LNBundleMetadata *)v6 assistantEntities];

      if (v83)
      {
        v84 = MEMORY[0x1E695DFD8];
        v100 = [(LNBundleMetadata *)self assistantEntities];
        v85 = [v84 setWithArray:v100];
        v86 = MEMORY[0x1E695DFD8];
        v87 = [(LNBundleMetadata *)v6 assistantEntities];
        v88 = [v86 setWithArray:v87];
        LOBYTE(v12) = [v85 isEqualToSet:v88];

        v43 = v85;
        v44 = v100;
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

  LOBYTE(v12) = 1;
LABEL_79:

  return v12;
}

- (unint64_t)hash
{
  v27 = [(LNBundleMetadata *)self actions];
  v3 = [v27 hash];
  v26 = [(LNBundleMetadata *)self entities];
  v4 = [v26 hash] ^ v3;
  v25 = [(LNBundleMetadata *)self queries];
  v5 = [v25 hash];
  v6 = [(LNBundleMetadata *)self enums];
  v7 = v4 ^ v5 ^ [v6 hash];
  v8 = [(LNBundleMetadata *)self autoShortcuts];
  v9 = [v8 hash];
  v10 = v9 ^ [(LNBundleMetadata *)self shortcutTileColor];
  v11 = v7 ^ v10 ^ [(LNBundleMetadata *)self version];
  v12 = [(LNBundleMetadata *)self generator];
  v13 = [v12 hash];
  v14 = [(LNBundleMetadata *)self negativePhrases];
  v15 = v13 ^ [v14 hash];
  v16 = [(LNBundleMetadata *)self examplePhrases];
  v17 = v15 ^ [v16 hash];
  v18 = [(LNBundleMetadata *)self assistantIntents];
  v19 = v11 ^ v17 ^ [v18 hash];
  v20 = [(LNBundleMetadata *)self assistantIntentNegativePhrases];
  v21 = [v20 hash];
  v22 = [(LNBundleMetadata *)self assistantEntities];
  v23 = v21 ^ [v22 hash];

  return v19 ^ v23;
}

- (id)verboseDescription
{
  v20 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v23 = NSStringFromClass(v3);
  v24 = [(LNBundleMetadata *)self actions];
  v18 = [(LNBundleMetadata *)self entities];
  v22 = [(LNBundleMetadata *)self queries];
  v4 = [(LNBundleMetadata *)self enums];
  v19 = [(LNBundleMetadata *)self autoShortcuts];
  v5 = [(LNBundleMetadata *)self shortcutTileColor];
  if ((v5 - 1) > 0xD)
  {
    v6 = @"red";
  }

  else
  {
    v6 = off_1E72B0D18[v5 - 1];
  }

  v7 = v6;
  v8 = [(LNBundleMetadata *)self version];
  v9 = @"1.0";
  if (!v8)
  {
    v9 = @"0.0";
  }

  v10 = v9;
  v17 = [(LNBundleMetadata *)self generator];
  v11 = [(LNBundleMetadata *)self negativePhrases];
  v12 = [(LNBundleMetadata *)self examplePhrases];
  v13 = [(LNBundleMetadata *)self assistantIntents];
  v14 = [(LNBundleMetadata *)self assistantIntentNegativePhrases];
  v15 = [(LNBundleMetadata *)self assistantEntities];
  v21 = [v20 stringWithFormat:@"<%@: %p, actions: %@, entities: %@, queries: %@, enums: %@, autoShortcuts: %@, shortcutTileColor: %@, version: %@, generator: %@, negativePhrases: %@ examplePhrases: %@, assistantIntents: %@, assistantIntentNegativePhrases: %@, assistantEntities: %@>", v23, self, v24, v18, v22, v4, v19, v7, v10, v17, v11, v12, v13, v14, v15];

  return v21;
}

- (id)description
{
  v27 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v25 = NSStringFromClass(v3);
  v30 = [(LNBundleMetadata *)self actions];
  v23 = [v30 count];
  v29 = [(LNBundleMetadata *)self entities];
  v22 = [v29 count];
  v28 = [(LNBundleMetadata *)self queries];
  v21 = [v28 count];
  v26 = [(LNBundleMetadata *)self enums];
  v20 = [v26 count];
  v24 = [(LNBundleMetadata *)self autoShortcuts];
  v18 = [v24 count];
  v4 = [(LNBundleMetadata *)self version];
  v5 = @"1.0";
  if (!v4)
  {
    v5 = @"0.0";
  }

  v6 = v5;
  v17 = [(LNBundleMetadata *)self generator];
  v19 = [(LNBundleMetadata *)self negativePhrases];
  v7 = [v19 count];
  v8 = [(LNBundleMetadata *)self examplePhrases];
  v9 = [v8 count];
  v10 = [(LNBundleMetadata *)self assistantIntents];
  v11 = [v10 count];
  v12 = [(LNBundleMetadata *)self assistantIntentNegativePhrases];
  v13 = [v12 count];
  v14 = [(LNBundleMetadata *)self assistantEntities];
  v15 = [v27 stringWithFormat:@"<%@: %p, actions: %lu, entities: %lu, queries: %lu, enums: %lu, autoShortcuts: %lu, version: %@, generator: %@>, negativePhrases: %lu examplePhrases: %lu, assistantIntents: %lu, assistantIntentNegativePhrases: %lu, assistantEntities: %lu", v25, self, v23, v22, v21, v20, v18, v6, v17, v7, v9, v11, v13, objc_msgSend(v14, "count")];

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18 = [LNBundleMetadata alloc];
  v21 = [(LNBundleMetadata *)self actions];
  v4 = [(LNBundleMetadata *)self entities];
  v5 = [(LNBundleMetadata *)self queries];
  v20 = [(LNBundleMetadata *)self enums];
  v17 = [v20 allValues];
  v16 = [(LNBundleMetadata *)self autoShortcutProviderMangledName];
  v15 = [(LNBundleMetadata *)self autoShortcuts];
  v6 = [(LNBundleMetadata *)self shortcutTileColor];
  v7 = [(LNBundleMetadata *)self version];
  v14 = [(LNBundleMetadata *)self generator];
  v8 = [(LNBundleMetadata *)self negativePhrases];
  v9 = [(LNBundleMetadata *)self examplePhrases];
  v10 = [(LNBundleMetadata *)self assistantIntents];
  v11 = [(LNBundleMetadata *)self assistantIntentNegativePhrases];
  v12 = [(LNBundleMetadata *)self assistantEntities];
  v19 = [(LNBundleMetadata *)v18 initWithActions:v21 entities:v4 queries:v5 enums:v17 autoShortcutProviderMangledName:v16 autoShortcuts:v15 shortcutTileColor:v6 version:v7 generator:v14 negativePhrases:v8 examplePhrases:v9 assistantIntents:v10 assistantIntentNegativePhrases:v11 assistantEntities:v12];

  return v19;
}

- (LNBundleMetadata)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  v8 = [v3 decodeObjectOfClasses:v7 forKey:@"actions"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v3 decodeObjectOfClasses:v11 forKey:@"autoShortcuts"];

  v58 = [v3 decodeIntegerForKey:@"shortcutTileColor"];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
  v67 = [v3 decodeObjectOfClasses:v16 forKey:@"entities"];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
  v66 = [v3 decodeObjectOfClasses:v20 forKey:@"queries"];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v24 = [v3 decodeObjectOfClasses:v23 forKey:@"enums"];

  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
  v63 = [v3 decodeObjectOfClasses:v27 forKey:@"negativePhrases"];

  v28 = MEMORY[0x1E695DFD8];
  v29 = objc_opt_class();
  v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
  v62 = [v3 decodeObjectOfClasses:v30 forKey:@"examplePhrases"];

  v31 = MEMORY[0x1E695DFD8];
  v32 = objc_opt_class();
  v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
  v61 = [v3 decodeObjectOfClasses:v33 forKey:@"assistantIntents"];

  v34 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
  v37 = [v3 decodeObjectOfClasses:v36 forKey:@"assistantIntentNegativePhrases"];

  v38 = MEMORY[0x1E695DFD8];
  v39 = objc_opt_class();
  v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
  v41 = [v3 decodeObjectOfClasses:v40 forKey:@"assistantEntities"];

  v42 = 0;
  v65 = v8;
  v60 = v24;
  if (!v8)
  {
    v52 = self;
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
    v52 = self;
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
    v52 = self;
    goto LABEL_10;
  }

  if (!v44)
  {
LABEL_7:
    v52 = self;
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

  v57 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"autoShortcutProviderMangledName"];
  v46 = [v3 decodeIntegerForKey:@"version"];
  v47 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"generator"];
  v48 = [v44 allValues];
  v37 = v59;
  v55 = v41;
  v49 = v61;
  v50 = v62;
  v56 = v41;
  v51 = v63;
  v45 = v66;
  v52 = [(LNBundleMetadata *)self initWithActions:v65 entities:v67 queries:v66 enums:v48 autoShortcutProviderMangledName:v57 autoShortcuts:v12 shortcutTileColor:v58 version:v46 generator:v47 negativePhrases:v63 examplePhrases:v62 assistantIntents:v61 assistantIntentNegativePhrases:v59 assistantEntities:v55];

  v43 = v67;
  v53 = v56;
  v42 = v52;
LABEL_11:

  return v42;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNBundleMetadata *)self actions];
  [v4 encodeObject:v5 forKey:@"actions"];

  v6 = [(LNBundleMetadata *)self autoShortcutProviderMangledName];
  [v4 encodeObject:v6 forKey:@"autoShortcutProviderMangledName"];

  v7 = [(LNBundleMetadata *)self autoShortcuts];
  [v4 encodeObject:v7 forKey:@"autoShortcuts"];

  [v4 encodeInteger:-[LNBundleMetadata shortcutTileColor](self forKey:{"shortcutTileColor"), @"shortcutTileColor"}];
  v8 = [(LNBundleMetadata *)self entities];
  [v4 encodeObject:v8 forKey:@"entities"];

  v9 = [(LNBundleMetadata *)self queries];
  [v4 encodeObject:v9 forKey:@"queries"];

  v10 = [(LNBundleMetadata *)self enums];
  [v4 encodeObject:v10 forKey:@"enums"];

  [v4 encodeInteger:-[LNBundleMetadata version](self forKey:{"version"), @"version"}];
  v11 = [(LNBundleMetadata *)self generator];
  [v4 encodeObject:v11 forKey:@"generator"];

  v12 = [(LNBundleMetadata *)self negativePhrases];
  [v4 encodeObject:v12 forKey:@"negativePhrases"];

  v13 = [(LNBundleMetadata *)self examplePhrases];
  [v4 encodeObject:v13 forKey:@"examplePhrases"];

  v14 = [(LNBundleMetadata *)self assistantIntents];
  [v4 encodeObject:v14 forKey:@"assistantIntents"];

  v15 = [(LNBundleMetadata *)self assistantIntentNegativePhrases];
  [v4 encodeObject:v15 forKey:@"assistantIntentNegativePhrases"];

  v16 = [(LNBundleMetadata *)self assistantEntities];
  [v4 encodeObject:v16 forKey:@"assistantEntities"];
}

- (void)applyAttributionBundleIdentifier:(id)a3 icon:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v28 = a4;
  obj = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = [(LNBundleMetadata *)self actions];
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v34 + 1) + 8 * v11);
        v13 = [(LNBundleMetadata *)self actions];
        v14 = [v13 objectForKeyedSubscript:v12];
        v15 = [v14 actionMetadataWithAttributionBundleIdentifier:v6 icon:v28];
        [obj setObject:v15 forKeyedSubscript:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  objc_storeStrong(&self->_actions, obj);
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v27 = [(LNBundleMetadata *)self entities];
  v17 = [v27 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
          objc_enumerationMutation(v27);
        }

        v21 = *(*(&v30 + 1) + 8 * v20);
        v22 = [(LNBundleMetadata *)self entities];
        v23 = [v22 objectForKeyedSubscript:v21];
        v24 = [v23 entityMetadataWithAttributionBundleIdentifier:v6];
        [(NSDictionary *)v16 setObject:v24 forKeyedSubscript:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [v27 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v18);
  }

  entities = self->_entities;
  self->_entities = v16;

  v26 = *MEMORY[0x1E69E9840];
}

- (LNBundleMetadata)initWithArray:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a3;
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
  obj = v3;
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
        v13 = [v12 actions];
        v14 = [v13 ln_deduping:v4];
        [v4 addEntriesFromDictionary:v14];

        v15 = [v12 queries];
        v16 = [v15 ln_deduping:v6];
        [v6 addEntriesFromDictionary:v16];

        v17 = [v12 entities];
        v18 = [v17 ln_deduping:v5];
        [v5 addEntriesFromDictionary:v18];

        v19 = [v12 enums];
        v20 = [v19 ln_deduping:v7];
        [v7 addEntriesFromDictionary:v20];

        v21 = [v12 autoShortcuts];
        [v48 addObjectsFromArray:v21];

        v22 = [v12 negativePhrases];
        [v47 addObjectsFromArray:v22];

        v23 = [v12 examplePhrases];
        [v46 addObjectsFromArray:v23];

        v24 = [v12 assistantIntents];
        [v45 addObjectsFromArray:v24];

        v25 = [v12 assistantIntentNegativePhrases];
        [v44 addObjectsFromArray:v25];

        v26 = [v12 assistantEntities];
        [v43 addObjectsFromArray:v26];

        if (!v10)
        {
          v27 = [v12 autoShortcutProviderMangledName];
          v28 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
          v29 = [v27 stringByTrimmingCharactersInSet:v28];

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

  v36 = [v7 allValues];
  v42 = [obj firstObject];
  v35 = [v42 shortcutTileColor];
  v37 = [obj firstObject];
  v30 = [v37 version];
  v31 = [obj firstObject];
  v32 = [v31 generator];
  v39 = [(LNBundleMetadata *)self initWithActions:v4 entities:v5 queries:v6 enums:v36 autoShortcutProviderMangledName:v10 autoShortcuts:v48 shortcutTileColor:v35 version:v30 generator:v32 negativePhrases:v47 examplePhrases:v46 assistantIntents:v45 assistantIntentNegativePhrases:v44 assistantEntities:v43];

  v33 = *MEMORY[0x1E69E9840];
  return v39;
}

- (LNBundleMetadata)initWithActions:(id)a3 entities:(id)a4 queries:(id)a5 enums:(id)a6 autoShortcutProviderMangledName:(id)a7 autoShortcuts:(id)a8 shortcutTileColor:(int64_t)a9 version:(int64_t)a10 generator:(id)a11 negativePhrases:(id)a12 examplePhrases:(id)a13 assistantIntents:(id)a14 assistantIntentNegativePhrases:(id)a15 assistantEntities:(id)a16
{
  v83 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v22 = a4;
  v76 = a5;
  v75 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v74 = a14;
  v28 = a15;
  v29 = a16;
  v81.receiver = self;
  v81.super_class = LNBundleMetadata;
  v30 = [(LNBundleMetadata *)&v81 init];
  if (v30)
  {
    v66 = v29;
    v67 = v27;
    v68 = v26;
    v69 = v25;
    v73 = v21;
    v31 = [v21 copy];
    actions = v30->_actions;
    v30->_actions = v31;

    v33 = [v23 copy];
    autoShortcutProviderMangledName = v30->_autoShortcutProviderMangledName;
    v30->_autoShortcutProviderMangledName = v33;

    v70 = v24;
    v35 = [v24 copy];
    autoShortcuts = v30->_autoShortcuts;
    v30->_autoShortcuts = v35;

    v71 = v22;
    v37 = [v22 copy];
    entities = v30->_entities;
    v30->_entities = v37;

    v39 = [v76 copy];
    queries = v30->_queries;
    v30->_queries = v39;

    v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v42 = v75;
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
          v48 = [v47 identifier];

          if (v48)
          {
            v49 = [v47 identifier];
            [(NSDictionary *)v41 setObject:v47 forKeyedSubscript:v49];
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v77 objects:v82 count:16];
      }

      while (v44);
    }

    enums = v30->_enums;
    v30->_enums = v41;

    v30->_shortcutTileColor = a9;
    v30->_version = a10;
    v25 = v69;
    v51 = [v69 copy];
    generator = v30->_generator;
    v30->_generator = v51;

    v26 = v68;
    v53 = [v68 copy];
    negativePhrases = v30->_negativePhrases;
    v30->_negativePhrases = v53;

    v27 = v67;
    v55 = [v67 copy];
    examplePhrases = v30->_examplePhrases;
    v30->_examplePhrases = v55;

    v57 = [v74 copy];
    assistantIntents = v30->_assistantIntents;
    v30->_assistantIntents = v57;

    v59 = [v28 copy];
    assistantIntentNegativePhrases = v30->_assistantIntentNegativePhrases;
    v30->_assistantIntentNegativePhrases = v59;

    v29 = v66;
    v61 = [v66 copy];
    assistantEntities = v30->_assistantEntities;
    v30->_assistantEntities = v61;

    v63 = v30;
    v22 = v71;
    v21 = v73;
    v24 = v70;
  }

  v64 = *MEMORY[0x1E69E9840];
  return v30;
}

@end