@interface FLItemStoreDecorator
- (FLItemStoreDecorator)initWithClientIdentifier:(id)a3;
- (id)_itemsMatchingPredicate:(id)a3 identifiers:(id)a4;
- (id)followUpItems;
- (id)itemsMatchingIdentifier:(id)a3;
- (id)itemsMatchingIdentifiers:(id)a3;
@end

@implementation FLItemStoreDecorator

- (id)followUpItems
{
  v3 = [NSPredicate predicateWithValue:1];
  v4 = [(FLItemStoreDecorator *)self itemsMatchingPredicate:v3];

  return v4;
}

- (FLItemStoreDecorator)initWithClientIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FLItemStoreDecorator;
  v5 = [(FLItemStoreDecorator *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;
  }

  return v5;
}

- (id)itemsMatchingIdentifier:(id)a3
{
  if (a3)
  {
    v8 = a3;
    v4 = a3;
    v5 = [NSArray arrayWithObjects:&v8 count:1];

    v6 = [(FLItemStoreDecorator *)self itemsMatchingIdentifiers:v5, v8];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (id)itemsMatchingIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [NSPredicate predicateWithValue:1];
  v6 = [(FLItemStoreDecorator *)self _itemsMatchingPredicate:v5 identifiers:v4];

  return v6;
}

- (id)_itemsMatchingPredicate:(id)a3 identifiers:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[ItemStore sharedInstance];
  v9 = [v8 safeSelectFollowUpItemsWithUniqueIdentifiers:v6];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008994;
  v13[3] = &unk_100020B00;
  v13[4] = self;
  v10 = [v9 fl_map:v13];

  v11 = [v10 filteredArrayUsingPredicate:v7];

  return v11;
}

@end