@interface PKAddressSearchModel
- (NSArray)completionSearchResults;
- (NSArray)contactsSearchResults;
- (PKAddressSearchModel)init;
- (PKAddressSearchModelDelegate)delegate;
- (void)beginSearch:(id)search;
- (void)completerDidUpdateResults:(id)results;
- (void)endSearch;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)selectMapSearchCompletion:(id)completion;
@end

@implementation PKAddressSearchModel

- (PKAddressSearchModel)init
{
  v13.receiver = self;
  v13.super_class = PKAddressSearchModel;
  v2 = [(PKAddressSearchModel *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.passkit.address.search", 0);
    resultsQueue = v2->_resultsQueue;
    v2->_resultsQueue = v3;

    v5 = objc_alloc_init(getMKLocalSearchCompleterClass[0]());
    completer = v2->_completer;
    v2->_completer = v5;

    [(MKLocalSearchCompleter *)v2->_completer setDelegate:v2];
    [(MKLocalSearchCompleter *)v2->_completer setEntriesType:0];
    v7 = objc_alloc(MEMORY[0x1E695FBE8]);
    v8 = PKPassKitCoreBundle();
    bundlePath = [v8 bundlePath];
    v10 = [v7 initWithEffectiveBundlePath:bundlePath delegate:v2 onQueue:MEMORY[0x1E69E96A0]];
    locationManager = v2->_locationManager;
    v2->_locationManager = v10;

    [(CLLocationManager *)v2->_locationManager setDesiredAccuracy:*MEMORY[0x1E6985CB8]];
    [(CLLocationManager *)v2->_locationManager startUpdatingLocation];
  }

  return v2;
}

- (void)beginSearch:(id)search
{
  searchCopy = search;
  completer = self->_completer;
  fragment = [searchCopy fragment];
  [(MKLocalSearchCompleter *)completer setFragment:fragment];

  if (!self->_contactStore)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695CE18]);
    contactStore = self->_contactStore;
    self->_contactStore = v7;
  }

  v9 = objc_alloc(MEMORY[0x1E695CD78]);
  keysToFetch = [searchCopy keysToFetch];
  v11 = [v9 initWithKeysToFetch:keysToFetch];

  predicate = [searchCopy predicate];
  [v11 setPredicate:predicate];

  v13 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__PKAddressSearchModel_beginSearch___block_invoke;
  block[3] = &unk_1E79C4E00;
  block[4] = self;
  v18 = v11;
  v19 = searchCopy;
  v14 = searchCopy;
  v15 = v11;
  dispatch_async(v13, block);

  fragment2 = [v14 fragment];
  [(PKAddressSearchModel *)self _updateRecents:fragment2];
}

void __36__PKAddressSearchModel_beginSearch___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 72);
  v17 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __36__PKAddressSearchModel_beginSearch___block_invoke_2;
  v14[3] = &unk_1E79D5668;
  v15 = *(a1 + 48);
  v5 = v2;
  v16 = v5;
  LODWORD(v4) = [v4 enumerateContactsAndMatchInfoWithFetchRequest:v3 error:&v17 usingBlock:v14];
  v6 = v17;
  if (v4)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__PKAddressSearchModel_beginSearch___block_invoke_3;
    block[3] = &unk_1E79C4DD8;
    block[4] = v7;
    v13 = v5;
    dispatch_sync(v8, block);
    v9 = [*(a1 + 32) delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [*(a1 + 32) delegate];
      [v11 contactsSearchUpdated:*(a1 + 32)];
    }
  }
}

void __36__PKAddressSearchModel_beginSearch___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) contactFilter];
  v7 = v6;
  if (!v6 || (*(v6 + 16))(v6, v19))
  {
    v8 = [v5 matchedProperties];
    v9 = [*(a1 + 32) outputKey];
    v10 = [v8 objectForKey:v9];

    if (([v5 matchedNameProperty] & 1) == 0)
    {
      v11 = [v5 matchedProperties];
      v12 = [v11 objectForKey:*MEMORY[0x1E695C328]];
      if (v12)
      {
      }

      else
      {
        v13 = [*(a1 + 32) type];

        if (v13 != 1)
        {
          if (![v10 count])
          {
            goto LABEL_9;
          }

          v17 = *(a1 + 40);
          v15 = [*(a1 + 32) outputKey];
          v16 = [v10 firstObject];
          v18 = [v19 pkDeconstructContactUsingKey:v15 substring:v16];
          [v17 addObjectsFromArray:v18];

LABEL_8:
LABEL_9:

          goto LABEL_10;
        }
      }
    }

    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) outputKey];
    v16 = [v19 pkDeconstructContactUsingKey:v15];
    [v14 addObjectsFromArray:v16];
    goto LABEL_8;
  }

