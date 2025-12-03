@interface DAABLegacyGroup
- (DAABLegacyGroup)initWithGroup:(void *)group;
- (id)asGroup;
- (id)eTag;
- (id)externalIdentifier;
- (id)externalUUID;
- (int)legacyIdentifier;
- (void)dealloc;
- (void)markForDeletion;
- (void)setETag:(id)tag;
- (void)setExternalIdentifier:(id)identifier;
- (void)setExternalUUID:(id)d;
- (void)updateSaveRequest:(id)request;
@end

@implementation DAABLegacyGroup

- (DAABLegacyGroup)initWithGroup:(void *)group
{
  v6.receiver = self;
  v6.super_class = DAABLegacyGroup;
  v4 = [(DAABLegacyGroup *)&v6 init];
  if (v4)
  {
    v4->_group = CFRetain(group);
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->_group);
  v3.receiver = self;
  v3.super_class = DAABLegacyGroup;
  [(DAABLegacyGroup *)&v3 dealloc];
}

- (int)legacyIdentifier
{
  group = [(DAABLegacyGroup *)self group];

  return ABRecordGetRecordID(group);
}

- (id)externalUUID
{
  group = [(DAABLegacyGroup *)self group];
  v3 = ABRecordCopyValue(group, *MEMORY[0x277CE97F0]);

  return v3;
}

- (void)setExternalUUID:(id)d
{
  value = d;
  group = [(DAABLegacyGroup *)self group];
  ABRecordSetValue(group, *MEMORY[0x277CE97F0], value, 0);
}

- (id)externalIdentifier
{
  group = [(DAABLegacyGroup *)self group];
  v3 = ABRecordCopyValue(group, *MEMORY[0x277CE97D8]);

  return v3;
}

- (void)setExternalIdentifier:(id)identifier
{
  value = identifier;
  group = [(DAABLegacyGroup *)self group];
  ABRecordSetValue(group, *MEMORY[0x277CE97D8], value, 0);
}

- (id)eTag
{
  group = [(DAABLegacyGroup *)self group];
  v3 = ABRecordCopyValue(group, *MEMORY[0x277CE97E0]);

  return v3;
}

- (void)setETag:(id)tag
{
  value = tag;
  group = [(DAABLegacyGroup *)self group];
  ABRecordSetValue(group, *MEMORY[0x277CE97E0], value, 0);
}

- (void)markForDeletion
{
  [(DAABLegacyGroup *)self group];
  AddressBook = ABRecordGetAddressBook();
  group = [(DAABLegacyGroup *)self group];

  ABAddressBookRemoveRecord(AddressBook, group, 0);
}

- (void)updateSaveRequest:(id)request
{
  requestCopy = request;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAABLegacyGroup cannot update CNSaveRequest" userInfo:0];
  objc_exception_throw(v4);
}

- (id)asGroup
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAABLegacyGroup cannot return an CNGroup" userInfo:0];
  objc_exception_throw(v2);
}

@end