@interface UtilityPlatterBackgroundTemplateImage
@end

@implementation UtilityPlatterBackgroundTemplateImage

id ___UtilityPlatterBackgroundTemplateImage_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NavdRecentLocationsEntitlment_block_invoke_lock_0);
  if (NavdRecentLocationsEntitlment_block_invoke___cachedDevice_0)
  {
    v3 = NavdRecentLocationsEntitlment_block_invoke___cachedDevice_0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != NavdRecentLocationsEntitlment_block_invoke___previousCLKDeviceVersion_0))
  {
    NavdRecentLocationsEntitlment_block_invoke___cachedDevice_0 = v2;
    NavdRecentLocationsEntitlment_block_invoke___previousCLKDeviceVersion_0 = [v2 version];
    v5 = ___UtilityPlatterBackgroundTemplateImage_block_invoke_2(NavdRecentLocationsEntitlment_block_invoke___previousCLKDeviceVersion_0, v2);
    v6 = NavdRecentLocationsEntitlment_block_invoke_value_0;
    NavdRecentLocationsEntitlment_block_invoke_value_0 = v5;
  }

  v7 = NavdRecentLocationsEntitlment_block_invoke_value_0;
  os_unfair_lock_unlock(&NavdRecentLocationsEntitlment_block_invoke_lock_0);

  return v7;
}

id ___UtilityPlatterBackgroundTemplateImage_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277D75348] whiteColor];
  ___LayoutConstants_block_invoke_70(v2, v20);
  v5 = v21;
  v6 = [MEMORY[0x277D75568] preferredFormat];
  [v2 screenScale];
  [v6 setScale:?];
  [v6 setPreferredRange:0];
  [v6 setOpaque:0];
  v7 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v6 format:{v5 + v5, v5 + v5}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___UtilityPlatterBackgroundTemplateImage_block_invoke_3;
  v13[3] = &unk_2787871F8;
  v15 = 0;
  v16 = 0;
  v14 = v4;
  v17 = v5 + v5;
  v18 = v5 + v5;
  v19 = v5;
  v8 = v4;
  v9 = [v7 imageWithActions:v13];
  v10 = [v9 imageWithRenderingMode:2];

  v11 = [v10 resizableImageWithCapInsets:{v5, v5, v5, v5}];

  objc_autoreleasePoolPop(v3);

  return v11;
}

void ___UtilityPlatterBackgroundTemplateImage_block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) set];
  v2 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:*(a1 + 40) cornerRadius:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [v2 fill];
}

@end