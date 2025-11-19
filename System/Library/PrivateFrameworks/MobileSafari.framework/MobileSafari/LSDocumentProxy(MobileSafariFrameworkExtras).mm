@interface LSDocumentProxy(MobileSafariFrameworkExtras)
+ (id)sf_documentProxyForName:()MobileSafariFrameworkExtras type:MIMEType:sourceURL:;
@end

@implementation LSDocumentProxy(MobileSafariFrameworkExtras)

+ (id)sf_documentProxyForName:()MobileSafariFrameworkExtras type:MIMEType:sourceURL:
{
  v9 = MEMORY[0x1E6963658];
  v10 = MEMORY[0x1E69ADFB8];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 sharedConnection];
  v16 = [v11 safari_URLByNormalizingBlobURL];

  v17 = [v9 documentProxyForName:v14 type:v13 MIMEType:v12 sourceIsManaged:{objc_msgSend(v15, "isURLManaged:", v16)}];

  return v17;
}

@end