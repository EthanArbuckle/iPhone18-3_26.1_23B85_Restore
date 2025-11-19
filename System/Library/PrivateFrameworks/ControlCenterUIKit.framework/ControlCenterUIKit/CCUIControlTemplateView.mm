@interface CCUIControlTemplateView
- (CCUIControlTemplateViewContextMenuDelegate)contextMenuDelegate;
- (CCUIControlTemplateViewDelegate)delegate;
- (CCUIControlTemplateViewMenuModuleDelegate)menuModuleDelegate;
- (CCUIModuleContentMetrics)contentMetrics;
- (CGRect)glyphContentFrame;
- (NSArray)requiredVisualStyleCategories;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(void *)a1 configuration:highlightPreviewForItemWithIdentifier:;
- (id)makeContextMenuPreview;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (void)_contextMenuInteraction:(id)a3 shouldPresentWithCompletion:(id)a4;
- (void)contentStateDidChange;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)didMoveToWindow;
- (void)didUpdatePreferredContentSizeCategory;
- (void)didUpdateResizingConfiguration;
- (void)layoutSubviews;
- (void)primaryActionTriggered;
- (void)selectionDidChange;
- (void)setContentMetrics:(id)a3;
- (void)setContextMenuDelegate:(id)a3;
- (void)setContinuousCornerRadius:(double)a3;
- (void)setGridSizeClass:(int64_t)a3;
- (void)setIsLimitingTitleToSingleLineForAccessibility:(BOOL)a3;
- (void)setMenuAffordancePosition:(unint64_t)a3;
- (void)setShowsMenuAffordance:(BOOL)a3;
- (void)setSupportsAccessibilityContentSizeCategories:(BOOL)a3;
- (void)setSuppressesLabelTransitions:(BOOL)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
- (void)set_isExpanded:(BOOL)a3;
- (void)set_isPresentingContextMenu:(BOOL)a3;
- (void)set_isRedacted:(BOOL)a3;
- (void)set_isResizing:(BOOL)a3;
- (void)updateProperties:(id)a3 animated:(BOOL)a4;
- (void)updateVisibleMenuIfNeeded;
@end

@implementation CCUIControlTemplateView

- (void)contentStateDidChange
{
  v2 = self;
  _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE21contentStateDidChangeyyF_0();
}

- (id)contextMenuInteraction:(void *)a1 configuration:highlightPreviewForItemWithIdentifier:
{
  v1 = [a1 makeContextMenuPreview];

  return v1;
}

- (CCUIControlTemplateViewDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CCUIControlTemplateViewContextMenuDelegate)contextMenuDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setContextMenuDelegate:(id)a3
{
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRetain();
  v6 = self;
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  v5 = Strong != 0;
  [(CCUIControlTemplateView *)v6 setContextMenuInteractionEnabled:v5];
  [(CCUIControlTemplateView *)v6 setShowsMenuFromSource:v5];
  swift_unknownObjectRelease();
}

- (CCUIControlTemplateViewMenuModuleDelegate)menuModuleDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setShowsMenuAffordance:(BOOL)a3
{
  v4 = *(self + OBJC_IVAR___CCUIControlTemplateView_showsMenuAffordance);
  *(self + OBJC_IVAR___CCUIControlTemplateView_showsMenuAffordance) = a3;
  if (v4 != a3)
  {
    v5 = self;
    sub_1D16B45A8();
  }
}

- (void)setMenuAffordancePosition:(unint64_t)a3
{
  v4 = *(self + OBJC_IVAR___CCUIControlTemplateView_menuAffordancePosition);
  *(self + OBJC_IVAR___CCUIControlTemplateView_menuAffordancePosition) = a3;
  if (v4 != a3)
  {
    v5 = self;
    sub_1D16B45A8();
  }
}

- (void)set_isRedacted:(BOOL)a3
{
  v4 = *(self + OBJC_IVAR___CCUIControlTemplateView__isRedacted);
  *(self + OBJC_IVAR___CCUIControlTemplateView__isRedacted) = a3;
  if (v4 != a3)
  {
    v7 = self;
    v5 = [(CCUIControlTemplateView *)v7 isRedacted];
    v6 = 0.35;
    if (!v5)
    {
      v6 = 1.0;
    }

    [(CCUIButtonModuleView *)v7 setGlyphAlpha:v6];
  }
}

- (void)set_isResizing:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1D16B58C4(v3);
}

- (void)set_isExpanded:(BOOL)a3
{
  v4 = *(self + OBJC_IVAR___CCUIControlTemplateView__isExpanded);
  *(self + OBJC_IVAR___CCUIControlTemplateView__isExpanded) = a3;
  if (v4 != a3)
  {
    v5 = self;
    [(CCUIControlTemplateView *)v5 setIsLimitingTitleToSingleLineForAccessibility:0];
    [(CCUIControlTemplateView *)v5 setNeedsLayout];
  }
}

- (void)set_isPresentingContextMenu:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1D16B5F78(v3);
}

- (void)setGridSizeClass:(int64_t)a3
{
  v4 = self;
  sub_1D16B60A4(a3);
}

- (void)setSuppressesLabelTransitions:(BOOL)a3
{
  v4 = *(self + OBJC_IVAR___CCUIControlTemplateView_suppressesLabelTransitions);
  *(self + OBJC_IVAR___CCUIControlTemplateView_suppressesLabelTransitions) = a3;
  if (v4 == 1 && !a3)
  {
    v6 = self;
    _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE21contentStateDidChangeyyF_0();
  }
}

- (void)setContinuousCornerRadius:(double)a3
{
  v4 = *(self + OBJC_IVAR___CCUIControlTemplateView_continuousCornerRadius);
  *(self + OBJC_IVAR___CCUIControlTemplateView_continuousCornerRadius) = a3;
  if (v4 != a3)
  {
    v5 = self;
    sub_1D16B6268();
  }
}

