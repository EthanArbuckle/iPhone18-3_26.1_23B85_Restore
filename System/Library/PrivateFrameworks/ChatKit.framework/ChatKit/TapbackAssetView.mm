@interface TapbackAssetView
- (BOOL)isSelected;
- (CKTapbackViewDelegate)delegate;
- (UIEdgeInsets)platterEdgeInsets;
- (_TtC7ChatKit16TapbackAssetView)initWithFrame:(CGRect)frame;
- (void)configureForTapback:(id)tapback isSelected:(BOOL)selected;
- (void)layoutSubviews;
- (void)performViewControllerAppearingAnimation;
- (void)performViewControllerDismissingAnimation;
- (void)setIsSelected:(BOOL)selected;
@end

@implementation TapbackAssetView

- (UIEdgeInsets)platterEdgeInsets
{
  v2 = *(self + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_platterEdgeInsets);
  v3 = *(self + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_platterEdgeInsets + 8);
  v4 = *(self + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_platterEdgeInsets + 16);
  v5 = *(self + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_platterEdgeInsets + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CKTapbackViewDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)isSelected
{
  v3 = OBJC_IVAR____TtC7ChatKit16TapbackAssetView_isSelected;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSelected:(BOOL)selected
{
  v5 = OBJC_IVAR____TtC7ChatKit16TapbackAssetView_isSelected;
  swift_beginAccess();
  *(self + v5) = selected;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TapbackAssetView();
  v2 = v5.receiver;
  [(TapbackAssetView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC7ChatKit16TapbackAssetView_tapbackAssetLayer];
  if (v3)
  {
    v4 = v3;
    [v2 center];
    [v4 setPosition_];
  }
}

- (_TtC7ChatKit16TapbackAssetView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(self + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_attributionScaleFactor) = 0x3FF0000000000000;
  v8 = (self + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_platterEdgeInsets);
  v9 = *(MEMORY[0x1E69DDCE0] + 16);
  *v8 = *MEMORY[0x1E69DDCE0];
  v8[1] = v9;
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_tapbackAssetLayer) = 0;
  *(self + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_isSelected) = 0;
  *(self + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_stateController) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for TapbackAssetView();
  return [(TapbackAssetView *)&v11 initWithFrame:x, y, width, height];
}

- (void)configureForTapback:(id)tapback isSelected:(BOOL)selected
{
  tapbackCopy = tapback;
  selfCopy = self;
  [tapbackCopy associatedMessageType];
  _s7ChatKit16TapbackAssetViewC04loadD024forAssociatedMessageTypeySo012IMAssociatediJ0V_tF_0();
}

- (void)performViewControllerAppearingAnimation
{
  if (*(self + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_tapbackAssetLayer))
  {
    v2 = *(self + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_stateController);
    if (v2)
    {
      [v2 setInitialStatesOfLayer_];
    }
  }
}

- (void)performViewControllerDismissingAnimation
{
  selfCopy = self;
  TapbackAssetView.performViewControllerDismissingAnimation()();
}

@end