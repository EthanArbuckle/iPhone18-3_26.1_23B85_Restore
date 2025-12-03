@interface FIProviderDomain
+ (id)providerDomainForDomain:(id)domain;
+ (id)providerDomainForID:(id)d cachePolicy:(unint64_t)policy error:(id *)error;
+ (id)providerDomainForItem:(id)item cachePolicy:(unint64_t)policy error:(id *)error;
+ (id)providerDomainForRootURL:(id)l cachePolicy:(unint64_t)policy error:(id *)error;
+ (id)providerDomainForURL:(id)l cachePolicy:(unint64_t)policy error:(id *)error;
+ (id)rootURLForProviderDomainID:(id)d cachePolicy:(unint64_t)policy error:(id *)error;
- (BOOL)expectFPItems;
- (BOOL)isDataSeparatedDomain;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExternalDeviceDomain;
- (BOOL)isFPv2;
- (BOOL)isLocalStorageDomain;
- (BOOL)isMainiCloudDriveDomain;
- (BOOL)isUsingFPFS;
- (BOOL)isiCloudDriveProvider;
- (BOOL)supportsEnumeration;
- (BOOL)supportsSyncingTrash;
- (BOOL)updateRootURLIfDetached;
- (FIProviderDomain)initWithDomain:(id)domain;
- (FIProviderDomain)initWithDomainID:(id)d cachePolicy:(unint64_t)policy rootURL:(id)l domain:(id)domain;
- (NSURL)rootURL;
- (id).cxx_construct;
- (id)description;
- (unint64_t)disconnectionState;
@end

@implementation FIProviderDomain

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
  identifier = [(FIProviderDomain *)self identifier];
  if ([(FIProviderDomain *)self isUsingFPFS])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = identifier;
    v9.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v9, v5);

    if (IsLocalStorageDomainID(&v9))
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v6 = v5;
      v8.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v8, v6);

      v4 = !IsExternalDeviceDomainID(&v8);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v8.fString.fRef);
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v9.fString.fRef);
  }

  return v4;
}

- (NSURL)rootURL
{
  asyncFetchedDomain = *(self + 13);
  if (!asyncFetchedDomain)
  {
    asyncFetchedDomain = [(FIProviderDomain *)self asyncFetchedDomain];
  }

  if ([(FIProviderDomain *)self isUsingFPFS]|| [(FIProviderDomain *)self isLocalStorageDomain])
  {
    storageURLs = [asyncFetchedDomain storageURLs];
    firstObject = [storageURLs firstObject];
  }

  else
  {
    firstObject = *(self + 2);
  }

  return firstObject;
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
    v6.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v6, v5);

    LOBYTE(v5) = IsICloudDriveDomainID(&v6);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6.fString.fRef);
    return v5;
  }
}

- (BOOL)isLocalStorageDomain
{
  v2 = *(self + 12);
  v4.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v4, v2);

  LOBYTE(v2) = IsLocalStorageDomainID(&v4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v4.fString.fRef);
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
        LOBYTE(v5) = *(self + 8);
        std::mutex::unlock((self + 24));
      }

      else
      {
        std::mutex::unlock((self + 24));
        v6 = [*(self + 2) URLByAppendingPathComponent:@".Trash" isDirectory:1];
        v9 = 0;
        v5 = [v6 getResourceValue:&v9 forKey:*MEMORY[0x1E695DB78] error:0];
        v7 = v9;
        v8 = v7;
        if (v5)
        {
          LOWORD(v5) = [v7 BOOLValue];
        }

        std::mutex::lock((self + 24));
        *(self + 4) = v5 | 0x100;
        std::mutex::unlock((self + 24));
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }

    return v5 & 1;
  }
}

