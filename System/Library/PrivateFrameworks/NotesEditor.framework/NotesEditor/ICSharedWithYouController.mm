@interface ICSharedWithYouController
+ (ICSharedWithYouController)sharedController;
- (ICSharedWithYouController)initWithController:(id)a3;
- (NSManagedObjectContext)managedObjectContext;
- (id)highlightForURL:(id)a3;
- (void)fetchShareMetadataWithURLs:(id)a3 completion:(id)a4;
- (void)setManagedObjectContext:(id)a3;
- (void)userAcceptedInvitationWithShareMetadata:(id)a3 associatedObjectID:(id)a4;
@end

@implementation ICSharedWithYouController

+ (ICSharedWithYouController)sharedController
{
  v2 = [ICSharedWithYouController alloc];
  v3 = +[ICSharedWithYouControllerInternal sharedController];
  v4 = [(ICSharedWithYouController *)v2 initWithController:v3];

  return v4;
}

- (ICSharedWithYouController)initWithController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICSharedWithYouController;
  v6 = [(ICSharedWithYouController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, a3);
  }

  return v7;
}

- (NSManagedObjectContext)managedObjectContext
{
  v2 = [(ICSharedWithYouController *)self controller];
  v3 = [v2 managedObjectContext];

  return v3;
}

- (void)setManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [(ICSharedWithYouController *)self controller];
  [v5 setManagedObjectContext:v4];
}

- (id)highlightForURL:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(ICSharedWithYouController *)self controller];
    v6 = [v5 highlightForURL:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)fetchShareMetadataWithURLs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICSharedWithYouController *)self controller];
  [v8 fetchShareMetadataWithURLs:v7 completion:v6];
}

- (void)userAcceptedInvitationWithShareMetadata:(id)a3 associatedObjectID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICSharedWithYouController *)self controller];
  [v8 userAcceptedInvitationWithShareMetadata:v7 associatedObjectID:v6];
}

@end