@interface ICQueryResultsController
- (ICQuery)query;
- (ICQueryResultsController)initWithManagedObjectContext:(id)context query:(id)query;
- (NSManagedObjectContext)managedObjectContext;
- (id)performFetch;
@end

@implementation ICQueryResultsController

- (ICQueryResultsController)initWithManagedObjectContext:(id)context query:(id)query
{
  contextCopy = context;
  queryCopy = query;
  v12.receiver = self;
  v12.super_class = ICQueryResultsController;
  v8 = [(ICQueryResultsController *)&v12 init];
  if (v8)
  {
    v9 = [[ICQueryResultsControllerObjC alloc] initWithManagedObjectContext:contextCopy query:queryCopy];
    queryResultsControllerObjC = v8->_queryResultsControllerObjC;
    v8->_queryResultsControllerObjC = v9;
  }

  return v8;
}

- (id)performFetch
{
  queryResultsControllerObjC = [(ICQueryResultsController *)self queryResultsControllerObjC];
  performFetch = [queryResultsControllerObjC performFetch];

  return performFetch;
}

- (NSManagedObjectContext)managedObjectContext
{
  queryResultsControllerObjC = [(ICQueryResultsController *)self queryResultsControllerObjC];
  managedObjectContext = [queryResultsControllerObjC managedObjectContext];

  return managedObjectContext;
}

- (ICQuery)query
{
  queryResultsControllerObjC = [(ICQueryResultsController *)self queryResultsControllerObjC];
  query = [queryResultsControllerObjC query];

  return query;
}

@end