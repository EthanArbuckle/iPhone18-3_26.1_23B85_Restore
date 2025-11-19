@interface CCUIControlHostView
- (BOOL)performPrimaryActionForControlTemplateView:(id)a3;
- (CCUIControlHostView)initWithCoder:(id)a3;
- (CCUIControlHostView)initWithFrame:(CGRect)a3;
- (CCUIControlHostViewDelegate)delegate;
- (CCUIModuleContentMetrics)contentMetrics;
- (NSString)cameraCapturePrewarmReason;
- (NSString)menuDisplayName;
- (UIMenu)contextMenu;
- (double)continuousCornerRadius;
- (id)contextMenuItems;
- (id)contextMenuPreviewForControlTemplateView:(id)a3;
- (int64_t)gridSizeClass;
- (void)controlInstanceDescriptorDidChange:(void *)a1;
- (void)layoutSubviews;
- (void)setApplicationContext:(id)a3;
- (void)setCameraCapturePrewarmReason:(id)a3;
- (void)setContentMetrics:(id)a3;
- (void)setContinuousCornerRadius:(double)a3;
- (void)setGridSizeClass:(int64_t)a3;
@end

@implementation CCUIControlHostView

- (void)controlInstanceDescriptorDidChange:(void *)a1
{
  v1 = a1;
  _sSo19CCUIControlHostViewC18ControlCenterUIKitE015controlInstanceC14ModelDidChangeyySo012CHUISControlH0CF_0();
}

- (CCUIControlHostView)initWithCoder:(id)a3
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
  v2 = self;
  v3 = [(CCUIControlHostView *)v2 templateView];
  v4 = [(CCUIControlTemplateView *)v3 gridSizeClass];

  return v4;
}

- (void)setGridSizeClass:(int64_t)a3
{
  v5 = self;
  v4 = [(CCUIControlHostView *)v5 templateView];
  [(CCUIControlTemplateView *)v4 setGridSizeClass:a3];
}

- (double)continuousCornerRadius
{
  v2 = self;
  v3 = [(CCUIControlHostView *)v2 templateView];
  [(CCUIControlTemplateView *)v3 continuousCornerRadius];
  v5 = v4;

  return v5;
}

- (void)setContinuousCornerRadius:(double)a3
{
  v5 = self;
  v4 = [(CCUIControlHostView *)v5 templateView];
  [(CCUIControlTemplateView *)v4 setContinuousCornerRadius:a3];
}

- (CCUIModuleContentMetrics)contentMetrics
{
  v2 = self;
  v3 = [(CCUIControlHostView *)v2 templateView];
  v4 = [(CCUIControlTemplateView *)v3 contentMetrics];

  return v4;
}

- (void)setContentMetrics:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [(CCUIControlHostView *)v6 templateView];
  [(CCUIControlTemplateView *)v5 setContentMetrics:v4];
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

- (void)setCameraCapturePrewarmReason:(id)a3
{
  if (a3)
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
  v2 = self;
  [(CCUIControlHostView *)&v4 layoutSubviews];
  v3 = [(CCUIControlHostView *)v2 templateView:v4.receiver];
  [(CCUIControlHostView *)v2 bounds];
  [(CCUIControlTemplateView *)v3 setFrame:?];
}

- (BOOL)performPrimaryActionForControlTemplateView:(id)a3
{
  v3 = self;
  v4 = [(CCUIControlHostView *)v3 delegate];
  if (!v4 || (v5 = [(CCUIControlHostViewDelegate *)v4 controlHostViewShouldPerformPrimaryAction:v3], swift_unknownObjectRelease(), v5))
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
  v2 = self;
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
  v2 = self;
  v3 = CCUIControlHostView.contextMenu.getter();

  return v3;
}

- (id)contextMenuPreviewForControlTemplateView:(id)a3
{
  v3 = self;
  v4 = [(CCUIControlHostView *)v3 delegate];
  if (v4)
  {
    v5 = v4;
    if (([(CCUIControlHostViewDelegate *)v4 respondsToSelector:sel_contextMenuPreviewForControlHostView_]& 1) != 0)
    {
      v6 = [(CCUIControlHostViewDelegate *)v5 contextMenuPreviewForControlHostView:v3];
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

- (void)setApplicationContext:(id)a3
{
  v4 = *(self + OBJC_IVAR___CCUIControlHostView_applicationContext);
  *(self + OBJC_IVAR___CCUIControlHostView_applicationContext) = a3;
  v3 = a3;
}

- (CCUIControlHostView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end