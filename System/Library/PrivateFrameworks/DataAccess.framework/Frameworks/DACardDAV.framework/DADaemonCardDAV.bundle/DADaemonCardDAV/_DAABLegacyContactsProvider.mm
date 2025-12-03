@interface _DAABLegacyContactsProvider
- (_DAABLegacyContactsProvider)initWithAddressBook:(void *)book;
- (id)contactFromItem:(id)item;
- (id)contactsInContainer:(id)container;
- (id)contactsWithExternalHREFs:(id)fs container:(id)container;
- (id)contactsWithExternalUUIDs:(id)ds container:(id)container;
- (id)meContactInContainer:(id)container;
- (unint64_t)countOfContacts;
- (unint64_t)countOfGroups;
- (void)dealloc;
@end

@implementation _DAABLegacyContactsProvider

- (_DAABLegacyContactsProvider)initWithAddressBook:(void *)book
{
  v6.receiver = self;
  v6.super_class = _DAABLegacyContactsProvider;
  v4 = [(_DAABLegacyContactsProvider *)&v6 init];
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
  v3.super_class = _DAABLegacyContactsProvider;
  [(_DAABLegacyContactsProvider *)&v3 dealloc];
}

- (id)contactsInContainer:(id)container
{
  containerCopy = container;
  v5 = ABAddressBookCopyArrayOfAllPeopleInSource(-[_DAABLegacyContactsProvider addressBook](self, "addressBook"), [containerCopy asSource]);
  v6 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [DAABLegacyContact alloc];
        v14 = [(DAABLegacyContact *)v13 initWithABPerson:v12, v17];
        [v6 addObject:v14];
      }

      v9 = [(__CFArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [v6 copy];

  return v15;
}

- (id)meContactInContainer:(id)container
{
  [container asSource];
  Me = ABSourceGetMe();
  if (Me)
  {
    Me = [[DAABLegacyContact alloc] initWithABPerson:Me];
  }

  return Me;
}

- (id)contactFromItem:(id)item
{
  itemCopy = item;
  cardDAVRecordItem = [itemCopy cardDAVRecordItem];
  isContact = [cardDAVRecordItem isContact];

  if (isContact)
  {
    cardDAVRecordItem2 = [itemCopy cardDAVRecordItem];
  }

  else
  {
    cardDAVRecordItem2 = 0;
  }

  return cardDAVRecordItem2;
}

- (id)contactsWithExternalHREFs:(id)fs container:(id)container
{
  fsCopy = fs;
  containerCopy = container;
  v8 = +[NSMutableArray array];
  if ([fsCopy count])
  {
    addressBook = self->_addressBook;
    [containerCopy asSource];
    v10 = ABAddressBookCopyArrayOfAllPeopleWithExternalIdentifiersInSource();
    if (v10)
    {
      v11 = v10;
      Count = CFArrayGetCount(v10);
      if (Count >= 1)
      {
        v13 = Count;
        for (i = 0; i != v13; ++i)
        {
          v15 = [[DAABLegacyContact alloc] initWithABPerson:CFArrayGetValueAtIndex(v11, i)];
          [v8 addObject:v15];
        }
      }

      CFRelease(v11);
    }
  }

  return v8;
}

- (id)contactsWithExternalUUIDs:(id)ds container:(id)container
{
  dsCopy = ds;
  containerCopy = container;
  v8 = +[NSMutableArray array];
  if ([dsCopy count])
  {
    addressBook = self->_addressBook;
    [containerCopy asSource];
    v10 = ABAddressBookCopyArrayOfAllPeopleWithExternalUUIDsInSource();
    if (v10)
    {
      v11 = v10;
      Count = CFArrayGetCount(v10);
      if (Count >= 1)
      {
        v13 = Count;
        for (i = 0; i != v13; ++i)
        {
          v15 = [[DAABLegacyContact alloc] initWithABPerson:CFArrayGetValueAtIndex(v11, i)];
          [v8 addObject:v15];
        }
      }

      CFRelease(v11);
    }
  }

  return v8;
}

- (unint64_t)countOfContacts
{
  addressBook = [(_DAABLegacyContactsProvider *)self addressBook];

  return ABAddressBookGetPersonCount(addressBook);
}

- (unint64_t)countOfGroups
{
  addressBook = [(_DAABLegacyContactsProvider *)self addressBook];

  return ABAddressBookGetGroupCount(addressBook);
}

@end