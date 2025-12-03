@interface IMDSpotlightDaemonClient
- (void)provideFileURLsForBundleID:(id)d protectionClass:(id)class itemIdentifiers:(id)identifiers typeIdentifier:(id)identifier options:(int64_t)options completionHandler:(id)handler;
- (void)reindexAllItemsForBundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler;
- (void)reindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler;
- (void)retrieveLocalFileURLForFileTransferWithGUIDs:(id)ds options:(int64_t)options completion:(id)completion;
- (void)searchableItemsDidUpdate:(id)update mask:(int64_t)mask;
- (void)updateChatsUsingMessageGUIDsAndSummaries:(id)summaries;
- (void)updateChatsUsingMessageGUIDsWithPriority:(id)priority;
@end

@implementation IMDSpotlightDaemonClient

- (void)reindexAllItemsForBundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_22B7DB6A8();
  v9 = v8;
  v10 = sub_22B7DB6A8();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  selfCopy = self;
  sub_22B7A6CA4(v7, v9, v10, v12, sub_22B7AA6DC, v13);
}

- (void)reindexItemsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class acknowledgementHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_22B7DB918();
  v9 = sub_22B7DB6A8();
  v11 = v10;
  v12 = sub_22B7DB6A8();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  selfCopy = self;
  sub_22B7A70CC(v8, v9, v11, v12, v14, sub_22B7AA6B4, v15);
}

- (void)provideFileURLsForBundleID:(id)d protectionClass:(id)class itemIdentifiers:(id)identifiers typeIdentifier:(id)identifier options:(int64_t)options completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = sub_22B7DB6A8();
  v13 = v12;
  v14 = sub_22B7DB6A8();
  v16 = v15;
  v17 = sub_22B7DB918();
  v18 = sub_22B7DB6A8();
  v20 = v19;
  _Block_copy(v10);
  selfCopy = self;
  sub_22B7A993C(v11, v13, v14, v16, v17, v18, v20, options, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)searchableItemsDidUpdate:(id)update mask:(int64_t)mask
{
  sub_22B4D01A0(0, &qword_28141F260, 0x277CC34B0);
  v6 = sub_22B7DB918();
  selfCopy = self;
  sub_22B7A7848(v6, mask);
}

- (void)updateChatsUsingMessageGUIDsAndSummaries:(id)summaries
{
  sub_22B4D01A0(0, &qword_28141F1F0, 0x277CCA898);
  v4 = sub_22B7DB588();
  selfCopy = self;
  sub_22B7AA288(v4, &unk_283F1F938, sub_22B7AA564, &unk_283F1F950);
}

- (void)updateChatsUsingMessageGUIDsWithPriority:(id)priority
{
  v4 = sub_22B7DB918();
  selfCopy = self;
  sub_22B7AA288(v4, &unk_283F1F8E8, sub_22B7AA55C, &unk_283F1F900);
}

- (void)retrieveLocalFileURLForFileTransferWithGUIDs:(id)ds options:(int64_t)options completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_22B7DB918();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  selfCopy = self;
  sub_22B7A8150(v8, options, sub_22B7A8DF8, v9);
}

@end