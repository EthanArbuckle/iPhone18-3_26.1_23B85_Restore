@interface MSVolumeViewController
- (void)loadView;
@end

@implementation MSVolumeViewController

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277CD6110]);
  [v3 sizeToFit];
  [(MSVolumeViewController *)self setView:v3];
}

@end