LABEL_10:
}

void __36__PKAddressSearchModel_beginSearch___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;
}

- (void)selectMapSearchCompletion:(id)completion
{
  completionCopy = completion;
  localSearch = self->_localSearch;
  if (localSearch)
  {
    [(MKLocalSearch *)localSearch cancel];
    v6 = self->_localSearch;
    self->_localSearch = 0;
  }

  v7 = [objc_alloc(_MergedGlobals_172()) initWithCompletion:completionCopy];
  v8 = [objc_alloc(off_1ED6D10B0()) initWithRequest:v7];
  v9 = self->_localSearch;
  self->_localSearch = v8;

  v10 = self->_localSearch;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__PKAddressSearchModel_selectMapSearchCompletion___block_invoke;
  v11[3] = &unk_1E79D5690;
  v11[4] = self;
  [(MKLocalSearch *)v10 startWithCompletionHandler:v11];
}

void __50__PKAddressSearchModel_selectMapSearchCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 mapItems];
  v8 = [v7 count];

  if (v8)
  {
    v25 = v6;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [v5 mapItems];
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        v14 = 0;
        do
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v26 + 1) + 8 * v14) _placeCardContact];
          v16 = [v15 mutableCopy];

          [v16 setGivenName:&stru_1F227FD28];
          [v16 setFamilyName:&stru_1F227FD28];
          v17 = [v16 copy];
          [v9 addObject:v17];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }

    v18 = [*(a1 + 32) delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = [*(a1 + 32) delegate];
      v21 = [v9 firstObject];
      [v20 selectedAddress:v21 withError:0];
    }

    v6 = v25;
  }

  else
  {
    v22 = [*(a1 + 32) delegate];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v24 = [*(a1 + 32) delegate];
      [v24 selectedAddress:0 withError:v6];
    }
  }
}

- (void)endSearch
{
  [(MKLocalSearchCompleter *)self->_completer cancel];
  [(MKLocalSearch *)self->_localSearch cancel];
  localSearch = self->_localSearch;
  self->_localSearch = 0;
}

- (NSArray)contactsSearchResults
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__34;
  v10 = __Block_byref_object_dispose__34;
  v11 = 0;
  resultsQueue = self->_resultsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PKAddressSearchModel_contactsSearchResults__block_invoke;
  v5[3] = &unk_1E79C8A88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(resultsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)completionSearchResults
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__34;
  v10 = __Block_byref_object_dispose__34;
  v11 = 0;
  resultsQueue = self->_resultsQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__PKAddressSearchModel_completionSearchResults__block_invoke;
  v5[3] = &unk_1E79C8A88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(resultsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)completerDidUpdateResults:(id)results
{
  resultsCopy = results;
  if ([resultsCopy resultsAreCurrent])
  {
    resultsQueue = self->_resultsQueue;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __50__PKAddressSearchModel_completerDidUpdateResults___block_invoke;
    v12 = &unk_1E79C4DD8;
    selfCopy = self;
    v14 = resultsCopy;
    dispatch_sync(resultsQueue, &v9);
    v6 = [(PKAddressSearchModel *)self delegate:v9];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate = [(PKAddressSearchModel *)self delegate];
      [delegate mapSearchUpdated:self];
    }
  }
}

void __50__PKAddressSearchModel_completerDidUpdateResults___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 40) results];
  v2 = [v5 pk_objectsPassingTest:&__block_literal_global_108];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  v8 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Obtained location for address search model", v11, 2u);
  }

  lastObject = [locationsCopy lastObject];
  [(MKLocalSearchCompleter *)self->_completer setDeviceLocation:lastObject];
  [lastObject horizontalAccuracy];
  if (v10 > *MEMORY[0x1E6985CB8])
  {
    [managerCopy stopUpdatingLocation];
  }
}

- (PKAddressSearchModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end