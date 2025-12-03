@interface EDAttachment
- (EDAttachment)init;
- (EDAttachment)initWithAttachmentMetadata:(id)metadata messageMetadata:(id)messageMetadata;
@end

@implementation EDAttachment

- (EDAttachment)initWithAttachmentMetadata:(id)metadata messageMetadata:(id)messageMetadata
{
  *(&self->super.isa + OBJC_IVAR___EDAttachment_attachmentMetadata) = metadata;
  *(&self->super.isa + OBJC_IVAR___EDAttachment_messageMetadata) = messageMetadata;
  v8.receiver = self;
  v8.super_class = EDAttachment;
  metadataCopy = metadata;
  messageMetadataCopy = messageMetadata;
  return [(EDAttachment *)&v8 init];
}

- (EDAttachment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end