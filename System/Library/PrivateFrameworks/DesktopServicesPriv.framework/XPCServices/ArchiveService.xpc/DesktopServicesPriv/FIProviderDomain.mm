@interface FIProviderDomain
+ (id)providerDomainForDomain:(id)a3;
+ (id)providerDomainForID:(id)a3 cachePolicy:(unint64_t)a4 error:(id *)a5;
+ (id)providerDomainForItem:(id)a3 cachePolicy:(unint64_t)a4 error:(id *)a5;
+ (id)providerDomainForRootURL:(id)a3 cachePolicy:(unint64_t)a4 error:(id *)a5;
+ (id)providerDomainForURL:(id)a3 cachePolicy:(unint64_t)a4 error:(id *)a5;
+ (id)rootURLForProviderDomainID:(id)a3 cachePolicy:(unint64_t)a4 error:(id *)a5;
- (BOOL)expectFPItems;
- (BOOL)isDataSeparatedDomain;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExternalDeviceDomain;
- (BOOL)isFPv2;
- (BOOL)isLocalStorageDomain;
- (BOOL)isMainiCloudDriveDomain;
- (BOOL)isUsingFPFS;
- (BOOL)isiCloudDriveProvider;
- (BOOL)supportsEnumeration;
- (BOOL)supportsSyncingTrash;
- (BOOL)updateRootURLIfDetached;
- (FIProviderDomain)initWithDomain:(id)a3;
- (FIProviderDomain)initWithDomainID:(id)a3 cachePolicy:(unint64_t)a4 rootURL:(id)a5 domain:(id)a6;
- (NSURL)rootURL;
- (id).cxx_construct;
- (id)description;
- (unint64_t)disconnectionState;
@end

@implementation FIProviderDomain

- (FIProviderDomain)initWithDomain:(id)a3
{
  v5 = a3;
  v6 = [v5 identifier];
  v7 = [v5 isUsingFPFS];
  if (v7)
  {
    v3 = [v5 storageURLs];
    v8 = [v3 firstObject];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(FIProviderDomain *)self initWithDomainID:v6 cachePolicy:1 rootURL:v8 domain:v5];
  if (v7)
  {
  }

  return v9;
}

- (FIProviderDomain)initWithDomainID:(id)a3 cachePolicy:(unint64_t)a4 rootURL:(id)a5 domain:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = FIProviderDomain;
  v14 = [(FIProviderDomain *)&v19 init];
  if ([v11 length])
  {
    objc_storeStrong(v14 + 12, a3);
    *(v14 + 16) = a4;
    objc_storeStrong(v14 + 2, a5);
    objc_storeStrong(v14 + 13, a6);
    if (!*(v14 + 13) && !*(v14 + 2) && [v14 isiCloudDriveProvider])
    {
      v15 = [(objc_class *)FPProviderDomainClass() rootURLForProviderDomainID:v11 cachePolicy:1 error:0];
      v16 = *(v14 + 2);
      *(v14 + 2) = v15;
    }

    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v6 = sub_100008560(v4);
    v7 = v6;
    if (v6)
    {
      v8 = [v6 domainID];
      v9 = [v8 isEqual:*(self + 12)];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)isUsingFPFS
{
  v3 = *(self + 13);
  if (!v3)
  {
    return [(FIProviderDomain *)self isiCloudDriveProvider]|| *(self + 2) != 0;
  }

  return [v3 isUsingFPFS];
}

- (BOOL)isFPv2
{
  v3 = [(FIProviderDomain *)self identifier];
  if ([(FIProviderDomain *)self isUsingFPFS])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = v3;
    v9 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(&v9, v5);

    if (IsLocalStorageDomainID(&v9))
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v6 = v5;
      v8 = &stru_10002D580;
      CFRetain(&stru_10002D580);
      TString::SetStringRefAsImmutable(&v8, v6);

      v4 = !IsExternalDeviceDomainID(&v8);
      sub_100004348(&v8);
    }

    sub_100004348(&v9);
  }

  return v4;
}

- (unint64_t)disconnectionState
{
  v2 = *(self + 13);
  if (v2)
  {
    return [v2 disconnectionState];
  }

  else
  {
    return 2;
  }
}

- (BOOL)isiCloudDriveProvider
{
  v3 = *(self + 13);
  if (v3)
  {

    return [v3 isiCloudDriveProvider];
  }

  else
  {
    v5 = *(self + 12);
    v6 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(&v6, v5);

    LOBYTE(v5) = IsICloudDriveDomainID(&v6);
    sub_100004348(&v6);
    return v5;
  }
}

