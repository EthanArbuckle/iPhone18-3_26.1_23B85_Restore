@interface UIDocumentPickerViewController(SFManagedSourceSupport)
+ (id)sf_documentPickerViewControllerWithURL:()SFManagedSourceSupport inMode:sourceURL:;
@end

@implementation UIDocumentPickerViewController(SFManagedSourceSupport)

+ (id)sf_documentPickerViewControllerWithURL:()SFManagedSourceSupport inMode:sourceURL:
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc(MEMORY[0x1E69DC968]);
  v16[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v11 = [v9 initWithURLs:v10 inMode:a4];

  if (v11)
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    safari_URLByNormalizingBlobURL = [v8 safari_URLByNormalizingBlobURL];
    [v11 _setIsContentManaged:{objc_msgSend(mEMORY[0x1E69ADFB8], "isURLManaged:", safari_URLByNormalizingBlobURL)}];

    v14 = v11;
  }

  return v11;
}

@end