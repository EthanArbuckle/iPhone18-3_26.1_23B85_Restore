@interface ICAccountProxy
+ (id)accountProxyWithAccount:(id)a3;
- (BOOL)isDeleted;
- (BOOL)noteIsVisible:(id)a3;
- (BOOL)supportsVisibilityTestingType:(int64_t)a3;
- (ICAccountProxy)initWithAccount:(id)a3;
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
- (int64_t)compare:(id)a3;
- (unint64_t)visibleNotesCount;
@end

@implementation ICAccountProxy

- (ICAccountProxy)initWithAccount:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICAccountProxy;
  v5 = [(ICAccountProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICAccountProxy *)v5 setAccount:v4];
  }

  return v6;
}

+ (id)accountProxyWithAccount:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAccount:v4];

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(ICAccountProxy *)self account];
  v6 = [v5 compare:v4];

  return v6;
}

- (id)objectID
{
  v2 = [(ICAccountProxy *)self account];
  v3 = [v2 objectID];

  return v3;
}

- (NSManagedObjectContext)managedObjectContext
{
  v2 = [(ICAccountProxy *)self account];
  v3 = [v2 managedObjectContext];

  return v3;
}

- (NSString)accountName
{
  v2 = [(ICAccountProxy *)self account];
  v3 = [v2 localizedName];

  return v3;
}

- (BOOL)supportsVisibilityTestingType:(int64_t)a3
{
  v4 = [(ICAccountProxy *)self account];
  LOBYTE(a3) = [v4 supportsVisibilityTestingType:a3];

  return a3;
}

- (id)predicateForVisibleNotes
{
  v2 = [(ICAccountProxy *)self account];
  v3 = [v2 predicateForVisibleNotes];

  return v3;
}

- (id)predicateForPinnedNotes
{
  v2 = [(ICAccountProxy *)self account];
  v3 = [v2 predicateForPinnedNotes];

  return v3;
}

- (id)predicateForSearchableNotes
{
  v2 = [(ICAccountProxy *)self account];
  v3 = [v2 predicateForSearchableNotes];

  return v3;
}

- (id)predicateForSearchableAttachments
{
  v2 = [(ICAccountProxy *)self account];
  v3 = [v2 predicateForSearchableAttachments];

  return v3;
}

- (NSArray)visibleNotes
{
  v2 = [(ICAccountProxy *)self account];
  v3 = [v2 visibleNotes];

  return v3;
}

- (unint64_t)visibleNotesCount
{
  v2 = [(ICAccountProxy *)self account];
  v3 = [v2 visibleNotesCount];

  return v3;
}

- (BOOL)noteIsVisible:(id)a3
{
  v4 = a3;
  v5 = [(ICAccountProxy *)self account];
  v6 = [v5 noteIsVisible:v4];

  return v6;
}

- (NSString)titleForNavigationBar
{
  v2 = [(ICAccountProxy *)self account];
  v3 = [v2 titleForNavigationBar];

  return v3;
}

- (NSString)titleForTableViewCell
{
  v2 = [(ICAccountProxy *)self account];
  v3 = [v2 titleForTableViewCell];

  return v3;
}

- (BOOL)isDeleted
{
  v2 = [(ICAccountProxy *)self account];
  v3 = [v2 isDeleted];

  return v3;
}

@end