- (BOOL)updateRootURLIfDetached
{
  if (!*(self + 13))
  {
    v3 = [(FIProviderDomain *)self rootURL];
    if (v3)
    {
      v4 = [(FIProviderDomain *)self urlForKnownFolder:1];
      if (IsEqual(v3, v4))
      {

LABEL_6:
        v7 = *(self + 2);
        *(self + 2) = 0;

        goto LABEL_7;
      }

      v5 = [(FIProviderDomain *)self urlForKnownFolder:2];
      v6 = IsEqual(v3, v5);

      if (v6)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
  }

  return 0;
}

- (NSURL)rootURL
{
  v3 = *(self + 13);
  if (!v3)
  {
    v3 = [(FIProviderDomain *)self asyncFetchedDomain];
  }

  if ([(FIProviderDomain *)self isUsingFPFS]|| [(FIProviderDomain *)self isLocalStorageDomain])
  {
    v4 = [v3 storageURLs];
    v5 = [v4 firstObject];
  }

  else
  {
    v5 = *(self + 2);
  }

  return v5;
}

- (BOOL)isMainiCloudDriveDomain
{
  v3 = *(self + 13);
  if (v3)
  {

    return [v3 isMainiCloudDriveDomain];
  }

  else
  {
    v4 = *(self + 12);
    v6 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(&v6, v4);

    LOBYTE(v4) = IsMainICloudDriveDomainID(&v6);
    sub_100004348(&v6);
    return v4;
  }
}

- (BOOL)isDataSeparatedDomain
{
  v3 = *(self + 13);
  if (v3)
  {

    return [v3 isDataSeparatedDomain];
  }

  else
  {
    v4 = *(self + 12);
    v6 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(&v6, v4);

    LOBYTE(v4) = IsDataSeparatedDomainID(&v6);
    sub_100004348(&v6);
    return v4;
  }
}

- (BOOL)isLocalStorageDomain
{
  v2 = *(self + 12);
  v4 = &stru_10002D580;
  CFRetain(&stru_10002D580);
  TString::SetStringRefAsImmutable(&v4, v2);

  LOBYTE(v2) = IsLocalStorageDomainID(&v4);
  sub_100004348(&v4);
  return v2;
}

- (BOOL)isExternalDeviceDomain
{
  v2 = *(self + 12);
  v4 = &stru_10002D580;
  CFRetain(&stru_10002D580);
  TString::SetStringRefAsImmutable(&v4, v2);

  LOBYTE(v2) = IsExternalDeviceDomainID(&v4);
  sub_100004348(&v4);
  return v2;
}

- (BOOL)supportsSyncingTrash
{
  v3 = *(self + 13);
  if (v3)
  {

    return [v3 supportsSyncingTrash];
  }

  else
  {
    if (*(self + 2))
    {
      std::mutex::lock((self + 24));
      if (*(self + 9) == 1)
      {
        LOBYTE(v4) = *(self + 8);
        std::mutex::unlock((self + 24));
      }

      else
      {
        std::mutex::unlock((self + 24));
        v5 = [*(self + 2) URLByAppendingPathComponent:@".Trash" isDirectory:1];
        v9 = 0;
        v4 = [v5 getResourceValue:&v9 forKey:NSURLIsDirectoryKey error:0];
        v6 = v9;
        v7 = v6;
        if (v4)
        {
          LOWORD(v4) = [v6 BOOLValue];
        }

        std::mutex::lock((self + 24));
        *(self + 4) = v4 | 0x100;
        std::mutex::unlock((self + 24));
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }

    return v4 & 1;
  }
}

- (BOOL)expectFPItems
{
  v3 = *(self + 13);
  if (!v3)
  {
    v3 = [(FIProviderDomain *)self asyncFetchedDomain];
    if (!v3)
    {
      return 0;
    }
  }

  v4 = ([v3 disconnectionState] & 0xFFFFFFFFFFFFFFFELL) != 6;

  return v4;
}

- (BOOL)supportsEnumeration
{
  v2 = *(self + 13);
  if (v2)
  {
    return [v2 supportsEnumeration];
  }

  else
  {
    return 1;
  }
}

- (id)description
{
  if (*(self + 13))
  {
    v3 = [NSString stringWithFormat:@"<%@ domain:%@>", objc_opt_class(), *(self + 13)];
  }

  else
  {
    if ([(FIProviderDomain *)self asyncResultAvailable])
    {
      v4 = [(FIProviderDomain *)self asyncFetchedDomain];
      v5 = [v4 description];

      if (!v5)
      {
        v6 = [(FIProviderDomain *)self asyncError];
        v5 = [v6 description];
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = objc_opt_class();
    v8 = *(self + 12);
    v12 = &stru_10002D580;
    CFRetain(&stru_10002D580);
    TString::SetStringRefAsImmutable(&v12, v8);

    v9 = SanitizedStr(&v12);
    v10 = SanitizedURL(*(self + 2));
    v3 = [NSString stringWithFormat:@"<%@ domainID:%@ rootURL:%@ asyncState: %@>", v7, v9, v10, v5];

    sub_100004348(&v12);
  }

  return v3;
}

+ (id)providerDomainForDomain:(id)a3
{
  v3 = a3;
  v4 = [[FIProviderDomain alloc] initWithDomain:v3];

  return v4;
}

+ (id)providerDomainForID:(id)a3 cachePolicy:(unint64_t)a4 error:(id *)a5
{
  v6 = a3;
  v7 = FIProviderDomainFetcher::Singleton(v6);
  v8 = FIProviderDomainFetcher::FetchDomainForID(v7, v6, a4, 0, 0);

  return v8;
}

+ (id)providerDomainForRootURL:(id)a3 cachePolicy:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = FIProviderDomainFetcher::Singleton(v7);
  v9 = FIProviderDomainFetcher::FetchDomainForURL(v8, v7, 0, a4, a5);

  return v9;
}

+ (id)providerDomainForURL:(id)a3 cachePolicy:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = FIProviderDomainFetcher::Singleton(v7);
  v9 = FIProviderDomainFetcher::FetchDomainForURL(v8, v7, 0, a4, a5);

  return v9;
}

+ (id)providerDomainForItem:(id)a3 cachePolicy:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [(objc_class *)FPProviderDomainClass() providerDomainForItem:v7 cachePolicy:a4 error:a5];
  if (v8)
  {
    v9 = [[FIProviderDomain alloc] initWithDomain:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)rootURLForProviderDomainID:(id)a3 cachePolicy:(unint64_t)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [(objc_class *)FPProviderDomainClass() rootURLForProviderDomainID:v7 cachePolicy:a4 error:a5];

  return v8;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 3) = 850045863;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 10) = 0;
  return self;
}

@end