- (FIProviderDomain)initWithDomain:(id)domain
{
  domainCopy = domain;
  identifier = [domainCopy identifier];
  isUsingFPFS = [domainCopy isUsingFPFS];
  if (isUsingFPFS)
  {
    storageURLs = [domainCopy storageURLs];
    firstObject = [storageURLs firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v9 = [(FIProviderDomain *)self initWithDomainID:identifier cachePolicy:1 rootURL:firstObject domain:domainCopy];
  if (isUsingFPFS)
  {
  }

  return v9;
}

- (FIProviderDomain)initWithDomainID:(id)d cachePolicy:(unint64_t)policy rootURL:(id)l domain:(id)domain
{
  dCopy = d;
  lCopy = l;
  domainCopy = domain;
  v19.receiver = self;
  v19.super_class = FIProviderDomain;
  v14 = [(FIProviderDomain *)&v19 init];
  if ([dCopy length])
  {
    objc_storeStrong(v14 + 12, d);
    *(v14 + 16) = policy;
    objc_storeStrong(v14 + 2, l);
    objc_storeStrong(v14 + 13, domain);
    if (!*(v14 + 13) && !*(v14 + 2) && [v14 isiCloudDriveProvider])
    {
      v15 = [FPProviderDomainClass() rootURLForProviderDomainID:dCopy cachePolicy:1 error:0];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    v6 = objc_cast<FIProviderDomain,objc_object * {__strong}>(equalCopy);
    v7 = v6;
    if (v6)
    {
      domainID = [v6 domainID];
      v9 = [domainID isEqual:*(self + 12)];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
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

- (BOOL)updateRootURLIfDetached
{
  if (!*(self + 13))
  {
    rootURL = [(FIProviderDomain *)self rootURL];
    if (rootURL)
    {
      v4 = [(FIProviderDomain *)self urlForKnownFolder:1];
      if (IsEqual(rootURL, v4))
      {

LABEL_6:
        v7 = *(self + 2);
        *(self + 2) = 0;

        goto LABEL_7;
      }

      v5 = [(FIProviderDomain *)self urlForKnownFolder:2];
      v6 = IsEqual(rootURL, v5);

      if (v6)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
  }

  return 0;
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
    v5 = *(self + 12);
    v6.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v6, v5);

    LOBYTE(v5) = IsMainICloudDriveDomainID(&v6);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6.fString.fRef);
    return v5;
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
    v5 = *(self + 12);
    v6.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v6, v5);

    LOBYTE(v5) = IsDataSeparatedDomainID(&v6);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6.fString.fRef);
    return v5;
  }
}

- (BOOL)isExternalDeviceDomain
{
  v2 = *(self + 12);
  v4.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v4, v2);

  LOBYTE(v2) = IsExternalDeviceDomainID(&v4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v4.fString.fRef);
  return v2;
}

- (BOOL)expectFPItems
{
  asyncFetchedDomain = *(self + 13);
  if (!asyncFetchedDomain)
  {
    asyncFetchedDomain = [(FIProviderDomain *)self asyncFetchedDomain];
    if (!asyncFetchedDomain)
    {
      return 0;
    }
  }

  v4 = ([asyncFetchedDomain disconnectionState] & 0xFFFFFFFFFFFFFFFELL) != 6;

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
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ domain:%@>", objc_opt_class(), *(self + 13)];
  }

  else
  {
    if ([(FIProviderDomain *)self asyncResultAvailable])
    {
      asyncFetchedDomain = [(FIProviderDomain *)self asyncFetchedDomain];
      v5 = [asyncFetchedDomain description];

      if (!v5)
      {
        asyncError = [(FIProviderDomain *)self asyncError];
        v5 = [asyncError description];
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = *(self + 12);
    v13.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v13, v9);

    v10 = SanitizedStr(&v13);
    v11 = SanitizedURL(*(self + 2));
    v3 = [v7 stringWithFormat:@"<%@ domainID:%@ rootURL:%@ asyncState: %@>", v8, v10, v11, v5];

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v13.fString.fRef);
  }

  return v3;
}

+ (id)providerDomainForDomain:(id)domain
{
  domainCopy = domain;
  v4 = [[FIProviderDomain alloc] initWithDomain:domainCopy];

  return v4;
}

+ (id)providerDomainForID:(id)d cachePolicy:(unint64_t)policy error:(id *)error
{
  dCopy = d;
  v7 = FIProviderDomainFetcher::Singleton(dCopy);
  v8 = FIProviderDomainFetcher::FetchDomainForID(v7, dCopy, policy, 0, 0);

  return v8;
}

+ (id)providerDomainForRootURL:(id)l cachePolicy:(unint64_t)policy error:(id *)error
{
  lCopy = l;
  v8 = FIProviderDomainFetcher::Singleton(lCopy);
  v9 = FIProviderDomainFetcher::FetchDomainForURL(v8, lCopy, 0, policy, error);

  return v9;
}

+ (id)providerDomainForURL:(id)l cachePolicy:(unint64_t)policy error:(id *)error
{
  lCopy = l;
  v8 = FIProviderDomainFetcher::Singleton(lCopy);
  v9 = FIProviderDomainFetcher::FetchDomainForURL(v8, lCopy, 0, policy, error);

  return v9;
}

+ (id)providerDomainForItem:(id)item cachePolicy:(unint64_t)policy error:(id *)error
{
  itemCopy = item;
  v8 = [FPProviderDomainClass() providerDomainForItem:itemCopy cachePolicy:policy error:error];
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

+ (id)rootURLForProviderDomainID:(id)d cachePolicy:(unint64_t)policy error:(id *)error
{
  dCopy = d;
  v8 = [FPProviderDomainClass() rootURLForProviderDomainID:dCopy cachePolicy:policy error:error];

  return v8;
}

@end