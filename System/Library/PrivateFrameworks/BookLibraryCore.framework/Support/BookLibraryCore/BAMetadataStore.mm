@interface BAMetadataStore
- (BAMetadataStore)initWithPersistentContainer:(id)container;
- (BOOL)q_saveWithMoc:(id)moc error:(id *)error;
- (BOOL)removeAllMigrationInfosExcludingStates:(id)states error:(id *)error;
- (BOOL)removeMigrationInfoForStoreID:(int64_t)d error:(id *)error;
- (BOOL)removeRacGUIDForStoreID:(int64_t)d error:(id *)error;
- (BOOL)setMigrationState:(int64_t)state forStoreID:(int64_t)d error:(id *)error;
- (BOOL)setMigrationState:(int64_t)state forStoreIDs:(id)ds error:(id *)error;
- (BOOL)setRacGUID:(id)d forStoreID:(int64_t)iD error:(id *)error;
- (id)_fetchRequestForBookletMigrationInfoExcludingStates:(id)states;
- (id)_fetchRequestForBookletMigrationInfoWithStates:(id)states;
- (id)_fetchRequestForBookletMigrationInfoWithStoreID:(int64_t)d;
- (id)_fetchRequestForBookletMigrationInfoWithStoreIDs:(id)ds;
- (id)_fetchRequestForProductionInfoWithStoreID:(int64_t)d;
- (id)newManagedObjectContext;
- (id)q_fetchAudiobookProductionInfosWithRequest:(id)request error:(id *)error;
- (id)q_fetchBookletMigrationInfoWithRequest:(id)request error:(id *)error;
- (void)migrationInfoWithStoreID:(int64_t)d completion:(id)completion;
- (void)migrationInfosWithStates:(id)states completion:(id)completion;
- (void)migrationInfosWithStoreIDs:(id)ds completion:(id)completion;
- (void)racGUIDForStoreID:(int64_t)d result:(id)result;
@end

@implementation BAMetadataStore

- (BAMetadataStore)initWithPersistentContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = BAMetadataStore;
  v6 = [(BAMetadataStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, container);
  }

  return v7;
}

- (BOOL)setRacGUID:(id)d forStoreID:(int64_t)iD error:(id *)error
{
  dCopy = d;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100084654;
  v24 = sub_100084664;
  v25 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008466C;
  v13[3] = &unk_10011DC28;
  newManagedObjectContext = [(BAMetadataStore *)self newManagedObjectContext];
  v14 = newManagedObjectContext;
  iDCopy = iD;
  v10 = dCopy;
  v15 = v10;
  selfCopy = self;
  v17 = &v26;
  v18 = &v20;
  [newManagedObjectContext performBlockAndWait:v13];
  v11 = *(v27 + 24);
  if (error && (v27[3] & 1) == 0)
  {
    *error = v21[5];
    v11 = *(v27 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v11 & 1;
}

- (void)racGUIDForStoreID:(int64_t)d result:(id)result
{
  resultCopy = result;
  newManagedObjectContext = [(BAMetadataStore *)self newManagedObjectContext];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100084654;
  v21 = sub_100084664;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100084654;
  v15 = sub_100084664;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008489C;
  v10[3] = &unk_10011DC50;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = &v17;
  v10[7] = d;
  [newManagedObjectContext performBlockAndWait:v10];
  v8 = objc_retainBlock(resultCopy);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v18[5], v12[5]);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
}

- (BOOL)removeRacGUIDForStoreID:(int64_t)d error:(id *)error
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_100084654;
  v16[4] = sub_100084664;
  v17 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100084AB8;
  v7[3] = &unk_10011DC78;
  v7[4] = self;
  dCopy = d;
  v4 = [(BAMetadataStore *)self newManagedObjectContext:d];
  v8 = v4;
  v9 = &v12;
  v10 = v16;
  [v4 performBlockAndWait:v7];
  v5 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v16, 8);

  return v5;
}

- (BOOL)setMigrationState:(int64_t)state forStoreID:(int64_t)d error:(id *)error
{
  v8 = [NSNumber numberWithLongLong:d];
  v9 = [NSSet setWithObject:v8];

  LOBYTE(error) = [(BAMetadataStore *)self setMigrationState:state forStoreIDs:v9 error:error];
  return error;
}

- (BOOL)setMigrationState:(int64_t)state forStoreIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  newManagedObjectContext = [(BAMetadataStore *)self newManagedObjectContext];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100084654;
  v25 = sub_100084664;
  v26 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100084E08;
  v14[3] = &unk_10011DC28;
  v10 = dsCopy;
  v15 = v10;
  v11 = newManagedObjectContext;
  v19 = &v21;
  stateCopy = state;
  v16 = v11;
  selfCopy = self;
  v18 = &v27;
  [v11 performBlockAndWait:v14];
  v12 = *(v28 + 24);
  if (error && (v28[3] & 1) == 0)
  {
    *error = v22[5];
    v12 = *(v28 + 24);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v12 & 1;
}

- (void)migrationInfoWithStoreID:(int64_t)d completion:(id)completion
{
  completionCopy = completion;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100084654;
  v22 = sub_100084664;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100084654;
  v16 = sub_100084664;
  v17 = 0;
  v7 = [NSNumber numberWithLongLong:d];
  v8 = [NSSet setWithObject:v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100085144;
  v11[3] = &unk_10011DCA0;
  v11[4] = &v12;
  v11[5] = &v18;
  [(BAMetadataStore *)self migrationInfosWithStoreIDs:v8 completion:v11];
  v9 = objc_retainBlock(completionCopy);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v19[5], v13[5]);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
}

