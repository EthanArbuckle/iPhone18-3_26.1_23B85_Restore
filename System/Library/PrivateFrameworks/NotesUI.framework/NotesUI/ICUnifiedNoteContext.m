@interface ICUnifiedNoteContext
- (BOOL)resolvedPrefersViewContext;
- (ICLegacyAccount)legacyAccountForLocalAccount;
- (ICUnifiedNoteContext)initWithModernNoteContext:(id)a3 htmlNoteContext:(id)a4 options:(unint64_t)a5;
- (NSManagedObjectContext)modernManagedObjectContext;
- (NSManagedObjectID)defaultAccountObjectID;
- (NSPersistentStoreCoordinator)htmlStoreCoordinator;
- (NSPersistentStoreCoordinator)modernStoreCoordinator;
- (id)legacyAccountForEmailAddress:(id)a3;
- (id)managedObjectContextForObject:(id)a3 error:(id *)a4;
- (id)managedObjectContextForObjectID:(id)a3;
- (id)managedObjectIDForURIRepresentation:(id)a3;
- (id)managedObjectIDForURIString:(id)a3;
- (void)enableHTMLContextChangeLogging;
@end

@implementation ICUnifiedNoteContext

- (ICUnifiedNoteContext)initWithModernNoteContext:(id)a3 htmlNoteContext:(id)a4 options:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ICUnifiedNoteContext;
  v11 = [(ICUnifiedNoteContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_modernNoteContext, a3);
    objc_storeStrong(&v12->_htmlNoteContext, a4);
    v12->_options = a5;
  }

  return v12;
}

- (void)enableHTMLContextChangeLogging
{
  objc_opt_class();
  v4 = [(ICUnifiedNoteContext *)self htmlNoteContext];
  v3 = ICCheckedDynamicCast();
  [v3 enableChangeLogging:1];
}

- (id)managedObjectIDForURIRepresentation:(id)a3
{
  v4 = a3;
  v5 = [(ICUnifiedNoteContext *)self modernStoreCoordinator];
  v6 = [v5 ic_managedObjectIDForURIRepresentation:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(ICUnifiedNoteContext *)self htmlStoreCoordinator];
    v8 = [v9 ic_managedObjectIDForURIRepresentation:v4];
  }

  return v8;
}

- (id)managedObjectIDForURIString:(id)a3
{
  v4 = a3;
  v5 = [(ICUnifiedNoteContext *)self modernStoreCoordinator];
  v6 = [v5 ic_managedObjectIDForURIString:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(ICUnifiedNoteContext *)self htmlStoreCoordinator];
    v8 = [v9 ic_managedObjectIDForURIString:v4];
  }

  return v8;
}

- (NSPersistentStoreCoordinator)modernStoreCoordinator
{
  v2 = [(ICUnifiedNoteContext *)self modernNoteContext];
  v3 = [v2 persistentContainer];
  v4 = [v3 persistentStoreCoordinator];

  return v4;
}

- (NSPersistentStoreCoordinator)htmlStoreCoordinator
{
  v2 = [(ICUnifiedNoteContext *)self htmlNoteContext];
  v3 = [v2 persistentStoreCoordinator];

  return v3;
}

- (NSManagedObjectContext)modernManagedObjectContext
{
  v2 = self;
  v3 = [(ICUnifiedNoteContext *)v2 resolvedPrefersViewContext];
  v4 = [(ICUnifiedNoteContext *)v2 modernNoteContext];
  v5 = v4;
  v6 = &selRef_managedObjectContext;
  if (!v3)
  {
    v6 = &selRef_workerManagedObjectContext;
  }

  v7 = [v4 *v6];

  return v7;
}

- (id)managedObjectContextForObjectID:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = ICUnifiedNoteContext.managedObjectContext(for:)(v4);

  return v6;
}

- (id)managedObjectContextForObject:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 managedObjectContext];
  if (v6)
  {
  }

  else
  {
    v7 = sub_1D4419C14();
    v8 = [v5 objectID];
    v9 = ICNotesErrorForNoManagedObjectContext();

    swift_willThrow();
    if (a4)
    {
      v10 = sub_1D44170F4();

      v11 = v10;
      *a4 = v10;
    }

    else
    {
    }
  }

  return v6;
}

- (BOOL)resolvedPrefersViewContext
{
  v2 = self;
  v3 = [(ICUnifiedNoteContext *)v2 options]& 3;
  if (v3 == 2)
  {

    return 0;
  }

  else if (v3 == 1)
  {

    return 1;
  }

  else
  {
    if (qword_1EDE326F8 != -1)
    {
      swift_once();
    }

    sub_1D441AFD4();

    return v5;
  }
}

- (NSManagedObjectID)defaultAccountObjectID
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [(ICUnifiedNoteContext *)v4 htmlNoteContext];
  v6 = [v3 defaultAccountWithHTMLNoteContext_];

  if (v6)
  {
    v7 = [v6 objectID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (ICLegacyAccount)legacyAccountForLocalAccount
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [(ICUnifiedNoteContext *)v4 htmlNoteContext];
  v6 = [v3 legacyAccountForLocalAccountWithContext_];

  return v6;
}

- (id)legacyAccountForEmailAddress:(id)a3
{
  v5 = objc_opt_self();
  v6 = a3;
  v7 = self;
  v8 = [(ICUnifiedNoteContext *)v7 htmlNoteContext];
  v9 = [v5 accountForEmailAddress:v6 context:v8];

  return v9;
}

@end