@interface DownloadableAttachmentStateChangeListener
- (_TtC15HealthRecordsUI41DownloadableAttachmentStateChangeListener)init;
- (void)downloadableAttachmentDidChangeState:(id)state;
@end

@implementation DownloadableAttachmentStateChangeListener

- (void)downloadableAttachmentDidChangeState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1D1213584(stateCopy);
}

- (_TtC15HealthRecordsUI41DownloadableAttachmentStateChangeListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end