@interface CPUINowPlayingButton
- (CGSize)intrinsicContentSize;
- (CPUINowPlayingButton)init;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)updateConfiguration;
@end

@implementation CPUINowPlayingButton

- (CPUINowPlayingButton)init
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = CPUINowPlayingButton;
  v2 = [(CPUINowPlayingButton *)&v6 initWithFrame:0.0, 0.0, 36.0, 36.0];
  if (v2)
  {
    v3 = CPUILocalizedStringForKey(@"NOW_PLAYING");
    v7[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [(CPUINowPlayingButton *)v2 setAccessibilityUserInputLabels:v4];

    [(CPUINowPlayingButton *)v2 updateConfiguration];
  }

  return v2;
}

- (CGSize)intrinsicContentSize
{
  v2 = 36.0;
  v3 = 36.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)updateConfiguration
{
  if (([(CPUINowPlayingButton *)self isHighlighted]& 1) != 0 || ([(CPUINowPlayingButton *)self isSelected]& 1) != 0)
  {
    isFocused = 1;
  }

  else
  {
    isFocused = [(CPUINowPlayingButton *)self isFocused];
  }

  if (_UISolariumEnabled())
  {
    if (isFocused)
    {
      [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
    }

    else
    {
      [MEMORY[0x277D75230] _glassButtonConfiguration];
    }
    tintedButtonConfiguration = ;
  }

  else
  {
    tintedButtonConfiguration = [MEMORY[0x277D75230] tintedButtonConfiguration];
  }

  v5 = tintedButtonConfiguration;
  v6 = [MEMORY[0x277D755B8] _systemImageNamed:@"apple.nowplaying"];
  [v5 setImage:v6];

  v7 = [MEMORY[0x277D755D0] configurationWithPointSize:5 weight:16.0];
  [v5 setPreferredSymbolConfigurationForImage:v7];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__CPUINowPlayingButton_updateConfiguration__block_invoke;
  v10[3] = &__block_descriptor_33_e26___UIColor_16__0__UIColor_8l;
  v11 = isFocused;
  [v5 setImageColorTransformer:v10];
  clearConfiguration = [MEMORY[0x277D751C0] clearConfiguration];
  if (isFocused)
  {
    [MEMORY[0x277D75348] _carSystemFocusColor];
  }

  else
  {
    [MEMORY[0x277D75348] clearColor];
  }
  v9 = ;
  [clearConfiguration setBackgroundColor:v9];

  [v5 setBackground:clearConfiguration];
  [v5 setCornerStyle:4];
  [v5 setAutomaticallyUpdateForSelection:0];
  [(CPUINowPlayingButton *)self setConfiguration:v5];
}

id __43__CPUINowPlayingButton_updateConfiguration__block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v1 = ;

  return v1;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = CPUINowPlayingButton;
  [(CPUINowPlayingButton *)&v10 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedItem = [contextCopy nextFocusedItem];
  v8 = nextFocusedItem;
  if (nextFocusedItem == self)
  {

LABEL_5:
    [(CPUINowPlayingButton *)self setNeedsUpdateConfiguration];
    goto LABEL_6;
  }

  previouslyFocusedItem = [contextCopy previouslyFocusedItem];

  if (previouslyFocusedItem == self)
  {
    goto LABEL_5;
  }

LABEL_6:
}

@end