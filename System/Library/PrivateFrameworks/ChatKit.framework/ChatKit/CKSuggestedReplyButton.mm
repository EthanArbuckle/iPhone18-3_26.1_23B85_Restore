@interface CKSuggestedReplyButton
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)isHighlighted;
- (_TtC7ChatKit22CKSuggestedReplyButton)initWithCoder:(id)coder;
- (_TtC7ChatKit22CKSuggestedReplyButton)initWithFrame:(CGRect)frame;
- (void)cancelTrackingWithEvent:(id)event;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation CKSuggestedReplyButton

- (_TtC7ChatKit22CKSuggestedReplyButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit22CKSuggestedReplyButton____lazy_storage___titleLabel) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKSuggestedReplyButton();
  return [(CKSuggestedReplyButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_190CF8340(highlighted);
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  selfCopy = self;
  [(CKSuggestedReplyButton *)selfCopy setHighlighted:1];
  v11.receiver = selfCopy;
  v11.super_class = type metadata accessor for CKSuggestedReplyButton();
  v9 = [(CKSuggestedReplyButton *)&v11 beginTrackingWithTouch:touchCopy withEvent:eventCopy];

  return v9;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  selfCopy = self;
  [(CKSuggestedReplyButton *)selfCopy setHighlighted:0];
  v9.receiver = selfCopy;
  v9.super_class = type metadata accessor for CKSuggestedReplyButton();
  [(CKSuggestedReplyButton *)&v9 endTrackingWithTouch:touchCopy withEvent:eventCopy];
}

- (void)cancelTrackingWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  [(CKSuggestedReplyButton *)selfCopy setHighlighted:0];
  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for CKSuggestedReplyButton();
  [(CKSuggestedReplyButton *)&v6 cancelTrackingWithEvent:eventCopy];
}

- (_TtC7ChatKit22CKSuggestedReplyButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end