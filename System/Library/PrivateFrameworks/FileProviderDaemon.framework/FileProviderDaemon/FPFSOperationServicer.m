@interface FPFSOperationServicer
- (id)disconnectDomainID:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (id)fetchPublishingURLForItemID:(id)a3 completionHandler:(id)a4;
- (id)performActionWithIdentifier:(id)a3 onItemsWithIdentifiers:(id)a4 domainIdentifier:(id)a5 completionHandler:(id)a6;
- (void)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4 completionHandler:(id)a5;
- (void)bulkItemChanges:(id)a3 changedFields:(unint64_t)a4 completionHandler:(id)a5;
- (void)deleteItemsWithIDs:(id)a3 baseVersions:(id)a4 options:(unint64_t)a5 reply:(id)a6;
- (void)fetchDefaultContainerForBundleIdentifier:(id)a3 defaultName:(id)a4 inDomainIdentifier:(id)a5 lookupOnly:(BOOL)a6 reply:(id)a7;
- (void)fetchHierarchyForItemID:(id)a3 recursively:(BOOL)a4 ignoreAlternateContentURL:(BOOL)a5 reply:(id)a6;
- (void)fetchItemID:(id)a3 reply:(id)a4;
- (void)fetchTrashIdentifiersWithCompletionHandler:(id)a3;
- (void)preflightReparentItemIDs:(id)a3 underParentID:(id)a4 reply:(id)a5;
- (void)preflightTrashItemIDs:(id)a3 completionHandler:(id)a4;
- (void)singleItemChange:(id)a3 changedFields:(unint64_t)a4 bounce:(BOOL)a5 completionHandler:(id)a6;
- (void)startOperation:(id)a3 toFetchThumbnailsForItemIdentifiers:(id)a4 size:(CGSize)a5 completionHandler:(id)a6;
- (void)startOperation:(id)a3 toFetchThumbnailsWithDictionary:(id)a4 size:(CGSize)a5 completionHandler:(id)a6;
- (void)updateIgnoreStateOfItemWithIdentifiers:(id)a3 ignoreState:(BOOL)a4 completionHandler:(id)a5;
- (void)userCheckedSuppressionCheckboxForUserInteractionIdentifier:(id)a3 domainIdentifier:(id)a4 completionHandler:(id)a5;
- (void)userInteractionErrorsForPerformingAction:(id)a3 sourceItems:(id)a4 destinationItem:(id)a5 fpProviderDomainId:(id)a6 sourceItemKeysAllowList:(id)a7 destinationItemKeysAllowList:(id)a8 completionHandler:(id)aBlock;
- (void)wakeForSessionIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation FPFSOperationServicer

- (void)fetchItemID:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a3;

  sub_1CEFD0044(v7, sub_1CEFFA830, v6);
}

- (void)startOperation:(id)a3 toFetchThumbnailsForItemIdentifiers:(id)a4 size:(CGSize)a5 completionHandler:(id)a6
{
  height = a5.height;
  width = a5.width;
  v10 = _Block_copy(a6);
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v11 = sub_1CF9E6D48();
  _Block_copy(v10);
  swift_unknownObjectRetain();

  sub_1CF927C18(a3, v11, self, v10, width, height);
  _Block_release(v10);
  _Block_release(v10);
  swift_unknownObjectRelease();
}

- (void)startOperation:(id)a3 toFetchThumbnailsWithDictionary:(id)a4 size:(CGSize)a5 completionHandler:(id)a6
{
  height = a5.height;
  width = a5.width;
  v10 = _Block_copy(a6);
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
  sub_1CF2F5F80();
  v11 = sub_1CF9E6638();
  _Block_copy(v10);
  swift_unknownObjectRetain();

  sub_1CF928030(a3, v11, self, v10, width, height);
  _Block_release(v10);
  _Block_release(v10);
  swift_unknownObjectRelease();
}

