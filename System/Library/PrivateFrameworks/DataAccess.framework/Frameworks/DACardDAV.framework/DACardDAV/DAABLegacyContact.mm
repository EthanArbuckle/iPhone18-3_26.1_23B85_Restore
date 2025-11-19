@interface DAABLegacyContact
- (DAABLegacyContact)initWithABPerson:(void *)a3;
- (id)asContact;
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

@implementation DAABLegacyContact

- (DAABLegacyContact)initWithABPerson:(void *)a3
{
  v6.receiver = self;
  v6.super_class = DAABLegacyContact;
  v4 = [(DAABLegacyContact *)&v6 init];
  if (v4)
  {
    v4->_person = CFRetain(a3);
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->_person);
  v3.receiver = self;
  v3.super_class = DAABLegacyContact;
  [(DAABLegacyContact *)&v3 dealloc];
}

- (int)legacyIdentifier
{
  v2 = [(DAABLegacyContact *)self person];

  return ABRecordGetRecordID(v2);
}

- (id)eTag
{
  v2 = [(DAABLegacyContact *)self person];
  v3 = ABRecordCopyValue(v2, *MEMORY[0x277CE9898]);

  return v3;
}

- (void)setETag:(id)a3
{
  value = a3;
  v4 = [(DAABLegacyContact *)self person];
  ABRecordSetValue(v4, *MEMORY[0x277CE9898], value, 0);
}

- (id)externalUUID
{
  v2 = [(DAABLegacyContact *)self person];
  v3 = ABRecordCopyValue(v2, *MEMORY[0x277CE98A8]);

  return v3;
}

- (void)setExternalUUID:(id)a3
{
  value = a3;
  v4 = [(DAABLegacyContact *)self person];
  ABRecordSetValue(v4, *MEMORY[0x277CE98A8], value, 0);
}

- (id)externalIdentifier
{
  v2 = [(DAABLegacyContact *)self person];
  v3 = ABRecordCopyValue(v2, *MEMORY[0x277CE9890]);

  return v3;
}

- (void)setExternalIdentifier:(id)a3
{
  value = a3;
  v4 = [(DAABLegacyContact *)self person];
  ABRecordSetValue(v4, *MEMORY[0x277CE9890], value, 0);
}

- (void)markForDeletion
{
  [(DAABLegacyContact *)self person];
  AddressBook = ABRecordGetAddressBook();
  v4 = [(DAABLegacyContact *)self person];

  ABAddressBookRemoveRecord(AddressBook, v4, 0);
}

- (void)updateSaveRequest:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAABLegacyContact cannot update CNSaveRequest" userInfo:0];
  objc_exception_throw(v4);
}

- (id)asContact
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAABLegacyContact cannot return a CNContact" userInfo:0];
  objc_exception_throw(v2);
}

@end