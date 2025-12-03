@interface _UIContactSearchArrayController
- (CNAutocompleteSearchManager)searchManager;
- (_UIContactSearchArrayController)initWithContactStore:(id)store delegate:(id)delegate;
- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d;
- (void)enumerateLeafRecipients:(id)recipients block:(id)block;
- (void)processRecipients:(id)recipients;
- (void)setExistingRecipients:(id)recipients;
- (void)setSearchText:(id)text;
@end

@implementation _UIContactSearchArrayController

- (_UIContactSearchArrayController)initWithContactStore:(id)store delegate:(id)delegate
{
  storeCopy = store;
  v21.receiver = self;
  v21.super_class = _UIContactSearchArrayController;
  v8 = [(_UIContactSearchArrayController *)&v21 initWithDelegate:delegate];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contactStore, store);
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

- (void)setSearchText:(id)text
{
  textCopy = text;
  if (self->_searchText != textCopy)
  {
    v13 = textCopy;
    v5 = [(NSString *)textCopy copy];
    searchText = self->_searchText;
    self->_searchText = v5;

    currentSearchTaskID = [(_UIContactSearchArrayController *)self currentSearchTaskID];

    if (currentSearchTaskID)
    {
      searchManager = [(_UIContactSearchArrayController *)self searchManager];
      currentSearchTaskID2 = [(_UIContactSearchArrayController *)self currentSearchTaskID];
      [searchManager cancelTaskWithID:currentSearchTaskID2];
    }

    existingRecipients = [(_UIContactSearchArrayController *)self existingRecipients];
    [(CNAutocompleteFetchContext *)self->_autocompleteFetchContext setOtherAddressesAlreadyChosen:existingRecipients];

    [(NSMutableArray *)self->_autocompleteSearchResults removeAllObjects];
    if ([(NSString *)v13 length])
    {
      searchManager2 = [(_UIContactSearchArrayController *)self searchManager];
      v12 = [searchManager2 searchForText:v13 withAutocompleteFetchContext:self->_autocompleteFetchContext consumer:self];
      [(_UIContactSearchArrayController *)self setCurrentSearchTaskID:v12];
    }

    else
    {
      [(_UIContactSearchArrayController *)self processRecipients:&__NSArray0__struct];
    }

    textCopy = v13;
  }
}

- (void)consumeAutocompleteSearchResults:(id)results taskID:(id)d
{
  autocompleteSearchResults = self->_autocompleteSearchResults;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000065B8;
  v8[3] = &unk_100106E70;
  v8[4] = self;
  resultsCopy = results;
  v6 = [NSPredicate predicateWithBlock:v8];
  v7 = [resultsCopy filteredArrayUsingPredicate:v6];

  [(NSMutableArray *)autocompleteSearchResults addObjectsFromArray:v7];
}

- (void)enumerateLeafRecipients:(id)recipients block:(id)block
{
  recipientsCopy = recipients;
  blockCopy = block;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [recipientsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(recipientsCopy);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        children = [v12 children];
        v14 = [children count];

        if (v14)
        {
          children2 = [v12 children];
          [(_UIContactSearchArrayController *)self enumerateLeafRecipients:children2 block:blockCopy];
        }

        else
        {
          blockCopy[2](blockCopy, v12);
        }
      }

      v9 = [recipientsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)processRecipients:(id)recipients
{
  recipientsCopy = recipients;
  operationQueue = [(_UIContactSearchArrayController *)self operationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006854;
  v7[3] = &unk_100106EC0;
  v7[4] = self;
  v8 = recipientsCopy;
  v6 = recipientsCopy;
  [operationQueue addOperationWithBlock:v7];
}

- (void)setExistingRecipients:(id)recipients
{
  v4 = [NSSet setWithArray:recipients];
  existingRecipients = self->_existingRecipients;
  self->_existingRecipients = v4;

  _objc_release_x1();
}

@end