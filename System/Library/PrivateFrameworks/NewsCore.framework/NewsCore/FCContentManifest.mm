@interface FCContentManifest
+ (FCContentManifest)empty;
+ (id)manifestByMergingManifest:(id)a3 withManifest:(id)a4;
- (FCContentManifest)copyWithAssetsOnly;
- (FCContentManifest)initWithAssetURLs:(id)a3 assetWrappingKeyIDs:(id)a4 recordIDs:(id)a5 avAssetIDs:(id)a6 avAssetKeyIDs:(id)a7;
- (FCContentManifest)initWithCoder:(id)a3;
- (FCContentManifest)initWithManifests:(id)a3;
- (NSArray)avAssetKeyURIs;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCContentManifest

- (NSArray)avAssetKeyURIs
{
  v2 = [(FCContentManifest *)self avAssetKeyIDs];
  v3 = [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_84];

  return v3;
}

+ (FCContentManifest)empty
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__FCContentManifest_empty__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (FCContentManifest)initWithAssetURLs:(id)a3 assetWrappingKeyIDs:(id)a4 recordIDs:(id)a5 avAssetIDs:(id)a6 avAssetKeyIDs:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = FCContentManifest;
  v17 = [(FCContentManifest *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    assetURLs = v17->_assetURLs;
    v17->_assetURLs = v18;

    v20 = [v13 copy];
    assetWrappingKeyIDs = v17->_assetWrappingKeyIDs;
    v17->_assetWrappingKeyIDs = v20;

    v22 = [v14 copy];
    recordIDs = v17->_recordIDs;
    v17->_recordIDs = v22;

    v24 = [v15 copy];
    avAssetIDs = v17->_avAssetIDs;
    v17->_avAssetIDs = v24;

    v26 = [v16 copy];
    avAssetKeyIDs = v17->_avAssetKeyIDs;
    v17->_avAssetKeyIDs = v26;
  }

  return v17;
}

- (FCContentManifest)initWithManifests:(id)a3
{
  v26 = self;
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = [MEMORY[0x1E695DFA8] set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v3;
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
        v14 = [v13 assetURLs];
        [v4 addObjectsFromArray:v14];

        v15 = [v13 assetWrappingKeyIDs];
        [v5 addObjectsFromArray:v15];

        v16 = [v13 recordIDs];
        [v6 addObjectsFromArray:v16];

        v17 = [v13 avAssetIDs];
        [v7 addObjectsFromArray:v17];

        v18 = [v13 avAssetKeyIDs];
        [v8 addObjectsFromArray:v18];
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  v19 = [v4 allObjects];
  v20 = [v5 allObjects];
  v21 = [v6 allObjects];
  v22 = [v7 allObjects];
  v23 = [v8 allObjects];
  v27 = [(FCContentManifest *)v26 initWithAssetURLs:v19 assetWrappingKeyIDs:v20 recordIDs:v21 avAssetIDs:v22 avAssetKeyIDs:v23];

  v24 = *MEMORY[0x1E69E9840];
  return v27;
}

+ (id)manifestByMergingManifest:(id)a3 withManifest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v9 = MEMORY[0x1E695DEC8];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __60__FCContentManifest_manifestByMergingManifest_withManifest___block_invoke;
  v18 = &unk_1E7C3B110;
  v19 = v6;
  v20 = v7;
  v10 = v7;
  v11 = v6;
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
  v5 = [(FCContentManifest *)self assetURLs];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  [(FCDescription *)v3 addField:@"assetURLs" object:v6];

  v7 = MEMORY[0x1E696AD98];
  v8 = [(FCContentManifest *)self assetWrappingKeyIDs];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
  [(FCDescription *)v3 addField:@"assetWrappingKeyIDs" object:v9];

  v10 = MEMORY[0x1E696AD98];
  v11 = [(FCContentManifest *)self recordIDs];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
  [(FCDescription *)v3 addField:@"recordIDs" object:v12];

  v13 = MEMORY[0x1E696AD98];
  v14 = [(FCContentManifest *)self avAssetIDs];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
  [(FCDescription *)v3 addField:@"avAssetIDs" object:v15];

  v16 = MEMORY[0x1E696AD98];
  v17 = [(FCContentManifest *)self avAssetKeyIDs];
  v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
  [(FCDescription *)v3 addField:@"avAssetKeyIDs" object:v18];

  v19 = [(FCDescription *)v3 descriptionString];

  return v19;
}

- (id)debugDescription
{
  v3 = [[FCDescription alloc] initWithObject:self];
  v4 = [(FCContentManifest *)self assetURLs];
  v5 = FCCFArrayDescription(v4);
  [(FCDescription *)v3 addField:@"assetURLs" object:v5];

  v6 = [(FCContentManifest *)self assetWrappingKeyIDs];
  v7 = FCCFArrayDescription(v6);
  [(FCDescription *)v3 addField:@"assetWrappingKeyIDs" object:v7];

  v8 = [(FCContentManifest *)self recordIDs];
  v9 = FCCFArrayDescription(v8);
  [(FCDescription *)v3 addField:@"recordIDs" object:v9];

  v10 = [(FCContentManifest *)self avAssetIDs];
  v11 = FCCFArrayDescription(v10);
  [(FCDescription *)v3 addField:@"avAssetIDs" object:v11];

  v12 = [(FCContentManifest *)self avAssetKeyIDs];
  v13 = FCCFArrayDescription(v12);
  [(FCDescription *)v3 addField:@"avAssetKeyIDs" object:v13];

  v14 = [(FCDescription *)v3 descriptionString];

  return v14;
}

- (FCContentManifest)initWithCoder:(id)a3
{
  v4 = qword_1EDB274D0;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&qword_1EDB274D0, &__block_literal_global_21_1);
  }

  v6 = [v5 decodeObjectOfClasses:qword_1EDB274C8 forKey:@"assetURLs"];
  v7 = [v5 decodeObjectOfClasses:qword_1EDB274C8 forKey:@"assetWrappingKeyIDs"];
  v8 = [v5 decodeObjectOfClasses:qword_1EDB274C8 forKey:@"recordIDs"];
  v9 = [v5 decodeObjectOfClasses:qword_1EDB274C8 forKey:@"avAssetIDs"];
  v10 = [v5 decodeObjectOfClasses:qword_1EDB274C8 forKey:@"avAssetKeyIDs"];

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

- (void)encodeWithCoder:(id)a3
{
  assetURLs = self->_assetURLs;
  v5 = a3;
  [v5 encodeObject:assetURLs forKey:@"assetURLs"];
  [v5 encodeObject:self->_assetWrappingKeyIDs forKey:@"assetWrappingKeyIDs"];
  [v5 encodeObject:self->_recordIDs forKey:@"recordIDs"];
  [v5 encodeObject:self->_avAssetIDs forKey:@"avAssetIDs"];
  [v5 encodeObject:self->_avAssetKeyIDs forKey:@"avAssetKeyIDs"];
}

- (FCContentManifest)copyWithAssetsOnly
{
  v3 = [FCContentManifest alloc];
  v4 = [(FCContentManifest *)self assetURLs];
  v5 = [(FCContentManifest *)self assetWrappingKeyIDs];
  v6 = [(FCContentManifest *)self avAssetIDs];
  v7 = [(FCContentManifest *)self avAssetKeyIDs];
  v8 = [(FCContentManifest *)v3 initWithAssetURLs:v4 assetWrappingKeyIDs:v5 recordIDs:MEMORY[0x1E695E0F0] avAssetIDs:v6 avAssetKeyIDs:v7];

  return v8;
}

@end