@interface NSSWatchFaceCoordinator
- (NPSDomainAccessor)domainAccessor;
- (NPSManager)npsManager;
- (NSDictionary)selectedFocusFaces;
- (id)_currentDeviceUUID;
- (id)faceLibraryCollection;
- (id)selectedFocusModeIdentifiersForWatchFaceIdentifier:(id)identifier;
- (void)_loadFocusFaces;
- (void)_saveFocusFaces;
- (void)_switchToWatchFaceWithIdentifier:(id)identifier saveExistingFaceState:(BOOL)state abortIfNotCurrent:(id)current;
- (void)faceCollectionDidLoad:(id)load;
- (void)focusModeDidEnd:(id)end;
- (void)focusModeDidStart:(id)start;
- (void)processCollectionAndFinish:(id)finish;
- (void)selectWatchFaceIdentifier:(id)identifier forFocusModeIdentifier:(id)modeIdentifier;
- (void)watchFacesForCurrentDeviceWithCompletion:(id)completion;
@end

@implementation NSSWatchFaceCoordinator

- (void)watchFacesForCurrentDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[NSSWatchFaceCoordinator watchFacesForCurrentDeviceWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v12, 0xCu);
  }

  v6 = objc_retainBlock(completionCopy);
  completion = self->_completion;
  self->_completion = v6;

  faceLibraryCollection = [(NSSWatchFaceCoordinator *)self faceLibraryCollection];
  hasLoaded = [faceLibraryCollection hasLoaded];
  v10 = NSSLogForType();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (hasLoaded)
  {
    if (v11)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NTKPersistentFaceCollection is loaded, moving to process", &v12, 2u);
    }

    [(NSSWatchFaceCoordinator *)self processCollectionAndFinish:faceLibraryCollection];
  }

  else
  {
    if (v11)
    {
      v12 = 138412290;
      v13 = faceLibraryCollection;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NTKPersistentFaceCollection was not loaded, waiting for collection loading: %@", &v12, 0xCu);
    }

    [faceLibraryCollection addObserver:self];
  }
}

- (id)_currentDeviceUUID
{
  v2 = +[CLKDevice currentDevice];
  nrDevice = [v2 nrDevice];
  pairingID = [nrDevice pairingID];

  return pairingID;
}

- (id)faceLibraryCollection
{
  _currentDeviceUUID = [(NSSWatchFaceCoordinator *)self _currentDeviceUUID];
  deviceUUID = [(NTKPersistentFaceCollection *)self->_collection deviceUUID];
  v5 = [deviceUUID isEqual:_currentDeviceUUID];

  collection = self->_collection;
  if (!collection || (v5 & 1) == 0)
  {
    v7 = (collection == 0) | v5;
    if (collection)
    {
      v8 = 0;
    }

    else
    {
      v8 = @"_collection is nil";
    }

    if ((v7 & 1) == 0)
    {
      [(NTKPersistentFaceCollection *)self->_collection removeObserver:self];
      v8 = @"uuid has changed";
    }

    v9 = NSSLogForType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "NTKPersistentFaceCollection creation: creating a new collection because %@", &v15, 0xCu);
    }

    v10 = [NTKPersistentFaceCollection alloc];
    v11 = [v10 initWithCollectionIdentifier:NTKCollectionIdentifierLibraryFaces deviceUUID:_currentDeviceUUID];
    v12 = self->_collection;
    self->_collection = v11;

    collection = self->_collection;
  }

  v13 = collection;

  return collection;
}

- (void)processCollectionAndFinish:(id)finish
{
  finishCopy = finish;
  numberOfFaces = [finishCopy numberOfFaces];
  v5 = [[NSMutableArray alloc] initWithCapacity:numberOfFaces];
  selectedFace = [finishCopy selectedFace];
  v7 = [finishCopy uuidForFace:selectedFace];

  v8 = NSSLogForType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [v7 UUIDString];
    *buf = 138412290;
    v22 = uUIDString;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NTKPersistentFaceCollection creation: selectedFaceidentifier %@", buf, 0xCu);
  }

  if (numberOfFaces)
  {
    for (i = 0; i != numberOfFaces; ++i)
    {
      v11 = [finishCopy faceAtIndex:i];
      v12 = objc_alloc_init(NSSWatchFace);
      v13 = [finishCopy uuidForFace:v11];
      [v12 setFaceIdentifier:v13];
      [v11 name];
      v15 = v14 = v5;
      [v12 setFaceDisplayName:v15];

      [v12 setIsActive:{objc_msgSend(v7, "isEqual:", v13)}];
      v16 = [(NSSWatchFaceCoordinator *)self selectedFocusModeIdentifiersForWatchFaceIdentifier:v13];
      [v12 setSelectedFocusModeIdentifiers:v16];

      v5 = v14;
      [v14 addObject:v12];
    }
  }

  v17 = NSSLogForType();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "NTKPersistentFaceCollection finished, calling completion", buf, 2u);
  }

  completion = [(NSSWatchFaceCoordinator *)self completion];
  (completion)[2](completion, v5, 0);

  completion = self->_completion;
  self->_completion = 0;
}

