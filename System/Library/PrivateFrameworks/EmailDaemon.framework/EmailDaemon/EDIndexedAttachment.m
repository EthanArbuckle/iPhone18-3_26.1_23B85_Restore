@interface EDIndexedAttachment
- (EDIndexedAttachment)init;
- (EDIndexedAttachment)initWithMessageID:(id)a3 attachmentID:(id)a4;
@end

@implementation EDIndexedAttachment

- (EDIndexedAttachment)initWithMessageID:(id)a3 attachmentID:(id)a4
{
  *(&self->super.isa + OBJC_IVAR___EDIndexedAttachment_messageID) = a3;
  *(&self->super.isa + OBJC_IVAR___EDIndexedAttachment_attachmentID) = a4;
  v8.receiver = self;
  v8.super_class = EDIndexedAttachment;
  v5 = a3;
  v6 = a4;
  return [(EDIndexedAttachment *)&v8 init];
}

- (EDIndexedAttachment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end