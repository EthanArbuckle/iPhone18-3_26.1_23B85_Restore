@interface HKIconServicesImage
+ (id)createImageFromIcon:(id)icon withDescriptor:(id)descriptor;
+ (void)fetchIconForBundleIdentifier:(id)identifier imageDescriptor:(id)descriptor completion:(id)completion;
+ (void)fetchIconForUTTypeIdentifier:(id)identifier imageDescriptor:(id)descriptor completion:(id)completion;
@end

@implementation HKIconServicesImage

+ (id)createImageFromIcon:(id)icon withDescriptor:(id)descriptor
{
  iconCopy = icon;
  descriptorCopy = descriptor;
  v7 = descriptorCopy;
  if (descriptorCopy)
  {
    v8 = descriptorCopy;
  }

  else
  {
    v8 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8AA0]];
  }

  v9 = v8;
  v10 = [iconCopy prepareImageForDescriptor:v8];
  v11 = v10;
  if (v10)
  {
    v12 = MEMORY[0x1E69DCAB8];
    cGImage = [v10 CGImage];
    [v11 scale];
    v14 = [v12 imageWithCGImage:cGImage scale:0 orientation:?];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)fetchIconForUTTypeIdentifier:(id)identifier imageDescriptor:(id)descriptor completion:(id)completion
{
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  completionCopy = completion;
  v11 = dispatch_get_global_queue(25, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__HKIconServicesImage_fetchIconForUTTypeIdentifier_imageDescriptor_completion___block_invoke;
  v15[3] = &unk_1E81B7AB0;
  v16 = identifierCopy;
  v17 = descriptorCopy;
  v18 = completionCopy;
  selfCopy = self;
  v12 = completionCopy;
  v13 = descriptorCopy;
  v14 = identifierCopy;
  dispatch_async(v11, v15);
}

void __79__HKIconServicesImage_fetchIconForUTTypeIdentifier_imageDescriptor_completion___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithType:*(a1 + 32)];
  v3 = [*(a1 + 56) createImageFromIcon:v2 withDescriptor:*(a1 + 40)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__HKIconServicesImage_fetchIconForUTTypeIdentifier_imageDescriptor_completion___block_invoke_2;
  v6[3] = &unk_1E81B6A60;
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __79__HKIconServicesImage_fetchIconForUTTypeIdentifier_imageDescriptor_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

+ (void)fetchIconForBundleIdentifier:(id)identifier imageDescriptor:(id)descriptor completion:(id)completion
{
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  completionCopy = completion;
  v11 = dispatch_get_global_queue(25, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__HKIconServicesImage_fetchIconForBundleIdentifier_imageDescriptor_completion___block_invoke;
  v15[3] = &unk_1E81B7AB0;
  v16 = identifierCopy;
  v17 = descriptorCopy;
  v18 = completionCopy;
  selfCopy = self;
  v12 = completionCopy;
  v13 = descriptorCopy;
  v14 = identifierCopy;
  dispatch_async(v11, v15);
}

void __79__HKIconServicesImage_fetchIconForBundleIdentifier_imageDescriptor_completion___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:*(a1 + 32)];
  v3 = [*(a1 + 56) createImageFromIcon:v2 withDescriptor:*(a1 + 40)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__HKIconServicesImage_fetchIconForBundleIdentifier_imageDescriptor_completion___block_invoke_2;
  v6[3] = &unk_1E81B6A60;
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __79__HKIconServicesImage_fetchIconForBundleIdentifier_imageDescriptor_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

@end