- (void)faceCollectionDidLoad:(id)load
{
  loadCopy = load;
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = loadCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NTKPersistentFaceCollection loaded, moving to process: %@", &v7, 0xCu);
  }

  if (self->_collection == loadCopy)
  {
    [(NSSWatchFaceCoordinator *)self processCollectionAndFinish:loadCopy];
  }

  else
  {
    v6 = NSSLogForType();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001F738(v6);
    }
  }
}

- (NSDictionary)selectedFocusFaces
{
  selectedFocusFaces = self->_selectedFocusFaces;
  if (!selectedFocusFaces)
  {
    [(NSSWatchFaceCoordinator *)self _loadFocusFaces];
    selectedFocusFaces = self->_selectedFocusFaces;
  }

  return selectedFocusFaces;
}

- (NPSDomainAccessor)domainAccessor
{
  domainAccessor = self->_domainAccessor;
  if (!domainAccessor)
  {
    v4 = NSSLogForType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NSSWatchFaceCoordinator: Init new domain accessor", buf, 2u);
    }

    v5 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanosystemsettings"];
    v6 = self->_domainAccessor;
    self->_domainAccessor = v5;

    domainAccessor = self->_domainAccessor;
  }

  pairingID = [(NPSDomainAccessor *)domainAccessor pairingID];
  _currentDeviceUUID = [(NSSWatchFaceCoordinator *)self _currentDeviceUUID];
  v9 = [pairingID isEqual:_currentDeviceUUID];

  if ((v9 & 1) == 0)
  {
    v10 = NSSLogForType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NSSWatchFaceCoordinator: Active device changed, recreating domain accessor", v15, 2u);
    }

    v11 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanosystemsettings"];
    v12 = self->_domainAccessor;
    self->_domainAccessor = v11;
  }

  v13 = self->_domainAccessor;

  return v13;
}

- (NPSManager)npsManager
{
  npsManager = self->_npsManager;
  if (!npsManager)
  {
    v4 = objc_alloc_init(NPSManager);
    v5 = self->_npsManager;
    self->_npsManager = v4;

    npsManager = self->_npsManager;
  }

  return npsManager;
}

- (void)_loadFocusFaces
{
  v3 = NSSLogForType();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[NSSWatchFaceCoordinator _loadFocusFaces]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v15, 0xCu);
  }

  domainAccessor = [(NSSWatchFaceCoordinator *)self domainAccessor];
  synchronize = [domainAccessor synchronize];

  v6 = NSSLogForType();
  v7 = v6;
  if (synchronize)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10001F77C(synchronize);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NSSWatchFaceCoordinator: Successfully synced domain accessor", &v15, 2u);
  }

  domainAccessor2 = [(NSSWatchFaceCoordinator *)self domainAccessor];
  v9 = [domainAccessor2 objectForKey:@"SelectedFocusFaces"];

  if (!v9)
  {
    v9 = objc_opt_new();
  }

  selectedFocusFaces = self->_selectedFocusFaces;
  self->_selectedFocusFaces = v9;
  v11 = v9;

  v12 = +[NSUserDefaults standardUserDefaults];
  v13 = [v12 objectForKey:@"PreviousFaceIdentifier"];
  previousFaceIdentifier = self->_previousFaceIdentifier;
  self->_previousFaceIdentifier = v13;
}

- (void)_saveFocusFaces
{
  v3 = NSSLogForType();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[NSSWatchFaceCoordinator _saveFocusFaces]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setObject:self->_previousFaceIdentifier forKey:@"PreviousFaceIdentifier"];
  domainAccessor = [(NSSWatchFaceCoordinator *)self domainAccessor];
  [domainAccessor setObject:self->_selectedFocusFaces forKey:@"SelectedFocusFaces"];

  domainAccessor2 = [(NSSWatchFaceCoordinator *)self domainAccessor];
  synchronize = [domainAccessor2 synchronize];

  v8 = NSSLogForType();
  v9 = v8;
  if (synchronize)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10001F77C(synchronize);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "NSSWatchFaceCoordinator: Successfully synced domain accessor", buf, 2u);
  }

  npsManager = [(NSSWatchFaceCoordinator *)self npsManager];
  v13 = @"SelectedFocusFaces";
  v11 = [NSArray arrayWithObjects:&v13 count:1];
  v12 = [NSSet setWithArray:v11];
  [npsManager synchronizeNanoDomain:@"com.apple.nanosystemsettings" keys:v12];
}

