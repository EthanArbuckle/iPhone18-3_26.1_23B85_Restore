@interface CNUIImageProvider
+ (id)cacheKeyForImageResourceName:(id)name template:(BOOL)template;
+ (id)imageForResource:(id)resource template:(BOOL)template;
+ (id)imageForResource:(id)resource template:(BOOL)template onCacheMiss:(id)miss;
+ (id)uncachedImageForResource:(id)resource template:(BOOL)template;
@end

@implementation CNUIImageProvider

+ (id)imageForResource:(id)resource template:(BOOL)template onCacheMiss:(id)miss
{
  templateCopy = template;
  missCopy = miss;
  v9 = [self cacheKeyForImageResourceName:resource template:templateCopy];
  if (imageForResource_template_onCacheMiss__cn_once_token_1 != -1)
  {
    +[CNUIImageProvider imageForResource:template:onCacheMiss:];
  }

  v10 = imageForResource_template_onCacheMiss__cn_once_object_1;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__CNUIImageProvider_imageForResource_template_onCacheMiss___block_invoke_2;
  v15[3] = &unk_1E76EA4B0;
  v16 = missCopy;
  v11 = missCopy;
  v12 = v10;
  v13 = [v12 objectForKey:v9 onCacheMiss:v15];

  return v13;
}

uint64_t __59__CNUIImageProvider_imageForResource_template_onCacheMiss___block_invoke()
{
  imageForResource_template_onCacheMiss__cn_once_object_1 = [MEMORY[0x1E6996660] atomicCache];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)imageForResource:(id)resource template:(BOOL)template
{
  templateCopy = template;
  resourceCopy = resource;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__CNUIImageProvider_imageForResource_template___block_invoke;
  v10[3] = &unk_1E76EA4D8;
  v11 = resourceCopy;
  selfCopy = self;
  v13 = templateCopy;
  v7 = resourceCopy;
  v8 = [self imageForResource:v7 template:templateCopy onCacheMiss:v10];

  return v8;
}

+ (id)uncachedImageForResource:(id)resource template:(BOOL)template
{
  templateCopy = template;
  resourceCopy = resource;
  v6 = NSClassFromString(&cfstr_Uiimage.isa);
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [(objc_class *)v6 imageNamed:resourceCopy inBundle:v7 compatibleWithTraitCollection:0];

  if (templateCopy)
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

+ (id)cacheKeyForImageResourceName:(id)name template:(BOOL)template
{
  templateCopy = template;
  nameCopy = name;
  v6 = nameCopy;
  v7 = nameCopy;
  if (templateCopy)
  {
    v7 = [nameCopy stringByAppendingString:@"_template"];
  }

  return v7;
}

@end