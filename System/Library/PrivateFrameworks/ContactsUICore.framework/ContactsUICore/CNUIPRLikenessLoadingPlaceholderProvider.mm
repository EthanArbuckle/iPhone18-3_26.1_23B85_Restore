@interface CNUIPRLikenessLoadingPlaceholderProvider
- (CGImage)_cnui_circularImageForSize:(CGSize)size scale:(double)scale;
- (CGImage)_cnui_roundedRectImageForSize:(CGSize)size scale:(double)scale;
- (CGImage)renderCircularImageForSize:(CGSize)size scale:(double)scale;
- (CGImage)renderRoundedRectImageForSize:(CGSize)size scale:(double)scale;
- (CNUIPRLikenessLoadingPlaceholderProvider)init;
- (id)_cnui_likenessForSize:(CGSize)size scale:(double)scale;
@end

@implementation CNUIPRLikenessLoadingPlaceholderProvider

- (CNUIPRLikenessLoadingPlaceholderProvider)init
{
  v9.receiver = self;
  v9.super_class = CNUIPRLikenessLoadingPlaceholderProvider;
  v2 = [(CNUIPRLikenessLoadingPlaceholderProvider *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6996818] synchronousSerialDispatchQueueWithName:@"com.apple.contacts.ContactsUICore.CNUIPRLikenessLoadingPlaceholderProvider"];
    resourceLock = v2->_resourceLock;
    v2->_resourceLock = v3;

    v5 = objc_alloc_init(MEMORY[0x1E6996660]);
    cache = v2->_cache;
    v2->_cache = v5;

    v7 = v2;
  }

  return v2;
}

- (CGImage)renderCircularImageForSize:(CGSize)size scale:(double)scale
{
  result = CNUICircularImageCreate(&__block_literal_global_65, size.width, size.height, scale);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

- (CGImage)renderRoundedRectImageForSize:(CGSize)size scale:(double)scale
{
  result = CNUIRoundedRectImageCreate(&__block_literal_global_4_2, size.width, size.height, scale);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

- (CGImage)_cnui_circularImageForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v8 = MEMORY[0x1E696AEC0];
  v9 = NSStringFromSize(size);
  v10 = [v8 stringWithFormat:@"%@-Circular", v9];

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  resourceLock = [(CNUIPRLikenessLoadingPlaceholderProvider *)self resourceLock];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__CNUIPRLikenessLoadingPlaceholderProvider__cnui_circularImageForSize_scale___block_invoke;
  v16[3] = &unk_1E76E9F40;
  v18 = &v22;
  v16[4] = self;
  v12 = v10;
  v17 = v12;
  v19 = width;
  v20 = height;
  scaleCopy = scale;
  [resourceLock performBlock:v16];

  v13 = v23[3];
  if (v13)
  {
    v14 = CFAutorelease(v13);
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v22, 8);
  return v14;
}

void __77__CNUIPRLikenessLoadingPlaceholderProvider__cnui_circularImageForSize_scale___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cache];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__CNUIPRLikenessLoadingPlaceholderProvider__cnui_circularImageForSize_scale___block_invoke_2;
  v5[3] = &unk_1E76E85A8;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  v4 = [v2 objectForKey:v3 onCacheMiss:v5];
  *(*(*(a1 + 48) + 8) + 24) = v4;
}

- (CGImage)_cnui_roundedRectImageForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v8 = MEMORY[0x1E696AEC0];
  v9 = NSStringFromSize(size);
  v10 = [v8 stringWithFormat:@"%@-RoundedRect", v9];

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  resourceLock = [(CNUIPRLikenessLoadingPlaceholderProvider *)self resourceLock];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__CNUIPRLikenessLoadingPlaceholderProvider__cnui_roundedRectImageForSize_scale___block_invoke;
  v16[3] = &unk_1E76E9F40;
  v18 = &v22;
  v16[4] = self;
  v12 = v10;
  v17 = v12;
  v19 = width;
  v20 = height;
  scaleCopy = scale;
  [resourceLock performBlock:v16];

  v13 = v23[3];
  if (v13)
  {
    v14 = CFAutorelease(v13);
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v22, 8);
  return v14;
}

void __80__CNUIPRLikenessLoadingPlaceholderProvider__cnui_roundedRectImageForSize_scale___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cache];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__CNUIPRLikenessLoadingPlaceholderProvider__cnui_roundedRectImageForSize_scale___block_invoke_2;
  v5[3] = &unk_1E76E85A8;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  v4 = [v2 objectForKey:v3 onCacheMiss:v5];
  *(*(*(a1 + 48) + 8) + 24) = v4;
}

- (id)_cnui_likenessForSize:(CGSize)size scale:(double)scale
{
  scale = [(CNUIPRLikenessLoadingPlaceholderProvider *)self _cnui_circularImageForSize:size.width scale:size.height, scale];
  v5 = MEMORY[0x1E69BDC38];

  return [v5 photoWithScope:2 image:scale];
}

@end