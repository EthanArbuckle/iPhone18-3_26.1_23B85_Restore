@interface DAABLegacyAccount
- (DAABLegacyAccount)initWithABAccout:(void *)a3;
- (id)externalIdentifier;
- (id)identifier;
- (int)legacyIdentifier;
- (void)dealloc;
- (void)markForDeletion;
- (void)updateSaveRequest:(id)a3;
@end

@implementation DAABLegacyAccount

- (DAABLegacyAccount)initWithABAccout:(void *)a3
{
  v6.receiver = self;
  v6.super_class = DAABLegacyAccount;
  v4 = [(DAABLegacyAccount *)&v6 init];
  if (v4)
  {
    v4->_account = CFRetain(a3);
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->_account);
  v3.receiver = self;
  v3.super_class = DAABLegacyAccount;
  [(DAABLegacyAccount *)&v3 dealloc];
}

- (int)legacyIdentifier
{
  v2 = [(DAABLegacyAccount *)self account];

  return ABRecordGetRecordID(v2);
}

- (id)identifier
{
  [(DAABLegacyAccount *)self account];
  v2 = ABAccountCopyInternalUUID();

  return v2;
}

- (id)externalIdentifier
{
  [(DAABLegacyAccount *)self account];
  v2 = ABAccountCopyIdentifier();

  return v2;
}

- (void)updateSaveRequest:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAABLegacyAccount cannot update CNSaveRequest" userInfo:0];
  objc_exception_throw(v4);
}

- (void)markForDeletion
{
  [(DAABLegacyAccount *)self account];
  AddressBook = ABRecordGetAddressBook();
  v4 = [(DAABLegacyAccount *)self account];

  ABAddressBookRemoveRecord(AddressBook, v4, 0);
}

@end