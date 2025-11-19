@interface IMDSpotlightDaemonClient
- (void)provideFileURLsForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifiers:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8;
- (void)reindexAllItemsForBundleID:(id)a3 protectionClass:(id)a4 acknowledgementHandler:(id)a5;
- (void)reindexItemsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 acknowledgementHandler:(id)a6;
- (void)retrieveLocalFileURLForFileTransferWithGUIDs:(id)a3 options:(int64_t)a4 completion:(id)a5;
- (void)searchableItemsDidUpdate:(id)a3 mask:(int64_t)a4;
- (void)updateChatsUsingMessageGUIDsAndSummaries:(id)a3;
- (void)updateChatsUsingMessageGUIDsWithPriority:(id)a3;
@end

@implementation IMDSpotlightDaemonClient

- (void)reindexAllItemsForBundleID:(id)a3 protectionClass:(id)a4 acknowledgementHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_22B7DB6A8();
  v9 = v8;
  v10 = sub_22B7DB6A8();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  v14 = self;
  sub_22B7A6CA4(v7, v9, v10, v12, sub_22B7AA6DC, v13);
}

- (void)reindexItemsWithIdentifiers:(id)a3 bundleID:(id)a4 protectionClass:(id)a5 acknowledgementHandler:(id)a6
{
  v7 = _Block_copy(a6);
  v8 = sub_22B7DB918();
  v9 = sub_22B7DB6A8();
  v11 = v10;
  v12 = sub_22B7DB6A8();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  v16 = self;
  sub_22B7A70CC(v8, v9, v11, v12, v14, sub_22B7AA6B4, v15);
}

- (void)provideFileURLsForBundleID:(id)a3 protectionClass:(id)a4 itemIdentifiers:(id)a5 typeIdentifier:(id)a6 options:(int64_t)a7 completionHandler:(id)a8
{
  v10 = _Block_copy(a8);
  v11 = sub_22B7DB6A8();
  v13 = v12;
  v14 = sub_22B7DB6A8();
  v16 = v15;
  v17 = sub_22B7DB918();
  v18 = sub_22B7DB6A8();
  v20 = v19;
  _Block_copy(v10);
  v21 = self;
  sub_22B7A993C(v11, v13, v14, v16, v17, v18, v20, a7, v21, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)searchableItemsDidUpdate:(id)a3 mask:(int64_t)a4
{
  sub_22B4D01A0(0, &qword_28141F260, 0x277CC34B0);
  v6 = sub_22B7DB918();
  v7 = self;
  sub_22B7A7848(v6, a4);
}

- (void)updateChatsUsingMessageGUIDsAndSummaries:(id)a3
{
  sub_22B4D01A0(0, &qword_28141F1F0, 0x277CCA898);
  v4 = sub_22B7DB588();
  v5 = self;
  sub_22B7AA288(v4, &unk_283F1F938, sub_22B7AA564, &unk_283F1F950);
}

- (void)updateChatsUsingMessageGUIDsWithPriority:(id)a3
{
  v4 = sub_22B7DB918();
  v5 = self;
  sub_22B7AA288(v4, &unk_283F1F8E8, sub_22B7AA55C, &unk_283F1F900);
}

- (void)retrieveLocalFileURLForFileTransferWithGUIDs:(id)a3 options:(int64_t)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_22B7DB918();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  sub_22B7A8150(v8, a4, sub_22B7A8DF8, v9);
}

@end