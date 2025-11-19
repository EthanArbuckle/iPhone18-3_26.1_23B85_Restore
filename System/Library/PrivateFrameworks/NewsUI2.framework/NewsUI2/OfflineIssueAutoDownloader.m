@interface OfflineIssueAutoDownloader
- (_TtC7NewsUI226OfflineIssueAutoDownloader)init;
- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8;
@end

@implementation OfflineIssueAutoDownloader

- (_TtC7NewsUI226OfflineIssueAutoDownloader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8
{
  if (a4)
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
  v13 = self;

  [v10 scheduleLowPriorityBlock_];

  _Block_release(v12);
}

@end