- (id)selectedFocusModeIdentifiersForWatchFaceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selectedFocusFaces = [(NSSWatchFaceCoordinator *)self selectedFocusFaces];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001E800;
  v11[3] = &unk_100035240;
  v12 = identifierCopy;
  v6 = objc_opt_new();
  v13 = v6;
  v7 = identifierCopy;
  [selectedFocusFaces enumerateKeysAndObjectsUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (void)selectWatchFaceIdentifier:(id)identifier forFocusModeIdentifier:(id)modeIdentifier
{
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  v8 = NSSLogForType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[NSSWatchFaceCoordinator selectWatchFaceIdentifier:forFocusModeIdentifier:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s", &v14, 0xCu);
  }

  selectedFocusFaces = [(NSSWatchFaceCoordinator *)self selectedFocusFaces];
  v10 = [selectedFocusFaces mutableCopy];

  if (identifierCopy)
  {
    uUIDString = [identifierCopy UUIDString];
    [v10 setObject:uUIDString forKey:modeIdentifierCopy];
  }

  else
  {
    [v10 removeObjectForKey:modeIdentifierCopy];
  }

  v12 = [v10 copy];
  selectedFocusFaces = self->_selectedFocusFaces;
  self->_selectedFocusFaces = v12;

  [(NSSWatchFaceCoordinator *)self _saveFocusFaces];
}

- (void)focusModeDidStart:(id)start
{
  startCopy = start;
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = startCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NSSWatchFaceCoordinator: Focus mode did start (%@)", &v10, 0xCu);
  }

  [(NSSWatchFaceCoordinator *)self _loadFocusFaces];
  selectedFocusFaces = [(NSSWatchFaceCoordinator *)self selectedFocusFaces];
  v7 = [selectedFocusFaces objectForKey:startCopy];
  v8 = NSSLogForType();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NSSWatchFaceCoordinator: Focus has face selection: %@", &v10, 0xCu);
    }

    [(NSSWatchFaceCoordinator *)self _switchToNewWatchFaceWithIdentifier:v7];
  }

  else
  {
    if (v9)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NSSWatchFaceCoordinator: No face selection for this focus mode", &v10, 2u);
    }
  }
}

- (void)focusModeDidEnd:(id)end
{
  endCopy = end;
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = endCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NSSWatchFaceCoordinator: Focus mode did end (%@)", &v11, 0xCu);
  }

  [(NSSWatchFaceCoordinator *)self _loadFocusFaces];
  selectedFocusFaces = [(NSSWatchFaceCoordinator *)self selectedFocusFaces];
  v7 = [selectedFocusFaces objectForKey:endCopy];
  if (self->_previousFaceIdentifier)
  {
    v8 = NSSLogForType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      previousFaceIdentifier = self->_previousFaceIdentifier;
      v11 = 138412290;
      v12 = previousFaceIdentifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NSSWatchFaceCoordinator: Restoring previous face identifier: %@", &v11, 0xCu);
    }

    [(NSSWatchFaceCoordinator *)self _switchBackToExistingWatchFaceWithIdentifier:self->_previousFaceIdentifier ifFaceStillSelected:v7];
    v10 = self->_previousFaceIdentifier;
    self->_previousFaceIdentifier = 0;

    [(NSSWatchFaceCoordinator *)self _saveFocusFaces];
  }
}

- (void)_switchToWatchFaceWithIdentifier:(id)identifier saveExistingFaceState:(BOOL)state abortIfNotCurrent:(id)current
{
  stateCopy = state;
  identifierCopy = identifier;
  currentCopy = current;
  v10 = NSSLogForType();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = "[NSSWatchFaceCoordinator _switchToWatchFaceWithIdentifier:saveExistingFaceState:abortIfNotCurrent:]";
    v20 = 2112;
    v21 = identifierCopy;
    v22 = 1024;
    v23 = stateCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s - identifier: %@ saveFace: %{BOOL}d", buf, 0x1Cu);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001EE74;
  v13[3] = &unk_100035268;
  v14 = identifierCopy;
  v15 = currentCopy;
  selfCopy = self;
  v17 = stateCopy;
  v11 = currentCopy;
  v12 = identifierCopy;
  [(NSSWatchFaceCoordinator *)self watchFacesForCurrentDeviceWithCompletion:v13];
}

@end