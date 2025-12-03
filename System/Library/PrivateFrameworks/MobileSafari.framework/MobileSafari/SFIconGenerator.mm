@interface SFIconGenerator
+ (id)appIconForBundleIdentifier:(id)identifier imageSize:(CGSize)size;
+ (void)getAppIconForBundleIdentifier:(id)identifier imageDescriptor:(id)descriptor resultHandler:(id)handler;
@end

@implementation SFIconGenerator

+ (void)getAppIconForBundleIdentifier:(id)identifier imageDescriptor:(id)descriptor resultHandler:(id)handler
{
  descriptorCopy = descriptor;
  handlerCopy = handler;
  v9 = MEMORY[0x1E69A8A00];
  identifierCopy = identifier;
  v11 = [[v9 alloc] initWithBundleIdentifier:identifierCopy];

  v12 = [v11 imageForDescriptor:descriptorCopy];
  if ([v12 placeholder])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __79__SFIconGenerator_getAppIconForBundleIdentifier_imageDescriptor_resultHandler___block_invoke;
    v14[3] = &unk_1E721C310;
    v15 = handlerCopy;
    [v11 getImageForImageDescriptor:descriptorCopy completion:v14];
  }

  else
  {
    v13 = uiImageFromISImage(v12);
    (*(handlerCopy + 2))(handlerCopy, v13);
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

+ (id)appIconForBundleIdentifier:(id)identifier imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = MEMORY[0x1E69A8A00];
  identifierCopy = identifier;
  v8 = [[v6 alloc] initWithBundleIdentifier:identifierCopy];

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