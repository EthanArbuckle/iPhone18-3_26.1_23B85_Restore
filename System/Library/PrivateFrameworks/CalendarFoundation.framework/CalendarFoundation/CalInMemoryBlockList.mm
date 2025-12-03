@interface CalInMemoryBlockList
- (BOOL)isBlockedWithEmail:(id)email;
- (BOOL)isBlockedWithPhoneNumber:(id)number;
- (BOOL)isEmpty;
- (CalInMemoryBlockList)init;
- (NSArray)blockedPhoneNumbers;
- (void)addBlockedEmail:(id)email;
- (void)addBlockedPhoneNumber:(id)number;
- (void)batchCachedEmails:(id)emails phoneNumbers:(id)numbers completionHandler:(id)handler;
- (void)batchLookupEmails:(id)emails phoneNumbers:(id)numbers completionHandler:(id)handler;
- (void)setBlockedPhoneNumbers:(id)numbers;
@end

@implementation CalInMemoryBlockList

- (NSArray)blockedPhoneNumbers
{
  v2 = *(self + OBJC_IVAR___CalInMemoryBlockList_blockedPhoneNumbers);

  v3 = sub_1B996FFAC();

  return v3;
}

- (void)setBlockedPhoneNumbers:(id)numbers
{
  v4 = sub_1B996FFBC();
  v5 = *(self + OBJC_IVAR___CalInMemoryBlockList_blockedPhoneNumbers);
  *(self + OBJC_IVAR___CalInMemoryBlockList_blockedPhoneNumbers) = v4;
}

- (CalInMemoryBlockList)init
{
  v2 = MEMORY[0x1E69E7CC0];
  *(self + OBJC_IVAR___CalInMemoryBlockList_blockedEmails) = MEMORY[0x1E69E7CC0];
  *(self + OBJC_IVAR___CalInMemoryBlockList_blockedPhoneNumbers) = v2;
  v4.receiver = self;
  v4.super_class = CalInMemoryBlockList;
  return [(CalInMemoryBlockList *)&v4 init];
}

- (BOOL)isBlockedWithEmail:(id)email
{
  v4 = sub_1B996FF7C();
  v6 = v5;
  v7 = OBJC_IVAR___CalInMemoryBlockList_blockedEmails;
  swift_beginAccess();
  v8 = *(self + v7);
  v12[0] = v4;
  v12[1] = v6;
  v11[2] = v12;
  selfCopy = self;

  LOBYTE(v4) = sub_1B9968808(sub_1B9968FD0, v11, v8);

  return v4 & 1;
}

- (BOOL)isBlockedWithPhoneNumber:(id)number
{
  v4 = sub_1B996FF7C();
  v6 = v5;
  selfCopy = self;
  blockedPhoneNumbers = [(CalInMemoryBlockList *)selfCopy blockedPhoneNumbers];
  v9 = sub_1B996FFBC();

  v12[0] = v4;
  v12[1] = v6;
  v11[2] = v12;
  LOBYTE(v4) = sub_1B9968808(sub_1B9968FD0, v11, v9);

  return v4 & 1;
}

- (void)addBlockedEmail:(id)email
{
  v4 = sub_1B996FF7C();
  v6 = v5;
  v7 = OBJC_IVAR___CalInMemoryBlockList_blockedEmails;
  swift_beginAccess();
  v8 = *(self + v7);
  selfCopy = self;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(self + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1B9964B9C(0, *(v8 + 2) + 1, 1, v8);
    *(self + v7) = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_1B9964B9C((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = &v8[16 * v12];
  *(v13 + 4) = v4;
  *(v13 + 5) = v6;
  *(self + v7) = v8;
  swift_endAccess();
}

- (void)addBlockedPhoneNumber:(id)number
{
  v4 = sub_1B996FF7C();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  CalInMemoryBlockList.addBlocked(phoneNumber:)(v8);
}

- (BOOL)isEmpty
{
  v3 = OBJC_IVAR___CalInMemoryBlockList_blockedEmails;
  swift_beginAccess();
  if (*(*(self + v3) + 16))
  {
    return 0;
  }

  selfCopy = self;
  blockedPhoneNumbers = [(CalInMemoryBlockList *)selfCopy blockedPhoneNumbers];
  v7 = sub_1B996FFBC();

  v8 = *(v7 + 16);

  return v8 == 0;
}

- (void)batchLookupEmails:(id)emails phoneNumbers:(id)numbers completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  if (emails)
  {
    emails = sub_1B996FFBC();
  }

  if (numbers)
  {
    numbers = sub_1B996FFBC();
  }

  selfCopy = self;
  _Block_copy(v8);
  sub_1B9968A14(emails, numbers, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)batchCachedEmails:(id)emails phoneNumbers:(id)numbers completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  if (emails)
  {
    emails = sub_1B996FFBC();
  }

  if (numbers)
  {
    numbers = sub_1B996FFBC();
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  selfCopy = self;
  CalInMemoryBlockList.batchCached(emails:phoneNumbers:completionHandler:)(emails, numbers, sub_1B996899C, v9);
}

@end