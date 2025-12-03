@interface WFGizmoFaceCollectionProvider
- (OS_os_log)log;
- (id)collectionForIdentifier:(id)identifier;
- (void)faceCollectionDidLoad:(id)load;
- (void)getFacesForCollection:(id)collection completion:(id)completion;
- (void)getWatchFaceObjectsForLibraryCollection:(id)collection;
- (void)processCollectionAndFinish:(id)finish;
@end

@implementation WFGizmoFaceCollectionProvider

- (void)getWatchFaceObjectsForLibraryCollection:(id)collection
{
  collectionCopy = collection;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v5 = qword_10000D278;
  v10 = qword_10000D278;
  if (!qword_10000D278)
  {
    v6 = sub_1000017A8();
    v8[3] = dlsym(v6, "NTKCollectionIdentifierLibraryFaces");
    qword_10000D278 = v8[3];
    v5 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v5)
  {
    sub_100002D98();
  }

  [(WFGizmoFaceCollectionProvider *)self getFacesForCollection:*v5 completion:collectionCopy];
}

- (void)getFacesForCollection:(id)collection completion:(id)completion
{
  collectionCopy = collection;
  v7 = objc_retainBlock(completion);
  completion = self->_completion;
  self->_completion = v7;

  v9 = [(WFGizmoFaceCollectionProvider *)self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "getting a collection", buf, 2u);
  }

  v10 = [(WFGizmoFaceCollectionProvider *)self collectionForIdentifier:collectionCopy];

  hasLoaded = [v10 hasLoaded];
  v12 = [(WFGizmoFaceCollectionProvider *)self log];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (hasLoaded)
  {
    if (v13)
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "collection is loaded, moving to process", v15, 2u);
    }

    [(WFGizmoFaceCollectionProvider *)self processCollectionAndFinish:v10];
  }

  else
  {
    if (v13)
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "collection was not loaded, waiting for collection loading", v14, 2u);
    }

    [v10 addObserver:self];
  }
}

- (id)collectionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[CLKDevice currentDevice];
  nrDevice = [v5 nrDevice];
  pairingID = [nrDevice pairingID];

  deviceUUID = [(NTKPersistentFaceCollection *)self->_collection deviceUUID];
  v9 = [deviceUUID isEqual:pairingID];

  collectionIdentifier = [(NTKPersistentFaceCollection *)self->_collection collectionIdentifier];
  v11 = [collectionIdentifier isEqualToString:identifierCopy];

  collection = self->_collection;
  if (!collection)
  {
    goto LABEL_11;
  }

  if ([(NTKPersistentFaceCollection *)collection hasLoaded]& v9 & v11)
  {
    goto LABEL_19;
  }

  v13 = self->_collection;
  if (v13)
  {
    hasLoaded = [(NTKPersistentFaceCollection *)v13 hasLoaded];
    v15 = @"requesting a new collection type";
    if (v11)
    {
      v15 = 0;
    }

    if (!v9)
    {
      v15 = @"uuid has changed";
    }

    if (hasLoaded)
    {
      v16 = v15;
    }

    else
    {
      v16 = @"collection is there but not loaded";
    }
  }

  else
  {
LABEL_11:
    v16 = @"_collection is nil";
  }

  v17 = [(WFGizmoFaceCollectionProvider *)self log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "collection creation: creating a new collection because %@", &buf, 0xCu);
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v18 = qword_10000D288;
  v30 = qword_10000D288;
  if (!qword_10000D288)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v32 = sub_10000191C;
    v33 = &unk_1000081B0;
    v34 = &v27;
    sub_10000191C(&buf);
    v18 = v28[3];
  }

  v19 = v18;
  _Block_object_dispose(&v27, 8);
  v20 = [v18 alloc];
  v21 = [v20 initWithCollectionIdentifier:identifierCopy deviceUUID:{pairingID, v27}];
  v22 = self->_collection;
  self->_collection = v21;

  v23 = [(WFGizmoFaceCollectionProvider *)self log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "collection finished creation", &buf, 2u);
  }

LABEL_19:
  v24 = self->_collection;
  v25 = v24;

  return v24;
}

- (void)processCollectionAndFinish:(id)finish
{
  finishCopy = finish;
  v5 = [(WFGizmoFaceCollectionProvider *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "starting process", buf, 2u);
  }

  numberOfFaces = [finishCopy numberOfFaces];
  v7 = [[NSMutableArray alloc] initWithCapacity:numberOfFaces];
  if (numberOfFaces >= 1)
  {
    for (i = 0; i != numberOfFaces; ++i)
    {
      v9 = [finishCopy faceAtIndex:i];
      v10 = [finishCopy uuidForFace:v9];
      uUIDString = [v10 UUIDString];

      name = [v9 name];
      v13 = [[COSWatchFace alloc] initWithIdentifier:uUIDString displayString:name];
      selectedFace = [finishCopy selectedFace];
      if (selectedFace == v9)
      {
        v15 = &__kCFBooleanTrue;
      }

      else
      {
        v15 = &__kCFBooleanFalse;
      }

      [(COSWatchFace *)v13 setIsActive:v15];

      [v7 addObject:v13];
    }
  }

  v16 = [(WFGizmoFaceCollectionProvider *)self log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "process finished, calling completion", v18, 2u);
  }

  completion = [(WFGizmoFaceCollectionProvider *)self completion];
  (completion)[2](completion, finishCopy, v7, 0);
}

- (void)faceCollectionDidLoad:(id)load
{
  loadCopy = load;
  v5 = [(WFGizmoFaceCollectionProvider *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "collection loaded, moving to process", v6, 2u);
  }

  [(WFGizmoFaceCollectionProvider *)self processCollectionAndFinish:loadCopy];
}

- (OS_os_log)log
{
  log = self->_log;
  if (!log)
  {
    v4 = os_log_create("BridgeIntents", "COSSetGizmoFaceIntent");
    v5 = self->_log;
    self->_log = v4;

    log = self->_log;
  }

  return log;
}

@end