@interface MediaControlsRoutingCornerView
- (MediaControlsRoutingCornerView)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_updateGlyph;
- (void)setDeviceType:(int64_t)a3;
- (void)setRoutesAvailable:(BOOL)a3;
- (void)setRouting:(BOOL)a3;
@end

@implementation MediaControlsRoutingCornerView

- (MediaControlsRoutingCornerView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = MediaControlsRoutingCornerView;
  v3 = [(CCUICAPackageView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MediaControlsRoutingCornerView *)v3 setUserInteractionEnabled:1];
    [(CCUICAPackageView *)v4 setStateName:&stru_1F1445548];
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1)
    {
      v7 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v4];
      [(MediaControlsRoutingCornerView *)v4 addInteraction:v7];
    }
  }

  return v4;
}

- (void)setRouting:(BOOL)a3
{
  if (self->_routing != a3)
  {
    self->_routing = a3;
    [(MediaControlsRoutingCornerView *)self _updateGlyph];
  }
}

- (void)setDeviceType:(int64_t)a3
{
  if (self->_deviceType == a3)
  {
    return;
  }

  v14 = v5;
  v15 = v4;
  v16 = v3;
  self->_deviceType = a3;
  if (a3 == 1)
  {
    v10 = @"AudioRoutingCorner";
    goto LABEL_6;
  }

  if (a3 == 2)
  {
    v10 = @"VideoRoutingCorner";
LABEL_6:
    v11 = MEMORY[0x1E6997248];
    v12 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    v13 = [v11 descriptionForPackageNamed:v10 inBundle:v12];
    [(CCUICAPackageView *)self setPackageDescription:v13];
  }

  [(MediaControlsRoutingCornerView *)self _updateGlyph];
}

- (void)setRoutesAvailable:(BOOL)a3
{
  if (self->_routesAvailable != a3)
  {
    self->_routesAvailable = a3;
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

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
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