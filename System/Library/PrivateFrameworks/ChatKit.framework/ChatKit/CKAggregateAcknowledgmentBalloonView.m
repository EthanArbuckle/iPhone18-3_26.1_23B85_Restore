@interface CKAggregateAcknowledgmentBalloonView
- (BOOL)hidesFirstTapbackTail;
- (BOOL)invertTailDirection;
- (CKGradientReferenceView)gradientReferenceView;
- (NSString)description;
- (char)gradientColor;
- (char)solidColor;
- (void)configureForAggregateAcknowledgmentChatItem:(id)a3;
- (void)configureGestureRecognizers;
- (void)configurePileForChatItem:(id)a3;
- (void)layoutSubviews;
- (void)longPressGestureRecognized:(id)a3;
- (void)playInsertionAnimationOnTopPlatter;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setGradientReferenceView:(id)a3;
- (void)setHidesFirstTapbackTail:(BOOL)a3;
- (void)setInvertTailDirection:(BOOL)a3;
- (void)setIsFadedOut:(BOOL)a3;
- (void)tapGestureRecognized:(id)a3;
- (void)transcriptBackgroundLuminanceChanged;
- (void)updateForBackgroundState;
@end

@implementation CKAggregateAcknowledgmentBalloonView

- (void)configureForAggregateAcknowledgmentChatItem:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKAggregateAcknowledgmentBalloonView;
  v4 = a3;
  [(CKAcknowledgmentBalloonView *)&v5 configureForAggregateAcknowledgmentChatItem:v4];
  [(CKAggregateAcknowledgmentBalloonView *)self configurePileForChatItem:v4, v5.receiver, v5.super_class];
}

- (BOOL)hidesFirstTapbackTail
{
  v3 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_hidesFirstTapbackTail;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHidesFirstTapbackTail:(BOOL)a3
{
  v4 = self;
  sub_19091433C(a3);
}

- (void)setIsFadedOut:(BOOL)a3
{
  v4 = self;
  sub_190915A24(a3);
}

- (CKGradientReferenceView)gradientReferenceView
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setGradientReferenceView:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_1909197A8();
}

- (BOOL)invertTailDirection
{
  v3 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_invertTailDirection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setInvertTailDirection:(BOOL)a3
{
  v3 = a3;
  v5 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_invertTailDirection;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v3;
  if (v6 != v3)
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
  v2 = self;
  sub_190916674();
}

- (void)configurePileForChatItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190914D38(v4);
}

- (void)prepareForDisplay
{
  v2 = self;
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
  v2 = self;
  sub_190917364();
}

- (void)playInsertionAnimationOnTopPlatter
{
  v2 = self;
  sub_19091559C();
}

- (void)updateForBackgroundState
{
  v2 = self;
  v3 = [(CKAggregateAcknowledgmentBalloonView *)v2 traitCollection];
  v4 = [v3 isTranscriptBackgroundActive];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_forcesMaterialBackground;
    swift_beginAccess();
    v5 = *(v2 + v6);
  }

  *(v2 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_wantsMaterialBackground) = v5;
  sub_190915D9C();
}

- (void)configureGestureRecognizers
{
  v2 = self;
  AggregateAcknowledgmentBalloonView.configureGestureRecognizers()();
}

- (void)tapGestureRecognized:(id)a3
{
  v4 = a3;
  v5 = self;
  AggregateAcknowledgmentBalloonView.tapGestureRecognized(_:)(v4);
}

- (void)longPressGestureRecognized:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1909189B8(v4);
}

- (NSString)description
{
  v2 = self;
  AggregateAcknowledgmentBalloonView.description.getter();

  v3 = sub_190D56ED0();

  return v3;
}

@end