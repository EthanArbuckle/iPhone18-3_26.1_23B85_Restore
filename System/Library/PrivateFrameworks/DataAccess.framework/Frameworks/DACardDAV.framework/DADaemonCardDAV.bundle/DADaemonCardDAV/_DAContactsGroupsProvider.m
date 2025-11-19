@interface _DAContactsGroupsProvider
- (_DAContactsGroupsProvider)initWithContactStore:(id)a3;
- (id)groupsInContainer:(id)a3;
@end

@implementation _DAContactsGroupsProvider

- (_DAContactsGroupsProvider)initWithContactStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _DAContactsGroupsProvider;
  v6 = [(_DAContactsGroupsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
  }

  return v7;
}

- (id)groupsInContainer:(id)a3
{
  v4 = [a3 asContainer];
  v5 = [v4 identifier];
  v6 = [CNGroup predicateForGroupsInContainerWithIdentifier:v5];

  v7 = [(_DAContactsGroupsProvider *)self contactStore];
  v24 = 0;
  v8 = [v7 groupsMatchingPredicate:v6 error:&v24];
  v9 = v24;

  v10 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = [DAContactsGroup alloc];
        v18 = [v17 initWithGroup:{v16, v20}];
        [v10 addObject:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v13);
  }

  return v10;
}

@end