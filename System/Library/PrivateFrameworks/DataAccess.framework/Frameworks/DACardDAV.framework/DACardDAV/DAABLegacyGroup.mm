@interface DAABLegacyGroup
- (DAABLegacyGroup)initWithGroup:(void *)a3;
- (id)asGroup;
- (id)eTag;
- (id)externalIdentifier;
- (id)externalUUID;
- (int)legacyIdentifier;
- (void)dealloc;
- (void)markForDeletion;
- (void)setETag:(id)a3;
- (void)setExternalIdentifier:(id)a3;
- (void)setExternalUUID:(id)a3;
- (void)updateSaveRequest:(id)a3;
@end

@implementation DAABLegacyGroup

- (DAABLegacyGroup)initWithGroup:(void *)a3
{
  v6.receiver = self;
  v6.super_class = DAABLegacyGroup;
  v4 = [(DAABLegacyGroup *)&v6 init];
  if (v4)
  {
    v4->_group = CFRetain(a3);
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
  v2 = [(DAABLegacyGroup *)self group];

  return ABRecordGetRecordID(v2);
}

- (id)externalUUID
{
  v2 = [(DAABLegacyGroup *)self group];
  v3 = ABRecordCopyValue(v2, *MEMORY[0x277CE97F0]);

  return v3;
}

- (void)setExternalUUID:(id)a3
{
  value = a3;
  v4 = [(DAABLegacyGroup *)self group];
  ABRecordSetValue(v4, *MEMORY[0x277CE97F0], value, 0);
}

- (id)externalIdentifier
{
  v2 = [(DAABLegacyGroup *)self group];
  v3 = ABRecordCopyValue(v2, *MEMORY[0x277CE97D8]);

  return v3;
}

- (void)setExternalIdentifier:(id)a3
{
  value = a3;
  v4 = [(DAABLegacyGroup *)self group];
  ABRecordSetValue(v4, *MEMORY[0x277CE97D8], value, 0);
}

- (id)eTag
{
  v2 = [(DAABLegacyGroup *)self group];
  v3 = ABRecordCopyValue(v2, *MEMORY[0x277CE97E0]);

  return v3;
}

- (void)setETag:(id)a3
{
  value = a3;
  v4 = [(DAABLegacyGroup *)self group];
  ABRecordSetValue(v4, *MEMORY[0x277CE97E0], value, 0);
}

- (void)markForDeletion
{
  [(DAABLegacyGroup *)self group];
  AddressBook = ABRecordGetAddressBook();
  v4 = [(DAABLegacyGroup *)self group];

  ABAddressBookRemoveRecord(AddressBook, v4, 0);
}

- (void)updateSaveRequest:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAABLegacyGroup cannot update CNSaveRequest" userInfo:0];
  objc_exception_throw(v4);
}

- (id)asGroup
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAABLegacyGroup cannot return an CNGroup" userInfo:0];
  objc_exception_throw(v2);
}

@end