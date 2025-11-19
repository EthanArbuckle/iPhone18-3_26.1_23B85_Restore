@interface GEOImageServicePersistence
- (BOOL)_deleteAndRecreateDB;
- (BOOL)_setup:(id)a3;
- (GEOImageServicePersistence)initWithDBFileURL:(id)a3 maximumTotalDataSize:(unint64_t)UInteger maximumAge:(double)a5;
- (unint64_t)_evictAssetsOlderThanAllowedThreshold;
- (unint64_t)_shrinkBySize:(unint64_t)a3;
- (unint64_t)_shrinkToSize:(unint64_t)a3;
- (unint64_t)calculateFreeableSize;
- (unint64_t)shrinkBySize:(unint64_t)a3;
- (unint64_t)shrinkToSize:(unint64_t)a3;
- (void)_evictIfNecessary;
- (void)_updateDataSizeOnDBQueue;
- (void)addData:(id)a3 forIdentifier:(id)a4 width:(unsigned int)a5 height:(unsigned int)a6;
- (void)getDataForIdentifier:(id)a3 width:(unsigned int)a4 height:(unsigned int)a5 callbackQueue:(id)a6 callback:(id)a7;
- (void)tearDown;
@end

@implementation GEOImageServicePersistence

- (void)getDataForIdentifier:(id)a3 width:(unsigned int)a4 height:(unsigned int)a5 callbackQueue:(id)a6 callback:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (v12 && v13 && v14)
  {
    db = self->_db;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10003B0B8;
    v20[3] = &unk_100082F98;
    v20[4] = self;
    v21 = v12;
    v24 = a4;
    v25 = a5;
    v22 = v13;
    v23 = v15;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10003B3AC;
    v17[3] = &unk_100082FC0;
    v18 = v22;
    v19 = v23;
    [(GEOSQLiteDB *)db executeAsync:v20 errorHandler:v17];
  }
}

- (void)addData:(id)a3 forIdentifier:(id)a4 width:(unsigned int)a5 height:(unsigned int)a6
{
  v10 = a3;
  v11 = a4;
  db = self->_db;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003B92C;
  v15[3] = &unk_100082F48;
  v15[4] = self;
  v16 = v11;
  v18 = a5;
  v19 = a6;
  v17 = v10;
  v13 = v10;
  v14 = v11;
  [(GEOSQLiteDB *)db executeAsync:v15];
}

