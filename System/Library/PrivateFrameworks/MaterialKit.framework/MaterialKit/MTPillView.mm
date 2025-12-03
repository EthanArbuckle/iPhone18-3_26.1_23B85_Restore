@interface MTPillView
- (MTPillView)init;
- (MTPillView)initWithFrame:(CGRect)frame;
- (MTPillView)initWithFrame:(CGRect)frame settings:(id)settings;
@end

@implementation MTPillView

- (MTPillView)initWithFrame:(CGRect)frame settings:(id)settings
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  settingsCopy = settings;
  BSDispatchQueueAssertMain();
  v18.receiver = self;
  v18.super_class = MTPillView;
  height = [(MTPillView *)&v18 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    cornerMask = [settingsCopy cornerMask];
    v13 = @"lumaDodgePillCorners-thin";
    if (cornerMask != 1)
    {
      v13 = 0;
    }

    if (cornerMask)
    {
      v14 = v13;
    }

    else
    {
      v14 = @"lumaDodgePillCorners";
    }

    v15 = [MEMORY[0x277D755B8] imageNamed:v14 inBundle:v11];
    layer = [(MTPillView *)height layer];
    [layer setCornerContents:{objc_msgSend(v15, "CGImage")}];
    [layer setCornerContentsCenter:{0.5, 0.5, 0.0, 0.0}];
    [settingsCopy cornerRadius];
    [layer setCornerRadius:?];
    [layer setMasksToBounds:1];
  }

  return height;
}

- (MTPillView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = +[MTLumaDodgePillDomain rootSettings];
  height = [(MTPillView *)self initWithFrame:v8 settings:x, y, width, height];

  return height;
}

- (MTPillView)init
{
  v3 = +[MTLumaDodgePillDomain rootSettings];
  [v3 minWidth];
  v5 = v4;
  [v3 height];
  v7 = [(MTPillView *)self initWithFrame:v3 settings:0.0, 0.0, v5, v6];

  return v7;
}

@end