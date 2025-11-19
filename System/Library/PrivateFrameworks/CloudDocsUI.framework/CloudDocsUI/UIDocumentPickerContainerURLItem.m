@interface UIDocumentPickerContainerURLItem
@end

@implementation UIDocumentPickerContainerURLItem

void __48___UIDocumentPickerContainerURLItem_cacheValues__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeCachedValues];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;

  v5 = [*(a1 + 48) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 112);
  *(v6 + 112) = v5;

  v8 = [*(a1 + 56) copy];
  v9 = *(a1 + 32);
  v10 = *(v9 + 120);
  *(v9 + 120) = v8;

  v11 = [*(a1 + 64) copy];
  v12 = *(a1 + 32);
  v13 = *(v12 + 128);
  *(v12 + 128) = v11;

  *(*(a1 + 32) + 96) = *(a1 + 96);
  v14 = [*(a1 + 72) copy];
  v15 = *(a1 + 32);
  v16 = *(v15 + 152);
  *(v15 + 152) = v14;

  v17 = [*(a1 + 80) copy];
  v18 = *(a1 + 32);
  v19 = *(v18 + 160);
  *(v18 + 160) = v17;

  v20 = [*(a1 + 88) copy];
  v21 = *(a1 + 32);
  v22 = *(v21 + 176);
  *(v21 + 176) = v20;

  *(*(a1 + 32) + 168) = *(a1 + 104);
}

@end