- (unint64_t)shrinkBySize:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  db = self->_db;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003BE24;
  v6[3] = &unk_100082EF8;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = a3;
  [(GEOSQLiteDB *)db executeSync:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (unint64_t)shrinkToSize:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  db = self->_db;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003BF3C;
  v6[3] = &unk_100082EF8;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = a3;
  [(GEOSQLiteDB *)db executeSync:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (unint64_t)calculateFreeableSize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  db = self->_db;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003C050;
  v5[3] = &unk_100082ED0;
  v5[4] = self;
  v5[5] = &v6;
  [(GEOSQLiteDB *)db executeSync:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)_shrinkBySize:(unint64_t)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  db = self->_db;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003C284;
  v12[3] = &unk_100082EA8;
  v12[4] = self;
  v12[5] = &v17;
  v12[6] = &v13;
  v12[7] = 0;
  v12[8] = a3;
  [(GEOSQLiteDB *)db statementForKey:@"enumerateDataSizeFromOldest" statementBlock:v12];
  if (!*(v18 + 6))
  {
    goto LABEL_6;
  }

  v5 = sub_10003C314();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(v18 + 6);
    v7 = v14[3];
    *buf = 67109376;
    v22 = v6;
    v23 = 2048;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Deleting %d oldest assets (%{bytes}llu)", buf, 0x12u);
  }

  v8 = self->_db;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003C368;
  v11[3] = &unk_100082E80;
  v11[4] = self;
  v11[5] = &v17;
  if ([(GEOSQLiteDB *)v8 executeStatement:@"deleteOldestNAssets" statementBlock:v11])
  {
    v9 = v14[3];
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v9;
}

- (unint64_t)_shrinkToSize:(unint64_t)a3
{
  totalDataSize = self->_totalDataSize;
  if (!a3)
  {
    [(GEOImageServicePersistence *)self _deleteAndRecreateDB];
    return totalDataSize;
  }

  if (totalDataSize <= a3)
  {
    return 0;
  }

  return [(GEOImageServicePersistence *)self _shrinkBySize:?];
}

- (BOOL)_deleteAndRecreateDB
{
  v3 = [(GEOSQLiteDB *)self->_db deleteAllDBFiles];
  if (v3)
  {
    self->_totalDataSize = 0;
    db = self->_db;

    LOBYTE(v3) = [(GEOSQLiteDB *)db setup];
  }

  return v3;
}

- (unint64_t)_evictAssetsOlderThanAllowedThreshold
{
  v3 = (CFAbsoluteTimeGetCurrent() + kCFAbsoluteTimeIntervalSince1970 - self->_maximumAge);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  db = self->_db;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003C6B4;
  v12[3] = &unk_100082E58;
  v12[4] = self;
  v12[5] = &v17;
  v12[6] = &v13;
  v12[7] = v3;
  [(GEOSQLiteDB *)db statementForKey:@"getNumberOfOldEntries" statementBlock:v12];
  if (!*(v18 + 6))
  {
    goto LABEL_6;
  }

  v5 = sub_10003C314();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(v18 + 6);
    v7 = v14[3];
    *buf = 67109376;
    v22 = v6;
    v23 = 2048;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Deleting %d assets older than allowed threshold (%{bytes}llu)", buf, 0x12u);
  }

  v8 = self->_db;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003C764;
  v11[3] = &unk_100082E80;
  v11[4] = self;
  v11[5] = &v17;
  if ([(GEOSQLiteDB *)v8 executeStatement:@"deleteOldestNAssets" statementBlock:v11])
  {
    v9 = v14[3];
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v9;
}

- (void)_evictIfNecessary
{
  totalDataSize = self->_totalDataSize;
  maxTotalDataSize = self->_maxTotalDataSize;
  if (totalDataSize > maxTotalDataSize)
  {
    [(GEOImageServicePersistence *)self _shrinkBySize:totalDataSize - maxTotalDataSize];
  }
}

- (void)_updateDataSizeOnDBQueue
{
  db = self->_db;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003C818;
  v3[3] = &unk_100082E30;
  v3[4] = self;
  [(GEOSQLiteDB *)db statementForKey:@"calculateDataSize" statementBlock:v3];
}

- (void)tearDown
{
  db = self->_db;
  if (db)
  {
    v4 = [(GEOSQLiteDB *)db isolationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003C928;
    block[3] = &unk_1000838C8;
    block[4] = self;
    dispatch_sync(v4, block);
  }
}

- (BOOL)_setup:(id)a3
{
  v4 = a3;
  if ([v4 user_version] != 1)
  {
    [v4 dropAllTables];
  }

  [v4 setUser_version:1];
  v5 = sub_10003C314();
  v6 = v4;
  if (![v6 createTable:"CREATE TABLE IF NOT EXISTS assets(   rowid INTEGER PRIMARY KEY NOT NULL withDrop:{identifier BLOB NOT NULL, width INT NOT NULL, height INT NOT NULL, data_size INT NOT NULL, data BLOB NOT NULL, UNIQUE(identifier, width, height)   );", 0}] || !objc_msgSend(v6, "createTable:withDrop:", "CREATE TABLE IF NOT EXISTS access_times(   asset_rowid INT NOT NULL REFERENCES assets(rowid) ON UPDATE CASCADE ON DELETE CASCADE,    timestamp INT,    UNIQUE(asset_rowid)   );", 0) || !objc_msgSend(v6, "createIndex:", "CREATE INDEX IF NOT EXISTS access_times_asset_rowid_idx ON access_times (asset_rowid);") || !objc_msgSend(v6, "prepareStatement:forKey:", "INSERT INTO assets    (rowid, identifier, width, height, data_size, data)    VALUES (NULL, @identifier, @width, @height, @data_size, @data);", @"AddAsset") || (objc_msgSend(v6, "prepareStatement:forKey:", "INSERT OR REPLACE INTO access_times    (asset_rowid, timestamp)    VALUES (@asset_rowid, @timestamp);", @"SetAccessTime") & 1) == 0)
  {

LABEL_16:
    v8 = 0;
    goto LABEL_14;
  }

  v7 = [v6 prepareStatement:"SELECT rowid forKey:{data    FROM assets    WHERE identifier = @identifier AND width = @width AND height = @height    LIMIT 1;", @"FindAsset"}];

  if (!v7 || ![v6 prepareStatement:"SELECT COUNT(data_size) forKey:{SUM(data_size) FROM assets;", @"calculateDataSize"}] || !objc_msgSend(v6, "prepareStatement:forKey:", "SELECT data_size FROM assets INNER JOIN access_times ON asset_rowid = assets.rowid ORDER BY timestamp ASC", @"enumerateDataSizeFromOldest") || !objc_msgSend(v6, "prepareStatement:forKey:", "DELETE FROM assets WHERE rowid IN (SELECT asset_rowid FROM access_times ORDER BY timestamp ASC LIMIT @limit)", @"deleteOldestNAssets") || !objc_msgSend(v6, "prepareStatement:forKey:", "SELECT COUNT(data_size), SUM(data_size) FROM assets INNER JOIN access_times ON asset_rowid = assets.rowid WHERE timestamp < @timestamp", @"getNumberOfOldEntries"))
  {
    goto LABEL_16;
  }

  [(GEOImageServicePersistence *)self _evictAssetsOlderThanAllowedThreshold];
  [(GEOImageServicePersistence *)self _updateDataSizeOnDBQueue];
  v8 = 1;
