@interface MapsSuggestionsRealAppProtectionApp
- (id)_initWithBundleID:(id)d;
@end

@implementation MapsSuggestionsRealAppProtectionApp

- (id)_initWithBundleID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = MapsSuggestionsRealAppProtectionApp;
  v5 = [(MapsSuggestionsRealAppProtectionApp *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:dCopy];
    app = v5->_app;
    v5->_app = v6;
  }

  return v5;
}

@end