@interface UIBarButtonItem(CPUINowPlayingBarButton)
+ (id)nowPlayingBarButtonWithTarget:()CPUINowPlayingBarButton action:;
@end

@implementation UIBarButtonItem(CPUINowPlayingBarButton)

+ (id)nowPlayingBarButtonWithTarget:()CPUINowPlayingBarButton action:
{
  v6 = MEMORY[0x277D755D0];
  v7 = a3;
  v8 = [v6 configurationWithPointSize:4 weight:20.0];
  v9 = [MEMORY[0x277D755B8] _systemImageNamed:@"apple.nowplaying"];
  v10 = [v9 imageWithConfiguration:v8];

  v11 = [[self alloc] initWithImage:v10 style:0 target:v7 action:a4];
  v12 = CPUILocalizedStringForKey(@"NOW_PLAYING");
  [v11 setAccessibilityLabel:v12];

  return v11;
}

@end