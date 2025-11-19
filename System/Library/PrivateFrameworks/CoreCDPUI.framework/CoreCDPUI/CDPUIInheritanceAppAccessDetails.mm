@interface CDPUIInheritanceAppAccessDetails
- (CDPUIInheritanceAppAccessDetails)initWithBundleID:(id)a3 accessString:(id)a4;
- (void)_prepareIcon;
@end

@implementation CDPUIInheritanceAppAccessDetails

- (CDPUIInheritanceAppAccessDetails)initWithBundleID:(id)a3 accessString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = CDPUIInheritanceAppAccessDetails;
  v8 = [(CDPUIInheritanceAppAccessDetails *)&v18 init];
  if (v8)
  {
    v9 = [v6 copy];
    bundleID = v8->_bundleID;
    v8->_bundleID = v9;

    v11 = [v7 copy];
    accessString = v8->_accessString;
    v8->_accessString = v11;

    v13 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v8->_bundleID allowPlaceholder:1 error:0];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 localizedName];
      appName = v8->_appName;
      v8->_appName = v15;
    }

    [(CDPUIInheritanceAppAccessDetails *)v8 _prepareIcon];
  }

  return v8;
}

- (void)_prepareIcon
{
  v3 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:self->_bundleID];
  if (v3)
  {
    v4 = dispatch_get_global_queue(25, 0);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__CDPUIInheritanceAppAccessDetails__prepareIcon__block_invoke;
    v5[3] = &unk_278E2B2D0;
    v6 = v3;
    v7 = self;
    dispatch_async(v4, v5);
  }
}

void __48__CDPUIInheritanceAppAccessDetails__prepareIcon__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v4 = v3;

  v12 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:40.0 scale:{40.0, v4}];
  [v12 setShouldApplyMask:1];
  [v12 setShape:1];
  v5 = [*(a1 + 32) prepareImageForDescriptor:v12];
  v6 = [*(a1 + 32) imageForDescriptor:v12];
  v7 = MEMORY[0x277D755B8];
  v8 = [v6 CGImage];
  [v6 scale];
  v9 = [v7 imageWithCGImage:v8 scale:0 orientation:?];
  v10 = *(a1 + 40);
  v11 = *(v10 + 24);
  *(v10 + 24) = v9;
}

@end