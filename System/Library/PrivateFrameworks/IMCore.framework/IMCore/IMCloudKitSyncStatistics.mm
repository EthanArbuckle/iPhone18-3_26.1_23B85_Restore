@interface IMCloudKitSyncStatistics
+ (double)calculatePercentageOfTotal:(double)total count:(double)count;
+ (id)_createSyncStatisticsDictionary:(int64_t)dictionary messageSyncCount:(int64_t)count messageUnresolvedCount:(int64_t)unresolvedCount chatCount:(int64_t)chatCount chatSyncCount:(int64_t)syncCount chatUnresolvedCount:(int64_t)chatUnresolvedCount attachmentCount:(int64_t)attachmentCount attachmentSyncCount:(int64_t)self0 attachmentUnresolvedCount:(int64_t)self1 serverRecordCounts:(id)self2 syncStoreCounts:(id)self3;
+ (id)_createSyncStatisticsDictionaryForSyncControllerSyncState:(unint64_t)state syncType:(int64_t)type count:(double)count max:(double)max unresolved:(double)unresolved;
+ (id)percentStringFromDouble:(double)double;
+ (id)percentStringFromTotal:(double)total count:(double)count;
- (IMCloudKitSyncStatistics)init;
- (IMCloudKitSyncStatistics)initWithStatisticsDictionary:(id)dictionary;
- (NSString)description;
- (double)percentSynced;
- (id)_syncStatisticsDictionary;
- (int64_t)remainingMessagesCount;
- (int64_t)serverAttachmentLiveCount;
- (int64_t)serverAttachmentTotalCount;
- (int64_t)serverChatLiveCount;
- (int64_t)serverChatTotalCount;
- (int64_t)serverMessageLiveCount;
- (int64_t)serverMessageTotalCount;
- (int64_t)serverMessageUpdateLiveCount;
- (int64_t)serverMessageUpdateTotalCount;
- (int64_t)serverRecoverableMessageLiveCount;
- (int64_t)serverRecoverableMessageTotalCount;
- (int64_t)syncStoreWritableAttachmentCount;
- (int64_t)syncStoreWritableChatCount;
- (int64_t)syncStoreWritableMessageCount;
- (int64_t)syncStoreWritableMessageUpdateCount;
- (int64_t)syncStoreWritableRecoverableMessageCount;
- (int64_t)syncStoreWrittenAttachmentCount;
- (int64_t)syncStoreWrittenChatCount;
- (int64_t)syncStoreWrittenMessageCount;
- (int64_t)syncStoreWrittenMessageUpdateCount;
- (int64_t)syncStoreWrittenRecoverableMessageCount;
- (int64_t)syncedAttachmentCount;
- (int64_t)syncedChatCount;
- (int64_t)syncedMessageCount;
- (int64_t)syncedRecordCount;
- (int64_t)totalAttachmentCount;
- (int64_t)totalChatCount;
- (int64_t)totalMessageCount;
- (int64_t)totalRecordCount;
- (int64_t)unresolvedAttachmentCount;
- (int64_t)unresolvedChatCount;
- (int64_t)unresolvedMessageCount;
- (int64_t)unresolvedRecordCount;
@end

@implementation IMCloudKitSyncStatistics

