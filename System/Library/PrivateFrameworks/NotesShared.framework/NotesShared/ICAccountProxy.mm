@interface ICAccountProxy
+ (id)accountProxyWithAccount:(id)account;
- (BOOL)isDeleted;
- (BOOL)noteIsVisible:(id)visible;
- (BOOL)supportsVisibilityTestingType:(int64_t)type;
- (ICAccountProxy)initWithAccount:(id)account;
- (NSArray)visibleNotes;
- (NSManagedObjectContext)managedObjectContext;
- (NSString)accountName;
- (NSString)titleForNavigationBar;
- (NSString)titleForTableViewCell;
- (id)objectID;
- (id)predicateForPinnedNotes;
- (id)predicateForSearchableAttachments;
- (id)predicateForSearchableNotes;
- (id)predicateForVisibleNotes;
- (int64_t)compare:(id)compare;
- (unint64_t)visibleNotesCount;
@end

@implementation ICAccountProxy

- (ICAccountProxy)initWithAccount:(id)account
{
  accountCopy = account;
  v8.receiver = self;
  v8.super_class = ICAccountProxy;
  v5 = [(ICAccountProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICAccountProxy *)v5 setAccount:accountCopy];
  }

  return v6;
}

+ (id)accountProxyWithAccount:(id)account
{
  accountCopy = account;
  v5 = [[self alloc] initWithAccount:accountCopy];

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  account = [(ICAccountProxy *)self account];
  v6 = [account compare:compareCopy];

  return v6;
}

- (id)objectID
{
  account = [(ICAccountProxy *)self account];
  objectID = [account objectID];

  return objectID;
}

- (NSManagedObjectContext)managedObjectContext
{
  account = [(ICAccountProxy *)self account];
  managedObjectContext = [account managedObjectContext];

  return managedObjectContext;
}

- (NSString)accountName
{
  account = [(ICAccountProxy *)self account];
  localizedName = [account localizedName];

  return localizedName;
}

- (BOOL)supportsVisibilityTestingType:(int64_t)type
{
  account = [(ICAccountProxy *)self account];
  LOBYTE(type) = [account supportsVisibilityTestingType:type];

  return type;
}

- (id)predicateForVisibleNotes
{
  account = [(ICAccountProxy *)self account];
  predicateForVisibleNotes = [account predicateForVisibleNotes];

  return predicateForVisibleNotes;
}

- (id)predicateForPinnedNotes
{
  account = [(ICAccountProxy *)self account];
  predicateForPinnedNotes = [account predicateForPinnedNotes];

  return predicateForPinnedNotes;
}

- (id)predicateForSearchableNotes
{
  account = [(ICAccountProxy *)self account];
  predicateForSearchableNotes = [account predicateForSearchableNotes];

  return predicateForSearchableNotes;
}

- (id)predicateForSearchableAttachments
{
  account = [(ICAccountProxy *)self account];
  predicateForSearchableAttachments = [account predicateForSearchableAttachments];

  return predicateForSearchableAttachments;
}

- (NSArray)visibleNotes
{
  account = [(ICAccountProxy *)self account];
  visibleNotes = [account visibleNotes];

  return visibleNotes;
}

- (unint64_t)visibleNotesCount
{
  account = [(ICAccountProxy *)self account];
  visibleNotesCount = [account visibleNotesCount];

  return visibleNotesCount;
}

- (BOOL)noteIsVisible:(id)visible
{
  visibleCopy = visible;
  account = [(ICAccountProxy *)self account];
  v6 = [account noteIsVisible:visibleCopy];

  return v6;
}

- (NSString)titleForNavigationBar
{
  account = [(ICAccountProxy *)self account];
  titleForNavigationBar = [account titleForNavigationBar];

  return titleForNavigationBar;
}

- (NSString)titleForTableViewCell
{
  account = [(ICAccountProxy *)self account];
  titleForTableViewCell = [account titleForTableViewCell];

  return titleForTableViewCell;
}

- (BOOL)isDeleted
{
  account = [(ICAccountProxy *)self account];
  isDeleted = [account isDeleted];

  return isDeleted;
}

@end