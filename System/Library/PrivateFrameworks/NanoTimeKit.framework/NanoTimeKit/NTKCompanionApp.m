@interface NTKCompanionApp
- (NTKCompanionAppDelegate)delegate;
- (UIImage)icon;
@end

@implementation NTKCompanionApp

- (UIImage)icon
{
  v3 = self->_icon;
  if (!v3 && !self->_fetchingIcon)
  {
    v4 = [(NTKCompanionApp *)self watchApplicationIdentifier];

    if (v4)
    {
      [(NTKCompanionApp *)self setFetchingIcon:1];
      v5 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __23__NTKCompanionApp_icon__block_invoke;
      block[3] = &unk_27877DB10;
      block[4] = self;
      dispatch_async(v5, block);
    }
  }

  return v3;
}

void __23__NTKCompanionApp_icon__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D2BD60] sharedInstance];
  v3 = [*(a1 + 32) watchApplicationIdentifier];
  v4 = [MEMORY[0x277D759A0] mainScreen];
  v5 = [v4 traitCollection];
  [v5 displayScale];
  if (v6 <= 2.0)
  {
    v7 = 42;
  }

  else
  {
    v7 = 41;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __23__NTKCompanionApp_icon__block_invoke_2;
  v8[3] = &unk_278781600;
  v8[4] = *(a1 + 32);
  [v2 getIconForBundleID:v3 iconVariant:v7 block:v8 timeout:60.0];
}

void __23__NTKCompanionApp_icon__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __23__NTKCompanionApp_icon__block_invoke_3;
  v6[3] = &unk_27877E438;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __23__NTKCompanionApp_icon__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) setIcon:?];
    v2 = [*(a1 + 40) delegate];

    if (v2)
    {
      v3 = [*(a1 + 40) delegate];
      [v3 companionAppUpdatedIcon:*(a1 + 40)];
    }
  }

  v4 = *(a1 + 40);

  return [v4 setFetchingIcon:0];
}

- (NTKCompanionAppDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end