@interface SFIconGenerator
+ (id)appIconForBundleIdentifier:(id)a3 imageSize:(CGSize)a4;
+ (void)getAppIconForBundleIdentifier:(id)a3 imageDescriptor:(id)a4 resultHandler:(id)a5;
@end

@implementation SFIconGenerator

+ (void)getAppIconForBundleIdentifier:(id)a3 imageDescriptor:(id)a4 resultHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x1E69A8A00];
  v10 = a3;
  v11 = [[v9 alloc] initWithBundleIdentifier:v10];

  v12 = [v11 imageForDescriptor:v7];
  if ([v12 placeholder])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __79__SFIconGenerator_getAppIconForBundleIdentifier_imageDescriptor_resultHandler___block_invoke;
    v14[3] = &unk_1E721C310;
    v15 = v8;
    [v11 getImageForImageDescriptor:v7 completion:v14];
  }

  else
  {
    v13 = uiImageFromISImage(v12);
    (*(v8 + 2))(v8, v13);
  }
}

void __79__SFIconGenerator_getAppIconForBundleIdentifier_imageDescriptor_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 placeholder] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = uiImageFromISImage(v5);
    (*(v3 + 16))(v3, v4);
  }
}

+ (id)appIconForBundleIdentifier:(id)a3 imageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = MEMORY[0x1E69A8A00];
  v7 = a3;
  v8 = [[v6 alloc] initWithBundleIdentifier:v7];

  v9 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:width scale:{height, _SFScreenScale()}];
  v10 = [v8 prepareImageForDescriptor:v9];
  if ([v10 placeholder])
  {
    v11 = 0;
  }

  else
  {
    v11 = uiImageFromISImage(v10);
  }

  return v11;
}

@end