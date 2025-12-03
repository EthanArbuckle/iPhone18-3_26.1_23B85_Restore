@interface CCUIControlTemplateView
- (CCUIControlTemplateViewContextMenuDelegate)contextMenuDelegate;
- (CCUIControlTemplateViewDelegate)delegate;
- (CCUIControlTemplateViewMenuModuleDelegate)menuModuleDelegate;
- (CCUIModuleContentMetrics)contentMetrics;
- (CGRect)glyphContentFrame;
- (NSArray)requiredVisualStyleCategories;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(void *)interaction configuration:highlightPreviewForItemWithIdentifier:;
- (id)makeContextMenuPreview;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)_contextMenuInteraction:(id)interaction shouldPresentWithCompletion:(id)completion;
- (void)contentStateDidChange;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)didMoveToWindow;
- (void)didUpdatePreferredContentSizeCategory;
- (void)didUpdateResizingConfiguration;
- (void)layoutSubviews;
- (void)primaryActionTriggered;
- (void)selectionDidChange;
- (void)setContentMetrics:(id)metrics;
- (void)setContextMenuDelegate:(id)delegate;
- (void)setContinuousCornerRadius:(double)radius;
- (void)setGridSizeClass:(int64_t)class;
- (void)setIsLimitingTitleToSingleLineForAccessibility:(BOOL)accessibility;
- (void)setMenuAffordancePosition:(unint64_t)position;
- (void)setShowsMenuAffordance:(BOOL)affordance;
- (void)setSupportsAccessibilityContentSizeCategories:(BOOL)categories;
- (void)setSuppressesLabelTransitions:(BOOL)transitions;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)set_isExpanded:(BOOL)expanded;
- (void)set_isPresentingContextMenu:(BOOL)menu;
- (void)set_isRedacted:(BOOL)redacted;
- (void)set_isResizing:(BOOL)resizing;
- (void)updateProperties:(id)properties animated:(BOOL)animated;
- (void)updateVisibleMenuIfNeeded;
@end

@implementation CCUIControlTemplateView

- (void)contentStateDidChange
{
  selfCopy = self;
  _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE21contentStateDidChangeyyF_0();
}

