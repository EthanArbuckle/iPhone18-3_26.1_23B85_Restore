@interface DAABLegacyContainer
- (BOOL)arePropertiesReadonly;
- (BOOL)isContentReadonly;
- (BOOL)isGuardianRestricted;
- (BOOL)isGuardianStateDirty;
- (BOOL)isLocal;
- (DAABLegacyContainer)initWithABSource:(void *)a3;
- (id)accountIdentifier;
- (id)asContainer;
- (id)cTag;
- (id)constraintsPath;
- (id)externalIdentifier;
- (id)identifier;
- (id)meContactIdentifier;
- (id)name;
- (id)syncData;
- (id)syncTag;
- (int64_t)type;
- (void)dealloc;
- (void)markAsDefault;
- (void)markForDeletion;
- (void)setAccountIdentifier:(id)a3;
- (void)setCTag:(id)a3;
- (void)setConstraintsPath:(id)a3;
- (void)setExternalIdentifier:(id)a3;
- (void)setGuardianRestricted:(BOOL)a3;
- (void)setGuardianStateDirty:(BOOL)a3;
- (void)setMeContactIdentifier:(id)a3;
- (void)setName:(id)a3;
- (void)setSyncData:(id)a3;
- (void)setSyncTag:(id)a3;
- (void)setType:(int64_t)a3;
- (void)updateSaveRequest:(id)a3;
@end

@implementation DAABLegacyContainer

- (DAABLegacyContainer)initWithABSource:(void *)a3
{
  v6.receiver = self;
  v6.super_class = DAABLegacyContainer;
  v4 = [(DAABLegacyContainer *)&v6 init];
  if (v4)
  {
    v4->_source = CFRetain(a3);
    ABSourceSetShouldIgnoreCapabilitiesRestrictions();
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->_source);
  v3.receiver = self;
  v3.super_class = DAABLegacyContainer;
  [(DAABLegacyContainer *)&v3 dealloc];
}

- (id)identifier
{
  v2 = [(DAABLegacyContainer *)self source];
  v3 = ABRecordCopyValue(v2, *MEMORY[0x277CE9AA8]);

  return v3;
}

- (id)name
{
  v2 = [(DAABLegacyContainer *)self source];
  v3 = ABRecordCopyValue(v2, *MEMORY[0x277CE9AC0]);

  return v3;
}

- (void)setName:(id)a3
{
  value = a3;
  v4 = [(DAABLegacyContainer *)self source];
  ABRecordSetValue(v4, *MEMORY[0x277CE9AC0], value, 0);
}

- (BOOL)isLocal
{
  v2 = [(DAABLegacyContainer *)self source];
  v3 = ABRecordCopyValue(v2, *MEMORY[0x277CE9AD0]);
  v4 = [v3 integerValue] == 0;

  return v4;
}

- (int64_t)type
{
  v2 = [(DAABLegacyContainer *)self source];
  v3 = ABRecordCopyValue(v2, *MEMORY[0x277CE9AD0]);
  v4 = [v3 integerValue];

  return v4;
}

- (void)setType:(int64_t)a3
{
  v4 = [(DAABLegacyContainer *)self source];
  v5 = *MEMORY[0x277CE9AD0];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];

  ABRecordSetValue(v4, v5, v6, 0);
}

- (id)externalIdentifier
{
  v2 = [(DAABLegacyContainer *)self source];
  v3 = ABRecordCopyValue(v2, *MEMORY[0x277CE9A90]);

  return v3;
}

- (void)setExternalIdentifier:(id)a3
{
  value = a3;
  v4 = [(DAABLegacyContainer *)self source];
  ABRecordSetValue(v4, *MEMORY[0x277CE9A90], value, 0);
}

- (id)cTag
{
  v2 = [(DAABLegacyContainer *)self source];
  v3 = ABRecordCopyValue(v2, *MEMORY[0x277CE9A98]);

  return v3;
}

- (void)setCTag:(id)a3
{
  value = a3;
  v4 = [(DAABLegacyContainer *)self source];
  ABRecordSetValue(v4, *MEMORY[0x277CE9A98], value, 0);
}

- (id)syncTag
{
  v2 = [(DAABLegacyContainer *)self source];
  v3 = ABRecordCopyValue(v2, *MEMORY[0x277CE9AA0]);

  return v3;
}

- (void)setSyncTag:(id)a3
{
  value = a3;
  v4 = [(DAABLegacyContainer *)self source];
  ABRecordSetValue(v4, *MEMORY[0x277CE9AA0], value, 0);
}

