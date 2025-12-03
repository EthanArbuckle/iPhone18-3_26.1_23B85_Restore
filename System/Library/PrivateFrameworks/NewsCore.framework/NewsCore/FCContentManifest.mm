@interface FCContentManifest
+ (FCContentManifest)empty;
+ (id)manifestByMergingManifest:(id)manifest withManifest:(id)withManifest;
- (FCContentManifest)copyWithAssetsOnly;
- (FCContentManifest)initWithAssetURLs:(id)ls assetWrappingKeyIDs:(id)ds recordIDs:(id)iDs avAssetIDs:(id)assetIDs avAssetKeyIDs:(id)keyIDs;
- (FCContentManifest)initWithCoder:(id)coder;
- (FCContentManifest)initWithManifests:(id)manifests;
- (NSArray)avAssetKeyURIs;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCContentManifest

- (NSArray)avAssetKeyURIs
{
  avAssetKeyIDs = [(FCContentManifest *)self avAssetKeyIDs];
  v3 = [avAssetKeyIDs fc_arrayByTransformingWithBlock:&__block_literal_global_84];

  return v3;
}

+ (FCContentManifest)empty
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__FCContentManifest_empty__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1EDB274C0 != -1)
  {
    dispatch_once(&qword_1EDB274C0, block);
  }

  v2 = _MergedGlobals_168;

  return v2;
}

uint64_t __26__FCContentManifest_empty__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_alloc(objc_opt_class()) initWithAssetURLs:MEMORY[0x1E695E0F0] assetWrappingKeyIDs:MEMORY[0x1E695E0F0] recordIDs:MEMORY[0x1E695E0F0] avAssetIDs:MEMORY[0x1E695E0F0] avAssetKeyIDs:MEMORY[0x1E695E0F0]];
  v3 = _MergedGlobals_168;
  _MergedGlobals_168 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (FCContentManifest)initWithAssetURLs:(id)ls assetWrappingKeyIDs:(id)ds recordIDs:(id)iDs avAssetIDs:(id)assetIDs avAssetKeyIDs:(id)keyIDs
{
  lsCopy = ls;
  dsCopy = ds;
  iDsCopy = iDs;
  assetIDsCopy = assetIDs;
  keyIDsCopy = keyIDs;
  v29.receiver = self;
  v29.super_class = FCContentManifest;
  v17 = [(FCContentManifest *)&v29 init];
  if (v17)
  {
    v18 = [lsCopy copy];
    assetURLs = v17->_assetURLs;
    v17->_assetURLs = v18;

    v20 = [dsCopy copy];
    assetWrappingKeyIDs = v17->_assetWrappingKeyIDs;
    v17->_assetWrappingKeyIDs = v20;

    v22 = [iDsCopy copy];
    recordIDs = v17->_recordIDs;
    v17->_recordIDs = v22;

    v24 = [assetIDsCopy copy];
    avAssetIDs = v17->_avAssetIDs;
    v17->_avAssetIDs = v24;

    v26 = [keyIDsCopy copy];
    avAssetKeyIDs = v17->_avAssetKeyIDs;
    v17->_avAssetKeyIDs = v26;
  }

  return v17;
}

- (FCContentManifest)initWithManifests:(id)manifests
{
  selfCopy = self;
  v34 = *MEMORY[0x1E69E9840];
  manifestsCopy = manifests;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = [MEMORY[0x1E695DFA8] set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = manifestsCopy;
  v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        assetURLs = [v13 assetURLs];
        [v4 addObjectsFromArray:assetURLs];

        assetWrappingKeyIDs = [v13 assetWrappingKeyIDs];
        [v5 addObjectsFromArray:assetWrappingKeyIDs];

        recordIDs = [v13 recordIDs];
        [v6 addObjectsFromArray:recordIDs];

        avAssetIDs = [v13 avAssetIDs];
        [v7 addObjectsFromArray:avAssetIDs];

        avAssetKeyIDs = [v13 avAssetKeyIDs];
        [v8 addObjectsFromArray:avAssetKeyIDs];
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  allObjects = [v4 allObjects];
  allObjects2 = [v5 allObjects];
  allObjects3 = [v6 allObjects];
  allObjects4 = [v7 allObjects];
  allObjects5 = [v8 allObjects];
  v27 = [(FCContentManifest *)selfCopy initWithAssetURLs:allObjects assetWrappingKeyIDs:allObjects2 recordIDs:allObjects3 avAssetIDs:allObjects4 avAssetKeyIDs:allObjects5];

  v24 = *MEMORY[0x1E69E9840];
  return v27;
}

+ (id)manifestByMergingManifest:(id)manifest withManifest:(id)withManifest
{
  manifestCopy = manifest;
  withManifestCopy = withManifest;
  v8 = [self alloc];
  v9 = MEMORY[0x1E695DEC8];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __60__FCContentManifest_manifestByMergingManifest_withManifest___block_invoke;
  v18 = &unk_1E7C3B110;
  v19 = manifestCopy;
  v20 = withManifestCopy;
  v10 = withManifestCopy;
  v11 = manifestCopy;
  v12 = [v9 fc_array:&v15];
  v13 = [v8 initWithManifests:{v12, v15, v16, v17, v18}];

  return v13;
}

void __60__FCContentManifest_manifestByMergingManifest_withManifest___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 fc_safelyAddObject:v3];
  [v4 fc_safelyAddObject:*(a1 + 40)];
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  v4 = MEMORY[0x1E696AD98];
  assetURLs = [(FCContentManifest *)self assetURLs];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(assetURLs, "count")}];
  [(FCDescription *)v3 addField:@"assetURLs" object:v6];

  v7 = MEMORY[0x1E696AD98];
  assetWrappingKeyIDs = [(FCContentManifest *)self assetWrappingKeyIDs];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(assetWrappingKeyIDs, "count")}];
  [(FCDescription *)v3 addField:@"assetWrappingKeyIDs" object:v9];

  v10 = MEMORY[0x1E696AD98];
  recordIDs = [(FCContentManifest *)self recordIDs];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(recordIDs, "count")}];
  [(FCDescription *)v3 addField:@"recordIDs" object:v12];

  v13 = MEMORY[0x1E696AD98];
  avAssetIDs = [(FCContentManifest *)self avAssetIDs];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(avAssetIDs, "count")}];
  [(FCDescription *)v3 addField:@"avAssetIDs" object:v15];

  v16 = MEMORY[0x1E696AD98];
  avAssetKeyIDs = [(FCContentManifest *)self avAssetKeyIDs];
  v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(avAssetKeyIDs, "count")}];
  [(FCDescription *)v3 addField:@"avAssetKeyIDs" object:v18];

  descriptionString = [(FCDescription *)v3 descriptionString];

  return descriptionString;
}