- (void)setSupportsAccessibilityContentSizeCategories:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1D16B63B4(v3);
}

- (void)updateProperties:(id)a3 animated:(BOOL)a4
{
  v6 = _Block_copy(a3);
  _Block_copy(v6);
  v7 = self;
  sub_1D16C2074(a4, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)updateVisibleMenuIfNeeded
{
  v2 = self;
  sub_1D16B7770();
}

- (CCUIModuleContentMetrics)contentMetrics
{
  v4.receiver = self;
  v4.super_class = CCUIControlTemplateView;
  v2 = [(CCUIButtonModuleView *)&v4 contentMetrics];

  return v2;
}

- (void)setContentMetrics:(id)a3
{
  v8.receiver = self;
  v8.super_class = CCUIControlTemplateView;
  v4 = a3;
  v5 = self;
  v6 = [(CCUIButtonModuleView *)&v8 contentMetrics];
  v7.receiver = v5;
  v7.super_class = CCUIControlTemplateView;
  [(CCUIButtonModuleView *)&v7 setContentMetrics:v4];
  sub_1D16B7BCC(v6);
}

- (CGRect)glyphContentFrame
{
  v2 = self;
  v11 = CCUIControlTemplateView.glyphContentFrame()();
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;

  v7 = x;
  v8 = y;
  v9 = width;
  v10 = height;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)selectionDidChange
{
  v5 = self;
  v2 = [(CCUIControlTemplateView *)v5 visualStylingProviderForCategory:1];
  if (v2)
  {
    v3 = v2;
    v4 = v2;
    sub_1D16B8A08(v4, 1, v3);
  }
}

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  v4 = self;
  v5 = CCUIControlTemplateView.visualStylingProvider(for:)(a3);

  return v5;
}

- (NSArray)requiredVisualStyleCategories
{
  v2 = self;
  sub_1D16CC664();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1D16CC644();
  sub_1D16CC674();
  sub_1D16CC684();
  sub_1D16CC654();

  sub_1D168EE64(0, &qword_1EC640AA8);
  v3 = sub_1D16CC4E4();

  return v3;
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v7 = a3;
  v8 = self;
  sub_1D16B9DA4(a3, a4);
}

- (void)layoutSubviews
{
  v2 = self;
  CCUIControlTemplateView.layoutSubviews()();
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = CCUIControlTemplateView;
  v2 = self;
  [(CCUIButtonModuleView *)&v6 didMoveToWindow];
  if ([(CCUIControlTemplateView *)v2 _isInAWindow])
  {
    v5.receiver = v2;
    v5.super_class = CCUIControlTemplateView;
    v3 = [(CCUIControlTemplateView *)&v5 visualStylingProviderForCategory:1];
    if (v3)
    {
      v4 = v3;
      [(CCUIControlTemplateView *)v2 setVisualStylingProvider:v3 forCategory:1];

      v2 = v4;
    }
  }
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  v9 = _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE22contextMenuInteraction_016configurationForH10AtLocationSo09UIContextH13ConfigurationCSgSo0nhI0C_So7CGPointVtF_0(x, y);

  return v9;
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v11.receiver = self;
  v11.super_class = CCUIControlTemplateView;
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  [(CCUIControlTemplateView *)&v11 contextMenuInteraction:v8 willEndForConfiguration:v9 animator:a5];
  [(CCUIControlTemplateView *)v10 setPresentingContextMenu:0, v11.receiver, v11.super_class];

  swift_unknownObjectRelease();
}

- (void)_contextMenuInteraction:(id)a3 shouldPresentWithCompletion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = self;
  _Block_copy(v5);
  v8 = [(CCUIControlTemplateView *)v7 contextMenuDelegate];
  if (v8)
  {
    v9 = v8;
    if (([(CCUIControlTemplateViewContextMenuDelegate *)v8 respondsToSelector:sel_contextMenuShouldPresentForControlTemplateView_withCompletion_]& 1) != 0)
    {
      _Block_release(v5);
      v11[4] = sub_1D16C291C;
      v11[5] = v6;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 1107296256;
      v11[2] = sub_1D16C2E3C;
      v11[3] = &block_descriptor_103;
      v10 = _Block_copy(v11);

      [(CCUIControlTemplateViewContextMenuDelegate *)v9 contextMenuShouldPresentForControlTemplateView:v7 withCompletion:v10];
      swift_unknownObjectRelease();

      _Block_release(v10);
    }

    else
    {
      (*(v5 + 2))(v5, 1);

      _Block_release(v5);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v5 + 2))(v5, 0);

    _Block_release(v5);
  }
}

- (id)makeContextMenuPreview
{
  v2 = self;
  v3 = [(CCUIControlTemplateView *)v2 contextMenuDelegate];
  if (v3)
  {
    v4 = v3;
    if (([(CCUIControlTemplateViewContextMenuDelegate *)v3 respondsToSelector:sel_contextMenuPreviewForControlTemplateView_]& 1) != 0)
    {
      v5 = [(CCUIControlTemplateViewContextMenuDelegate *)v4 contextMenuPreviewForControlTemplateView:v2];
      swift_unknownObjectRelease();
      if (v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
LABEL_7:

  return v5;
}

- (void)primaryActionTriggered
{
  v2 = self;
  sub_1D16BD328();
}

- (void)didUpdatePreferredContentSizeCategory
{
  v2 = self;
  sub_1D16BEFB0();
}

- (void)didUpdateResizingConfiguration
{
  v2 = self;
  sub_1D16B5A08();
}

- (void)setIsLimitingTitleToSingleLineForAccessibility:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1D16BF4E4(v3);
}

@end