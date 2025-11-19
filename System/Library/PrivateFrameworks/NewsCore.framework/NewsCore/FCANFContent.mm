@interface FCANFContent
- (BOOL)isANFDocumentCached;
- (FCANFContent)initWithIdentifier:(id)a3 mainDocumentAssetHandle:(id)a4 fontResourceIDs:(id)a5;
- (NSArray)anfDocumentAssetHandles;
- (id)fetchANFDocumentDataProviderWithPriority:(int64_t)a3 completion:(id)a4;
@end

@implementation FCANFContent

- (FCANFContent)initWithIdentifier:(id)a3 mainDocumentAssetHandle:(id)a4 fontResourceIDs:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = FCANFContent;
  v11 = [(FCANFContent *)&v18 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_mainDocumentAssetHandle, a4);
    v14 = [v10 copy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v11->_fontResourceIDs, v16);
  }

  return v11;
}

- (NSArray)anfDocumentAssetHandles
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__FCANFContent_anfDocumentAssetHandles__block_invoke;
  v4[3] = &unk_1E7C36D40;
  v4[4] = self;
  v2 = [MEMORY[0x1E695DEC8] fc_array:v4];

  return v2;
}

void __39__FCANFContent_anfDocumentAssetHandles__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 mainDocumentAssetHandle];
  [v3 fc_safelyAddObject:v4];
}

- (BOOL)isANFDocumentCached
{
  v2 = [(FCANFContent *)self mainDocumentAssetHandle];
  v3 = [v2 dataProvider];
  v4 = v3 != 0;

  return v4;
}

- (id)fetchANFDocumentDataProviderWithPriority:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(FCANFContent *)self mainDocumentAssetHandle];

  if (v7)
  {
    v8 = [(FCANFContent *)self mainDocumentAssetHandle];
    v9 = [v8 fetchDataProviderWithPriority:a3 flags:0 completion:v6];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__FCANFContent_fetchANFDocumentDataProviderWithPriority_completion___block_invoke;
    v11[3] = &unk_1E7C41A70;
    v11[4] = self;
    v12 = v6;
    v9 = __68__FCANFContent_fetchANFDocumentDataProviderWithPriority_completion___block_invoke(v11);
  }

  return v9;
}

uint64_t __68__FCANFContent_fetchANFDocumentDataProviderWithPriority_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__FCANFContent_fetchANFDocumentDataProviderWithPriority_completion___block_invoke_2;
    v6[3] = &unk_1E7C37778;
    v4 = v1;
    v6[4] = *(a1 + 32);
    v7 = v4;
    dispatch_async(v3, v6);
  }

  return 0;
}

void __68__FCANFContent_fetchANFDocumentDataProviderWithPriority_completion___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E696ABC0];
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) identifier];
  v3 = [v1 fc_missingANFDocumentErrorForArticleID:v4];
  (*(v2 + 16))(v2, 0, v3);
}

@end