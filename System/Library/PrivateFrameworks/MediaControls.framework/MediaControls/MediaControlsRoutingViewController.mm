@interface MediaControlsRoutingViewController
- (id)_createVolumeSlider;
@end

@implementation MediaControlsRoutingViewController

- (id)_createVolumeSlider
{
  v2 = [MediaControlsVolumeSlider alloc];
  v3 = [(MPVolumeSlider *)v2 initWithFrame:0 style:0 endpointRoute:0 outputDeviceRoute:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v3;
}

@end