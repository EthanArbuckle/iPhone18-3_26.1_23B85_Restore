@interface EDIndexedAttachment
- (EDIndexedAttachment)init;
- (EDIndexedAttachment)initWithMessageID:(id)d attachmentID:(id)iD;
@end

@implementation EDIndexedAttachment

- (EDIndexedAttachment)initWithMessageID:(id)d attachmentID:(id)iD
{
  *(&self->super.isa + OBJC_IVAR___EDIndexedAttachment_messageID) = d;
  *(&self->super.isa + OBJC_IVAR___EDIndexedAttachment_attachmentID) = iD;
  v8.receiver = self;
  v8.super_class = EDIndexedAttachment;
  dCopy = d;
  iDCopy = iD;
  return [(EDIndexedAttachment *)&v8 init];
}

- (EDIndexedAttachment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end