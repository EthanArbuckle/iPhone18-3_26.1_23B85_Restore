@interface MNTrace
+ (NSString)mainSchema;
+ (id)upgradeSchemaFromVersion:(unint64_t)version error:(id *)error;
- (BOOL)closeTrace;
- (BOOL)openTrace:(id)trace outError:(id *)error;
- (BOOL)startWritingTraceToPath:(id)path;
- (GEOComposedRoute)initialRoute;
- (MNTrace)init;
- (MNTracePreparedStatement)mapMatcherTestEventInsertStatement;
- (NSArray)bookmarkImages;
- (NSArray)bookmarks;
- (id)_handleOpenErrorWithPath:(id)path;
- (id)createMapMatcherTestEventInsertStatementAndReturnError:(id *)error;
- (id)dateFromTimestamp:(double)timestamp;
- (id)prepareStatement:(id)statement outError:(id *)error;
- (id)routeBeforeTimestamp:(double)timestamp;
- (id)routesWithDirectionsResponseID:(id)d selectedRouteIndex:(int64_t *)index;
- (id)serializableBookmarks;
- (int)mainTransportType;
- (int64_t)locationIndexAfterTimestamp:(double)timestamp;
- (void)dealloc;
@end

@implementation MNTrace

- (id)createMapMatcherTestEventInsertStatementAndReturnError:(id *)error
{
  sub_1D31467C4();
  selfCopy = self;
  v5 = sub_1D3146948(selfCopy);

  [v5 execute];
  [v5 finalize];
  v6 = selfCopy;
  v7 = sub_1D3146948(v6);

  return v7;
}

- (GEOComposedRoute)initialRoute
{
  selfCopy = self;
  v3 = MNTrace.initialRoute.getter();

  return v3;
}

- (id)routeBeforeTimestamp:(double)timestamp
{
  selfCopy = self;
  v5 = MNTrace.route(beforeTimestamp:)(timestamp);

  return v5;
}

- (id)routesWithDirectionsResponseID:(id)d selectedRouteIndex:(int64_t *)index
{
  dCopy = d;
  selfCopy = self;
  v8 = sub_1D3276C80();
  v10 = v9;

  v11 = MNTrace.objcOnly_routesWithDirectionsResponseID(directionsResponseID:selectedRouteIndex:)(v8, v10, index);
  sub_1D31422C8(v8, v10);

  if (v11)
  {
    sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
    v12 = sub_1D3277190();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)locationIndexAfterTimestamp:(double)timestamp
{
  selfCopy = self;
  v7 = MNTrace.locationIndex(afterTimestamp:)(timestamp);
  if (v7.is_nil)
  {
    v7.value = sub_1D32769C0();
  }

  value = v7.value;

  return value;
}

+ (NSString)mainSchema
{
  v2 = sub_1D32770B0();

  return v2;
}

+ (id)upgradeSchemaFromVersion:(unint64_t)version error:(id *)error
{
  sub_1D318431C(version);
  v4 = sub_1D32770B0();

  return v4;
}

- (id)prepareStatement:(id)statement outError:(id *)error
{
  v5 = [MNTracePreparedStatement preparedStatementForTrace:self statement:statement outError:error];
  if (v5)
  {
    preparedStatements = self->_preparedStatements;
    if (!preparedStatements)
    {
      array = [MEMORY[0x1E695DF70] array];
      v8 = self->_preparedStatements;
      self->_preparedStatements = array;

      preparedStatements = self->_preparedStatements;
    }

    [(NSMutableArray *)preparedStatements addObject:v5];
  }

  return v5;
}

- (id)_handleOpenErrorWithPath:(id)path
{
  v17 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager attributesOfItemAtPath:pathCopy error:0];
  if (([v5 filePosixPermissions] & 0x100) != 0)
  {
    v9 = 0;
    pathCopy = 0;
    v8 = 0;
  }

  else
  {
    pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't open file because file does not have read permission set. Try running as root:\n> chmod u+r %@", pathCopy];
    if (pathCopy)
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v16 = pathCopy;
        _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v13 = *MEMORY[0x1E696A578];
      v14 = pathCopy;
      v8 = 1;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    }

    else
    {
      v9 = 0;
      v8 = 1;
    }
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MNTraceErrorDomain" code:v8 userInfo:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (NSArray)bookmarkImages
{
  writeQueue = [(MNTrace *)self writeQueue];
  dispatch_assert_queue_not_V2(writeQueue);
  bookmarkImages = self->_bookmarkImages;
  if (!bookmarkImages)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__5597;
    v12 = __Block_byref_object_dispose__5598;
    v13 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __25__MNTrace_bookmarkImages__block_invoke;
    v7[3] = &unk_1E8430960;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(writeQueue, v7);
    objc_storeStrong(&self->_bookmarkImages, v9[5]);
    _Block_object_dispose(&v8, 8);

    bookmarkImages = self->_bookmarkImages;
  }

  v5 = bookmarkImages;

  return bookmarkImages;
}

