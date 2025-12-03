@interface MBManifest
+ (id)manifestWithProperties:(id)properties database:(id)database databaseIndex:(id)index;
- (MBDatabaseIndex)databaseIndex;
- (MBManifest)initWithProperties:(id)properties database:(id)database databaseIndex:(id)index;
- (id)fileWithID:(id)d;
- (void)buildIndexFromDatabaseIfNeeded;
@end

@implementation MBManifest

+ (id)manifestWithProperties:(id)properties database:(id)database databaseIndex:(id)index
{
  indexCopy = index;
  databaseCopy = database;
  propertiesCopy = properties;
  v10 = [[MBManifest alloc] initWithProperties:propertiesCopy database:databaseCopy databaseIndex:indexCopy];

  return v10;
}

- (MBManifest)initWithProperties:(id)properties database:(id)database databaseIndex:(id)index
{
  propertiesCopy = properties;
  databaseCopy = database;
  indexCopy = index;
  if (propertiesCopy)
  {
    if (databaseCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MBManifest.m" lineNumber:24 description:@"Null manifest properties"];

    if (databaseCopy)
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
    objc_storeStrong(&v13->_properties, properties);
    objc_storeStrong(&v14->_database, database);
    objc_storeStrong(&v14->_databaseIndex, index);
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

- (id)fileWithID:(id)d
{
  dCopy = d;
  databaseIndex = self->_databaseIndex;
  if (!databaseIndex)
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"MBManifest.m" lineNumber:48 description:@"Database index not set"];

    databaseIndex = self->_databaseIndex;
  }

  v7 = [(MBDatabaseIndex *)databaseIndex offsetForFileID:dCopy];
  if (v7 < 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(MBDatabase *)self->_database fileAtOffset:v7];
    fileID = [v8 fileID];
    v10 = [fileID isEqualToFileID:dCopy];

    if ((v10 & 1) == 0)
    {
      v11 = [MBException alloc];
      domain = [v8 domain];
      name = [domain name];
      relativePath = [v8 relativePath];
      fileID2 = [v8 fileID];
      v16 = [v11 initWithCode:11 format:{@"File ID doesn't match index: %@-%@ (%@ vs %@)", name, relativePath, fileID2, dCopy}];
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