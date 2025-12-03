@interface CCUIContentModuleContentContainerView
- (CCUIContentModuleContentContainerView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_configureGlass;
- (void)_setContinuousCornerRadius:(double)radius ignoreSubviewClipping:(BOOL)clipping;
- (void)_transitionToExpandedMode:(BOOL)mode force:(BOOL)force;
- (void)_updateContinuousCornerRadiusIgnoringSubviewClipping:(BOOL)clipping;
- (void)addSubview:(id)subview;
- (void)didEndTransitionToExpandedMode:(BOOL)mode;
- (void)layoutSubviews;
- (void)setAllowsGlassGrouping:(BOOL)grouping;
- (void)setModuleProvidesOwnPlatter:(BOOL)platter;
- (void)setWantsSubduedBackground:(BOOL)background;
@end

@implementation CCUIContentModuleContentContainerView

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = CCUIContentModuleContentContainerView;
  [(CCUIContentModuleContentContainerView *)&v2 layoutSubviews];
}

- (CCUIContentModuleContentContainerView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CCUIContentModuleContentContainerView;
  v3 = [(CCUITouchPassThroughView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_allowsGlassGrouping = 1;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CCUIContentModuleContentContainerView *)v4 setBackgroundColor:clearColor];

    [(CCUIContentModuleContentContainerView *)v4 setOpaque:0];
    [(CCUIContentModuleContentContainerView *)v4 _transitionToExpandedMode:0 force:1];
    [(CCUIContentModuleContentContainerView *)v4 _configureGlass];
    traitOverrides = [(CCUIContentModuleContentContainerView *)v4 traitOverrides];
    [traitOverrides setVerticalSizeClass:2];
  }

  return v4;
}

- (void)_transitionToExpandedMode:(BOOL)mode force:(BOOL)force
{
  if (force || self->_expanded != mode)
  {
    self->_expanded = mode;
    [(CCUIContentModuleContentContainerView *)self _updateContinuousCornerRadiusIgnoringSubviewClipping:force];
  }
}

- (void)didEndTransitionToExpandedMode:(BOOL)mode
{
  if (!mode)
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

- (void)setModuleProvidesOwnPlatter:(BOOL)platter
{
  if (self->_moduleProvidesOwnPlatter != platter)
  {
    self->_moduleProvidesOwnPlatter = platter;
    [(CCUIContentModuleContentContainerView *)self _configureGlass];
  }
}

- (void)setWantsSubduedBackground:(BOOL)background
{
  if (self->_wantsSubduedBackground != background)
  {
    self->_wantsSubduedBackground = background;
    [(CCUIContentModuleContentContainerView *)self _configureGlass];
  }
}

- (void)setAllowsGlassGrouping:(BOOL)grouping
{
  if (self->_allowsGlassGrouping != grouping)
  {
    self->_allowsGlassGrouping = grouping;
    [(CCUIContentModuleContentContainerView *)self _configureGlass];
  }
}

- (void)addSubview:(id)subview
{
  v4.receiver = self;
  v4.super_class = CCUIContentModuleContentContainerView;
  [(CCUIContentModuleContentContainerView *)&v4 addSubview:subview];
  [(CCUIContentModuleContentContainerView *)self _transitionToExpandedMode:self->_expanded force:1];
}

- (void)_setContinuousCornerRadius:(double)radius ignoreSubviewClipping:(BOOL)clipping
{
  v4.receiver = self;
  v4.super_class = CCUIContentModuleContentContainerView;
  [(CCUIContentModuleContentContainerView *)&v4 _setContinuousCornerRadius:clipping, radius];
}

- (void)_updateContinuousCornerRadiusIgnoringSubviewClipping:(BOOL)clipping
{
  if (self->_expanded)
  {
    v3 = &OBJC_IVAR___CCUIContentModuleContentContainerView__expandedContinuousCornerRadius;
  }

  else
  {
    v3 = &OBJC_IVAR___CCUIContentModuleContentContainerView__compactContinuousCornerRadius;
  }

  [(CCUIContentModuleContentContainerView *)self _setContinuousCornerRadius:clipping ignoreSubviewClipping:*(&self->super.super.super.super.isa + *v3)];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v8 = eventCopy;
  if (self->_expanded && [eventCopy type] == 10)
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