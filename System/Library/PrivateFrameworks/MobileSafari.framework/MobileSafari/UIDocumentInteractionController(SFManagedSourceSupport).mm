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
    v7 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v8 = [v5 safari_URLByNormalizingBlobURL];
    [v6 setSourceIsManaged:{objc_msgSend(v7, "isURLManaged:", v8)}];

    v9 = v6;
  }

  return v6;
}

@end