- (void)preflightReparentItemIDs:(id)a3 underParentID:(id)a4 reply:(id)a5
{
  v6 = _Block_copy(a5);
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v7 = sub_1CF9E6D48();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = a4;

  sub_1CF91A870(v7, v9, sub_1CF9284C4, v8);
}

- (void)singleItemChange:(id)a3 changedFields:(unint64_t)a4 bounce:(BOOL)a5 completionHandler:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a3;

  sub_1CF91AE28(v11, a4, a5, sub_1CF024BB0, v10);
}

- (void)bulkItemChanges:(id)a3 changedFields:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *self->backend;
  v11 = *self->request;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF9283D8;
  *(v12 + 24) = v9;
  v15[4] = sub_1CF927BEC;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1CF91B0AC;
  v15[3] = &block_descriptor_822;
  v13 = _Block_copy(v15);
  v14 = a3;

  [v10 bulkItemChanges:v14 changedFields:a4 request:v11 completionHandler:v13];

  _Block_release(v13);
}

- (void)fetchHierarchyForItemID:(id)a3 recursively:(BOOL)a4 ignoreAlternateContentURL:(BOOL)a5 reply:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = *self->backend;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF927A54;
  *(v13 + 24) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1CF927A54;
  *(v14 + 24) = v11;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = self;
  *(v14 + 56) = a5;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1CF8F3600;
  *(v15 + 24) = v13;
  v16 = a3;
  swift_retain_n();
  swift_retain_n();
  v17 = v16;

  sub_1CEFD4024("fetchHierarchy(for:recursively:ignoreAlternateContentURL:reply:)", 64, 2, sub_1CF7BA950, v15, sub_1CF8FEE00, v14);
}

- (void)userCheckedSuppressionCheckboxForUserInteractionIdentifier:(id)a3 domainIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = *self->backend;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF067718;
  *(v13 + 24) = v11;
  v14 = swift_allocObject();
  v14[2] = self;
  v14[3] = v8;
  v14[4] = v10;
  v14[5] = a4;
  v14[6] = sub_1CF067718;
  v14[7] = v11;
  v15 = a4;
  swift_retain_n();
  swift_retain_n();
  v16 = v15;
  sub_1CEFD4024("userCheckedSuppressionCheckbox(forUserInteractionIdentifier:domainIdentifier:completionHandler:)", 96, 2, sub_1CF2BA174, v13, sub_1CF927A44, v14);
}

- (void)fetchDefaultContainerForBundleIdentifier:(id)a3 defaultName:(id)a4 inDomainIdentifier:(id)a5 lookupOnly:(BOOL)a6 reply:(id)a7
{
  v9 = _Block_copy(a7);
  v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;
  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  v16 = *self->backend;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF024BB0;
  *(v17 + 24) = v15;
  v18 = swift_allocObject();
  v18[2] = self;
  v18[3] = v22;
  v18[4] = v11;
  v18[5] = v12;
  v18[6] = v14;
  v18[7] = a5;
  v18[8] = sub_1CF024BB0;
  v18[9] = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1CF9283D0;
  *(v19 + 24) = v17;
  v20 = a5;
  swift_retain_n();
  swift_retain_n();
  v21 = v20;

  sub_1CEFD4024("fetchDefaultContainer(forBundleIdentifier:defaultName:inDomainIdentifier:lookupOnly:reply:)", 91, 2, sub_1CF9034C4, v19, sub_1CF927988, v18);
}

- (void)preflightTrashItemIDs:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v6 = sub_1CF9E6D48();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = *self->backend;
  v9 = swift_allocObject();
  v9[2] = sub_1CF927974;
  v9[3] = v7;
  v9[4] = self;
  swift_retain_n();

  sub_1CF8406A8(v6, sub_1CF92797C, v9);
}

- (void)fetchTrashIdentifiersWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *self->backend;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1CF927918;
  *(v7 + 24) = v5;
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = sub_1CF927918;
  v8[4] = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF903264;
  *(v9 + 24) = v7;
  swift_retain_n();
  swift_retain_n();

  sub_1CEFD4024("fetchTrashIdentifiers(completionHandler:)", 41, 2, sub_1CF7BA950, v9, sub_1CF927968, v8);
}

