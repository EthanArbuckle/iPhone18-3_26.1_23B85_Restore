@interface ICSharedWithYouController
+ (ICSharedWithYouController)sharedController;
- (ICSharedWithYouController)initWithController:(id)controller;
- (NSManagedObjectContext)managedObjectContext;
- (id)highlightForURL:(id)l;
- (void)fetchShareMetadataWithURLs:(id)ls completion:(id)completion;
- (void)setManagedObjectContext:(id)context;
- (void)userAcceptedInvitationWithShareMetadata:(id)metadata associatedObjectID:(id)d;
@end

@implementation ICSharedWithYouController

+ (ICSharedWithYouController)sharedController
{
  v2 = [ICSharedWithYouController alloc];
  v3 = +[ICSharedWithYouControllerInternal sharedController];
  v4 = [(ICSharedWithYouController *)v2 initWithController:v3];

  return v4;
}

- (ICSharedWithYouController)initWithController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = ICSharedWithYouController;
  v6 = [(ICSharedWithYouController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
  }

  return v7;
}

- (NSManagedObjectContext)managedObjectContext
{
  controller = [(ICSharedWithYouController *)self controller];
  managedObjectContext = [controller managedObjectContext];

  return managedObjectContext;
}

- (void)setManagedObjectContext:(id)context
{
  contextCopy = context;
  controller = [(ICSharedWithYouController *)self controller];
  [controller setManagedObjectContext:contextCopy];
}

- (id)highlightForURL:(id)l
{
  if (l)
  {
    lCopy = l;
    controller = [(ICSharedWithYouController *)self controller];
    v6 = [controller highlightForURL:lCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)fetchShareMetadataWithURLs:(id)ls completion:(id)completion
{
  completionCopy = completion;
  lsCopy = ls;
  controller = [(ICSharedWithYouController *)self controller];
  [controller fetchShareMetadataWithURLs:lsCopy completion:completionCopy];
}

- (void)userAcceptedInvitationWithShareMetadata:(id)metadata associatedObjectID:(id)d
{
  dCopy = d;
  metadataCopy = metadata;
  controller = [(ICSharedWithYouController *)self controller];
  [controller userAcceptedInvitationWithShareMetadata:metadataCopy associatedObjectID:dCopy];
}

@end