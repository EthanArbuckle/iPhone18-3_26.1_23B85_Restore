@interface MTPillView
- (MTPillView)init;
- (MTPillView)initWithFrame:(CGRect)a3;
- (MTPillView)initWithFrame:(CGRect)a3 settings:(id)a4;
@end

@implementation MTPillView

- (MTPillView)initWithFrame:(CGRect)a3 settings:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  BSDispatchQueueAssertMain();
  v18.receiver = self;
  v18.super_class = MTPillView;
  v10 = [(MTPillView *)&v18 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v9 cornerMask];
    v13 = @"lumaDodgePillCorners-thin";
    if (v12 != 1)
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = @"lumaDodgePillCorners";
    }

    v15 = [MEMORY[0x277D755B8] imageNamed:v14 inBundle:v11];
    v16 = [(MTPillView *)v10 layer];
    [v16 setCornerContents:{objc_msgSend(v15, "CGImage")}];
    [v16 setCornerContentsCenter:{0.5, 0.5, 0.0, 0.0}];
    [v9 cornerRadius];
    [v16 setCornerRadius:?];
    [v16 setMasksToBounds:1];
  }

  return v10;
}

- (MTPillView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = +[MTLumaDodgePillDomain rootSettings];
  v9 = [(MTPillView *)self initWithFrame:v8 settings:x, y, width, height];

  return v9;
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