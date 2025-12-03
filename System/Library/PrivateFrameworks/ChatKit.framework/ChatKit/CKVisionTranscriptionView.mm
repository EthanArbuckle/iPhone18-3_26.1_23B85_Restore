@interface CKVisionTranscriptionView
- (_TtC7ChatKit25CKVisionTranscriptionView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CKVisionTranscriptionView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190BDD720();
}

- (_TtC7ChatKit25CKVisionTranscriptionView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC7ChatKit25CKVisionTranscriptionView_textViewTrailingAnchorConstraintToExpansionButton;
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x1E696ACD8]) init];
  v9 = OBJC_IVAR____TtC7ChatKit25CKVisionTranscriptionView_textViewTrailingAnchorConstraintToContainer;
  *(&self->super.super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x1E696ACD8]) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for CKVisionTranscriptionView();
  return [(CKTranscriptionView *)&v11 initWithFrame:x, y, width, height];
}

@end