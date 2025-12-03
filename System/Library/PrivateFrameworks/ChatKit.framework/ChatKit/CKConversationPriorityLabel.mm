@interface CKConversationPriorityLabel
- (BOOL)ck_highlighted;
- (_TtC7ChatKit27CKConversationPriorityLabel)initWithCoder:(id)coder;
- (_TtC7ChatKit27CKConversationPriorityLabel)initWithFrame:(CGRect)frame;
- (int64_t)classification;
- (void)setCk_highlighted:(BOOL)ck_highlighted;
- (void)setClassification:(int64_t)classification;
@end

@implementation CKConversationPriorityLabel

- (_TtC7ChatKit27CKConversationPriorityLabel)initWithFrame:(CGRect)frame
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_classification) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_ck_highlighted) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CKConversationPriorityLabel();
  v3 = [(CKConversationPriorityLabel *)&v5 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_190B4DD1C();

  return v3;
}

- (_TtC7ChatKit27CKConversationPriorityLabel)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_classification) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_ck_highlighted) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (int64_t)classification
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_classification;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setClassification:(int64_t)classification
{
  v5 = OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_classification;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = classification;
  if (v6 != classification)
  {
    selfCopy = self;
    sub_190B4DD1C();
  }
}

- (BOOL)ck_highlighted
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_ck_highlighted;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)setCk_highlighted:(BOOL)ck_highlighted
{
  ck_highlightedCopy = ck_highlighted;
  v5 = OBJC_IVAR____TtC7ChatKit27CKConversationPriorityLabel_ck_highlighted;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.isa + v5);
  *(&self->super.super.super.super.isa + v5) = ck_highlightedCopy;
  if (v6 != ck_highlightedCopy)
  {
    selfCopy = self;
    sub_190B4DD1C();
  }
}

@end