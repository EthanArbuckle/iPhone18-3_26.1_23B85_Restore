@interface TSChannelIssuesGroupConfig
- (TSChannelIssuesGroupConfig)init;
- (TSChannelIssuesGroupConfig)initWithIssueIDs:(id)a3 channel:(id)a4 title:(id)a5;
@end

@implementation TSChannelIssuesGroupConfig

- (TSChannelIssuesGroupConfig)initWithIssueIDs:(id)a3 channel:(id)a4 title:(id)a5
{
  ObjectType = swift_getObjectType();
  v8 = sub_219BF5924();
  v9 = sub_219BF5414();
  *(&self->super.isa + OBJC_IVAR___TSChannelIssuesGroupConfig_issueIDs) = v8;
  *(&self->super.isa + OBJC_IVAR___TSChannelIssuesGroupConfig_channel) = a4;
  v10 = (self + OBJC_IVAR___TSChannelIssuesGroupConfig_title);
  *v10 = v9;
  v10[1] = v11;
  v13.receiver = self;
  v13.super_class = ObjectType;
  swift_unknownObjectRetain();
  return [(TSChannelIssuesGroupConfig *)&v13 init];
}

- (TSChannelIssuesGroupConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end