- (int64_t)syncedChatCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 32];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)totalChatCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 40];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)unresolvedChatCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 56];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)serverChatTotalCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 96];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)serverChatLiveCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 104];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)syncStoreWritableChatCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 72];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)syncStoreWrittenChatCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 80];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)syncedMessageCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 128];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)totalMessageCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 136];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)unresolvedMessageCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 152];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)serverMessageTotalCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 192];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)serverMessageLiveCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 200];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)syncStoreWritableMessageCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 168];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)syncStoreWrittenMessageCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 176];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)syncedAttachmentCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 224];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)totalAttachmentCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 232];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)unresolvedAttachmentCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 248];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)serverAttachmentTotalCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 288];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)serverAttachmentLiveCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 296];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)syncStoreWritableAttachmentCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 264];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)syncStoreWrittenAttachmentCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 272];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)serverMessageUpdateTotalCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 384];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)serverMessageUpdateLiveCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 392];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)syncStoreWritableMessageUpdateCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 360];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)syncStoreWrittenMessageUpdateCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 368];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)serverRecoverableMessageTotalCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 480];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)serverRecoverableMessageLiveCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 488];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)syncStoreWritableRecoverableMessageCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 456];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)syncStoreWrittenRecoverableMessageCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 464];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)syncedRecordCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)totalRecordCount
{
  result = *(&self->super.isa + OBJC_IVAR___IMCloudKitSyncStatistics_statistics);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)unresolvedRecordCount
{
  result = *&self->statistics[OBJC_IVAR___IMCloudKitSyncStatistics_statistics + 8];
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (double)percentSynced
{
  selfCopy = self;
  syncedRecordCount = [(IMCloudKitSyncStatistics *)selfCopy syncedRecordCount];
  totalRecordCount = [(IMCloudKitSyncStatistics *)selfCopy totalRecordCount];

  return syncedRecordCount / totalRecordCount;
}

- (int64_t)remainingMessagesCount
{
  selfCopy = self;
  totalMessageCount = [(IMCloudKitSyncStatistics *)selfCopy totalMessageCount];
  result = [(IMCloudKitSyncStatistics *)selfCopy syncedMessageCount];
  v5 = &totalMessageCount[-result];
  if (__OFSUB__(totalMessageCount, result))
  {
    __break(1u);
  }

  else
  {
    unresolvedMessageCount = [(IMCloudKitSyncStatistics *)selfCopy unresolvedMessageCount];

    if (!__OFSUB__(v5, unresolvedMessageCount))
    {
      return &v5[-unresolvedMessageCount] & ~(&v5[-unresolvedMessageCount] >> 63);
    }
  }

  __break(1u);
  return result;
}

+ (double)calculatePercentageOfTotal:(double)total count:(double)count
{
  v4 = count / total;
  v5 = total == 0.0;
  result = 1.0;
  if (!v5)
  {
    return v4;
  }

  return result;
}

+ (id)percentStringFromDouble:(double)double
{
  sub_1A8244B68(0, &qword_1EB2E8050, 0x1E696ADA0);
  MEMORY[0x1AC56ACF0](double);
  if (v4)
  {
    v5 = sub_1A84E5D8C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)percentStringFromTotal:(double)total count:(double)count
{
  [self calculatePercentageOfTotal:total count:count];
  percentStringFromDouble_ = [self percentStringFromDouble_];
  if (percentStringFromDouble_)
  {
    v6 = percentStringFromDouble_;
    sub_1A84E5DBC();

    v7 = sub_1A84E5D8C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  selfCopy = self;
  IMCloudKitSyncStatistics.description.getter();

  v3 = sub_1A84E5D8C();

  return v3;
}

- (IMCloudKitSyncStatistics)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (IMCloudKitSyncStatistics)initWithStatisticsDictionary:(id)dictionary
{
  sub_1A84E5D3C();
  v3 = objc_allocWithZone(IMCloudKitSyncStatistics);
  v4 = sub_1A847BA60();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

+ (id)_createSyncStatisticsDictionary:(int64_t)dictionary messageSyncCount:(int64_t)count messageUnresolvedCount:(int64_t)unresolvedCount chatCount:(int64_t)chatCount chatSyncCount:(int64_t)syncCount chatUnresolvedCount:(int64_t)chatUnresolvedCount attachmentCount:(int64_t)attachmentCount attachmentSyncCount:(int64_t)self0 attachmentUnresolvedCount:(int64_t)self1 serverRecordCounts:(id)self2 syncStoreCounts:(id)self3
{
  v17 = sub_1A84E5D3C();
  sub_1A8244B68(0, &qword_1EB2E6F68, 0x1E696AD98);
  v18 = sub_1A84E5D3C();
  v19 = sub_1A84DE4D0(dictionary, count, chatCount, syncCount, attachmentCount, attachmentSyncCount, v17, v18);

  return v19;
}

+ (id)_createSyncStatisticsDictionaryForSyncControllerSyncState:(unint64_t)state syncType:(int64_t)type count:(double)count max:(double)max unresolved:(double)unresolved
{
  swift_getObjCClassMetadata();
  v11 = sub_1A84DE754(type, count, max, unresolved);

  return v11;
}

- (id)_syncStatisticsDictionary
{
  selfCopy = self;
  v3 = sub_1A84DE2B0();

  return v3;
}

@end