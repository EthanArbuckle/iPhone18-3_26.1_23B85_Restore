@interface IMDSyncChatSliceRecord
- (IMDSyncChatSliceRecord)init;
- (IMDSyncChatSliceRecord)initWithCoder:(id)coder;
- (IMDSyncChatSliceRecord)initWithServiceName:(id)name ckRecordID:(id)d;
- (NSString)ckRecordID;
- (NSString)serviceName;
- (void)encodeWithCoder:(id)coder;
- (void)setCkRecordID:(id)d;
- (void)setServiceName:(id)name;
@end

@implementation IMDSyncChatSliceRecord

- (NSString)serviceName
{
  v2 = *(self + OBJC_IVAR___IMDSyncChatSliceRecord_serviceName);
  v3 = *(self + OBJC_IVAR___IMDSyncChatSliceRecord_serviceName + 8);

  v4 = sub_1B7CFEA30();

  return v4;
}

- (void)setServiceName:(id)name
{
  v4 = sub_1B7CFEA60();
  v5 = (self + OBJC_IVAR___IMDSyncChatSliceRecord_serviceName);
  v6 = *(self + OBJC_IVAR___IMDSyncChatSliceRecord_serviceName + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (NSString)ckRecordID
{
  if (*(self + OBJC_IVAR___IMDSyncChatSliceRecord_ckRecordID + 8))
  {
    v2 = *(self + OBJC_IVAR___IMDSyncChatSliceRecord_ckRecordID);
    v3 = *(self + OBJC_IVAR___IMDSyncChatSliceRecord_ckRecordID + 8);

    v4 = sub_1B7CFEA30();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCkRecordID:(id)d
{
  if (d)
  {
    v4 = sub_1B7CFEA60();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___IMDSyncChatSliceRecord_ckRecordID);
  v7 = *(self + OBJC_IVAR___IMDSyncChatSliceRecord_ckRecordID + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (IMDSyncChatSliceRecord)initWithServiceName:(id)name ckRecordID:(id)d
{
  v6 = sub_1B7CFEA60();
  v8 = v7;
  if (d)
  {
    v9 = sub_1B7CFEA60();
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = (self + OBJC_IVAR___IMDSyncChatSliceRecord_ckRecordID);
  *v11 = 0;
  v11[1] = 0;
  v12 = (self + OBJC_IVAR___IMDSyncChatSliceRecord_serviceName);
  *v12 = v6;
  v12[1] = v8;
  *v11 = v9;
  v11[1] = v10;
  v14.receiver = self;
  v14.super_class = IMDSyncChatSliceRecord;
  return [(IMDSyncChatSliceRecord *)&v14 init];
}

- (IMDSyncChatSliceRecord)initWithCoder:(id)coder
{
  sub_1B7AEE088(0, &unk_1EDBE59A0, 0x1E696AEC0);
  coderCopy = coder;
  v6 = sub_1B7CFEFB0();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1B7CFEFB0();
    v9 = [(IMDSyncChatSliceRecord *)self initWithServiceName:v7 ckRecordID:v8];

    return v9;
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B7C27D38(coderCopy);
}

- (IMDSyncChatSliceRecord)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end