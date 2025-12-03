@interface FLItemStoreDecorator
- (FLItemStoreDecorator)initWithClientIdentifier:(id)identifier;
- (id)_itemsMatchingPredicate:(id)predicate identifiers:(id)identifiers;
- (id)followUpItems;
- (id)itemsMatchingIdentifier:(id)identifier;
- (id)itemsMatchingIdentifiers:(id)identifiers;
@end

@implementation FLItemStoreDecorator

- (id)followUpItems
{
  v3 = [NSPredicate predicateWithValue:1];
  v4 = [(FLItemStoreDecorator *)self itemsMatchingPredicate:v3];

  return v4;
}

- (FLItemStoreDecorator)initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = FLItemStoreDecorator;
  v5 = [(FLItemStoreDecorator *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;
  }

  return v5;
}

- (id)itemsMatchingIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    identifierCopy2 = identifier;
    v5 = [NSArray arrayWithObjects:&identifierCopy count:1];

    identifierCopy = [(FLItemStoreDecorator *)self itemsMatchingIdentifiers:v5, identifierCopy];
  }

  else
  {
    identifierCopy = &__NSArray0__struct;
  }

  return identifierCopy;
}

- (id)itemsMatchingIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [NSPredicate predicateWithValue:1];
  v6 = [(FLItemStoreDecorator *)self _itemsMatchingPredicate:v5 identifiers:identifiersCopy];

  return v6;
}

- (id)_itemsMatchingPredicate:(id)predicate identifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  predicateCopy = predicate;
  v8 = +[ItemStore sharedInstance];
  v9 = [v8 safeSelectFollowUpItemsWithUniqueIdentifiers:identifiersCopy];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008994;
  v13[3] = &unk_100020B00;
  v13[4] = self;
  v10 = [v9 fl_map:v13];

  v11 = [v10 filteredArrayUsingPredicate:predicateCopy];

  return v11;
}

@end