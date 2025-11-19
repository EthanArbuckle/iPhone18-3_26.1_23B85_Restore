@interface ICQuery
- (BOOL)canBeEdited;
- (NSPredicate)predicate;
- (NSString)entityName;
- (id)filterSelectionWithManagedObjectContext:(id)a3 account:(id)a4;
- (id)removingTagIdentifier:(id)a3;
- (id)replacingTagIdentifier:(id)a3 withNewTagIdentifier:(id)a4;
- (id)tagSelectionWithManagedObjectContext:(id)a3;
- (int64_t)minimumSupportedVersion;
@end

@implementation ICQuery

- (BOOL)canBeEdited
{
  v2 = [(ICQuery *)self queryObjC];
  v3 = [v2 canBeEdited];

  return v3;
}

- (int64_t)minimumSupportedVersion
{
  v2 = [(ICQuery *)self queryObjC];
  v3 = [v2 minimumSupportedVersion];

  return v3;
}

- (NSString)entityName
{
  v2 = [(ICQuery *)self queryObjC];
  v3 = [v2 entityName];

  return v3;
}

- (NSPredicate)predicate
{
  v2 = [(ICQuery *)self queryObjC];
  v3 = [v2 predicate];

  return v3;
}

- (id)tagSelectionWithManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [(ICQuery *)self queryObjC];
  v6 = [v5 tagSelectionWithManagedObjectContext:v4];

  return v6;
}

- (id)filterSelectionWithManagedObjectContext:(id)a3 account:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICQuery *)self queryObjC];
  v9 = [v8 filterSelectionWithManagedObjectContext:v7 account:v6];

  return v9;
}

- (id)replacingTagIdentifier:(id)a3 withNewTagIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICQuery *)self queryObjC];
  v9 = [v8 replacingTagIdentifier:v7 withNewTagIdentifier:v6];

  return v9;
}

- (id)removingTagIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ICQuery *)self queryObjC];
  v6 = [v5 removingTagIdentifier:v4];

  return v6;
}

@end