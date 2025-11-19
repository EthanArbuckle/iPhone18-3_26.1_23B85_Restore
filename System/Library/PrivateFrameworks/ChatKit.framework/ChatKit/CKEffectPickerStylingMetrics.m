@interface CKEffectPickerStylingMetrics
- (_TtC7ChatKit28CKEffectPickerStylingMetrics)init;
- (double)roundTrackContainerViewCornerRadius;
- (double)roundTrackContainerViewWidth;
- (double)roundTrackPadding;
- (void)setRoundTrackPadding:(double)a3;
@end

@implementation CKEffectPickerStylingMetrics

- (double)roundTrackPadding
{
  v3 = OBJC_IVAR____TtC7ChatKit28CKEffectPickerStylingMetrics_roundTrackPadding;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRoundTrackPadding:(double)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit28CKEffectPickerStylingMetrics_roundTrackPadding;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)roundTrackContainerViewWidth
{
  v2 = self;
  sub_190C908F4();
  v4 = v3;

  return v4;
}

- (double)roundTrackContainerViewCornerRadius
{
  v2 = self;
  sub_190C90A0C();
  v4 = v3;

  return v4;
}

- (_TtC7ChatKit28CKEffectPickerStylingMetrics)init
{
  if (qword_1EAD52028 != -1)
  {
    swift_once();
  }

  v3 = 9.5;
  if (byte_1EAD61DA0)
  {
    v3 = 8.0;
  }

  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit28CKEffectPickerStylingMetrics_roundTrackPadding) = v3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CKEffectPickerStylingMetrics();
  return [(CKEffectPickerStylingMetrics *)&v5 init];
}

@end