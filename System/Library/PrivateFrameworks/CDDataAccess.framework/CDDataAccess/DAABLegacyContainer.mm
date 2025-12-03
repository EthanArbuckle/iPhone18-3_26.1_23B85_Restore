@interface DAABLegacyContainer
- (BOOL)arePropertiesReadonly;
- (BOOL)isContentReadonly;
- (BOOL)isLocal;
- (DAABLegacyContainer)initWithABSource:(void *)source;
- (id)accountIdentifier;
- (id)asContainer;
- (id)cTag;
- (id)constraintsPath;
- (id)externalIdentifier;
- (id)identifier;
- (id)meContactidentifier;
- (id)name;
- (id)syncData;
- (id)syncTag;
- (int64_t)type;
- (void)dealloc;
- (void)markAsDefault;
- (void)markForDeletion;
- (void)setAccountIdentifier:(id)identifier;
- (void)setCTag:(id)tag;
- (void)setConstraintsPath:(id)path;
- (void)setExternalIdentifier:(id)identifier;
- (void)setMeContactIdentifier:(id)identifier;
- (void)setName:(id)name;
- (void)setSyncData:(id)data;
- (void)setSyncTag:(id)tag;
- (void)setType:(int64_t)type;
- (void)updateSaveRequest:(id)request;
@end

@implementation DAABLegacyContainer

- (DAABLegacyContainer)initWithABSource:(void *)source
{
  v6.receiver = self;
  v6.super_class = DAABLegacyContainer;
  v4 = [(DAABLegacyContainer *)&v6 init];
  if (v4)
  {
    v4->_source = CFRetain(source);
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
  source = [(DAABLegacyContainer *)self source];
  v3 = ABRecordCopyValue(source, *MEMORY[0x277CE9AA8]);

  return v3;
}

- (id)name
{
  source = [(DAABLegacyContainer *)self source];
  v3 = ABRecordCopyValue(source, *MEMORY[0x277CE9AC0]);

  return v3;
}

- (void)setName:(id)name
{
  value = name;
  source = [(DAABLegacyContainer *)self source];
  ABRecordSetValue(source, *MEMORY[0x277CE9AC0], value, 0);
}

- (BOOL)isLocal
{
  source = [(DAABLegacyContainer *)self source];
  v3 = ABRecordCopyValue(source, *MEMORY[0x277CE9AD0]);
  v4 = [v3 integerValue] == 0;

  return v4;
}

- (int64_t)type
{
  source = [(DAABLegacyContainer *)self source];
  v3 = ABRecordCopyValue(source, *MEMORY[0x277CE9AD0]);
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)setType:(int64_t)type
{
  source = [(DAABLegacyContainer *)self source];
  v5 = *MEMORY[0x277CE9AD0];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:type];

  ABRecordSetValue(source, v5, v6, 0);
}

- (id)externalIdentifier
{
  source = [(DAABLegacyContainer *)self source];
  v3 = ABRecordCopyValue(source, *MEMORY[0x277CE9A90]);

  return v3;
}

- (void)setExternalIdentifier:(id)identifier
{
  value = identifier;
  source = [(DAABLegacyContainer *)self source];
  ABRecordSetValue(source, *MEMORY[0x277CE9A90], value, 0);
}

- (id)cTag
{
  source = [(DAABLegacyContainer *)self source];
  v3 = ABRecordCopyValue(source, *MEMORY[0x277CE9A98]);

  return v3;
}

- (void)setCTag:(id)tag
{
  value = tag;
  source = [(DAABLegacyContainer *)self source];
  ABRecordSetValue(source, *MEMORY[0x277CE9A98], value, 0);
}

- (id)syncTag
{
  source = [(DAABLegacyContainer *)self source];
  v3 = ABRecordCopyValue(source, *MEMORY[0x277CE9AA0]);

  return v3;
}

- (void)setSyncTag:(id)tag
{
  value = tag;
  source = [(DAABLegacyContainer *)self source];
  ABRecordSetValue(source, *MEMORY[0x277CE9AA0], value, 0);
}

- (id)syncData
{
  source = [(DAABLegacyContainer *)self source];
  v3 = ABRecordCopyValue(source, *MEMORY[0x277CE9AC8]);

  return v3;
}

- (void)setSyncData:(id)data
{
  value = data;
  source = [(DAABLegacyContainer *)self source];
  ABRecordSetValue(source, *MEMORY[0x277CE9AC8], value, 0);
}

- (id)constraintsPath
{
  source = [(DAABLegacyContainer *)self source];
  v3 = ABRecordCopyValue(source, *MEMORY[0x277CE9A80]);

  return v3;
}

- (void)setConstraintsPath:(id)path
{
  value = path;
  source = [(DAABLegacyContainer *)self source];
  ABRecordSetValue(source, *MEMORY[0x277CE9A80], value, 0);
}

- (BOOL)isContentReadonly
{
  source = [(DAABLegacyContainer *)self source];

  return MEMORY[0x28213B548](source);
}

- (BOOL)arePropertiesReadonly
{
  source = [(DAABLegacyContainer *)self source];

  return MEMORY[0x28213B538](source);
}

- (id)meContactidentifier
{
  v2 = MEMORY[0x277CCABB0];
  [(DAABLegacyContainer *)self source];
  v3 = *MEMORY[0x277CE9AB8];
  v4 = [v2 numberWithInt:ABRecordGetIntValue()];
  stringValue = [v4 stringValue];

  return stringValue;
}

- (void)setMeContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(DAABLegacyContainer *)self source];
  AddressBook = ABRecordGetAddressBook();
  intValue = [identifierCopy intValue];

  PersonWithRecordID = ABAddressBookGetPersonWithRecordID(AddressBook, intValue);
  source = [(DAABLegacyContainer *)self source];

  MEMORY[0x28213B560](source, PersonWithRecordID, 0);
}

- (id)accountIdentifier
{
  v2 = MEMORY[0x277CCABB0];
  [(DAABLegacyContainer *)self source];
  v3 = *MEMORY[0x277CE9A70];
  v4 = [v2 numberWithInt:ABRecordGetIntValue()];
  stringValue = [v4 stringValue];

  return stringValue;
}

- (void)setAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  source = [(DAABLegacyContainer *)self source];
  v6 = *MEMORY[0x277CE9A70];
  intValue = [identifierCopy intValue];

  MEMORY[0x28213B528](source, v6, intValue, 0);
}

- (void)markForDeletion
{
  [(DAABLegacyContainer *)self source];
  AddressBook = ABRecordGetAddressBook();
  source = [(DAABLegacyContainer *)self source];

  ABAddressBookRemoveRecord(AddressBook, source, 0);
}

- (void)markAsDefault
{
  [(DAABLegacyContainer *)self source];
  AddressBook = ABRecordGetAddressBook();
  source = [(DAABLegacyContainer *)self source];

  MEMORY[0x28213B358](AddressBook, source, 1);
}

- (void)updateSaveRequest:(id)request
{
  requestCopy = request;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAABLegacyContainer cannot update CNSaveRequest" userInfo:0];
  objc_exception_throw(v4);
}

- (id)asContainer
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"DAABLegacyContainer does not support asContainer" userInfo:0];
  objc_exception_throw(v2);
}

@end