@interface CKTapbackPickerBalloonParentView
- (CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKTapbackPickerBalloonDisplayConfiguration)displayConfiguration;
- (CKTapbackPickerBalloonParentView)initWithFrame:(CGRect)frame;
- (CKTapbackPickerViewController)tapbackPickerViewController;
- (UIColor)tintColor;
- (double)preferredOriginXWithBalloonSourceFrame:(CGRect)frame presentationBounds:(CGRect)bounds proposedSize:(CGSize)size;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int64_t)currentDisplayMode;
- (void)dealloc;
- (void)dismiss;
- (void)insertEmoji:(id)emoji;
- (void)insertSticker:(id)sticker;
- (void)insertTapback:(id)tapback;
- (void)interfaceStyleChanged;
- (void)layoutSubviews;
- (void)returnToSelection;
- (void)setCurrentDisplayMode:(int64_t)mode;
- (void)setDisplayConfiguration:(id)configuration;
- (void)setFrame:(CGRect)frame;
- (void)setGradientReferenceView:(id)view;
- (void)setTapbackPickerViewController:(id)controller;
- (void)setTintColor:(id)color;
- (void)showEmojiKeyboard;
- (void)textViewDidChange:(id)change;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  tintColor = [(CKTapbackPickerBalloonParentView *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TapbackPickerBalloonParentView();
  colorCopy = color;
  v5 = v6.receiver;
  [(CKTapbackPickerBalloonParentView *)&v6 setTintColor:colorCopy];
  sub_190929D5C();
}

- (void)setGradientReferenceView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_19092A080(view);
}

- (CKTapbackPickerViewController)tapbackPickerViewController
{
  v3 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTapbackPickerViewController:(id)controller
{
  v5 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = controller;
  controllerCopy = controller;
  selfCopy = self;

  sub_19092A530();
}

- (CKTapbackPickerBalloonDisplayConfiguration)displayConfiguration
{
  v3 = OBJC_IVAR___CKTapbackPickerBalloonParentView_displayConfiguration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_19092FF80(configurationCopy);
}

- (int64_t)currentDisplayMode
{
  v3 = OBJC_IVAR___CKTapbackPickerBalloonParentView_currentDisplayMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCurrentDisplayMode:(int64_t)mode
{
  selfCopy = self;
  sub_19092AA74(mode);
}

- (void)updateForBackgroundState
{
  selfCopy = self;
  sub_19092B548();
}

- (void)interfaceStyleChanged
{
  selfCopy = self;
  sub_19092E2B0();
}

- (void)dealloc
{
  selfCopy = self;
  sub_19092B854();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for TapbackPickerBalloonParentView();
  [(CKTapbackPickerBalloonParentView *)&v3 dealloc];
}

- (void)dismiss
{
  selfCopy = self;
  sub_19092D1EC();
}

- (void)returnToSelection
{
  selfCopy = self;
  sub_19092D4D0();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_19092DDD0(event, x, y);

  return v10;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_19092E0F0();
}

- (CKTapbackPickerBalloonParentView)initWithFrame:(CGRect)frame
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
    respondsToSelector_ = [Strong respondsToSelector_];
    selfCopy = self;
    if (respondsToSelector_)
    {
      [v4 tapbackPickerBalloonParentViewRequestedShowEmojiKeyboard_];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    selfCopy2 = self;
  }

  [*(self + OBJC_IVAR___CKTapbackPickerBalloonParentView_inputController) becomeFirstResponder];
}

- (void)insertEmoji:(id)emoji
{
  v4 = sub_190D56F10();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  TapbackPickerBalloonParentView.insertEmoji(_:)(v8);
}

- (void)insertTapback:(id)tapback
{
  tapbackCopy = tapback;
  selfCopy = self;
  TapbackPickerBalloonParentView.insertTapback(tapback:)(tapbackCopy);
}

- (void)insertSticker:(id)sticker
{
  stickerCopy = sticker;
  selfCopy = self;
  sub_190CE9A90(stickerCopy);
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  TapbackPickerBalloonParentView.textViewDidChange(_:)(changeCopy);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = _s7ChatKit30TapbackPickerBalloonParentViewC12sizeThatFitsySo6CGSizeVAFF_0();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (double)preferredOriginXWithBalloonSourceFrame:(CGRect)frame presentationBounds:(CGRect)bounds proposedSize:(CGSize)size
{
  width = bounds.size.width;
  height = bounds.size.height;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v7 = frame.size.height;
  v8 = frame.size.width;
  v9 = frame.origin.y;
  v10 = frame.origin.x;
  selfCopy = self;
  TapbackPickerBalloonParentView.preferredOriginX(withBalloonSourceFrame:presentationBounds:proposedSize:)(v10, v9, v8, v7, x, y, width, height, v17, v18);
  v13 = v12;

  return v13;
}

@end