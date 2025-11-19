@interface MBPlaceholderFileListDB
+ (id)openOrCreatePlaceholderFileListIn:(id)a3 commitID:(id)a4 error:(id *)a5;
- (BOOL)enumerateAppPlaceholderDomains:(id *)a3 block:(id)a4;
- (BOOL)enumerateDomainDependencies:(id *)a3 block:(id)a4;
- (BOOL)enumerateDomainList:(id *)a3 block:(id)a4;
- (BOOL)updateDomainListWithServerDomainHMACs:(id)a3 domainsInCurrentSnapshot:(id)a4 systemAppsInCurrentSnapshot:(id)a5 modifiedDomainDependencies:(id)a6 hmacKey:(id)a7 error:(id *)a8;
- (id)dateOfLastDomainListUpdate:(id *)a3;
@end

@implementation MBPlaceholderFileListDB

+ (id)openOrCreatePlaceholderFileListIn:(id)a3 commitID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  Current = CFAbsoluteTimeGetCurrent();
  v11 = MBFileListDBPath(v8, v9, @"PlaceholderDomain");
  v12 = [(MBFileListDB *)[MBPlaceholderFileListDB alloc] _initWithPath:v11 domainName:@"PlaceholderDomain"];
  if ([v12 _openOrCreateWithError:a5])
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
    v18 = a1;
    v19 = 2048;
    v20 = v14 - Current;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Opened %@ as PlaceholderFileList in %.3fs", buf, 0x16u);
    _MBLog();
  }

  return v13;
}

- (id)dateOfLastDomainListUpdate:(id *)a3
{
  v10 = 0;
  v3 = [(MBFileListDB *)self _fetchPropertyValue:&v10 forKey:@"domainListUpdateDate" error:a3];
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

- (BOOL)updateDomainListWithServerDomainHMACs:(id)a3 domainsInCurrentSnapshot:(id)a4 systemAppsInCurrentSnapshot:(id)a5 modifiedDomainDependencies:(id)a6 hmacKey:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [(MBFileListDB *)self db];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10020016C;
  v26[3] = &unk_1003C18C0;
  v27 = v14;
  v28 = v15;
  v29 = v18;
  v30 = v16;
  v31 = v17;
  v32 = self;
  v20 = v17;
  v21 = v16;
  v22 = v18;
  v23 = v15;
  v24 = v14;
  LOBYTE(a8) = [v19 groupInTransaction:a8 transaction:v26];

  return a8;
}

- (BOOL)enumerateDomainList:(id *)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(MBFileListDB *)self db];
  v8 = [v7 fetch:{@"SELECT domain, domainHMAC, isSystemApp FROM CumulativeDomainList"}];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10020080C;
  v11[3] = &unk_1003BE658;
  v12 = v6;
  v9 = v6;
  LOBYTE(a3) = [v8 enumerateWithError:a3 block:v11];

  return a3;
}

- (BOOL)enumerateDomainDependencies:(id *)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(MBFileListDB *)self db];
  v8 = [v7 fetch:{@"SELECT Parent.domain, Child.domain FROM CumulativeDomainList AS Parent  JOIN DomainDependencies ON DomainDependencies.parentDomainID = Parent.domainID JOIN CumulativeDomainList AS Child ON DomainDependencies.childDomainID = Child.domainID"}];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100200988;
  v11[3] = &unk_1003BE658;
  v12 = v6;
  v9 = v6;
  LOBYTE(a3) = [v8 enumerateWithError:a3 block:v11];

  return a3;
}

- (BOOL)enumerateAppPlaceholderDomains:(id *)a3 block:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100200AC4;
  v8[3] = &unk_1003C18E8;
  v9 = a4;
  v6 = v9;
  LOBYTE(a3) = [(MBFileListDB *)self enumerateFileMetadataWithError:a3 block:v8];

  return a3;
}

@end