- (id)syncData
{
  v2 = [(DAABLegacyContainer *)self source];
  v3 = ABRecordCopyValue(v2, *MEMORY[0x277CE9AC8]);

  return v3;
}

- (void)setSyncData:(id)a3
{
  value = a3;
  v4 = [(DAABLegacyContainer *)self source];
  ABRecordSetValue(v4, *MEMORY[0x277CE9AC8], value, 0);
}

- (id)constraintsPath
{
  v2 = [(DAABLegacyContainer *)self source];
  v3 = ABRecordCopyValue(v2, *MEMORY[0x277CE9A80]);

  return v3;
}

- (void)setConstraintsPath:(id)a3
{
  value = a3;
  v4 = [(DAABLegacyContainer *)self source];
  ABRecordSetValue(v4, *MEMORY[0x277CE9A80], value, 0);
}

- (BOOL)isContentReadonly
{
  v2 = [(DAABLegacyContainer *)self source];

  return MEMORY[0x28213B548](v2);
}

- (BOOL)arePropertiesReadonly
{
  v2 = [(DAABLegacyContainer *)self source];

  return MEMORY[0x28213B538](v2);
}

- (id)meContactIdentifier
{
  v2 = MEMORY[0x277CCABB0];
  [(DAABLegacyContainer *)self source];
  v3 = *MEMORY[0x277CE9AB8];
  v4 = [v2 numberWithInt:ABRecordGetIntValue()];
  v5 = [v4 stringValue];

  return v5;
}

- (void)setMeContactIdentifier:(id)a3
{
  v4 = a3;
  [(DAABLegacyContainer *)self source];
  AddressBook = ABRecordGetAddressBook();
  v6 = [v4 intValue];

  PersonWithRecordID = ABAddressBookGetPersonWithRecordID(AddressBook, v6);
  v8 = [(DAABLegacyContainer *)self source];

  MEMORY[0x28213B560](v8, PersonWithRecordID, 0);
}

- (id)accountIdentifier
{
  v2 = MEMORY[0x277CCABB0];
  [(DAABLegacyContainer *)self source];
  v3 = *MEMORY[0x277CE9A70];
  v4 = [v2 numberWithInt:ABRecordGetIntValue()];
  v5 = [v4 stringValue];

  return v5;
}

- (void)setAccountIdentifier:(id)a3
{
  v4 = a3;
  [(DAABLegacyContainer *)self source];
  v5 = *MEMORY[0x277CE9A70];
  [v4 intValue];

  ABRecordSetIntValue();
}

- (void)markForDeletion
{
  [(DAABLegacyContainer *)self source];
  AddressBook = ABRecordGetAddressBook();
  v4 = [(DAABLegacyContainer *)self source];

  ABAddressBookRemoveRecord(AddressBook, v4, 0);
}

- (void)markAsDefault
{
  [(DAABLegacyContainer *)self source];
  AddressBook = ABRecordGetAddressBook();
  v4 = [(DAABLegacyContainer *)self source];

  MEMORY[0x28213B358](AddressBook, v4, 1);
}

- (BOOL)isGuardianRestricted
{
  [(DAABLegacyContainer *)self source];
  v2 = *MEMORY[0x277CE9A78];
  return (ABRecordGetIntValue() >> 2) & 1;
}

- (void)setGuardianRestricted:(BOOL)a3
{
  [(DAABLegacyContainer *)self source];
  v4 = *MEMORY[0x277CE9A78];
  ABRecordGetIntValue();
  [(DAABLegacyContainer *)self source];

  ABRecordSetIntValue();
}

- (BOOL)isGuardianStateDirty
{
  [(DAABLegacyContainer *)self source];
  v2 = *MEMORY[0x277CE9A78];
  return (ABRecordGetIntValue() >> 3) & 1;
}

- (void)setGuardianStateDirty:(BOOL)a3
{
  [(DAABLegacyContainer *)self source];
  v4 = *MEMORY[0x277CE9A78];
  ABRecordGetIntValue();
  [(DAABLegacyContainer *)self source];

  ABRecordSetIntValue();
}

- (void)updateSaveRequest:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAABLegacyContainer cannot update CNSaveRequest" userInfo:0];
  objc_exception_throw(v4);
}

- (id)asContainer
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAABLegacyContainer does not support asContainer" userInfo:0];
  objc_exception_throw(v2);
}

@end