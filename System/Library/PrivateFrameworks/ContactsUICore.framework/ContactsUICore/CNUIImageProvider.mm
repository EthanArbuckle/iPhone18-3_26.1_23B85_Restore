@interface CNUIImageProvider
+ (id)cacheKeyForImageResourceName:(id)a3 template:(BOOL)a4;
+ (id)imageForResource:(id)a3 template:(BOOL)a4;
+ (id)imageForResource:(id)a3 template:(BOOL)a4 onCacheMiss:(id)a5;
+ (id)uncachedImageForResource:(id)a3 template:(BOOL)a4;
@end

@implementation CNUIImageProvider

+ (id)imageForResource:(id)a3 template:(BOOL)a4 onCacheMiss:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [a1 cacheKeyForImageResourceName:a3 template:v5];
  if (imageForResource_template_onCacheMiss__cn_once_token_1 != -1)
  {
    +[CNUIImageProvider imageForResource:template:onCacheMiss:];
  }

  v10 = imageForResource_template_onCacheMiss__cn_once_object_1;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__CNUIImageProvider_imageForResource_template_onCacheMiss___block_invoke_2;
  v15[3] = &unk_1E76EA4B0;
  v16 = v8;
  v11 = v8;
  v12 = v10;
  v13 = [v12 objectForKey:v9 onCacheMiss:v15];

  return v13;
}

uint64_t __59__CNUIImageProvider_imageForResource_template_onCacheMiss___block_invoke()
{
  imageForResource_template_onCacheMiss__cn_once_object_1 = [MEMORY[0x1E6996660] atomicCache];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)imageForResource:(id)a3 template:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__CNUIImageProvider_imageForResource_template___block_invoke;
  v10[3] = &unk_1E76EA4D8;
  v11 = v6;
  v12 = a1;
  v13 = v4;
  v7 = v6;
  v8 = [a1 imageForResource:v7 template:v4 onCacheMiss:v10];

  return v8;
}

+ (id)uncachedImageForResource:(id)a3 template:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = NSClassFromString(&cfstr_Uiimage.isa);
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [(objc_class *)v6 imageNamed:v5 inBundle:v7 compatibleWithTraitCollection:0];

  if (v4)
  {
    objc_opt_class();
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v8 = [v11 imageWithRenderingMode:2];
  }

  return v8;
}

+ (id)cacheKeyForImageResourceName:(id)a3 template:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  v7 = v5;
  if (v4)
  {
    v7 = [v5 stringByAppendingString:@"_template"];
  }

  return v7;
}

@end