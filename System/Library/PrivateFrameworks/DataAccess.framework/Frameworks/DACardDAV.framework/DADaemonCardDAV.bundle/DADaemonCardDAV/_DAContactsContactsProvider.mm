@interface _DAContactsContactsProvider
- (_DAContactsContactsProvider)initWithContactStore:(id)store;
- (id)contactFromItem:(id)item;
- (id)contactsInContainer:(id)container;
- (id)meContactInContainer:(id)container;
- (unint64_t)countOfContacts;
- (unint64_t)countOfGroups;
@end

@implementation _DAContactsContactsProvider

- (_DAContactsContactsProvider)initWithContactStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = _DAContactsContactsProvider;
  v6 = [(_DAContactsContactsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
  }

  return v7;
}

- (id)contactsInContainer:(id)container
{
  containerCopy = container;
  v5 = +[CardDAVVCardItemCNImplementation keysToFetch];
  v6 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v5];
  [v6 setUnifyResults:0];
  asContainer = [containerCopy asContainer];

  identifier = [asContainer identifier];
  v9 = [CNContact predicateForContactsInContainerWithIdentifier:identifier];
  [v6 setPredicate:v9];

  v10 = +[NSMutableArray array];
  contactStore = [(_DAContactsContactsProvider *)self contactStore];
  v20 = v10;
  v21 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_24344;
  v19 = &unk_3CC08;
  v12 = v10;
  [contactStore enumerateContactsWithFetchRequest:v6 error:&v21 usingBlock:&v16];
  v13 = v21;

  v14 = [v12 copy];

  return v14;
}

- (id)meContactInContainer:(id)container
{
  containerCopy = container;
  v5 = +[CardDAVVCardItemCNImplementation keysToFetch];
  v6 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v5];
  [v6 setUnifyResults:0];
  asContainer = [containerCopy asContainer];
  meIdentifier = [asContainer meIdentifier];
  v24 = meIdentifier;
  v9 = [NSArray arrayWithObjects:&v24 count:1];
  v10 = [CNContact predicateForContactsWithIdentifiers:v9];
  [v6 setPredicate:v10];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_24614;
  v22 = sub_24624;
  v23 = 0;
  contactStore = [(_DAContactsContactsProvider *)self contactStore];
  v16[4] = &v18;
  v17 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_2462C;
  v16[3] = &unk_3CCE0;
  [contactStore enumerateContactsWithFetchRequest:v6 error:&v17 usingBlock:v16];
  v12 = v17;

  if (v19[5])
  {
    v13 = [DAContactsContact alloc];
    v14 = [(DAContactsContact *)v13 initWithContact:v19[5]];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v18, 8);

  return v14;
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

- (unint64_t)countOfContacts
{
  v3 = [CNContactFetchRequest alloc];
  v18 = CNContactIdentifierKey;
  v4 = [NSArray arrayWithObjects:&v18 count:1];
  v5 = [v3 initWithKeysToFetch:v4];

  [v5 setUnifyResults:0];
  v6 = +[NSMutableArray array];
  contactStore = [(_DAContactsContactsProvider *)self contactStore];
  v16 = v6;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_24850;
  v15 = &unk_3CC08;
  v8 = v6;
  [contactStore enumerateContactsWithFetchRequest:v5 error:&v17 usingBlock:&v12];
  v9 = v17;

  v10 = [v8 count];
  return v10;
}

- (unint64_t)countOfGroups
{
  contactStore = [(_DAContactsContactsProvider *)self contactStore];
  v3 = [contactStore groupsMatchingPredicate:0 error:0];

  v4 = [v3 count];
  return v4;
}

@end