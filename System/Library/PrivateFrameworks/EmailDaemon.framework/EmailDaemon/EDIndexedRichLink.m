@interface EDIndexedRichLink
- (EDIndexedRichLink)init;
- (EDIndexedRichLink)initWithMessageID:(id)a3 richLinkID:(id)a4;
@end

@implementation EDIndexedRichLink

- (EDIndexedRichLink)initWithMessageID:(id)a3 richLinkID:(id)a4
{
  *(&self->super.isa + OBJC_IVAR___EDIndexedRichLink_messageID) = a3;
  *(&self->super.isa + OBJC_IVAR___EDIndexedRichLink_richLinkID) = a4;
  v8.receiver = self;
  v8.super_class = EDIndexedRichLink;
  v5 = a3;
  v6 = a4;
  return [(EDIndexedRichLink *)&v8 init];
}

- (EDIndexedRichLink)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end