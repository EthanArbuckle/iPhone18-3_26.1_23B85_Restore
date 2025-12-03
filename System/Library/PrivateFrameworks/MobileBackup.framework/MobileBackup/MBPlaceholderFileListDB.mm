@interface MBPlaceholderFileListDB
+ (id)openOrCreatePlaceholderFileListIn:(id)in commitID:(id)d error:(id *)error;
- (BOOL)enumerateAppPlaceholderDomains:(id *)domains block:(id)block;
- (BOOL)enumerateDomainDependencies:(id *)dependencies block:(id)block;
- (BOOL)enumerateDomainList:(id *)list block:(id)block;
- (BOOL)updateDomainListWithServerDomainHMACs:(id)cs domainsInCurrentSnapshot:(id)snapshot systemAppsInCurrentSnapshot:(id)currentSnapshot modifiedDomainDependencies:(id)dependencies hmacKey:(id)key error:(id *)error;
- (id)dateOfLastDomainListUpdate:(id *)update;
@end

@implementation MBPlaceholderFileListDB

+ (id)openOrCreatePlaceholderFileListIn:(id)in commitID:(id)d error:(id *)error
{
  inCopy = in;
  dCopy = d;
  Current = CFAbsoluteTimeGetCurrent();
  v11 = MBFileListDBPath(inCopy, dCopy, @"PlaceholderDomain");
  v12 = [(MBFileListDB *)[MBPlaceholderFileListDB alloc] _initWithPath:v11 domainName:@"PlaceholderDomain"];
  if ([v12 _openOrCreateWithError:error])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = CFAbsoluteTimeGetCurrent();
  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v19 = 2048;
    v20 = v14 - Current;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Opened %@ as PlaceholderFileList in %.3fs", buf, 0x16u);
    _MBLog();
  }

  return v13;
}

- (id)dateOfLastDomainListUpdate:(id *)update
{
  v10 = 0;
  v3 = [(MBFileListDB *)self _fetchPropertyValue:&v10 forKey:@"domainListUpdateDate" error:update];
  v4 = v10;
  v5 = v4;
  v6 = 0;
  if (v3)
  {
    if (v4)
    {
      v9 = 0.0;
      [v4 getBytes:&v9 length:8];
      v7 = v9;
    }

    else
    {
      v7 = 0.0;
    }

    v6 = [NSDate dateWithTimeIntervalSince1970:v7];
  }

  return v6;
}

- (BOOL)updateDomainListWithServerDomainHMACs:(id)cs domainsInCurrentSnapshot:(id)snapshot systemAppsInCurrentSnapshot:(id)currentSnapshot modifiedDomainDependencies:(id)dependencies hmacKey:(id)key error:(id *)error
{
  csCopy = cs;
  snapshotCopy = snapshot;
  currentSnapshotCopy = currentSnapshot;
  dependenciesCopy = dependencies;
  keyCopy = key;
  v19 = [(MBFileListDB *)self db];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10020016C;
  v26[3] = &unk_1003C18C0;
  v27 = csCopy;
  v28 = snapshotCopy;
  v29 = keyCopy;
  v30 = currentSnapshotCopy;
  v31 = dependenciesCopy;
  selfCopy = self;
  v20 = dependenciesCopy;
  v21 = currentSnapshotCopy;
  v22 = keyCopy;
  v23 = snapshotCopy;
  v24 = csCopy;
  LOBYTE(error) = [v19 groupInTransaction:error transaction:v26];

  return error;
}

- (BOOL)enumerateDomainList:(id *)list block:(id)block
{
  blockCopy = block;
  v7 = [(MBFileListDB *)self db];
  v8 = [v7 fetch:{@"SELECT domain, domainHMAC, isSystemApp FROM CumulativeDomainList"}];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10020080C;
  v11[3] = &unk_1003BE658;
  v12 = blockCopy;
  v9 = blockCopy;
  LOBYTE(list) = [v8 enumerateWithError:list block:v11];

  return list;
}

- (BOOL)enumerateDomainDependencies:(id *)dependencies block:(id)block
{
  blockCopy = block;
  v7 = [(MBFileListDB *)self db];
  v8 = [v7 fetch:{@"SELECT Parent.domain, Child.domain FROM CumulativeDomainList AS Parent  JOIN DomainDependencies ON DomainDependencies.parentDomainID = Parent.domainID JOIN CumulativeDomainList AS Child ON DomainDependencies.childDomainID = Child.domainID"}];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100200988;
  v11[3] = &unk_1003BE658;
  v12 = blockCopy;
  v9 = blockCopy;
  LOBYTE(dependencies) = [v8 enumerateWithError:dependencies block:v11];

  return dependencies;
}

- (BOOL)enumerateAppPlaceholderDomains:(id *)domains block:(id)block
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100200AC4;
  v8[3] = &unk_1003C18E8;
  blockCopy = block;
  v6 = blockCopy;
  LOBYTE(domains) = [(MBFileListDB *)self enumerateFileMetadataWithError:domains block:v8];

  return domains;
}

@end