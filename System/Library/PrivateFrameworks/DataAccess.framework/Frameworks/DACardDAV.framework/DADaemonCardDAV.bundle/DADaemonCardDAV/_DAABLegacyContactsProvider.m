@interface _DAABLegacyContactsProvider
- (_DAABLegacyContactsProvider)initWithAddressBook:(void *)a3;
- (id)contactFromItem:(id)a3;
- (id)contactsInContainer:(id)a3;
- (id)contactsWithExternalHREFs:(id)a3 container:(id)a4;
- (id)contactsWithExternalUUIDs:(id)a3 container:(id)a4;
- (id)meContactInContainer:(id)a3;
- (unint64_t)countOfContacts;
- (unint64_t)countOfGroups;
- (void)dealloc;
@end

@implementation _DAABLegacyContactsProvider

- (_DAABLegacyContactsProvider)initWithAddressBook:(void *)a3
{
  v6.receiver = self;
  v6.super_class = _DAABLegacyContactsProvider;
  v4 = [(_DAABLegacyContactsProvider *)&v6 init];
  if (v4)
  {
    v4->_addressBook = CFRetain(a3);
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

- (id)contactsInContainer:(id)a3
{
  v4 = a3;
  v5 = ABAddressBookCopyArrayOfAllPeopleInSource(-[_DAABLegacyContactsProvider addressBook](self, "addressBook"), [v4 asSource]);
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

- (id)meContactInContainer:(id)a3
{
  [a3 asSource];
  Me = ABSourceGetMe();
  if (Me)
  {
    Me = [[DAABLegacyContact alloc] initWithABPerson:Me];
  }

  return Me;
}

- (id)contactFromItem:(id)a3
{
  v3 = a3;
  v4 = [v3 cardDAVRecordItem];
  v5 = [v4 isContact];

  if (v5)
  {
    v6 = [v3 cardDAVRecordItem];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contactsWithExternalHREFs:(id)a3 container:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  if ([v6 count])
  {
    addressBook = self->_addressBook;
    [v7 asSource];
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

- (id)contactsWithExternalUUIDs:(id)a3 container:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  if ([v6 count])
  {
    addressBook = self->_addressBook;
    [v7 asSource];
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
  v2 = [(_DAABLegacyContactsProvider *)self addressBook];

  return ABAddressBookGetPersonCount(v2);
}

- (unint64_t)countOfGroups
{
  v2 = [(_DAABLegacyContactsProvider *)self addressBook];

  return ABAddressBookGetGroupCount(v2);
}

@end