@interface MBManifest
+ (id)manifestWithProperties:(id)a3 database:(id)a4 databaseIndex:(id)a5;
- (MBDatabaseIndex)databaseIndex;
- (MBManifest)initWithProperties:(id)a3 database:(id)a4 databaseIndex:(id)a5;
- (id)fileWithID:(id)a3;
- (void)buildIndexFromDatabaseIfNeeded;
@end

@implementation MBManifest

+ (id)manifestWithProperties:(id)a3 database:(id)a4 databaseIndex:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[MBManifest alloc] initWithProperties:v9 database:v8 databaseIndex:v7];

  return v10;
}

- (MBManifest)initWithProperties:(id)a3 database:(id)a4 databaseIndex:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MBManifest.m" lineNumber:24 description:@"Null manifest properties"];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v17 = +[NSAssertionHandler currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"MBManifest.m" lineNumber:25 description:@"Null manifest database"];

LABEL_3:
  v18.receiver = self;
  v18.super_class = MBManifest;
  v13 = [(MBManifest *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_properties, a3);
    objc_storeStrong(&v14->_database, a4);
    objc_storeStrong(&v14->_databaseIndex, a5);
  }

  return v14;
}

- (MBDatabaseIndex)databaseIndex
{
  databaseIndex = self->_databaseIndex;
  if (!databaseIndex)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MBManifest.m" lineNumber:39 description:@"Database index not set"];

    databaseIndex = self->_databaseIndex;
  }

  return databaseIndex;
}

- (id)fileWithID:(id)a3
{
  v5 = a3;
  databaseIndex = self->_databaseIndex;
  if (!databaseIndex)
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"MBManifest.m" lineNumber:48 description:@"Database index not set"];

    databaseIndex = self->_databaseIndex;
  }

  v7 = [(MBDatabaseIndex *)databaseIndex offsetForFileID:v5];
  if (v7 < 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(MBDatabase *)self->_database fileAtOffset:v7];
    v9 = [v8 fileID];
    v10 = [v9 isEqualToFileID:v5];

    if ((v10 & 1) == 0)
    {
      v11 = [MBException alloc];
      v12 = [v8 domain];
      v13 = [v12 name];
      v14 = [v8 relativePath];
      v15 = [v8 fileID];
      v16 = [v11 initWithCode:11 format:{@"File ID doesn't match index: %@-%@ (%@ vs %@)", v13, v14, v15, v5}];
      v17 = v16;

      objc_exception_throw(v16);
    }
  }

  return v8;
}

- (void)buildIndexFromDatabaseIfNeeded
{
  if (!self->_databaseIndex)
  {
    v9 = v2;
    v10 = v3;
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Building index from database", v8, 2u);
      _MBLog();
    }

    v6 = [(MBDatabase *)self->_database indexFromDatabaseIgnoringTruncation:0];
    databaseIndex = self->_databaseIndex;
    self->_databaseIndex = v6;
  }
}

@end