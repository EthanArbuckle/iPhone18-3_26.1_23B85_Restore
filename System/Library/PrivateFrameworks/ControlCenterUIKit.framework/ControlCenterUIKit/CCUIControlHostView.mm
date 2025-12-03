@interface CCUIControlHostView
- (BOOL)performPrimaryActionForControlTemplateView:(id)view;
- (CCUIControlHostView)initWithCoder:(id)coder;
- (CCUIControlHostView)initWithFrame:(CGRect)frame;
- (CCUIControlHostViewDelegate)delegate;
- (CCUIModuleContentMetrics)contentMetrics;
- (NSString)cameraCapturePrewarmReason;
- (NSString)menuDisplayName;
- (UIMenu)contextMenu;
- (double)continuousCornerRadius;
- (id)contextMenuItems;
- (id)contextMenuPreviewForControlTemplateView:(id)view;
- (int64_t)gridSizeClass;
- (void)controlInstanceDescriptorDidChange:(void *)change;
- (void)layoutSubviews;
- (void)setApplicationContext:(id)context;
- (void)setCameraCapturePrewarmReason:(id)reason;
- (void)setContentMetrics:(id)metrics;
- (void)setContinuousCornerRadius:(double)radius;
- (void)setGridSizeClass:(int64_t)class;
@end

@implementation CCUIControlHostView

- (void)controlInstanceDescriptorDidChange:(void *)change
{
  changeCopy = change;
  _sSo19CCUIControlHostViewC18ControlCenterUIKitE015controlInstanceC14ModelDidChangeyySo012CHUISControlH0CF_0();
}

- (CCUIControlHostView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v4 = (self + OBJC_IVAR___CCUIControlHostView_cameraCapturePrewarmReason);
  *v4 = sub_1D16CC4A4();
  v4[1] = v5;
  *(self + OBJC_IVAR___CCUIControlHostView_applicationContext) = 0;
  *(self + OBJC_IVAR___CCUIControlHostView_isDisplayingLoadedViewModel) = 0;
  result = sub_1D16CC694();
  __break(1u);
  return result;
}

- (CCUIControlHostViewDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (int64_t)gridSizeClass
{
  selfCopy = self;
  templateView = [(CCUIControlHostView *)selfCopy templateView];
  gridSizeClass = [(CCUIControlTemplateView *)templateView gridSizeClass];

  return gridSizeClass;
}

- (void)setGridSizeClass:(int64_t)class
{
  selfCopy = self;
  templateView = [(CCUIControlHostView *)selfCopy templateView];
  [(CCUIControlTemplateView *)templateView setGridSizeClass:class];
}

- (double)continuousCornerRadius
{
  selfCopy = self;
  templateView = [(CCUIControlHostView *)selfCopy templateView];
  [(CCUIControlTemplateView *)templateView continuousCornerRadius];
  v5 = v4;

  return v5;
}

- (void)setContinuousCornerRadius:(double)radius
{
  selfCopy = self;
  templateView = [(CCUIControlHostView *)selfCopy templateView];
  [(CCUIControlTemplateView *)templateView setContinuousCornerRadius:radius];
}

- (CCUIModuleContentMetrics)contentMetrics
{
  selfCopy = self;
  templateView = [(CCUIControlHostView *)selfCopy templateView];
  contentMetrics = [(CCUIControlTemplateView *)templateView contentMetrics];

  return contentMetrics;
}

- (void)setContentMetrics:(id)metrics
{
  metricsCopy = metrics;
  selfCopy = self;
  templateView = [(CCUIControlHostView *)selfCopy templateView];
  [(CCUIControlTemplateView *)templateView setContentMetrics:metricsCopy];
}

- (NSString)cameraCapturePrewarmReason
{
  if (*(self + OBJC_IVAR___CCUIControlHostView_cameraCapturePrewarmReason + 8))
  {

    v2 = sub_1D16CC494();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setCameraCapturePrewarmReason:(id)reason
{
  if (reason)
  {
    v4 = sub_1D16CC4A4();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___CCUIControlHostView_cameraCapturePrewarmReason);
  *v6 = v4;
  v6[1] = v5;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CCUIControlHostView;
  selfCopy = self;
  [(CCUIControlHostView *)&v4 layoutSubviews];
  v3 = [(CCUIControlHostView *)selfCopy templateView:v4.receiver];
  [(CCUIControlHostView *)selfCopy bounds];
  [(CCUIControlTemplateView *)v3 setFrame:?];
}

- (BOOL)performPrimaryActionForControlTemplateView:(id)view
{
  selfCopy = self;
  delegate = [(CCUIControlHostView *)selfCopy delegate];
  if (!delegate || (v5 = [(CCUIControlHostViewDelegate *)delegate controlHostViewShouldPerformPrimaryAction:selfCopy], swift_unknownObjectRelease(), v5))
  {
    sub_1D16C9E00();
  }

  return 0;
}

- (NSString)menuDisplayName
{
  v2 = sub_1D16CC494();

  return v2;
}

- (id)contextMenuItems
{
  selfCopy = self;
  v3 = CCUIControlHostView.contextMenuItems()();

  if (v3)
  {
    sub_1D168EE64(0, &unk_1EC640B20);
    v4 = sub_1D16CC4E4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIMenu)contextMenu
{
  selfCopy = self;
  v3 = CCUIControlHostView.contextMenu.getter();

  return v3;
}

- (id)contextMenuPreviewForControlTemplateView:(id)view
{
  selfCopy = self;
  delegate = [(CCUIControlHostView *)selfCopy delegate];
  if (delegate)
  {
    v5 = delegate;
    if (([(CCUIControlHostViewDelegate *)delegate respondsToSelector:sel_contextMenuPreviewForControlHostView_]& 1) != 0)
    {
      v6 = [(CCUIControlHostViewDelegate *)v5 contextMenuPreviewForControlHostView:selfCopy];
    }

    else
    {
      v6 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setApplicationContext:(id)context
{
  v4 = *(self + OBJC_IVAR___CCUIControlHostView_applicationContext);
  *(self + OBJC_IVAR___CCUIControlHostView_applicationContext) = context;
  contextCopy = context;
}

- (CCUIControlHostView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end