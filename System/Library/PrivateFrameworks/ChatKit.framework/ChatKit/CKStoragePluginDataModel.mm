@interface CKStoragePluginDataModel
+ (CKStoragePluginDataModel)sharedInstance;
+ (void)setSharedInstance:(id)instance;
- (BOOL)isCloudKitEnabled;
- (BOOL)loadCountsIfNeeded;
- (CKStoragePluginDataModelDelegate)delegate;
- (IMCloudKitHooks)cloudKitHooks;
- (id)cachedAttachmentItemForGuid:(id)guid;
- (id)cachedAttachmentsForAttachmentClass:(id)class;
- (int64_t)cachedAttachmentFetchOffsetForAttachmentClass:(id)class;
- (int64_t)nonPurgeableSpaceTakenByFileType:(id)type;
- (int64_t)spaceSavedByAutoDeletingMessages;
- (int64_t)spaceSavedByDeletingNonSyncedAttachments;
- (int64_t)spaceTakenByAllConversations;
- (int64_t)spaceTakenBySyncedConversations;
- (int64_t)spaceTakenByUnsyncedConversations;
- (int64_t)totalSpaceOfAttachments;
- (int64_t)totalSpaceOfNonPurgeableAttachments;
- (void)reloadCounts;
- (void)setCachedAttachmentFetchOffset:(int64_t)offset forAttachmentClass:(id)class;
- (void)setCachedAttachmentItem:(id)item forGuid:(id)guid;
- (void)setCachedAttachments:(id)attachments forAttachmentClass:(id)class;
- (void)setCloudKitHooks:(id)hooks;
- (void)setIsCloudKitEnabled:(BOOL)enabled;
@end

@implementation CKStoragePluginDataModel

+ (CKStoragePluginDataModel)sharedInstance
{
  if (qword_1EAD51BB0 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (void)setSharedInstance:(id)instance
{
  v3 = qword_1EAD51BB0;
  instanceCopy = instance;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakAssign();
}

- (CKStoragePluginDataModelDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (int64_t)spaceSavedByAutoDeletingMessages
{
  selfCopy = self;
  sub_190A87E74();
  v3 = sub_190A8C1C4();

  return v3;
}

- (int64_t)spaceTakenBySyncedConversations
{
  selfCopy = self;
  sub_190A88154(v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 56))(v3, v4);

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (int64_t)spaceTakenByUnsyncedConversations
{
  selfCopy = self;
  sub_190A88154(v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 64))(v3, v4);

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (int64_t)spaceTakenByAllConversations
{
  selfCopy = self;
  sub_190A88154(v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 72))(v3, v4);

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (int64_t)totalSpaceOfAttachments
{
  selfCopy = self;
  sub_190A88154(v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 16))(v3, v4);

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (int64_t)spaceSavedByDeletingNonSyncedAttachments
{
  selfCopy = self;
  sub_190A88154(v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 40))(v3, v4);

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (int64_t)totalSpaceOfNonPurgeableAttachments
{
  selfCopy = self;
  sub_190A88154(v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 24))(v3, v4);

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (int64_t)nonPurgeableSpaceTakenByFileType:(id)type
{
  v4 = sub_190D56F10();
  v6 = v5;
  selfCopy = self;
  sub_190A88154(v12);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v10 = (*(v9 + 32))(v4, v6, v8, v9);

  __swift_destroy_boxed_opaque_existential_0(v12);
  return v10;
}

- (void)reloadCounts
{
  selfCopy = self;
  sub_190A8A7CC();
}

- (BOOL)loadCountsIfNeeded
{
  selfCopy = self;
  v3 = sub_190A8A9BC();

  return v3 & 1;
}

- (BOOL)isCloudKitEnabled
{
  selfCopy = self;
  cloudKitHooks = [(CKStoragePluginDataModel *)selfCopy cloudKitHooks];
  isEnabled = [(IMCloudKitHooks *)cloudKitHooks isEnabled];

  return isEnabled;
}

- (void)setIsCloudKitEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_190A8AC30(enabled);
}

- (IMCloudKitHooks)cloudKitHooks
{
  selfCopy = self;
  v3 = sub_190A8ADB4();

  return v3;
}

- (void)setCloudKitHooks:(id)hooks
{
  v4 = *(self + OBJC_IVAR___CKStoragePluginDataModel____lazy_storage___cloudKitHooks);
  *(self + OBJC_IVAR___CKStoragePluginDataModel____lazy_storage___cloudKitHooks) = hooks;
  hooksCopy = hooks;
}

- (id)cachedAttachmentsForAttachmentClass:(id)class
{
  v4 = sub_190D56F10();
  v6 = v5;
  selfCopy = self;
  v8 = sub_190A8AEBC(v4, v6);

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5C270);
    v9 = sub_190D57160();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setCachedAttachments:(id)attachments forAttachmentClass:(id)class
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5C270);
  v5 = sub_190D57180();
  v6 = sub_190D56F10();
  v8 = v7;
  selfCopy = self;
  sub_190A8AFF8(v5, v6, v8);
}

- (id)cachedAttachmentItemForGuid:(id)guid
{
  v4 = sub_190D56F10();
  v6 = v5;
  selfCopy = self;
  v8 = sub_190A8B298(v4, v6);

  return v8;
}

- (void)setCachedAttachmentItem:(id)item forGuid:(id)guid
{
  v6 = sub_190D56F10();
  v8 = v7;
  itemCopy = item;
  selfCopy = self;
  sub_190A8B398(itemCopy, v6, v8);
}

- (int64_t)cachedAttachmentFetchOffsetForAttachmentClass:(id)class
{
  v4 = sub_190D56F10();
  v6 = v5;
  v7 = OBJC_IVAR___CKStoragePluginDataModel_cachedAttachmentFetchOffsets;
  swift_beginAccess();
  v8 = *(self + v7);
  if (!*(v8 + 16))
  {
    selfCopy = self;
    goto LABEL_5;
  }

  selfCopy2 = self;
  v10 = sub_19022DCEC(v4, v6);
  if ((v11 & 1) == 0)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v12 = *(*(v8 + 56) + 8 * v10);
LABEL_6:
  swift_endAccess();

  return v12;
}

- (void)setCachedAttachmentFetchOffset:(int64_t)offset forAttachmentClass:(id)class
{
  v6 = sub_190D56F10();
  v8 = v7;
  v9 = OBJC_IVAR___CKStoragePluginDataModel_cachedAttachmentFetchOffsets;
  swift_beginAccess();
  selfCopy = self;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(self + v9);
  *(self + v9) = 0x8000000000000000;
  sub_190C1C7B8(offset, v6, v8, isUniquelyReferenced_nonNull_native);
  *(self + v9) = v12;
  swift_endAccess();
}

@end