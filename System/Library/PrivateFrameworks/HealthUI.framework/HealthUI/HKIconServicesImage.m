@interface HKIconServicesImage
+ (id)createImageFromIcon:(id)a3 withDescriptor:(id)a4;
+ (void)fetchIconForBundleIdentifier:(id)a3 imageDescriptor:(id)a4 completion:(id)a5;
+ (void)fetchIconForUTTypeIdentifier:(id)a3 imageDescriptor:(id)a4 completion:(id)a5;
@end

@implementation HKIconServicesImage

+ (id)createImageFromIcon:(id)a3 withDescriptor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8AA0]];
  }

  v9 = v8;
  v10 = [v5 prepareImageForDescriptor:v8];
  v11 = v10;
  if (v10)
  {
    v12 = MEMORY[0x1E69DCAB8];
    v13 = [v10 CGImage];
    [v11 scale];
    v14 = [v12 imageWithCGImage:v13 scale:0 orientation:?];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)fetchIconForUTTypeIdentifier:(id)a3 imageDescriptor:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(25, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__HKIconServicesImage_fetchIconForUTTypeIdentifier_imageDescriptor_completion___block_invoke;
  v15[3] = &unk_1E81B7AB0;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = a1;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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

+ (void)fetchIconForBundleIdentifier:(id)a3 imageDescriptor:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(25, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__HKIconServicesImage_fetchIconForBundleIdentifier_imageDescriptor_completion___block_invoke;
  v15[3] = &unk_1E81B7AB0;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = a1;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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