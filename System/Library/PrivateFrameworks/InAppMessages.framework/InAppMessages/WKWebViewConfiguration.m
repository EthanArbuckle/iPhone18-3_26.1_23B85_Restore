@interface WKWebViewConfiguration
@end

@implementation WKWebViewConfiguration

void __64__WKWebViewConfiguration_IAMShared__sharedMessagesConfiguration__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CE3858]);
  v1 = sharedMessagesConfiguration_sharedConfiguration;
  sharedMessagesConfiguration_sharedConfiguration = v0;

  [sharedMessagesConfiguration_sharedConfiguration setAllowsInlineMediaPlayback:1];
  v3 = [MEMORY[0x277CE3820] webContentProcessPool];
  [sharedMessagesConfiguration_sharedConfiguration setProcessPool:v3];
  v2 = objc_alloc_init(MEMORY[0x277CE3818]);
  [v2 _setAllowFileAccessFromFileURLs:1];
  [sharedMessagesConfiguration_sharedConfiguration setPreferences:v2];
  [sharedMessagesConfiguration_sharedConfiguration _setWaitsForPaintAfterViewDidMoveToWindow:0];
}

@end