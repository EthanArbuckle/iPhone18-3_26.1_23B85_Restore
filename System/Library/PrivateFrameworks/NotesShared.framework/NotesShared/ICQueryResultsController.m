@interface ICQueryResultsController
- (ICQuery)query;
- (ICQueryResultsController)initWithManagedObjectContext:(id)a3 query:(id)a4;
- (NSManagedObjectContext)managedObjectContext;
- (id)performFetch;
@end

@implementation ICQueryResultsController

- (ICQueryResultsController)initWithManagedObjectContext:(id)a3 query:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ICQueryResultsController;
  v8 = [(ICQueryResultsController *)&v12 init];
  if (v8)
  {
    v9 = [[ICQueryResultsControllerObjC alloc] initWithManagedObjectContext:v6 query:v7];
    queryResultsControllerObjC = v8->_queryResultsControllerObjC;
    v8->_queryResultsControllerObjC = v9;
  }

  return v8;
}

- (id)performFetch
{
  v2 = [(ICQueryResultsController *)self queryResultsControllerObjC];
  v3 = [v2 performFetch];

  return v3;
}

- (NSManagedObjectContext)managedObjectContext
{
  v2 = [(ICQueryResultsController *)self queryResultsControllerObjC];
  v3 = [v2 managedObjectContext];

  return v3;
}

- (ICQuery)query
{
  v2 = [(ICQueryResultsController *)self queryResultsControllerObjC];
  v3 = [v2 query];

  return v3;
}

@end