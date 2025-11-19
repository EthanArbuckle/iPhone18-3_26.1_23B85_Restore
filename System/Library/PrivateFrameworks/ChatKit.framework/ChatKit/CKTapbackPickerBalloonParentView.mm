@interface CKTapbackPickerBalloonParentView
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKTapbackPickerBalloonDisplayConfiguration)displayConfiguration;
- (CKTapbackPickerBalloonParentView)initWithFrame:(CGRect)a3;
- (CKTapbackPickerViewController)tapbackPickerViewController;
- (UIColor)tintColor;
- (double)preferredOriginXWithBalloonSourceFrame:(CGRect)a3 presentationBounds:(CGRect)a4 proposedSize:(CGSize)a5;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)currentDisplayMode;
- (void)dealloc;
- (void)dismiss;
- (void)insertEmoji:(id)a3;
- (void)insertSticker:(id)a3;
- (void)insertTapback:(id)a3;
- (void)interfaceStyleChanged;
- (void)layoutSubviews;
- (void)returnToSelection;
- (void)setCurrentDisplayMode:(int64_t)a3;
- (void)setDisplayConfiguration:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setGradientReferenceView:(id)a3;
- (void)setTapbackPickerViewController:(id)a3;
- (void)setTintColor:(id)a3;
- (void)showEmojiKeyboard;
- (void)textViewDidChange:(id)a3;
- (void)updateForBackgroundState;
@end

@implementation CKTapbackPickerBalloonParentView

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TapbackPickerBalloonParentView();
  [(CKTapbackPickerBalloonParentView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TapbackPickerBalloonParentView();
  v7 = v8.receiver;
  [(CKTapbackPickerBalloonParentView *)&v8 setFrame:x, y, width, height];
  sub_190929BD8();
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TapbackPickerBalloonParentView();
  v2 = [(CKTapbackPickerBalloonParentView *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TapbackPickerBalloonParentView();
  v4 = a3;
  v5 = v6.receiver;
  [(CKTapbackPickerBalloonParentView *)&v6 setTintColor:v4];
  sub_190929D5C();
}

- (void)setGradientReferenceView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_19092A080(a3);
}

- (CKTapbackPickerViewController)tapbackPickerViewController
{
  v3 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTapbackPickerViewController:(id)a3
{
  v5 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_19092A530();
}

- (CKTapbackPickerBalloonDisplayConfiguration)displayConfiguration
{
  v3 = OBJC_IVAR___CKTapbackPickerBalloonParentView_displayConfiguration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDisplayConfiguration:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_19092FF80(v5);
}

- (int64_t)currentDisplayMode
{
  v3 = OBJC_IVAR___CKTapbackPickerBalloonParentView_currentDisplayMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCurrentDisplayMode:(int64_t)a3
{
  v4 = self;
  sub_19092AA74(a3);
}

- (void)updateForBackgroundState
{
  v2 = self;
  sub_19092B548();
}

- (void)interfaceStyleChanged
{
  v2 = self;
  sub_19092E2B0();
}

- (void)dealloc
{
  v2 = self;
  sub_19092B854();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for TapbackPickerBalloonParentView();
  [(CKTapbackPickerBalloonParentView *)&v3 dealloc];
}

- (void)dismiss
{
  v2 = self;
  sub_19092D1EC();
}

- (void)returnToSelection
{
  v2 = self;
  sub_19092D4D0();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_19092DDD0(a4, x, y);

  return v10;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_19092E0F0();
}

- (CKTapbackPickerBalloonParentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)showEmojiKeyboard
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong respondsToSelector_];
    v6 = self;
    if (v5)
    {
      [v4 tapbackPickerBalloonParentViewRequestedShowEmojiKeyboard_];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v7 = self;
  }

  [*(self + OBJC_IVAR___CKTapbackPickerBalloonParentView_inputController) becomeFirstResponder];
}

- (void)insertEmoji:(id)a3
{
  v4 = sub_190D56F10();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  TapbackPickerBalloonParentView.insertEmoji(_:)(v8);
}

- (void)insertTapback:(id)a3
{
  v4 = a3;
  v5 = self;
  TapbackPickerBalloonParentView.insertTapback(tapback:)(v4);
}

- (void)insertSticker:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_190CE9A90(v5);
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  TapbackPickerBalloonParentView.textViewDidChange(_:)(v4);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = _s7ChatKit30TapbackPickerBalloonParentViewC12sizeThatFitsySo6CGSizeVAFF_0();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (double)preferredOriginXWithBalloonSourceFrame:(CGRect)a3 presentationBounds:(CGRect)a4 proposedSize:(CGSize)a5
{
  width = a4.size.width;
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v7 = a3.size.height;
  v8 = a3.size.width;
  v9 = a3.origin.y;
  v10 = a3.origin.x;
  v11 = self;
  TapbackPickerBalloonParentView.preferredOriginX(withBalloonSourceFrame:presentationBounds:proposedSize:)(v10, v9, v8, v7, x, y, width, height, v17, v18);
  v13 = v12;

  return v13;
}

@end