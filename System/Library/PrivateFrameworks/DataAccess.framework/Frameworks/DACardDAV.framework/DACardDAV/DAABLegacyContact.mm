@interface DAABLegacyContact
- (DAABLegacyContact)initWithABPerson:(void *)person;
- (id)asContact;
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

@implementation DAABLegacyContact

- (DAABLegacyContact)initWithABPerson:(void *)person
{
  v6.receiver = self;
  v6.super_class = DAABLegacyContact;
  v4 = [(DAABLegacyContact *)&v6 init];
  if (v4)
  {
    v4->_person = CFRetain(person);
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
  person = [(DAABLegacyContact *)self person];

  return ABRecordGetRecordID(person);
}

- (id)eTag
{
  person = [(DAABLegacyContact *)self person];
  v3 = ABRecordCopyValue(person, *MEMORY[0x277CE9898]);

  return v3;
}

- (void)setETag:(id)tag
{
  value = tag;
  person = [(DAABLegacyContact *)self person];
  ABRecordSetValue(person, *MEMORY[0x277CE9898], value, 0);
}

- (id)externalUUID
{
  person = [(DAABLegacyContact *)self person];
  v3 = ABRecordCopyValue(person, *MEMORY[0x277CE98A8]);

  return v3;
}

- (void)setExternalUUID:(id)d
{
  value = d;
  person = [(DAABLegacyContact *)self person];
  ABRecordSetValue(person, *MEMORY[0x277CE98A8], value, 0);
}

- (id)externalIdentifier
{
  person = [(DAABLegacyContact *)self person];
  v3 = ABRecordCopyValue(person, *MEMORY[0x277CE9890]);

  return v3;
}

- (void)setExternalIdentifier:(id)identifier
{
  value = identifier;
  person = [(DAABLegacyContact *)self person];
  ABRecordSetValue(person, *MEMORY[0x277CE9890], value, 0);
}

- (void)markForDeletion
{
  [(DAABLegacyContact *)self person];
  AddressBook = ABRecordGetAddressBook();
  person = [(DAABLegacyContact *)self person];

  ABAddressBookRemoveRecord(AddressBook, person, 0);
}

- (void)updateSaveRequest:(id)request
{
  requestCopy = request;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAABLegacyContact cannot update CNSaveRequest" userInfo:0];
  objc_exception_throw(v4);
}

- (id)asContact
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAABLegacyContact cannot return a CNContact" userInfo:0];
  objc_exception_throw(v2);
}

@end