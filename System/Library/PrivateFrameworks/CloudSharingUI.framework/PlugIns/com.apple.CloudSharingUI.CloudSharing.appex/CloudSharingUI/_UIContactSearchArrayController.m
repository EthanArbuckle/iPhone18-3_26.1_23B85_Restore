@interface _UIContactSearchArrayController
- (CNAutocompleteSearchManager)searchManager;
- (_UIContactSearchArrayController)initWithContactStore:(id)a3 delegate:(id)a4;
- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4;
- (void)enumerateLeafRecipients:(id)a3 block:(id)a4;
- (void)processRecipients:(id)a3;
- (void)setExistingRecipients:(id)a3;
- (void)setSearchText:(id)a3;
@end

@implementation _UIContactSearchArrayController

- (_UIContactSearchArrayController)initWithContactStore:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v21.receiver = self;
  v21.super_class = _UIContactSearchArrayController;
  v8 = [(_UIContactSearchArrayController *)&v21 initWithDelegate:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contactStore, a3);
    v10 = objc_opt_new();
    mailStatusCache = v9->_mailStatusCache;
    v9->_mailStatusCache = v10;

    v12 = dispatch_queue_create("address cache access queue", &_dispatch_queue_attr_concurrent);
    mailStatusAccessQueue = v9->_mailStatusAccessQueue;
    v9->_mailStatusAccessQueue = v12;

    v14 = dispatch_queue_create("address validation queue", 0);
    mailValidationQueue = v9->_mailValidationQueue;
    v9->_mailValidationQueue = v14;

    v16 = objc_opt_new();
    autocompleteFetchContext = v9->_autocompleteFetchContext;
    v9->_autocompleteFetchContext = v16;

    [(CNAutocompleteFetchContext *)v9->_autocompleteFetchContext setTitle:@"Contacts for sharing"];
    v18 = +[NSMutableArray array];
    autocompleteSearchResults = v9->_autocompleteSearchResults;
    v9->_autocompleteSearchResults = v18;
  }

  return v9;
}

- (CNAutocompleteSearchManager)searchManager
{
  searchManager = self->_searchManager;
  if (!searchManager)
  {
    v4 = [[CNAutocompleteSearchManager alloc] initWithAutocompleteSearchType:5];
    v5 = self->_searchManager;
    self->_searchManager = v4;

    [(CNAutocompleteSearchManager *)self->_searchManager setIncludeUpcomingEventMembers:1];
    searchManager = self->_searchManager;
  }

  return searchManager;
}

- (void)setSearchText:(id)a3
{
  v4 = a3;
  if (self->_searchText != v4)
  {
    v13 = v4;
    v5 = [(NSString *)v4 copy];
    searchText = self->_searchText;
    self->_searchText = v5;

    v7 = [(_UIContactSearchArrayController *)self currentSearchTaskID];

    if (v7)
    {
      v8 = [(_UIContactSearchArrayController *)self searchManager];
      v9 = [(_UIContactSearchArrayController *)self currentSearchTaskID];
      [v8 cancelTaskWithID:v9];
    }

    v10 = [(_UIContactSearchArrayController *)self existingRecipients];
    [(CNAutocompleteFetchContext *)self->_autocompleteFetchContext setOtherAddressesAlreadyChosen:v10];

    [(NSMutableArray *)self->_autocompleteSearchResults removeAllObjects];
    if ([(NSString *)v13 length])
    {
      v11 = [(_UIContactSearchArrayController *)self searchManager];
      v12 = [v11 searchForText:v13 withAutocompleteFetchContext:self->_autocompleteFetchContext consumer:self];
      [(_UIContactSearchArrayController *)self setCurrentSearchTaskID:v12];
    }

    else
    {
      [(_UIContactSearchArrayController *)self processRecipients:&__NSArray0__struct];
    }

    v4 = v13;
  }
}

- (void)consumeAutocompleteSearchResults:(id)a3 taskID:(id)a4
{
  autocompleteSearchResults = self->_autocompleteSearchResults;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000065B8;
  v8[3] = &unk_100106E70;
  v8[4] = self;
  v5 = a3;
  v6 = [NSPredicate predicateWithBlock:v8];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  [(NSMutableArray *)autocompleteSearchResults addObjectsFromArray:v7];
}

- (void)enumerateLeafRecipients:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 children];
        v14 = [v13 count];

        if (v14)
        {
          v15 = [v12 children];
          [(_UIContactSearchArrayController *)self enumerateLeafRecipients:v15 block:v7];
        }

        else
        {
          v7[2](v7, v12);
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)processRecipients:(id)a3
{
  v4 = a3;
  v5 = [(_UIContactSearchArrayController *)self operationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006854;
  v7[3] = &unk_100106EC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 addOperationWithBlock:v7];
}

- (void)setExistingRecipients:(id)a3
{
  v4 = [NSSet setWithArray:a3];
  existingRecipients = self->_existingRecipients;
  self->_existingRecipients = v4;

  _objc_release_x1();
}

@end