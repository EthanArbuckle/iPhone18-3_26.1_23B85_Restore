@interface UIDocumentInteractionController(SFManagedSourceSupport)
+ (id)sf_interactionControllerWithDocumentURL:()SFManagedSourceSupport sourceURL:;
@end

@implementation UIDocumentInteractionController(SFManagedSourceSupport)

+ (id)sf_interactionControllerWithDocumentURL:()SFManagedSourceSupport sourceURL:
{
  v5 = a4;
  v6 = [MEMORY[0x1E69CDA18] interactionControllerWithURL:a3];
  if (v6)
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    safari_URLByNormalizingBlobURL = [v5 safari_URLByNormalizingBlobURL];
    [v6 setSourceIsManaged:{objc_msgSend(mEMORY[0x1E69ADFB8], "isURLManaged:", safari_URLByNormalizingBlobURL)}];

    v9 = v6;
  }

  return v6;
}

@end