@interface _DAABLegacyGroupsProvider
- (_DAABLegacyGroupsProvider)initWithAddressBook:(void *)a3;
- (id)groupsInContainer:(id)a3;
- (id)groupsWithExternalHREFs:(id)a3 container:(id)a4;
- (id)groupsWithExternalUUIDs:(id)a3 container:(id)a4;
- (void)dealloc;
@end

@implementation _DAABLegacyGroupsProvider

- (_DAABLegacyGroupsProvider)initWithAddressBook:(void *)a3
{
  v6.receiver = self;
  v6.super_class = _DAABLegacyGroupsProvider;
  v4 = [(_DAABLegacyGroupsProvider *)&v6 init];
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
  v3.super_class = _DAABLegacyGroupsProvider;
  [(_DAABLegacyGroupsProvider *)&v3 dealloc];
}

- (id)groupsInContainer:(id)a3
{
  v4 = a3;
  v5 = ABAddressBookCopyArrayOfAllGroupsInSource(-[_DAABLegacyGroupsProvider addressBook](self, "addressBook"), [v4 asSource]);
  v6 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [DAABLegacyGroup alloc];
        v14 = [v13 initWithGroup:{v12, v16}];
        [v6 addObject:v14];
      }

      v9 = [(__CFArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)groupsWithExternalHREFs:(id)a3 container:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  if ([v6 count])
  {
    addressBook = self->_addressBook;
    [v7 asSource];
    v10 = ABAddressBookCopyArrayOfAllGroupsWithExternalIdentifiersInSource();
    if (v10)
    {
      v11 = v10;
      Count = CFArrayGetCount(v10);
      if (Count >= 1)
      {
        v13 = Count;
        for (i = 0; i != v13; ++i)
        {
          v15 = [[DAABLegacyGroup alloc] initWithGroup:{CFArrayGetValueAtIndex(v11, i)}];
          [v8 addObject:v15];
        }
      }

      CFRelease(v11);
    }
  }

  return v8;
}

- (id)groupsWithExternalUUIDs:(id)a3 container:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  if ([v6 count])
  {
    addressBook = self->_addressBook;
    [v7 asSource];
    v10 = ABAddressBookCopyArrayOfAllGroupsWithExternalUUIDsInSource();
    if (v10)
    {
      v11 = v10;
      Count = CFArrayGetCount(v10);
      if (Count >= 1)
      {
        v13 = Count;
        for (i = 0; i != v13; ++i)
        {
          v15 = [[DAABLegacyGroup alloc] initWithGroup:{CFArrayGetValueAtIndex(v11, i)}];
          [v8 addObject:v15];
        }
      }

      CFRelease(v11);
    }
  }

  return v8;
}

@end