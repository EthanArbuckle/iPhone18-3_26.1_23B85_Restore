@interface ICQuery
- (BOOL)canBeEdited;
- (NSPredicate)predicate;
- (NSString)entityName;
- (id)filterSelectionWithManagedObjectContext:(id)context account:(id)account;
- (id)removingTagIdentifier:(id)identifier;
- (id)replacingTagIdentifier:(id)identifier withNewTagIdentifier:(id)tagIdentifier;
- (id)tagSelectionWithManagedObjectContext:(id)context;
- (int64_t)minimumSupportedVersion;
@end

@implementation ICQuery

- (BOOL)canBeEdited
{
  queryObjC = [(ICQuery *)self queryObjC];
  canBeEdited = [queryObjC canBeEdited];

  return canBeEdited;
}

- (int64_t)minimumSupportedVersion
{
  queryObjC = [(ICQuery *)self queryObjC];
  minimumSupportedVersion = [queryObjC minimumSupportedVersion];

  return minimumSupportedVersion;
}

- (NSString)entityName
{
  queryObjC = [(ICQuery *)self queryObjC];
  entityName = [queryObjC entityName];

  return entityName;
}

- (NSPredicate)predicate
{
  queryObjC = [(ICQuery *)self queryObjC];
  predicate = [queryObjC predicate];

  return predicate;
}

- (id)tagSelectionWithManagedObjectContext:(id)context
{
  contextCopy = context;
  queryObjC = [(ICQuery *)self queryObjC];
  v6 = [queryObjC tagSelectionWithManagedObjectContext:contextCopy];

  return v6;
}

- (id)filterSelectionWithManagedObjectContext:(id)context account:(id)account
{
  accountCopy = account;
  contextCopy = context;
  queryObjC = [(ICQuery *)self queryObjC];
  v9 = [queryObjC filterSelectionWithManagedObjectContext:contextCopy account:accountCopy];

  return v9;
}

- (id)replacingTagIdentifier:(id)identifier withNewTagIdentifier:(id)tagIdentifier
{
  tagIdentifierCopy = tagIdentifier;
  identifierCopy = identifier;
  queryObjC = [(ICQuery *)self queryObjC];
  v9 = [queryObjC replacingTagIdentifier:identifierCopy withNewTagIdentifier:tagIdentifierCopy];

  return v9;
}

- (id)removingTagIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queryObjC = [(ICQuery *)self queryObjC];
  v6 = [queryObjC removingTagIdentifier:identifierCopy];

  return v6;
}

@end