@interface CNADirectoryServerSearchTask
- (CNADirectoryServerSearchTask)initWithRequest:(id)a3 contactStore:(id)a4 cancelationToken:(id)a5;
- (id)makeQueryForContainer:(id)a3 withLatch:(id)a4 andCollectConsumers:(id)a5;
- (id)run;
- (void)convertResults;
- (void)createReturnValue;
- (void)fetchServerSearchContainers;
- (void)searchServerContainers;
- (void)validateRequest;
@end

@implementation CNADirectoryServerSearchTask

- (CNADirectoryServerSearchTask)initWithRequest:(id)a3 contactStore:(id)a4 cancelationToken:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = CNADirectoryServerSearchTask;
  v12 = [(CNTask *)&v16 initWithName:@"com.apple.contacts.autocomplete.directory-server-search"];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, a3);
    objc_storeStrong(&v13->_contactStore, a4);
    objc_storeStrong(&v13->_cancelationToken, a5);
    v14 = v13;
  }

  return v13;
}

- (id)run
{
  [(CNADirectoryServerSearchTask *)self validateRequest];
  [(CNADirectoryServerSearchTask *)self fetchServerSearchContainers];
  [(CNADirectoryServerSearchTask *)self searchServerContainers];
  [(CNADirectoryServerSearchTask *)self convertResults];
  [(CNADirectoryServerSearchTask *)self createReturnValue];
  returnValue = self->_returnValue;

  return returnValue;
}

- (void)validateRequest
{
  v3 = *MEMORY[0x277CFBD30];
  v4 = [(CNAutocompleteFetchRequest *)self->_request searchString];
  LODWORD(v3) = (*(v3 + 16))(v3, v4);

  if (v3)
  {
    v5 = [MEMORY[0x277CFBEA0] successWithValue:MEMORY[0x277CBEBF8]];
    returnValue = self->_returnValue;
    self->_returnValue = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)fetchServerSearchContainers
{
  if (([(CNCancelationToken *)self->_cancelationToken isCanceled]& 1) == 0)
  {
    v3 = [(CNADirectoryServerSearchTask *)self contactStore];
    v9 = 0;
    v4 = [v3 serverSearchContainersMatchingPredicate:0 error:&v9];
    v5 = v9;
    containers = self->_containers;
    self->_containers = v4;

    if (!self->_containers)
    {
      v7 = [MEMORY[0x277CFBEA0] failureWithError:v5];
      returnValue = self->_returnValue;
      self->_returnValue = v7;
    }
  }
}

- (void)searchServerContainers
{
  v31 = *MEMORY[0x277D85DE8];
  if (([(CNCancelationToken *)self->_cancelationToken isCanceled]& 1) != 0 || self->_returnValue)
  {
LABEL_12:
    v18 = *MEMORY[0x277D85DE8];
    return;
  }

  if ([(NSArray *)self->_containers count])
  {
    v23 = [objc_alloc(MEMORY[0x277CFBDD8]) initWithStartingCount:{-[NSArray count](self->_containers, "count")}];
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_containers, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = self->_containers;
    v4 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v27;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v26 + 1) + 8 * i);
          v9 = [(CNADirectoryServerSearchTask *)self makeQueryForContainer:v8 withLatch:v23 andCollectConsumers:v3];
          v10 = [MEMORY[0x277CFBE10] currentEnvironment];
          v11 = [v10 dataAccessConnection];
          v12 = [v8 accountIdentifier];
          [v11 performServerContactsSearch:v9 forAccountWithID:v12];

          cancelationToken = self->_cancelationToken;
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __54__CNADirectoryServerSearchTask_searchServerContainers__block_invoke;
          v24[3] = &unk_2781C3FB0;
          v25 = v9;
          v14 = v9;
          [(CNCancelationToken *)cancelationToken addCancelationBlock:v24];
        }

        v5 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v5);
    }

    [v23 await];
    v15 = +[CNDASearchQueryConsumer SuccessfulResults];
    v16 = [v3 _cn_flatMap:v15];
    daResults = self->_daResults;
    self->_daResults = v16;

    goto LABEL_12;
  }

  v19 = [MEMORY[0x277CFBEA0] successWithValue:MEMORY[0x277CBEBF8]];
  returnValue = self->_returnValue;
  self->_returnValue = v19;
  v21 = *MEMORY[0x277D85DE8];

  MEMORY[0x2821F96F8]();
}

void __54__CNADirectoryServerSearchTask_searchServerContainers__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CFBE10] currentEnvironment];
  v2 = [v3 dataAccessConnection];
  [v2 cancelServerContactsSearch:*(a1 + 32)];
}

- (id)makeQueryForContainer:(id)a3 withLatch:(id)a4 andCollectConsumers:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 externalIdentifier];
  v12 = [v10 externalModificationTag];

  v13 = [[CNDASearchQueryConsumer alloc] initWithLatch:v9];
  [v8 addObject:v13];

  v14 = MEMORY[0x277D03920];
  v15 = [(CNAutocompleteFetchRequest *)self->_request searchString];
  v16 = [v14 contactsSearchQueryWithSearchString:v15 searchBase:v11 searchScope:v12 consumer:v13];

  [v16 setTimeLimit:30];
  [v16 setIncludePhotos:0];
  [v16 setCalendarInitiated:{-[CNAutocompleteFetchRequest searchType](self->_request, "searchType") == 3}];

  return v16;
}

- (void)convertResults
{
  if (([(CNCancelationToken *)self->_cancelationToken isCanceled]& 1) == 0 && !self->_returnValue)
  {
    v3 = [(CNAutocompleteFetchRequest *)self->_request priorityDomainForSorting];
    v4 = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
    v5 = [v4 sendingAddress];
    v10 = [CNAutocompleteResultFactory factoryWithPriorityDomain:v3 sendingAddress:v5];

    daResults = self->_daResults;
    v7 = [CNADASearchResultConverter resultTransformForRequest:self->_request factory:v10];
    v8 = [(NSArray *)daResults _cn_flatMap:v7];
    results = self->_results;
    self->_results = v8;
  }
}

- (void)createReturnValue
{
  if ([(CNCancelationToken *)self->_cancelationToken isCanceled])
  {
    v3 = MEMORY[0x277CFBEA0];
    [MEMORY[0x277CFBE20] userCanceledError];
    v4 = [v3 failureWithError:objc_claimAutoreleasedReturnValue()];
    returnValue = self->_returnValue;
    self->_returnValue = v4;
  }

  else
  {
    if (self->_returnValue)
    {
      return;
    }

    v6 = [MEMORY[0x277CFBEA0] successWithValue:self->_results];
    v7 = self->_returnValue;
    self->_returnValue = v6;
  }

  MEMORY[0x2821F96F8]();
}

@end