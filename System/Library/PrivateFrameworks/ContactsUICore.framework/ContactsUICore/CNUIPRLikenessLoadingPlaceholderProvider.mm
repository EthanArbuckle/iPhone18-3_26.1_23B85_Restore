@interface CNUIPRLikenessLoadingPlaceholderProvider
- (CGImage)_cnui_circularImageForSize:(CGSize)a3 scale:(double)a4;
- (CGImage)_cnui_roundedRectImageForSize:(CGSize)a3 scale:(double)a4;
- (CGImage)renderCircularImageForSize:(CGSize)a3 scale:(double)a4;
- (CGImage)renderRoundedRectImageForSize:(CGSize)a3 scale:(double)a4;
- (CNUIPRLikenessLoadingPlaceholderProvider)init;
- (id)_cnui_likenessForSize:(CGSize)a3 scale:(double)a4;
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

- (CGImage)renderCircularImageForSize:(CGSize)a3 scale:(double)a4
{
  result = CNUICircularImageCreate(&__block_literal_global_65, a3.width, a3.height, a4);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

- (CGImage)renderRoundedRectImageForSize:(CGSize)a3 scale:(double)a4
{
  result = CNUIRoundedRectImageCreate(&__block_literal_global_4_2, a3.width, a3.height, a4);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

- (CGImage)_cnui_circularImageForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = MEMORY[0x1E696AEC0];
  v9 = NSStringFromSize(a3);
  v10 = [v8 stringWithFormat:@"%@-Circular", v9];

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v11 = [(CNUIPRLikenessLoadingPlaceholderProvider *)self resourceLock];
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
  v21 = a4;
  [v11 performBlock:v16];

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

- (CGImage)_cnui_roundedRectImageForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = MEMORY[0x1E696AEC0];
  v9 = NSStringFromSize(a3);
  v10 = [v8 stringWithFormat:@"%@-RoundedRect", v9];

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v11 = [(CNUIPRLikenessLoadingPlaceholderProvider *)self resourceLock];
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
  v21 = a4;
  [v11 performBlock:v16];

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

- (id)_cnui_likenessForSize:(CGSize)a3 scale:(double)a4
{
  v4 = [(CNUIPRLikenessLoadingPlaceholderProvider *)self _cnui_circularImageForSize:a3.width scale:a3.height, a4];
  v5 = MEMORY[0x1E69BDC38];

  return [v5 photoWithScope:2 image:v4];
}

@end