@interface CKTranscriptionView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)didMoveToSuperview;
- (void)didToggleLineCountChange:(id)a3;
- (void)layoutSubviews;
@end

@implementation CKTranscriptionView

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC7ChatKit19CKTranscriptionView_textView) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1908DCAEC();
}

- (void)didToggleLineCountChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1908DD524();
}

- (void)didMoveToSuperview
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for CKTranscriptionView();
  [(CKTranscriptionView *)&v2 didMoveToSuperview];
}

@end