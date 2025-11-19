@interface MapsSuggestionsRealAppProtectionApp
- (id)_initWithBundleID:(id)a3;
@end

@implementation MapsSuggestionsRealAppProtectionApp

- (id)_initWithBundleID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MapsSuggestionsRealAppProtectionApp;
  v5 = [(MapsSuggestionsRealAppProtectionApp *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:v4];
    app = v5->_app;
    v5->_app = v6;
  }

  return v5;
}

@end