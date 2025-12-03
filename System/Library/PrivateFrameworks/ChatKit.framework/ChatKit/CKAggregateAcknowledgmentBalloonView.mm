@interface CKAggregateAcknowledgmentBalloonView
- (BOOL)hidesFirstTapbackTail;
- (BOOL)invertTailDirection;
- (CKGradientReferenceView)gradientReferenceView;
- (NSString)description;
- (char)gradientColor;
- (char)solidColor;
- (void)configureForAggregateAcknowledgmentChatItem:(id)item;
- (void)configureGestureRecognizers;
- (void)configurePileForChatItem:(id)item;
- (void)layoutSubviews;
- (void)longPressGestureRecognized:(id)recognized;
- (void)playInsertionAnimationOnTopPlatter;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setGradientReferenceView:(id)view;
- (void)setHidesFirstTapbackTail:(BOOL)tail;
- (void)setInvertTailDirection:(BOOL)direction;
- (void)setIsFadedOut:(BOOL)out;
- (void)tapGestureRecognized:(id)recognized;
- (void)transcriptBackgroundLuminanceChanged;
- (void)updateForBackgroundState;
@end

@implementation CKAggregateAcknowledgmentBalloonView

- (void)configureForAggregateAcknowledgmentChatItem:(id)item
{
  v5.receiver = self;
  v5.super_class = CKAggregateAcknowledgmentBalloonView;
  itemCopy = item;
  [(CKAcknowledgmentBalloonView *)&v5 configureForAggregateAcknowledgmentChatItem:itemCopy];
  [(CKAggregateAcknowledgmentBalloonView *)self configurePileForChatItem:itemCopy, v5.receiver, v5.super_class];
}

- (BOOL)hidesFirstTapbackTail
{
  v3 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesFirstTapbackTail;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHidesFirstTapbackTail:(BOOL)tail
{
  selfCopy = self;
  sub_19091433C(tail);
}

- (void)setIsFadedOut:(BOOL)out
{
  selfCopy = self;
  sub_190915A24(out);
}

- (CKGradientReferenceView)gradientReferenceView
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setGradientReferenceView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1909197A8();
}

- (BOOL)invertTailDirection
{
  v3 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_invertTailDirection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setInvertTailDirection:(BOOL)direction
{
  directionCopy = direction;
  v5 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_invertTailDirection;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = directionCopy;
  if (v6 != directionCopy)
  {
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (char)gradientColor
{
  v3 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_gradientColor;
  swift_beginAccess();
  return *(self + v3);
}

- (char)solidColor
{
  v3 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_solidColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)transcriptBackgroundLuminanceChanged
{
  selfCopy = self;
  sub_190916674();
}

- (void)configurePileForChatItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_190914D38(itemCopy);
}

- (void)prepareForDisplay
{
  selfCopy = self;
  sub_190916EB4();
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AggregateAcknowledgmentBalloonView();
  v2 = v3.receiver;
  [(CKBalloonView *)&v3 layoutSubviews];
  sub_190917C7C();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_190917364();
}

- (void)playInsertionAnimationOnTopPlatter
{
  selfCopy = self;
  sub_19091559C();
}

- (void)updateForBackgroundState
{
  selfCopy = self;
  traitCollection = [(CKAggregateAcknowledgmentBalloonView *)selfCopy traitCollection];
  isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

  if (isTranscriptBackgroundActive)
  {
    v5 = 1;
  }

  else
  {
    v6 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_forcesMaterialBackground;
    swift_beginAccess();
    v5 = *(selfCopy + v6);
  }

  *(selfCopy + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsMaterialBackground) = v5;
  sub_190915D9C();
}

- (void)configureGestureRecognizers
{
  selfCopy = self;
  AggregateAcknowledgmentBalloonView.configureGestureRecognizers()();
}

- (void)tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  selfCopy = self;
  AggregateAcknowledgmentBalloonView.tapGestureRecognized(_:)(recognizedCopy);
}

- (void)longPressGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  selfCopy = self;
  sub_1909189B8(recognizedCopy);
}

- (NSString)description
{
  selfCopy = self;
  AggregateAcknowledgmentBalloonView.description.getter();

  v3 = sub_190D56ED0();

  return v3;
}

@end