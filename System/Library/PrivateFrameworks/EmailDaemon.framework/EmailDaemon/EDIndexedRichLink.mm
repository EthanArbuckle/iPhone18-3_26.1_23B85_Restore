@interface EDIndexedRichLink
- (EDIndexedRichLink)init;
- (EDIndexedRichLink)initWithMessageID:(id)d richLinkID:(id)iD;
@end

@implementation EDIndexedRichLink

- (EDIndexedRichLink)initWithMessageID:(id)d richLinkID:(id)iD
{
  *(&self->super.isa + OBJC_IVAR___EDIndexedRichLink_messageID) = d;
  *(&self->super.isa + OBJC_IVAR___EDIndexedRichLink_richLinkID) = iD;
  v8.receiver = self;
  v8.super_class = EDIndexedRichLink;
  dCopy = d;
  iDCopy = iD;
  return [(EDIndexedRichLink *)&v8 init];
}

- (EDIndexedRichLink)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end