LABEL_14:

  return v8;
}

- (GEOImageServicePersistence)initWithDBFileURL:(id)a3 maximumTotalDataSize:(unint64_t)UInteger maximumAge:(double)a5
{
  v8 = a3;
  v29.receiver = self;
  v29.super_class = GEOImageServicePersistence;
  v9 = [(GEOImageServicePersistence *)&v29 init];
  if (v9)
  {
    if (!UInteger)
    {
      v10 = GeoServicesConfig_ImageServicePersistenceMaxBytes[1];
      if (GEOConfigGetUInteger() >> 23 > 0x18)
      {
        UInteger = 209715200;
      }

      else
      {
        UInteger = GEOConfigGetUInteger();
      }
    }

    v9->_maxTotalDataSize = UInteger;
    if (a5 <= 0.0)
    {
      v11 = GeoServicesConfig_ImageServicePersistenceMaxAge[1];
      GEOConfigGetDouble();
      a5 = 518400.0;
      if (v12 < 518400.0)
      {
        GEOConfigGetDouble();
        a5 = v13;
      }
    }

    v9->_maximumAge = a5;
    if (v8)
    {
      v14 = [v8 copy];
      dbFileURL = v9->_dbFileURL;
      v9->_dbFileURL = v14;
    }

    else
    {
      dbFileURL = [GEOFilePaths pathFor:32796];
      v16 = [GEOFilePaths urlFor:28];
      v17 = v9->_dbFileURL;
      v9->_dbFileURL = v16;

      v18 = [(NSURL *)v9->_dbFileURL path];
      [GEOSQLiteDB migrateAllDBFilesFrom:dbFileURL to:v18];
    }

    objc_initWeak(&location, v9);
    v19 = [GEOSQLiteDB alloc];
    v20 = sub_10003C314();
    v21 = v9->_dbFileURL;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10003CD78;
    v26[3] = &unk_100082E08;
    objc_copyWeak(&v27, &location);
    v22 = [v19 initWithQueueName:"com.apple.geod.ImageServicePersistence" log:v20 databaseFileURL:v21 sqliteFlags:3145728 pragmas:0 setupBlock:v26];
    db = v9->_db;
    v9->_db = v22;

    v24 = v9;
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v9;
}

@end