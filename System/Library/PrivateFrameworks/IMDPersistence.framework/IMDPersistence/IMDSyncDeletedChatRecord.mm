@interface IMDSyncDeletedChatRecord
- (IMDSyncDeletedChatRecord)init;
- (IMDSyncDeletedChatRecord)initWithGUID:(id)a3 ckRecordID:(id)a4 date:(id)a5;
- (NSDate)date;
- (NSString)ckRecordID;
- (NSString)guid;
- (void)encodeWithCoder:(id)a3;
- (void)setCkRecordID:(id)a3;
- (void)setGuid:(id)a3;
@end

@implementation IMDSyncDeletedChatRecord

- (NSString)guid
{
  v2 = *(self + OBJC_IVAR___IMDSyncDeletedChatRecord_guid);
  v3 = *(self + OBJC_IVAR___IMDSyncDeletedChatRecord_guid + 8);

  v4 = sub_1B7CFEA30();

  return v4;
}

- (void)setGuid:(id)a3
{
  v4 = sub_1B7CFEA60();
  v5 = (self + OBJC_IVAR___IMDSyncDeletedChatRecord_guid);
  v6 = *(self + OBJC_IVAR___IMDSyncDeletedChatRecord_guid + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (NSString)ckRecordID
{
  if (*(self + OBJC_IVAR___IMDSyncDeletedChatRecord_ckRecordID + 8))
  {
    v2 = *(self + OBJC_IVAR___IMDSyncDeletedChatRecord_ckRecordID);
    v3 = *(self + OBJC_IVAR___IMDSyncDeletedChatRecord_ckRecordID + 8);

    v4 = sub_1B7CFEA30();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCkRecordID:(id)a3
{
  if (a3)
  {
    v4 = sub_1B7CFEA60();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___IMDSyncDeletedChatRecord_ckRecordID);
  v7 = *(self + OBJC_IVAR___IMDSyncDeletedChatRecord_ckRecordID + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (NSDate)date
{
  v3 = sub_1B7CFE120();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  if ([(IMDSyncDeletedChatRecord *)v8 rawDate]< 1)
  {

    v9 = 0;
  }

  else
  {
    [(IMDSyncDeletedChatRecord *)v8 rawDate];
    sub_1B7CFE050();

    v9 = sub_1B7CFE0A0();
    (*(v4 + 8))(v7, v3);
  }

  return v9;
}

- (IMDSyncDeletedChatRecord)initWithGUID:(id)a3 ckRecordID:(id)a4 date:(id)a5
{
  v7 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_1B7CFEA60();
  v13 = v12;
  if (!a4)
  {
    v15 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = sub_1B7CFE120();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    return sub_1B7CDC9B0(v11, v13, a4, v15, v10);
  }

  a4 = sub_1B7CFEA60();
  v15 = v14;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B7CFE0F0();
  v16 = sub_1B7CFE120();
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  return sub_1B7CDC9B0(v11, v13, a4, v15, v10);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B7CDCF58(v4);
}

- (IMDSyncDeletedChatRecord)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end