void __25__MNTrace_bookmarkImages__block_invoke(uint64_t a1)
{
  ppStmt = 0;
  sqlite3_prepare_v2([*(a1 + 32) db], objc_msgSend(@"SELECT screenshot_data FROM bookmarks", "UTF8String"), objc_msgSend(@"SELECT screenshot_data FROM bookmarks", "length"), &ppStmt, 0);
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:sqlite3_data_count(ppStmt)];
  if (sqlite3_step(ppStmt) == 100)
  {
    do
    {
      v3 = sqlite3_column_blob(ppStmt, 0);
      v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v3 length:{sqlite3_column_bytes(ppStmt, 0)}];
      [v2 addObject:v4];
      v5 = sqlite3_step(ppStmt);
    }

    while (v5 == 100);
  }

  sqlite3_finalize(ppStmt);
  v6 = [v2 copy];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (NSArray)bookmarks
{
  writeQueue = [(MNTrace *)self writeQueue];
  dispatch_assert_queue_not_V2(writeQueue);
  bookmarks = self->_bookmarks;
  if (!bookmarks)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__5597;
    v12 = __Block_byref_object_dispose__5598;
    v13 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __20__MNTrace_bookmarks__block_invoke;
    v7[3] = &unk_1E8430960;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(writeQueue, v7);
    objc_storeStrong(&self->_bookmarks, v9[5]);
    _Block_object_dispose(&v8, 8);

    bookmarks = self->_bookmarks;
  }

  v5 = bookmarks;

  return bookmarks;
}

void __20__MNTrace_bookmarks__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  ppStmt = 0;
  if (sqlite3_prepare_v2([*(a1 + 32) db], "SELECT timestamp FROM bookmarks", 31, &ppStmt, 0))
  {
    v2 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = sqlite3_errmsg(*(*(a1 + 32) + 8));
      *buf = 136446210;
      v11 = v3;
      _os_log_impl(&dword_1D311E000, v2, OS_LOG_TYPE_ERROR, "Error preparing bookmarks statement: %{public}s", buf, 0xCu);
    }
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:sqlite3_data_count(ppStmt)];
    while (sqlite3_step(ppStmt) == 100)
    {
      v4 = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(ppStmt, 0)}];
      [v2 addObject:v4];
    }

    sqlite3_finalize(ppStmt);
    v5 = [v2 copy];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (int)mainTransportType
{
  directions = [(MNTrace *)self directions];
  firstObject = [directions firstObject];

  if (firstObject)
  {
    request = [firstObject request];
    routeAttributes = [request routeAttributes];
    mainTransportType = [routeAttributes mainTransportType];
  }

  else
  {
    mainTransportType = 4;
  }

  return mainTransportType;
}

- (id)dateFromTimestamp:(double)timestamp
{
  recordingStartDate = self->_recordingStartDate;
  if (!recordingStartDate)
  {
    firstObject = [(NSArray *)self->_locations firstObject];
    location = [firstObject location];
    timestamp = [location timestamp];
    v9 = self->_recordingStartDate;
    self->_recordingStartDate = timestamp;

    recordingStartDate = self->_recordingStartDate;
  }

  return [(NSDate *)recordingStartDate dateByAddingTimeInterval:timestamp];
}

- (BOOL)closeTrace
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_db)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = self->_preparedStatements;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v18 + 1) + 8 * i) finalize];
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v5);
    }

    preparedStatements = self->_preparedStatements;
    self->_preparedStatements = 0;

    [(MNTracePreparedStatement *)self->_mapMatcherTestEventInsertStatement finalize];
    mapMatcherTestEventInsertStatement = self->_mapMatcherTestEventInsertStatement;
    self->_mapMatcherTestEventInsertStatement = 0;

    v10 = sqlite3_close(self->_db);
    v11 = v10 == 0;
    if (!v10)
    {
      goto LABEL_18;
    }

    v12 = v10;
    v13 = GEOFindOrCreateLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v12 == 5)
    {
      if (v14)
      {
        *buf = 67109120;
        v23 = 5;
        v15 = "Error closing temp trace: %d sqlite3 is busy";
LABEL_16:
        _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_ERROR, v15, buf, 8u);
      }
    }

    else if (v14)
    {
      *buf = 67109120;
      v23 = v12;
      v15 = "Error closing temp trace: %d";
      goto LABEL_16;
    }