- (id)fetchPublishingURLForItemID:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *self->backend;
  v9 = swift_allocObject();
  v9[2] = self;
  v9[3] = a3;
  v9[4] = sub_1CF326F78;
  v9[5] = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF326F78;
  *(v10 + 24) = v7;
  v11 = a3;
  swift_retain_n();
  swift_retain_n();
  v12 = v11;
  sub_1CEFD4024("fetchPublishingURL(for:completionHandler:)", 42, 2, sub_1CF927910, v10, sub_1CF927904, v9);

  return 0;
}

- (id)disconnectDomainID:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *self->backend;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF067718;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  v12[2] = self;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = sub_1CF067718;
  v12[6] = v9;
  v13 = a3;
  swift_retain_n();
  swift_retain_n();
  v14 = v13;
  sub_1CEFD4024("disconnectDomainID(_:options:completionHandler:)", 48, 2, sub_1CF2BA174, v11, sub_1CF927884, v12);

  return 0;
}

- (void)wakeForSessionIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = *self->backend;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF067718;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  v12[2] = self;
  v12[3] = v6;
  v12[4] = v8;
  v12[5] = sub_1CF067718;
  v12[6] = v9;
  swift_retain_n();
  swift_retain_n();
  sub_1CEFD4024("wake(forSessionIdentifier:completionHandler:)", 45, 2, sub_1CF2BA174, v11, sub_1CF92786C, v12);
}

- (void)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *self->backend;
  v11 = swift_allocObject();
  v11[2] = self;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = sub_1CF92779C;
  v11[6] = v9;
  v12 = a3;
  swift_retain_n();
  v13 = v12;

  sub_1CEFD4024("attemptRecovery(fromError:optionIndex:completionHandler:)", 57, 2, sub_1CF92779C, v9, sub_1CF927854, v11);
}

- (void)userInteractionErrorsForPerformingAction:(id)a3 sourceItems:(id)a4 destinationItem:(id)a5 fpProviderDomainId:(id)a6 sourceItemKeysAllowList:(id)a7 destinationItemKeysAllowList:(id)a8 completionHandler:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  if (a4)
  {
    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    a4 = sub_1CF9E6D48();
  }

  if (a7)
  {
    a7 = sub_1CF9E6F98();
  }

  if (a8)
  {
    a8 = sub_1CF9E6F98();
  }

  v16 = a3;
  v17 = a5;
  v18 = a6;

  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  sub_1CF91ED84(v16, a4, v17, v18, a7, a8, sub_1CF927794, v19);
}

- (void)deleteItemsWithIDs:(id)a3 baseVersions:(id)a4 options:(unint64_t)a5 reply:(id)a6
{
  v7 = _Block_copy(a6);
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v8 = sub_1CF9E6D48();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;

  sub_1CF922488(v8, a5, sub_1CF067718, v9);
}

- (id)performActionWithIdentifier:(id)a3 onItemsWithIdentifiers:(id)a4 domainIdentifier:(id)a5 completionHandler:(id)a6
{
  v7 = _Block_copy(a6);
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v11 = sub_1CF9E6D48();
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  v13 = a5;

  v14 = sub_1CF923210(v8, v10, v11, v13, sub_1CF067710, v12);

  return v14;
}

- (void)updateIgnoreStateOfItemWithIdentifiers:(id)a3 ignoreState:(BOOL)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v8 = sub_1CF9E6D48();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = *self->backend;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF92750C;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 24) = self;
  *(v12 + 32) = a4;
  *(v12 + 40) = sub_1CF92750C;
  *(v12 + 48) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF927514;
  *(v13 + 24) = v11;
  swift_retain_n();
  swift_retain_n();

  sub_1CEFD4024("updateIgnoreStateOfItem(withIdentifiers:ignoreState:completionHandler:)", 71, 2, sub_1CF927554, v13, sub_1CF927544, v12);
}

@end