- (id)debugDescription
{
  v3 = [[FCDescription alloc] initWithObject:self];
  assetURLs = [(FCContentManifest *)self assetURLs];
  v5 = FCCFArrayDescription(assetURLs);
  [(FCDescription *)v3 addField:@"assetURLs" object:v5];

  assetWrappingKeyIDs = [(FCContentManifest *)self assetWrappingKeyIDs];
  v7 = FCCFArrayDescription(assetWrappingKeyIDs);
  [(FCDescription *)v3 addField:@"assetWrappingKeyIDs" object:v7];

  recordIDs = [(FCContentManifest *)self recordIDs];
  v9 = FCCFArrayDescription(recordIDs);
  [(FCDescription *)v3 addField:@"recordIDs" object:v9];

  avAssetIDs = [(FCContentManifest *)self avAssetIDs];
  v11 = FCCFArrayDescription(avAssetIDs);
  [(FCDescription *)v3 addField:@"avAssetIDs" object:v11];

  avAssetKeyIDs = [(FCContentManifest *)self avAssetKeyIDs];
  v13 = FCCFArrayDescription(avAssetKeyIDs);
  [(FCDescription *)v3 addField:@"avAssetKeyIDs" object:v13];

  descriptionString = [(FCDescription *)v3 descriptionString];

  return descriptionString;
}

- (FCContentManifest)initWithCoder:(id)coder
{
  v4 = qword_1EDB274D0;
  coderCopy = coder;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB274D0, &__block_literal_global_21_1);
  }

  v6 = [coderCopy decodeObjectOfClasses:qword_1EDB274C8 forKey:@"assetURLs"];
  v7 = [coderCopy decodeObjectOfClasses:qword_1EDB274C8 forKey:@"assetWrappingKeyIDs"];
  v8 = [coderCopy decodeObjectOfClasses:qword_1EDB274C8 forKey:@"recordIDs"];
  v9 = [coderCopy decodeObjectOfClasses:qword_1EDB274C8 forKey:@"avAssetIDs"];
  v10 = [coderCopy decodeObjectOfClasses:qword_1EDB274C8 forKey:@"avAssetKeyIDs"];

  v11 = [(FCContentManifest *)self initWithAssetURLs:v6 assetWrappingKeyIDs:v7 recordIDs:v8 avAssetIDs:v9 avAssetKeyIDs:v10];
  return v11;
}

uint64_t __35__FCContentManifest_initWithCoder___block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = [v0 setWithObjects:{v1, v2, v3, objc_opt_class(), 0}];
  v5 = qword_1EDB274C8;
  qword_1EDB274C8 = v4;

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)encodeWithCoder:(id)coder
{
  assetURLs = self->_assetURLs;
  coderCopy = coder;
  [coderCopy encodeObject:assetURLs forKey:@"assetURLs"];
  [coderCopy encodeObject:self->_assetWrappingKeyIDs forKey:@"assetWrappingKeyIDs"];
  [coderCopy encodeObject:self->_recordIDs forKey:@"recordIDs"];
  [coderCopy encodeObject:self->_avAssetIDs forKey:@"avAssetIDs"];
  [coderCopy encodeObject:self->_avAssetKeyIDs forKey:@"avAssetKeyIDs"];
}

- (FCContentManifest)copyWithAssetsOnly
{
  v3 = [FCContentManifest alloc];
  assetURLs = [(FCContentManifest *)self assetURLs];
  assetWrappingKeyIDs = [(FCContentManifest *)self assetWrappingKeyIDs];
  avAssetIDs = [(FCContentManifest *)self avAssetIDs];
  avAssetKeyIDs = [(FCContentManifest *)self avAssetKeyIDs];
  v8 = [(FCContentManifest *)v3 initWithAssetURLs:assetURLs assetWrappingKeyIDs:assetWrappingKeyIDs recordIDs:MEMORY[0x1E695E0F0] avAssetIDs:avAssetIDs avAssetKeyIDs:avAssetKeyIDs];

  return v8;
}

@end