LABEL_18:
    self->_db = 0;
    goto LABEL_19;
  }

  v11 = 0;
LABEL_19:
  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)startWritingTraceToPath:(id)path
{
  v17 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (self->_db)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"startWritingTraceToPath: called when sqlite database already exists"];
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "_db == NULL";
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", &v13, 0x16u);
    }
  }

  self->_db = 0;
  v5 = sqlite3_open_v2([pathCopy fileSystemRepresentation], &self->_db, 6, 0);
  if (v5)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543618;
      v14 = pathCopy;
      v15 = 1024;
      LODWORD(v16) = v5;
      _os_log_impl(&dword_1D311E000, v6, OS_LOG_TYPE_ERROR, "Error opening trace for writing at path: %{public}@, error code: %d", &v13, 0x12u);
    }
  }

  else
  {
    LOBYTE(v13) = -1;
    setxattr([pathCopy UTF8String], "com.apple.runningboard.can-suspend-locked", &v13, 1uLL, 0, 0);
    v7 = [pathCopy copy];
    tracePath = self->_tracePath;
    self->_tracePath = v7;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5 == 0;
}

- (BOOL)openTrace:(id)trace outError:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  traceCopy = trace;
  v7 = traceCopy;
  if (!self->_db)
  {
    v8 = sqlite3_open_v2([traceCopy fileSystemRepresentation], &self->_db, 2, 0);
    if (!v8)
    {
      v15 = [v7 copy];
      tracePath = self->_tracePath;
      self->_tracePath = v15;

      v12 = 1;
      goto LABEL_9;
    }

    v9 = v8;
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543618;
      v18 = v7;
      v19 = 1024;
      v20 = v9;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Error opening trace for path: %{public}@, error code: %d", &v17, 0x12u);
    }

    v11 = [(MNTrace *)self _handleOpenErrorWithPath:v7];
    if (error)
    {
      v11 = v11;
      *error = v11;
    }
  }

  v12 = 0;
LABEL_9:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)dealloc
{
  [(MNTrace *)self closeTrace];
  v3.receiver = self;
  v3.super_class = MNTrace;
  [(MNTrace *)&v3 dealloc];
}

- (MNTrace)init
{
  v8.receiver = self;
  v8.super_class = MNTrace;
  v2 = [(MNTrace *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Maps.Trace", 0);
    writeQueue = v2->_writeQueue;
    v2->_writeQueue = v3;

    v5 = dispatch_group_create();
    writeGroup = v2->_writeGroup;
    v2->_writeGroup = v5;
  }

  return v2;
}

- (MNTracePreparedStatement)mapMatcherTestEventInsertStatement
{
  v13 = *MEMORY[0x1E69E9840];
  mapMatcherTestEventInsertStatement = self->_mapMatcherTestEventInsertStatement;
  if (!mapMatcherTestEventInsertStatement)
  {
    v10 = 0;
    v4 = [(MNTrace *)self createMapMatcherTestEventInsertStatementAndReturnError:&v10];
    v5 = v10;
    v6 = self->_mapMatcherTestEventInsertStatement;
    self->_mapMatcherTestEventInsertStatement = v4;

    if (v5)
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v5;
        _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "Error creating map matcher test event table: %@", buf, 0xCu);
      }
    }

    mapMatcherTestEventInsertStatement = self->_mapMatcherTestEventInsertStatement;
  }

  v8 = *MEMORY[0x1E69E9840];

  return mapMatcherTestEventInsertStatement;
}

- (id)serializableBookmarks
{
  bookmarks = [(MNTrace *)self bookmarks];
  if ([bookmarks count])
  {
    v4 = MEMORY[0x1E695DF70];
    bookmarks2 = [(MNTrace *)self bookmarks];
    v6 = [v4 arrayWithCapacity:{objc_msgSend(bookmarks2, "count")}];

    bookmarks3 = [(MNTrace *)self bookmarks];
    v8 = [bookmarks3 count];

    if (v8)
    {
      v9 = 0;
      do
      {
        bookmarks4 = [(MNTrace *)self bookmarks];
        v11 = [bookmarks4 objectAtIndex:v9];

        bookmarkImages = [(MNTrace *)self bookmarkImages];
        v13 = [bookmarkImages objectAtIndex:v9];

        v14 = objc_alloc_init(MNTraceBookmark);
        [v11 doubleValue];
        [(MNTraceBookmark *)v14 setTimestamp:?];
        [(MNTraceBookmark *)v14 setImageData:v13];
        [v6 addObject:v14];

        ++v9;
        bookmarks5 = [(MNTrace *)self bookmarks];
        v16 = [bookmarks5 count];
      }

      while (v9 < v16);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end