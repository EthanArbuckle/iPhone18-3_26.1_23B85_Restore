@interface MediaControlsRoutingCornerView
- (MediaControlsRoutingCornerView)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_updateGlyph;
- (void)setDeviceType:(int64_t)type;
- (void)setRoutesAvailable:(BOOL)available;
- (void)setRouting:(BOOL)routing;
@end

@implementation MediaControlsRoutingCornerView

- (MediaControlsRoutingCornerView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = MediaControlsRoutingCornerView;
  v3 = [(CCUICAPackageView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MediaControlsRoutingCornerView *)v3 setUserInteractionEnabled:1];
    [(CCUICAPackageView *)v4 setStateName:&stru_1F1445548];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v4];
      [(MediaControlsRoutingCornerView *)v4 addInteraction:v7];
    }
  }

  return v4;
}

- (void)setRouting:(BOOL)routing
{
  if (self->_routing != routing)
  {
    self->_routing = routing;
    [(MediaControlsRoutingCornerView *)self _updateGlyph];
  }
}

- (void)setDeviceType:(int64_t)type
{
  if (self->_deviceType == type)
  {
    return;
  }

  v14 = v5;
  v15 = v4;
  v16 = v3;
  self->_deviceType = type;
  if (type == 1)
  {
    v10 = @"AudioRoutingCorner";
    goto LABEL_6;
  }

  if (type == 2)
  {
    v10 = @"VideoRoutingCorner";
LABEL_6:
    v11 = MEMORY[0x1E6997248];
    mediaControlsBundle = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    v13 = [v11 descriptionForPackageNamed:v10 inBundle:mediaControlsBundle];
    [(CCUICAPackageView *)self setPackageDescription:v13];
  }

  [(MediaControlsRoutingCornerView *)self _updateGlyph];
}

- (void)setRoutesAvailable:(BOOL)available
{
  if (self->_routesAvailable != available)
  {
    self->_routesAvailable = available;
    [(MediaControlsRoutingCornerView *)self _updateGlyph];
  }
}

- (void)_updateGlyph
{
  if ([(MediaControlsRoutingCornerView *)self routesAreAvailable])
  {
    if ([(MediaControlsRoutingCornerView *)self isRouting])
    {
      v3 = @"connected";
    }

    else
    {
      v3 = @"available";
    }
  }

  else
  {
    v3 = &stru_1F1445548;
  }

  [(CCUICAPackageView *)self setStateName:v3];
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  v6 = MEMORY[0x1E69DC728];
  [(MediaControlsRoutingCornerView *)self bounds];
  UIRectInset();
  v7 = [v6 bezierPathWithOvalInRect:?];
  [v5 setVisiblePath:v7];

  v8 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self parameters:v5];
  v9 = [MEMORY[0x1E69DCDA0] effectWithPreview:v8];
  v10 = [MEMORY[0x1E69DCDD0] styleWithEffect:v9 shape:0];

  return v10;
}

@end