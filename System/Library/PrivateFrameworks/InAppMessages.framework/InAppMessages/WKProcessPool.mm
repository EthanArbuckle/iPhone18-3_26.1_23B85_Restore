@interface WKProcessPool
@end

@implementation WKProcessPool

void __51__WKProcessPool_IAMMessages__webContentProcessPool__block_invoke()
{
  v5 = objc_alloc_init(MEMORY[0x277CE3890]);
  v0 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.InAppMessages"];
  v1 = [v0 builtInPlugInsURL];
  v2 = [v1 URLByAppendingPathComponent:@"InAppMessagesWebProcessBundle.bundle" isDirectory:1];

  [v5 setInjectedBundleURL:v2];
  [v5 setAlwaysRunsAtBackgroundPriority:1];
  v3 = [objc_alloc(MEMORY[0x277CE3820]) _initWithConfiguration:v5];
  v4 = webContentProcessPool_contentProcessPool;
  webContentProcessPool_contentProcessPool = v3;
}

@end