@interface DAABLegacyAccount
- (DAABLegacyAccount)initWithABAccout:(void *)accout;
- (id)externalIdentifier;
- (id)identifier;
- (int)legacyIdentifier;
- (void)dealloc;
- (void)markForDeletion;
- (void)updateSaveRequest:(id)request;
@end

@implementation DAABLegacyAccount

- (DAABLegacyAccount)initWithABAccout:(void *)accout
{
  v6.receiver = self;
  v6.super_class = DAABLegacyAccount;
  v4 = [(DAABLegacyAccount *)&v6 init];
  if (v4)
  {
    v4->_account = CFRetain(accout);
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
  account = [(DAABLegacyAccount *)self account];

  return ABRecordGetRecordID(account);
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

- (void)updateSaveRequest:(id)request
{
  requestCopy = request;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAABLegacyAccount cannot update CNSaveRequest" userInfo:0];
  objc_exception_throw(v4);
}

- (void)markForDeletion
{
  [(DAABLegacyAccount *)self account];
  AddressBook = ABRecordGetAddressBook();
  account = [(DAABLegacyAccount *)self account];

  ABAddressBookRemoveRecord(AddressBook, account, 0);
}

@end