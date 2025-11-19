@interface EDAttachment
- (EDAttachment)init;
- (EDAttachment)initWithAttachmentMetadata:(id)a3 messageMetadata:(id)a4;
@end

@implementation EDAttachment

- (EDAttachment)initWithAttachmentMetadata:(id)a3 messageMetadata:(id)a4
{
  *(&self->super.isa + OBJC_IVAR___EDAttachment_attachmentMetadata) = a3;
  *(&self->super.isa + OBJC_IVAR___EDAttachment_messageMetadata) = a4;
  v8.receiver = self;
  v8.super_class = EDAttachment;
  v5 = a3;
  v6 = a4;
  return [(EDAttachment *)&v8 init];
}

- (EDAttachment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end