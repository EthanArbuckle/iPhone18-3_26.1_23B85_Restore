@interface CAMFormattingManager
+ (id)sharedManager;
- (CAMFormattingManager)init;
- (void)_commonCAMFormattingManagerInitialization;
@end

@implementation CAMFormattingManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[CAMFormattingManager sharedManager];
  }

  v3 = sharedManager_formattingMangaer;

  return v3;
}

uint64_t __37__CAMFormattingManager_sharedManager__block_invoke()
{
  sharedManager_formattingMangaer = objc_alloc_init(CAMFormattingManager);

  return MEMORY[0x1EEE66BB8]();
}

- (CAMFormattingManager)init
{
  v6.receiver = self;
  v6.super_class = CAMFormattingManager;
  v2 = [(CAMFormattingManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(CAMFormattingManager *)v2 _commonCAMFormattingManagerInitialization];
    v4 = v3;
  }

  return v3;
}

- (void)_commonCAMFormattingManagerInitialization
{
  v3 = CAMLocalizedFrameworkString(@"CAMERA_APPLY_CUSTOM_KERNING", 0);
  self->_wantsCustomKerning = [v3 caseInsensitiveCompare:@"YES"] == 0;

  v4 = CAMLocalizedFrameworkString(@"CAMERA_SUPPORTS_VERTICAL_TEXT", 0);
  self->_supportsVerticalText = [v4 caseInsensitiveCompare:@"YES"] == 0;
}

@end