- (void)migrationInfosWithStoreIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  newManagedObjectContext = [(BAMetadataStore *)self newManagedObjectContext];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100084654;
  v26 = sub_100084664;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100084654;
  v20 = sub_100084664;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008538C;
  v12[3] = &unk_10011DCC8;
  v12[4] = self;
  v9 = dsCopy;
  v13 = v9;
  v14 = &v16;
  v15 = &v22;
  [newManagedObjectContext performBlockAndWait:v12];
  v10 = objc_retainBlock(completionCopy);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v23[5], v17[5]);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
}

- (void)migrationInfosWithStates:(id)states completion:(id)completion
{
  statesCopy = states;
  completionCopy = completion;
  newManagedObjectContext = [(BAMetadataStore *)self newManagedObjectContext];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100084654;
  v26 = sub_100084664;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100084654;
  v20 = sub_100084664;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000856F8;
  v12[3] = &unk_10011DCC8;
  v12[4] = self;
  v9 = statesCopy;
  v13 = v9;
  v14 = &v16;
  v15 = &v22;
  [newManagedObjectContext performBlockAndWait:v12];
  v10 = objc_retainBlock(completionCopy);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v23[5], v17[5]);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
}

- (BOOL)removeMigrationInfoForStoreID:(int64_t)d error:(id *)error
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_100084654;
  v16[4] = sub_100084664;
  v17 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000859EC;
  v7[3] = &unk_10011DC78;
  v7[4] = self;
  dCopy = d;
  v4 = [(BAMetadataStore *)self newManagedObjectContext:d];
  v8 = v4;
  v9 = &v12;
  v10 = v16;
  [v4 performBlockAndWait:v7];
  v5 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v16, 8);

  return v5;
}

- (BOOL)removeAllMigrationInfosExcludingStates:(id)states error:(id *)error
{
  statesCopy = states;
  if (!statesCopy)
  {
    statesCopy = objc_alloc_init(NSSet);
  }

  newManagedObjectContext = [(BAMetadataStore *)self newManagedObjectContext];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_100084654;
  v19[4] = sub_100084664;
  v20 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100085C90;
  v10[3] = &unk_10011DCF0;
  v10[4] = self;
  v7 = statesCopy;
  v11 = v7;
  v8 = newManagedObjectContext;
  v12 = v8;
  v13 = &v15;
  v14 = v19;
  [v8 performBlockAndWait:v10];
  LOBYTE(newManagedObjectContext) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(v19, 8);

  return newManagedObjectContext;
}

- (BOOL)q_saveWithMoc:(id)moc error:(id *)error
{
  v11 = 0;
  v5 = [moc save:&v11];
  v6 = v11;
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    if (error)
    {
      v8 = v6;
      *error = v7;
    }

    v9 = BLServiceMetadataStoreLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to save metadata store:  %@", buf, 0xCu);
    }
  }

  return v5;
}

- (id)_fetchRequestForProductionInfoWithStoreID:(int64_t)d
{
  v4 = +[BAAudiobookProductionInfo fetchRequest];
  v5 = [NSPredicate predicateWithFormat:@"%K == %lld", @"storeID", d];
  [v4 setPredicate:v5];

  return v4;
}

- (id)q_fetchAudiobookProductionInfosWithRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v12 = 0;
  v6 = [requestCopy execute:&v12];
  v7 = v12;
  v8 = v7;
  if (!v6)
  {
    if (error)
    {
      v9 = v7;
      *error = v8;
    }

    v10 = BLServiceMetadataStoreLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = requestCopy;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error performing fetch request %@:  %@", buf, 0x16u);
    }
  }

  return v6;
}

- (id)newManagedObjectContext
{
  container = [(BAMetadataStore *)self container];
  newBackgroundContext = [container newBackgroundContext];

  [newBackgroundContext setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  return newBackgroundContext;
}

- (id)_fetchRequestForBookletMigrationInfoWithStoreID:(int64_t)d
{
  v4 = +[BABookletMigrationInfo fetchRequest];
  v5 = [NSNumber numberWithLongLong:d];
  v6 = [NSPredicate predicateWithFormat:@"%K == %@", @"storeID", v5];
  [v4 setPredicate:v6];

  return v4;
}

- (id)_fetchRequestForBookletMigrationInfoWithStoreIDs:(id)ds
{
  dsCopy = ds;
  v4 = +[BABookletMigrationInfo fetchRequest];
  dsCopy = [NSPredicate predicateWithFormat:@"%K IN %@", @"storeID", dsCopy];

  [v4 setPredicate:dsCopy];

  return v4;
}

- (id)_fetchRequestForBookletMigrationInfoWithStates:(id)states
{
  statesCopy = states;
  v4 = +[BABookletMigrationInfo fetchRequest];
  statesCopy = [NSPredicate predicateWithFormat:@"%K IN %@", @"migrationState", statesCopy];

  [v4 setPredicate:statesCopy];

  return v4;
}

- (id)_fetchRequestForBookletMigrationInfoExcludingStates:(id)states
{
  statesCopy = states;
  v4 = +[BABookletMigrationInfo fetchRequest];
  statesCopy = [NSPredicate predicateWithFormat:@"NOT (%K IN %@)", @"migrationState", statesCopy];

  [v4 setPredicate:statesCopy];

  return v4;
}

- (id)q_fetchBookletMigrationInfoWithRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v12 = 0;
  v6 = [requestCopy execute:&v12];
  v7 = v12;
  v8 = v7;
  if (!v6)
  {
    if (error)
    {
      v9 = v7;
      *error = v8;
    }

    v10 = BLServiceMetadataStoreLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = requestCopy;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error performing fetch request %@:  %@", buf, 0x16u);
    }
  }

  return v6;
}

@end