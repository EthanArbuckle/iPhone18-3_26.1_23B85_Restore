@interface ICUnifiedNoteContext
- (BOOL)resolvedPrefersViewContext;
- (ICLegacyAccount)legacyAccountForLocalAccount;
- (ICUnifiedNoteContext)initWithModernNoteContext:(id)context htmlNoteContext:(id)noteContext options:(unint64_t)options;
- (NSManagedObjectContext)modernManagedObjectContext;
- (NSManagedObjectID)defaultAccountObjectID;
- (NSPersistentStoreCoordinator)htmlStoreCoordinator;
- (NSPersistentStoreCoordinator)modernStoreCoordinator;
- (id)legacyAccountForEmailAddress:(id)address;
- (id)managedObjectContextForObject:(id)object error:(id *)error;
- (id)managedObjectContextForObjectID:(id)d;
- (id)managedObjectIDForURIRepresentation:(id)representation;
- (id)managedObjectIDForURIString:(id)string;
- (void)enableHTMLContextChangeLogging;
@end

@implementation ICUnifiedNoteContext

- (ICUnifiedNoteContext)initWithModernNoteContext:(id)context htmlNoteContext:(id)noteContext options:(unint64_t)options
{
  contextCopy = context;
  noteContextCopy = noteContext;
  v14.receiver = self;
  v14.super_class = ICUnifiedNoteContext;
  v11 = [(ICUnifiedNoteContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_modernNoteContext, context);
    objc_storeStrong(&v12->_htmlNoteContext, noteContext);
    v12->_options = options;
  }

  return v12;
}

- (void)enableHTMLContextChangeLogging
{
  objc_opt_class();
  htmlNoteContext = [(ICUnifiedNoteContext *)self htmlNoteContext];
  v3 = ICCheckedDynamicCast();
  [v3 enableChangeLogging:1];
}

- (id)managedObjectIDForURIRepresentation:(id)representation
{
  representationCopy = representation;
  modernStoreCoordinator = [(ICUnifiedNoteContext *)self modernStoreCoordinator];
  v6 = [modernStoreCoordinator ic_managedObjectIDForURIRepresentation:representationCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    htmlStoreCoordinator = [(ICUnifiedNoteContext *)self htmlStoreCoordinator];
    v8 = [htmlStoreCoordinator ic_managedObjectIDForURIRepresentation:representationCopy];
  }

  return v8;
}

- (id)managedObjectIDForURIString:(id)string
{
  stringCopy = string;
  modernStoreCoordinator = [(ICUnifiedNoteContext *)self modernStoreCoordinator];
  v6 = [modernStoreCoordinator ic_managedObjectIDForURIString:stringCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    htmlStoreCoordinator = [(ICUnifiedNoteContext *)self htmlStoreCoordinator];
    v8 = [htmlStoreCoordinator ic_managedObjectIDForURIString:stringCopy];
  }

  return v8;
}

- (NSPersistentStoreCoordinator)modernStoreCoordinator
{
  modernNoteContext = [(ICUnifiedNoteContext *)self modernNoteContext];
  persistentContainer = [modernNoteContext persistentContainer];
  persistentStoreCoordinator = [persistentContainer persistentStoreCoordinator];

  return persistentStoreCoordinator;
}

- (NSPersistentStoreCoordinator)htmlStoreCoordinator
{
  htmlNoteContext = [(ICUnifiedNoteContext *)self htmlNoteContext];
  persistentStoreCoordinator = [htmlNoteContext persistentStoreCoordinator];

  return persistentStoreCoordinator;
}

- (NSManagedObjectContext)modernManagedObjectContext
{
  selfCopy = self;
  resolvedPrefersViewContext = [(ICUnifiedNoteContext *)selfCopy resolvedPrefersViewContext];
  modernNoteContext = [(ICUnifiedNoteContext *)selfCopy modernNoteContext];
  v5 = modernNoteContext;
  v6 = &selRef_managedObjectContext;
  if (!resolvedPrefersViewContext)
  {
    v6 = &selRef_workerManagedObjectContext;
  }

  v7 = [modernNoteContext *v6];

  return v7;
}

- (id)managedObjectContextForObjectID:(id)d
{
  dCopy = d;
  selfCopy = self;
  v6 = ICUnifiedNoteContext.managedObjectContext(for:)(dCopy);

  return v6;
}

- (id)managedObjectContextForObject:(id)object error:(id *)error
{
  objectCopy = object;
  managedObjectContext = [objectCopy managedObjectContext];
  if (managedObjectContext)
  {
  }

  else
  {
    v7 = sub_1D4419C14();
    objectID = [objectCopy objectID];
    v9 = ICNotesErrorForNoManagedObjectContext();

    swift_willThrow();
    if (error)
    {
      v10 = sub_1D44170F4();

      v11 = v10;
      *error = v10;
    }

    else
    {
    }
  }

  return managedObjectContext;
}

- (BOOL)resolvedPrefersViewContext
{
  selfCopy = self;
  v3 = [(ICUnifiedNoteContext *)selfCopy options]& 3;
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
  selfCopy = self;
  htmlNoteContext = [(ICUnifiedNoteContext *)selfCopy htmlNoteContext];
  defaultAccountWithHTMLNoteContext_ = [v3 defaultAccountWithHTMLNoteContext_];

  if (defaultAccountWithHTMLNoteContext_)
  {
    objectID = [defaultAccountWithHTMLNoteContext_ objectID];
  }

  else
  {
    objectID = 0;
  }

  return objectID;
}

- (ICLegacyAccount)legacyAccountForLocalAccount
{
  v3 = objc_opt_self();
  selfCopy = self;
  htmlNoteContext = [(ICUnifiedNoteContext *)selfCopy htmlNoteContext];
  legacyAccountForLocalAccountWithContext_ = [v3 legacyAccountForLocalAccountWithContext_];

  return legacyAccountForLocalAccountWithContext_;
}

- (id)legacyAccountForEmailAddress:(id)address
{
  v5 = objc_opt_self();
  addressCopy = address;
  selfCopy = self;
  htmlNoteContext = [(ICUnifiedNoteContext *)selfCopy htmlNoteContext];
  v9 = [v5 accountForEmailAddress:addressCopy context:htmlNoteContext];

  return v9;
}

@end