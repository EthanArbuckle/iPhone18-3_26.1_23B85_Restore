@interface _DAChangeHistoryABLegacyClerk
- (_DAChangeHistoryABLegacyClerk)initWithAddressBook:(void *)book;
- (id)identifiersOfAllRegisterdClients;
- (void)dealloc;
- (void)registerClientWithIdentifier:(id)identifier forContainer:(id)container;
- (void)unregisterClientWithIdentifier:(id)identifier forContainer:(id)container;
@end

@implementation _DAChangeHistoryABLegacyClerk

- (_DAChangeHistoryABLegacyClerk)initWithAddressBook:(void *)book
{
  v6.receiver = self;
  v6.super_class = _DAChangeHistoryABLegacyClerk;
  v4 = [(_DAChangeHistoryABLegacyClerk *)&v6 init];
  if (v4)
  {
    v4->_addressBook = CFRetain(book);
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->_addressBook);
  v3.receiver = self;
  v3.super_class = _DAChangeHistoryABLegacyClerk;
  [(_DAChangeHistoryABLegacyClerk *)&v3 dealloc];
}

- (void)unregisterClientWithIdentifier:(id)identifier forContainer:(id)container
{
  containerCopy = container;
  identifierCopy = identifier;
  [(_DAChangeHistoryABLegacyClerk *)self addressBook];
  [containerCopy asSource];

  ABChangeHistoryUnregisterClientForSource();
}

- (void)registerClientWithIdentifier:(id)identifier forContainer:(id)container
{
  containerCopy = container;
  identifierCopy = identifier;
  [(_DAChangeHistoryABLegacyClerk *)self addressBook];
  [containerCopy asSource];

  ABChangeHistoryRegisterClientForSource();
}

- (id)identifiersOfAllRegisterdClients
{
  [(_DAChangeHistoryABLegacyClerk *)self addressBook];
  v2 = ABChangeHistoryCopyAllRegisteredClientIdentifiers();

  return v2;
}

@end