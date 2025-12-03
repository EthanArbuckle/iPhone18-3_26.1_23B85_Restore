@interface CNUIPRLikenessSwiftUIAvatarProvider
- (CGImage)_cnui_imageForScope:(id)scope;
- (CGImage)_cnui_imageForSize:(CGSize)size scale:(double)scale;
- (CNUIPRLikenessSwiftUIAvatarProvider)initWithCNContact:(id)contact;
- (id)_cnui_likenessForSize:(CGSize)size scale:(double)scale;
@end

@implementation CNUIPRLikenessSwiftUIAvatarProvider

- (CNUIPRLikenessSwiftUIAvatarProvider)initWithCNContact:(id)contact
{
  contactCopy = contact;
  v12.receiver = self;
  v12.super_class = CNUIPRLikenessSwiftUIAvatarProvider;
  v6 = [(CNUIPRLikenessSwiftUIAvatarProvider *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, contact);
    atomicCache = [MEMORY[0x1E6996660] atomicCache];
    cache = v7->_cache;
    v7->_cache = atomicCache;

    v10 = v7;
  }

  return v7;
}

- (CGImage)_cnui_imageForScope:(id)scope
{
  scopeCopy = scope;
  v5 = MEMORY[0x1E696AEC0];
  [scopeCopy pointSize];
  v6 = NSStringFromSize(v14);
  v7 = [v5 stringWithFormat:@"%@", v6];

  cache = self->_cache;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__CNUIPRLikenessSwiftUIAvatarProvider__cnui_imageForScope___block_invoke;
  v12[3] = &unk_1E76E9B00;
  v12[4] = self;
  v13 = scopeCopy;
  v9 = scopeCopy;
  v10 = [(CNCache *)cache objectForKey:v7 onCacheMiss:v12];

  if (v10)
  {
    v10 = CFAutorelease(v10);
  }

  return v10;
}

- (CGImage)_cnui_imageForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v8 = MEMORY[0x1E696AEC0];
  v9 = NSStringFromSize(size);
  v10 = [v8 stringWithFormat:@"%@", v9];

  cache = self->_cache;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__CNUIPRLikenessSwiftUIAvatarProvider__cnui_imageForSize_scale___block_invoke;
  v15[3] = &unk_1E76E85A8;
  *&v15[5] = width;
  *&v15[6] = height;
  *&v15[7] = scale;
  v15[4] = self;
  v12 = [(CNCache *)cache objectForKey:v10 onCacheMiss:v15];
  if (v12)
  {
    v13 = CFAutorelease(v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id __64__CNUIPRLikenessSwiftUIAvatarProvider__cnui_imageForSize_scale___block_invoke(uint64_t a1)
{
  v2 = [CNUILikenessRenderingScope renderingScopeWithPointSize:0 scale:0 rightToLeft:0 style:*(a1 + 40) color:*(a1 + 48), *(a1 + 56)];
  v3 = [_TtC14ContactsUICore36CNAvatarViewSnapshotter_SwiftWrapper renderImmediateSnapshotWithContact:*(*(a1 + 32) + 8) scope:v2];

  return v3;
}

- (id)_cnui_likenessForSize:(CGSize)size scale:(double)scale
{
  v4 = MEMORY[0x1E69BDC38];
  scale = [(CNUIPRLikenessSwiftUIAvatarProvider *)self _cnui_imageForSize:size.width scale:size.height, scale];

  return [v4 photoWithImage:scale];
}

@end