- (id)contextMenuInteraction:(void *)interaction configuration:highlightPreviewForItemWithIdentifier:
{
  makeContextMenuPreview = [interaction makeContextMenuPreview];

  return makeContextMenuPreview;
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

- (void)setContextMenuDelegate:(id)delegate
{
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRetain();
  selfCopy = self;
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  v5 = Strong != 0;
  [(CCUIControlTemplateView *)selfCopy setContextMenuInteractionEnabled:v5];
  [(CCUIControlTemplateView *)selfCopy setShowsMenuFromSource:v5];
  swift_unknownObjectRelease();
}

- (CCUIControlTemplateViewMenuModuleDelegate)menuModuleDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setShowsMenuAffordance:(BOOL)affordance
{
  v4 = *(self + OBJC_IVAR___CCUIControlTemplateView_showsMenuAffordance);
  *(self + OBJC_IVAR___CCUIControlTemplateView_showsMenuAffordance) = affordance;
  if (v4 != affordance)
  {
    selfCopy = self;
    sub_1D16B45A8();
  }
}

- (void)setMenuAffordancePosition:(unint64_t)position
{
  v4 = *(self + OBJC_IVAR___CCUIControlTemplateView_menuAffordancePosition);
  *(self + OBJC_IVAR___CCUIControlTemplateView_menuAffordancePosition) = position;
  if (v4 != position)
  {
    selfCopy = self;
    sub_1D16B45A8();
  }
}

- (void)set_isRedacted:(BOOL)redacted
{
  v4 = *(self + OBJC_IVAR___CCUIControlTemplateView__isRedacted);
  *(self + OBJC_IVAR___CCUIControlTemplateView__isRedacted) = redacted;
  if (v4 != redacted)
  {
    selfCopy = self;
    isRedacted = [(CCUIControlTemplateView *)selfCopy isRedacted];
    v6 = 0.35;
    if (!isRedacted)
    {
      v6 = 1.0;
    }

    [(CCUIButtonModuleView *)selfCopy setGlyphAlpha:v6];
  }
}

- (void)set_isResizing:(BOOL)resizing
{
  resizingCopy = resizing;
  selfCopy = self;
  sub_1D16B58C4(resizingCopy);
}

- (void)set_isExpanded:(BOOL)expanded
{
  v4 = *(self + OBJC_IVAR___CCUIControlTemplateView__isExpanded);
  *(self + OBJC_IVAR___CCUIControlTemplateView__isExpanded) = expanded;
  if (v4 != expanded)
  {
    selfCopy = self;
    [(CCUIControlTemplateView *)selfCopy setIsLimitingTitleToSingleLineForAccessibility:0];
    [(CCUIControlTemplateView *)selfCopy setNeedsLayout];
  }
}

- (void)set_isPresentingContextMenu:(BOOL)menu
{
  menuCopy = menu;
  selfCopy = self;
  sub_1D16B5F78(menuCopy);
}

- (void)setGridSizeClass:(int64_t)class
{
  selfCopy = self;
  sub_1D16B60A4(class);
}

- (void)setSuppressesLabelTransitions:(BOOL)transitions
{
  v4 = *(self + OBJC_IVAR___CCUIControlTemplateView_suppressesLabelTransitions);
  *(self + OBJC_IVAR___CCUIControlTemplateView_suppressesLabelTransitions) = transitions;
  if (v4 == 1 && !transitions)
  {
    selfCopy = self;
    _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE21contentStateDidChangeyyF_0();
  }
}

- (void)setContinuousCornerRadius:(double)radius
{
  v4 = *(self + OBJC_IVAR___CCUIControlTemplateView_continuousCornerRadius);
  *(self + OBJC_IVAR___CCUIControlTemplateView_continuousCornerRadius) = radius;
  if (v4 != radius)
  {
    selfCopy = self;
    sub_1D16B6268();
  }
}

- (void)setSupportsAccessibilityContentSizeCategories:(BOOL)categories
{
  categoriesCopy = categories;
  selfCopy = self;
  sub_1D16B63B4(categoriesCopy);
}

- (void)updateProperties:(id)properties animated:(BOOL)animated
{
  v6 = _Block_copy(properties);
  _Block_copy(v6);
  selfCopy = self;
  sub_1D16C2074(animated, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)updateVisibleMenuIfNeeded
{
  selfCopy = self;
  sub_1D16B7770();
}

- (CCUIModuleContentMetrics)contentMetrics
{
  v4.receiver = self;
  v4.super_class = CCUIControlTemplateView;
  contentMetrics = [(CCUIButtonModuleView *)&v4 contentMetrics];

  return contentMetrics;
}

- (void)setContentMetrics:(id)metrics
{
  v8.receiver = self;
  v8.super_class = CCUIControlTemplateView;
  metricsCopy = metrics;
  selfCopy = self;
  contentMetrics = [(CCUIButtonModuleView *)&v8 contentMetrics];
  v7.receiver = selfCopy;
  v7.super_class = CCUIControlTemplateView;
  [(CCUIButtonModuleView *)&v7 setContentMetrics:metricsCopy];
  sub_1D16B7BCC(contentMetrics);
}

- (CGRect)glyphContentFrame
{
  selfCopy = self;
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
  selfCopy = self;
  v2 = [(CCUIControlTemplateView *)selfCopy visualStylingProviderForCategory:1];
  if (v2)
  {
    v3 = v2;
    v4 = v2;
    sub_1D16B8A08(v4, 1, v3);
  }
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  selfCopy = self;
  v5 = CCUIControlTemplateView.visualStylingProvider(for:)(category);

  return v5;
}

- (NSArray)requiredVisualStyleCategories
{
  selfCopy = self;
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

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  selfCopy = self;
  sub_1D16B9DA4(provider, category);
}

- (void)layoutSubviews
{
  selfCopy = self;
  CCUIControlTemplateView.layoutSubviews()();
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = CCUIControlTemplateView;
  selfCopy = self;
  [(CCUIButtonModuleView *)&v6 didMoveToWindow];
  if ([(CCUIControlTemplateView *)selfCopy _isInAWindow])
  {
    v5.receiver = selfCopy;
    v5.super_class = CCUIControlTemplateView;
    v3 = [(CCUIControlTemplateView *)&v5 visualStylingProviderForCategory:1];
    if (v3)
    {
      v4 = v3;
      [(CCUIControlTemplateView *)selfCopy setVisualStylingProvider:v3 forCategory:1];

      selfCopy = v4;
    }
  }
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  selfCopy = self;
  v9 = _sSo23CCUIControlTemplateViewC18ControlCenterUIKitE22contextMenuInteraction_016configurationForH10AtLocationSo09UIContextH13ConfigurationCSgSo0nhI0C_So7CGPointVtF_0(x, y);

  return v9;
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v11.receiver = self;
  v11.super_class = CCUIControlTemplateView;
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  [(CCUIControlTemplateView *)&v11 contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animator];
  [(CCUIControlTemplateView *)selfCopy setPresentingContextMenu:0, v11.receiver, v11.super_class];

  swift_unknownObjectRelease();
}

- (void)_contextMenuInteraction:(id)interaction shouldPresentWithCompletion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  selfCopy = self;
  _Block_copy(v5);
  contextMenuDelegate = [(CCUIControlTemplateView *)selfCopy contextMenuDelegate];
  if (contextMenuDelegate)
  {
    v9 = contextMenuDelegate;
    if (([(CCUIControlTemplateViewContextMenuDelegate *)contextMenuDelegate respondsToSelector:sel_contextMenuShouldPresentForControlTemplateView_withCompletion_]& 1) != 0)
    {
      _Block_release(v5);
      v11[4] = sub_1D16C291C;
      v11[5] = v6;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 1107296256;
      v11[2] = sub_1D16C2E3C;
      v11[3] = &block_descriptor_103;
      v10 = _Block_copy(v11);

      [(CCUIControlTemplateViewContextMenuDelegate *)v9 contextMenuShouldPresentForControlTemplateView:selfCopy withCompletion:v10];
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
  selfCopy = self;
  contextMenuDelegate = [(CCUIControlTemplateView *)selfCopy contextMenuDelegate];
  if (contextMenuDelegate)
  {
    v4 = contextMenuDelegate;
    if (([(CCUIControlTemplateViewContextMenuDelegate *)contextMenuDelegate respondsToSelector:sel_contextMenuPreviewForControlTemplateView_]& 1) != 0)
    {
      initWithView_ = [(CCUIControlTemplateViewContextMenuDelegate *)v4 contextMenuPreviewForControlTemplateView:selfCopy];
      swift_unknownObjectRelease();
      if (initWithView_)
      {
        goto LABEL_7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  initWithView_ = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
LABEL_7:

  return initWithView_;
}

- (void)primaryActionTriggered
{
  selfCopy = self;
  sub_1D16BD328();
}

- (void)didUpdatePreferredContentSizeCategory
{
  selfCopy = self;
  sub_1D16BEFB0();
}

- (void)didUpdateResizingConfiguration
{
  selfCopy = self;
  sub_1D16B5A08();
}

- (void)setIsLimitingTitleToSingleLineForAccessibility:(BOOL)accessibility
{
  accessibilityCopy = accessibility;
  selfCopy = self;
  sub_1D16BF4E4(accessibilityCopy);
}

@end