@interface IMPurgedAttachmentHandler
- (IMPurgedAttachmentHandler)init;
- (IMPurgedAttachmentHandler)initWithBatchSize:(int64_t)size;
- (IMPurgedAttachmentHandlerDelegate)delegate;
- (void)complete;
- (void)registerPurgedAttachmentAtPath:(id)path;
@end

@implementation IMPurgedAttachmentHandler

- (IMPurgedAttachmentHandlerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (IMPurgedAttachmentHandler)initWithBatchSize:(int64_t)size
{
  *(self + OBJC_IVAR___IMPurgedAttachmentHandler_currentBatch) = 0;
  v5 = MEMORY[0x277D84F90];
  *(self + OBJC_IVAR___IMPurgedAttachmentHandler_attachmentPaths) = MEMORY[0x277D84F90];
  *(self + OBJC_IVAR___IMPurgedAttachmentHandler_successfullyDeletedLivePhotoComponents) = v5;
  *(self + OBJC_IVAR___IMPurgedAttachmentHandler_livePhotoComponentDeletionFailures) = v5;
  *(self + OBJC_IVAR___IMPurgedAttachmentHandler_livePhotoBundleOrComponentPaths) = v5;
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___IMPurgedAttachmentHandler_batchSize) = size;
  v7.receiver = self;
  v7.super_class = IMPurgedAttachmentHandler;
  return [(IMPurgedAttachmentHandler *)&v7 init];
}

- (void)registerPurgedAttachmentAtPath:(id)path
{
  if (path)
  {
    v4 = sub_22B7DB6A8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  IMPurgedAttachmentHandler.registerPurgedAttachment(at:)(v8);
}

- (void)complete
{
  selfCopy = self;
  sub_22B71915C();
  *(selfCopy + OBJC_IVAR___IMPurgedAttachmentHandler_currentBatch) = 0;
}

- (IMPurgedAttachmentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end