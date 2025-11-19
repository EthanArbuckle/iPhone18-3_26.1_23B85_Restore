@interface CDPExtensionHostContext
@end

@implementation CDPExtensionHostContext

void __54___CDPExtensionHostContext__allowedItemPayloadClasses__block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v4 count:7];
  v2 = [v0 setWithArray:{v1, v4, v5, v6, v7, v8, v9}];
  v3 = _allowedItemPayloadClasses_classes;
  _allowedItemPayloadClasses_classes = v2;
}

@end