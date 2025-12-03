@interface BarButton
+ (id)sidebarButtonWithPrimaryAction:(id)action;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BarButton)initWithFrame:(CGRect)frame;
- (CGRect)_barButtonHitRect;
- (CGRect)_selectedIndicatorBounds;
- (CGRect)barButtonHitRect;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
@end

@implementation BarButton

- (BarButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = BarButton;
  v3 = [(BarButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(BarButton *)v3 setPointerStyleProvider:&__block_literal_global_56];
    v5 = v4;
  }

  return v4;
}

id __27__BarButton_initWithFrame___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277D75890];
  v5 = MEMORY[0x277D75888];
  v6 = a3;
  v7 = [v5 sf_shapeForToolbarButton:a2];
  v8 = [v4 styleWithEffect:v6 shape:v7];

  return v8;
}

- (CGRect)_barButtonHitRect
{
  p_barButtonHitRect = &self->_barButtonHitRect;
  [(BarButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  x = p_barButtonHitRect->origin.x;
  y = p_barButtonHitRect->origin.y;
  width = p_barButtonHitRect->size.width;
  height = p_barButtonHitRect->size.height;

  return CGRectUnion(*&x, *&v4);
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(BarButton *)self _barButtonHitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  v5 = MEMORY[0x277D75880];
  [(BarButton *)self _barButtonHitRect:interaction];

  return [v5 regionWithRect:@"BarButton" identifier:?];
}

- (CGRect)_selectedIndicatorBounds
{
  v3 = [(BarButton *)self titleForState:0];
  v4 = [v3 length];

  if (v4)
  {
    titleLabel = [(BarButton *)self titleLabel];
    [titleLabel frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v27.origin.x = v7;
    v27.origin.y = v9;
    v27.size.width = v11;
    v27.size.height = v13;
    v28 = CGRectInset(v27, 6.0, 0.0);
    x = v28.origin.x;
    y = v28.origin.y;
    width = v28.size.width;
    height = v28.size.height;
  }

  else
  {
    imageView = [(BarButton *)self imageView];
    [imageView frame];
    x = v19;
    y = v20;
    width = v21;
    height = v22;
  }

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v8.receiver = self;
  v8.super_class = BarButton;
  v5 = [(BarButton *)&v8 contextMenuInteraction:interaction configurationForMenuAtLocation:location.x, location.y];
  v6 = v5;
  if (self->_shouldRespectContextMenuOrdering)
  {
    [v5 setPreferredMenuElementOrder:2];
  }

  return v6;
}

+ (id)sidebarButtonWithPrimaryAction:(id)action
{
  v4 = MEMORY[0x277D75230];
  actionCopy = action;
  plainButtonConfiguration = [v4 plainButtonConfiguration];
  clearColor = [MEMORY[0x277D75348] clearColor];
  background = [plainButtonConfiguration background];
  [background setBackgroundColor:clearColor];

  [plainButtonConfiguration setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  v9 = [MEMORY[0x277D755B8] systemImageNamed:@"sidebar.leading"];
  [plainButtonConfiguration setImage:v9];
  v10 = [self buttonWithConfiguration:plainButtonConfiguration primaryAction:actionCopy];

  v11 = _WBSLocalizedString();
  [v10 sf_configureLargeContentViewerWithImage:v9 title:v11];

  return v10;
}

- (CGRect)barButtonHitRect
{
  x = self->_barButtonHitRect.origin.x;
  y = self->_barButtonHitRect.origin.y;
  width = self->_barButtonHitRect.size.width;
  height = self->_barButtonHitRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end