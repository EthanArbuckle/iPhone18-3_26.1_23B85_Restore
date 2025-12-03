@interface OfflineIssueAutoDownloader
- (_TtC7NewsUI226OfflineIssueAutoDownloader)init;
- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type;
@end

@implementation OfflineIssueAutoDownloader

- (_TtC7NewsUI226OfflineIssueAutoDownloader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type
{
  if (tags)
  {
    v9 = sub_219BF5D44();
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = self;
  v14[4] = sub_218BFF830;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_218793E0C;
  v14[3] = &block_descriptor_44;
  v12 = _Block_copy(v14);
  selfCopy = self;

  [v10 scheduleLowPriorityBlock_];

  _Block_release(v12);
}

@end