@interface BarButton
+ (id)sidebarButtonWithPrimaryAction:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BarButton)initWithFrame:(CGRect)a3;
- (CGRect)_barButtonHitRect;
- (CGRect)_selectedIndicatorBounds;
- (CGRect)barButtonHitRect;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
@end

@implementation BarButton

- (BarButton)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = BarButton;
  v3 = [(BarButton *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(BarButton *)self _barButtonHitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v5 = MEMORY[0x277D75880];
  [(BarButton *)self _barButtonHitRect:a3];

  return [v5 regionWithRect:@"BarButton" identifier:?];
}

- (CGRect)_selectedIndicatorBounds
{
  v3 = [(BarButton *)self titleForState:0];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(BarButton *)self titleLabel];
    [v5 frame];
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
    v18 = [(BarButton *)self imageView];
    [v18 frame];
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

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v8.receiver = self;
  v8.super_class = BarButton;
  v5 = [(BarButton *)&v8 contextMenuInteraction:a3 configurationForMenuAtLocation:a4.x, a4.y];
  v6 = v5;
  if (self->_shouldRespectContextMenuOrdering)
  {
    [v5 setPreferredMenuElementOrder:2];
  }

  return v6;
}

+ (id)sidebarButtonWithPrimaryAction:(id)a3
{
  v4 = MEMORY[0x277D75230];
  v5 = a3;
  v6 = [v4 plainButtonConfiguration];
  v7 = [MEMORY[0x277D75348] clearColor];
  v8 = [v6 background];
  [v8 setBackgroundColor:v7];

  [v6 setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  v9 = [MEMORY[0x277D755B8] systemImageNamed:@"sidebar.leading"];
  [v6 setImage:v9];
  v10 = [a1 buttonWithConfiguration:v6 primaryAction:v5];

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