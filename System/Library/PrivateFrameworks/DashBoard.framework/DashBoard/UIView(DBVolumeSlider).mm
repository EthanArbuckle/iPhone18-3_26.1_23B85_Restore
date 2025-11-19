@interface UIView(DBVolumeSlider)
- (void)configureBackgroundAsVolumeSlider;
@end

@implementation UIView(DBVolumeSlider)

- (void)configureBackgroundAsVolumeSlider
{
  v2 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:8];
  [v2 setSubvariant:@"volumeSlider"];
  [a1 _setBackground:v2];
}

@end