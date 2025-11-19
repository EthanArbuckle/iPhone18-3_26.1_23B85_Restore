@interface CCUIContentModuleContentContainerView
- (CCUIContentModuleContentContainerView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_configureGlass;
- (void)_setContinuousCornerRadius:(double)a3 ignoreSubviewClipping:(BOOL)a4;
- (void)_transitionToExpandedMode:(BOOL)a3 force:(BOOL)a4;
- (void)_updateContinuousCornerRadiusIgnoringSubviewClipping:(BOOL)a3;
- (void)addSubview:(id)a3;
- (void)didEndTransitionToExpandedMode:(BOOL)a3;
- (void)layoutSubviews;
- (void)setAllowsGlassGrouping:(BOOL)a3;
- (void)setModuleProvidesOwnPlatter:(BOOL)a3;
- (void)setWantsSubduedBackground:(BOOL)a3;
@end

@implementation CCUIContentModuleContentContainerView

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = CCUIContentModuleContentContainerView;
  [(CCUIContentModuleContentContainerView *)&v2 layoutSubviews];
}

- (CCUIContentModuleContentContainerView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CCUIContentModuleContentContainerView;
  v3 = [(CCUITouchPassThroughView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_allowsGlassGrouping = 1;
    v5 = [MEMORY[0x277D75348] clearColor];
    [(CCUIContentModuleContentContainerView *)v4 setBackgroundColor:v5];

    [(CCUIContentModuleContentContainerView *)v4 setOpaque:0];
    [(CCUIContentModuleContentContainerView *)v4 _transitionToExpandedMode:0 force:1];
    [(CCUIContentModuleContentContainerView *)v4 _configureGlass];
    v6 = [(CCUIContentModuleContentContainerView *)v4 traitOverrides];
    [v6 setVerticalSizeClass:2];
  }

  return v4;
}

- (void)_transitionToExpandedMode:(BOOL)a3 force:(BOOL)a4
{
  if (a4 || self->_expanded != a3)
  {
    self->_expanded = a3;
    [(CCUIContentModuleContentContainerView *)self _updateContinuousCornerRadiusIgnoringSubviewClipping:a4];
  }
}

- (void)didEndTransitionToExpandedMode:(BOOL)a3
{
  if (!a3)
  {
    [(CCUIContentModuleContentContainerView *)self _setContinuousCornerRadius:1 ignoreSubviewClipping:self->_compactContinuousCornerRadius];
  }
}

- (void)_configureGlass
{
  if (self->_moduleProvidesOwnPlatter)
  {
    [(UIView *)self ccui_removeGlass];
  }

  else
  {
    allowsGlassGrouping = self->_allowsGlassGrouping;
    if (self->_wantsSubduedBackground)
    {
      [(UIView *)self ccui_applySubduedGlassWithGrouping:allowsGlassGrouping];
    }

    else
    {
      [(UIView *)self ccui_applyGlassWithGrouping:allowsGlassGrouping];
    }
  }
}

- (void)setModuleProvidesOwnPlatter:(BOOL)a3
{
  if (self->_moduleProvidesOwnPlatter != a3)
  {
    self->_moduleProvidesOwnPlatter = a3;
    [(CCUIContentModuleContentContainerView *)self _configureGlass];
  }
}

- (void)setWantsSubduedBackground:(BOOL)a3
{
  if (self->_wantsSubduedBackground != a3)
  {
    self->_wantsSubduedBackground = a3;
    [(CCUIContentModuleContentContainerView *)self _configureGlass];
  }
}

- (void)setAllowsGlassGrouping:(BOOL)a3
{
  if (self->_allowsGlassGrouping != a3)
  {
    self->_allowsGlassGrouping = a3;
    [(CCUIContentModuleContentContainerView *)self _configureGlass];
  }
}

- (void)addSubview:(id)a3
{
  v4.receiver = self;
  v4.super_class = CCUIContentModuleContentContainerView;
  [(CCUIContentModuleContentContainerView *)&v4 addSubview:a3];
  [(CCUIContentModuleContentContainerView *)self _transitionToExpandedMode:self->_expanded force:1];
}

- (void)_setContinuousCornerRadius:(double)a3 ignoreSubviewClipping:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = CCUIContentModuleContentContainerView;
  [(CCUIContentModuleContentContainerView *)&v4 _setContinuousCornerRadius:a4, a3];
}

- (void)_updateContinuousCornerRadiusIgnoringSubviewClipping:(BOOL)a3
{
  if (self->_expanded)
  {
    v3 = &OBJC_IVAR___CCUIContentModuleContentContainerView__expandedContinuousCornerRadius;
  }

  else
  {
    v3 = &OBJC_IVAR___CCUIContentModuleContentContainerView__compactContinuousCornerRadius;
  }

  [(CCUIContentModuleContentContainerView *)self _setContinuousCornerRadius:a3 ignoreSubviewClipping:*(&self->super.super.super.super.isa + *v3)];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = v7;
  if (self->_expanded && [v7 type] == 10)
  {
    [(CCUIContentModuleContentContainerView *)self bounds];
    UIRectGetCenter();
    x = v9;
    y = v10;
  }

  v13.receiver = self;
  v13.super_class = CCUIContentModuleContentContainerView;
  v11 = [(CCUITouchPassThroughView *)&v13 hitTest:v8 withEvent:x, y];

  return v11;
}

@end