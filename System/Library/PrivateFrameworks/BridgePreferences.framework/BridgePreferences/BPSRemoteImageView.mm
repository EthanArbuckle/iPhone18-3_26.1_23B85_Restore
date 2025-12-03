@interface BPSRemoteImageView
- (BPSRemoteImageView)init;
- (void)dealloc;
- (void)updateImagesWithAnimation:(BOOL)animation;
@end

@implementation BPSRemoteImageView

- (BPSRemoteImageView)init
{
  v5.receiver = self;
  v5.super_class = BPSRemoteImageView;
  v2 = [(BPSRemoteImageView *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_updateImagesWithAnimation name:*MEMORY[0x277D37AA8] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = BPSRemoteImageView;
  [(BPSRemoteImageView *)&v4 dealloc];
}

- (void)updateImagesWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__BPSRemoteImageView_updateImagesWithAnimation___block_invoke;
  aBlock[3] = &unk_278D23168;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (animationCopy)
  {
    v7 = MEMORY[0x277D75D18];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__BPSRemoteImageView_updateImagesWithAnimation___block_invoke_2;
    v8[3] = &unk_278D23738;
    v9 = v5;
    [v7 transitionWithView:self duration:5242880 options:v8 animations:&__block_literal_global_2 completion:0.45];
  }

  else
  {
    v5[2](v5);
  }
}

void __48__BPSRemoteImageView_updateImagesWithAnimation___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D755B8] imageNamed:*(*(a1 + 32) + 512)];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    if (![*(*(a1 + 32) + 512) hasPrefix:@"/"])
    {
      goto LABEL_9;
    }

    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 scale];
    v6 = v5;

    v7 = &stru_285406330;
    if (v6 > 1.0)
    {
      v7 = @"@2x";
    }

    if (v6 > 2.0)
    {
      v7 = @"@3x";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@.png", *(*(a1 + 32) + 512), v7];
    v17 = [MEMORY[0x277D755B8] imageWithContentsOfFile:v8];

    v3 = v17;
    if (!v17)
    {
LABEL_9:
      v9 = MEMORY[0x277D755B8];
      v10 = *(*(a1 + 32) + 520);
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v9 imageNamed:v10 inBundle:v11];

      if (PBIsInternalInstall() && CFPreferencesGetAppBooleanValue(@"DebugMobileAssetLoading", @"com.apple.Bridge", 0))
      {
        [v18 size];
        UIGraphicsBeginImageContextWithOptions(v21, 0, 0.0);
        [v18 drawAtPoint:{0.0, 0.0}];
        v12 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.5];
        [v12 setFill];

        [v18 size];
        v14 = v13;
        [v18 size];
        v22.size.height = v15;
        v22.origin.x = 0.0;
        v22.origin.y = 0.0;
        v22.size.width = v14;
        UIRectFillUsingBlendMode(v22, kCGBlendModePlusLighter);
        v16 = UIGraphicsGetImageFromCurrentImageContext();

        UIGraphicsEndImageContext();
        v3 = v16;
      }

      else
      {
        v3 = v18;
      }
    }
  }

  v19 = v3;
  [*(a1 + 32) setImage:v3];
}

@end