@interface MAAutoAssetSetStatus
+ (id)_shortTermLockFilenameNormalizedComponent:(id)component;
+ (id)newCurrentLockUsageDetailed:(id)detailed;
+ (id)newCurrentLockUsageSummary:(id)summary;
+ (id)newSelectorsForStagingSummary:(id)summary;
+ (id)shortTermLockFilename:(id)filename forAssetSetIdentifier:(id)identifier forSetAtomicInstance:(id)instance;
- (MAAutoAssetSetStatus)initWithCoder:(id)coder;
- (id)copy;
- (id)description;
- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withAtomicInstancesDownloaded:(id)downloaded withNewerAtomicInstanceDiscovered:(id)discovered withNewerDiscoveredAtomicEntries:(id)entries withLatestDownloadedAtomicInstance:(id)instance withLatestDowloadedAtomicInstanceEntries:(id)instanceEntries withAllDownloadedAtomicInstanceEntries:(id)self0 withCurrentNotifications:(id)self1 withCurrentNeedPolicy:(id)self2 withSchedulerPolicy:(id)self3 withStagerPolicy:(id)self4 withDownloadUserInitiated:(BOOL)self5 withDownloadProgress:(id)self6 withDownloadedNetworkBytes:(int64_t)self7 withDownloadedFilesystemBytes:(int64_t)self8 withCurrentLockUsage:(id)self9 withSelectorsForStaging:(id)staging withAvailableForUseError:(id)error withNewerVersionError:(id)versionError;
- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDowloadedAtomicInstanceEntries:(id)self4 withCurrentNotifications:(id)self5 withCurrentNeedPolicy:(id)self6 withSchedulerPolicy:(id)self7 withStagerPolicy:(id)self8 withDownloadUserInitiated:(BOOL)self9 withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)filesystemBytes withCurrentLockUsage:(id)usage withSelectorsForStaging:(id)staging withAvailableForUseError:(id)error withNewerVersionError:(id)versionError;
- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDowloadedAtomicInstanceEntries:(id)self4 withDownloadedCatalogCachedAssetSetID:(id)self5 withDownloadedCatalogDownloadedFromLive:(id)self6 withDownloadedCatalogLastTimeChecked:(id)self7 withDownloadedCatalogPostedDate:(id)self8 withCurrentNotifications:(id)self9 withCurrentNeedPolicy:(id)policy withSchedulerPolicy:(id)schedulerPolicy withStagerPolicy:(id)stagerPolicy havingReceivedLookupResponse:(BOOL)response vendingAtomicInstanceForConfiguredEntries:(BOOL)configuredEntries withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)filesystemBytes withCurrentLockUsage:(id)usage withSelectorsForStaging:(id)domain0 withAvailableForUseError:(id)domain1 withNewerVersionError:(id)domain2;
- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDowloadedAtomicInstanceEntries:(id)self4 withPreviouslyVendedLockedAtomicInstance:(id)self5 withDownloadedCatalogCachedAssetSetID:(id)self6 withDownloadedCatalogDownloadedFromLive:(id)self7 withDownloadedCatalogLastTimeChecked:(id)self8 withDownloadedCatalogPostedDate:(id)self9 withCurrentNotifications:(id)notifications withCurrentNeedPolicy:(id)policy withSchedulerPolicy:(id)schedulerPolicy withStagerPolicy:(id)stagerPolicy havingReceivedLookupResponse:(BOOL)response vendingAtomicInstanceForConfiguredEntries:(BOOL)configuredEntries withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)filesystemBytes withCurrentLockUsage:(id)domain0 withSelectorsForStaging:(id)domain1 withAvailableForUseError:(id)domain2 withNewerVersionError:(id)domain3;
- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDownloadedAtomicInstanceFromPreSUStaging:(BOOL)self4 withLatestDowloadedAtomicInstanceEntries:(id)self5 withDownloadedCatalogCachedAssetSetID:(id)self6 withDownloadedCatalogDownloadedFromLive:(id)self7 withDownloadedCatalogLastTimeChecked:(id)self8 withDownloadedCatalogPostedDate:(id)self9 withCurrentNotifications:(id)notifications withCurrentNeedPolicy:(id)policy withSchedulerPolicy:(id)schedulerPolicy withStagerPolicy:(id)stagerPolicy havingReceivedLookupResponse:(BOOL)response vendingAtomicInstanceForConfiguredEntries:(BOOL)configuredEntries withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)filesystemBytes withCurrentLockUsage:(id)domain0 withSelectorsForStaging:(id)domain1 withAvailableForUseError:(id)domain2 withNewerVersionError:(id)domain3;
- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDownloadedAtomicInstanceFromPreSUStaging:(BOOL)self4 withLatestDowloadedAtomicInstanceEntries:(id)self5 withPreviouslyVendedLockedAtomicInstance:(id)self6 withDownloadedCatalogCachedAssetSetID:(id)self7 withDownloadedCatalogDownloadedFromLive:(id)self8 withDownloadedCatalogLastTimeChecked:(id)self9 withDownloadedCatalogPostedDate:(id)postedDate withCurrentNotifications:(id)notifications withCurrentNeedPolicy:(id)policy withSchedulerPolicy:(id)schedulerPolicy withStagerPolicy:(id)stagerPolicy havingReceivedLookupResponse:(BOOL)response vendingAtomicInstanceForConfiguredEntries:(BOOL)configuredEntries withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)domain0 withCurrentLockUsage:(id)domain1 withSelectorsForStaging:(id)domain2 withAvailableForUseError:(id)domain3 withNewerVersionError:(id)domain4;
- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withNewerAtomicInstanceDiscovered:(id)discovered withNewerDiscoveredAtomicEntries:(id)atomicEntries withLatestDownloadedAtomicInstance:(id)instance withLatestDowloadedAtomicInstanceEntries:(id)self0 withAllDownloadedAtomicInstanceEntries:(id)self1 withCurrentNotifications:(id)self2 withCurrentNeedPolicy:(id)self3 withSchedulerPolicy:(id)self4 withStagerPolicy:(id)self5 withDownloadUserInitiated:(BOOL)self6 withDownloadProgress:(id)self7 withDownloadedNetworkBytes:(int64_t)self8 withDownloadedFilesystemBytes:(int64_t)self9 withCurrentLockUsage:(id)usage withSelectorsForStaging:(id)staging withAvailableForUseError:(id)error withNewerVersionError:(id)versionError;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSetStatus

- (id)summary
{
  v31 = MEMORY[0x1E696AEC0];
  clientDomainName = [(MAAutoAssetSetStatus *)self clientDomainName];
  assetSetIdentifier = [(MAAutoAssetSetStatus *)self assetSetIdentifier];
  configuredAssetEntries = [(MAAutoAssetSetStatus *)self configuredAssetEntries];
  v30 = [configuredAssetEntries count];
  atomicInstancesDownloaded = [(MAAutoAssetSetStatus *)self atomicInstancesDownloaded];
  v29 = [atomicInstancesDownloaded count];
  newerAtomicInstanceDiscovered = [(MAAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  if (newerAtomicInstanceDiscovered)
  {
    newerAtomicInstanceDiscovered2 = [(MAAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  }

  else
  {
    newerAtomicInstanceDiscovered2 = @"N";
  }

  newerDiscoveredAtomicEntries = [(MAAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
  v27 = [newerDiscoveredAtomicEntries count];
  latestDownloadedAtomicInstance = [(MAAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  v37 = assetSetIdentifier;
  v38 = clientDomainName;
  v33 = newerAtomicInstanceDiscovered2;
  if (latestDownloadedAtomicInstance)
  {
    latestDownloadedAtomicInstance2 = [(MAAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  }

  else
  {
    latestDownloadedAtomicInstance2 = @"N";
  }

  latestDowloadedAtomicInstanceEntries = [(MAAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
  v7 = [latestDowloadedAtomicInstanceEntries count];
  if ([(MAAutoAssetSetStatus *)self haveReceivedLookupResponse])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  if ([(MAAutoAssetSetStatus *)self vendingAtomicInstanceForConfiguredEntries])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  if ([(MAAutoAssetSetStatus *)self downloadUserInitiated])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  currentLockUsage = [(MAAutoAssetSetStatus *)self currentLockUsage];
  if (currentLockUsage)
  {
    v12 = [MAAutoAssetSetStatus newCurrentLockUsageSummary:self];
  }

  else
  {
    v12 = @"N";
  }

  availableForUseError = [(MAAutoAssetSetStatus *)self availableForUseError];
  if (availableForUseError)
  {
    availableForUseError2 = [(MAAutoAssetSetStatus *)self availableForUseError];
    checkedSummary = [availableForUseError2 checkedSummary];
    v23 = v9;
    v25 = v10;
    v21 = v8;
    v16 = v33;
    v17 = v37;
    v18 = v38;
    v19 = [v31 stringWithFormat:@"[domain:%@|setID:%@|config:%ld|AIs:%ld(newer:%@[%ld])(latest:%@[%ld])|lookupRsp:%@(forConfig:%@)|user:%@|locks:%@|availErr:%@]", v38, v37, v30, v29, v33, v27, latestDownloadedAtomicInstance2, v7, v21, v23, v25, v12, checkedSummary];
  }

  else
  {
    v24 = v9;
    v26 = v10;
    v22 = v8;
    v16 = v33;
    v17 = v37;
    v18 = v38;
    v19 = [v31 stringWithFormat:@"[domain:%@|setID:%@|config:%ld|AIs:%ld(newer:%@[%ld])(latest:%@[%ld])|lookupRsp:%@(forConfig:%@)|user:%@|locks:%@|availErr:%@]", v38, v37, v30, v29, v33, v27, latestDownloadedAtomicInstance2, v7, v22, v24, v26, v12, @"N"];
  }

  if (currentLockUsage)
  {
  }

  if (latestDownloadedAtomicInstance)
  {
  }

  if (newerAtomicInstanceDiscovered)
  {
  }

  return v19;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateFormat:@"yyyy-MM-dd_HH:mm:ss"];
  v54 = MEMORY[0x1E696AEC0];
  clientDomainName = [(MAAutoAssetSetStatus *)self clientDomainName];
  assetSetIdentifier = [(MAAutoAssetSetStatus *)self assetSetIdentifier];
  configuredAssetEntries = [(MAAutoAssetSetStatus *)self configuredAssetEntries];
  if (configuredAssetEntries)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    configuredAssetEntries2 = [(MAAutoAssetSetStatus *)self configuredAssetEntries];
    v82 = [v5 initWithFormat:@"%ld", objc_msgSend(configuredAssetEntries2, "count")];
  }

  else
  {
    v82 = @"N";
  }

  atomicInstancesDownloaded = [(MAAutoAssetSetStatus *)self atomicInstancesDownloaded];
  if (atomicInstancesDownloaded)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    atomicInstancesDownloaded2 = [(MAAutoAssetSetStatus *)self atomicInstancesDownloaded];
    v81 = [v6 initWithFormat:@"%ld", objc_msgSend(atomicInstancesDownloaded2, "count")];
  }

  else
  {
    v81 = @"N";
  }

  catalogCachedAssetSetID = [(MAAutoAssetSetStatus *)self catalogCachedAssetSetID];
  if (catalogCachedAssetSetID)
  {
    catalogCachedAssetSetID2 = [(MAAutoAssetSetStatus *)self catalogCachedAssetSetID];
  }

  else
  {
    catalogCachedAssetSetID2 = @"N";
  }

  catalogDownloadedFromLive = [(MAAutoAssetSetStatus *)self catalogDownloadedFromLive];
  if (catalogDownloadedFromLive)
  {
    catalogDownloadedFromLive2 = [(MAAutoAssetSetStatus *)self catalogDownloadedFromLive];
  }

  else
  {
    catalogDownloadedFromLive2 = @"N";
  }

  catalogLastTimeChecked = [(MAAutoAssetSetStatus *)self catalogLastTimeChecked];
  if (catalogLastTimeChecked)
  {
    catalogLastTimeChecked2 = [(MAAutoAssetSetStatus *)self catalogLastTimeChecked];
    v78 = [v3 stringFromDate:?];
  }

  else
  {
    v78 = @"N";
  }

  catalogPostedDate = [(MAAutoAssetSetStatus *)self catalogPostedDate];
  if (catalogPostedDate)
  {
    catalogPostedDate2 = [(MAAutoAssetSetStatus *)self catalogPostedDate];
    v77 = [v3 stringFromDate:?];
  }

  else
  {
    v77 = @"N";
  }

  newerAtomicInstanceDiscovered = [(MAAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  if (newerAtomicInstanceDiscovered)
  {
    newerAtomicInstanceDiscovered2 = [(MAAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  }

  else
  {
    newerAtomicInstanceDiscovered2 = @"N";
  }

  newerDiscoveredAtomicEntries = [(MAAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
  if (newerDiscoveredAtomicEntries)
  {
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    newerDiscoveredAtomicEntries2 = [(MAAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
    v75 = [v11 initWithFormat:@"%ld", objc_msgSend(newerDiscoveredAtomicEntries2, "count")];
  }

  else
  {
    v75 = @"N";
  }

  latestDownloadedAtomicInstance = [(MAAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  if (latestDownloadedAtomicInstance)
  {
    latestDownloadedAtomicInstance2 = [(MAAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  }

  else
  {
    latestDownloadedAtomicInstance2 = @"N";
  }

  [(MAAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
  v90 = downloadedCatalogCachedAssetSetID2 = @"N";
  if (v90)
  {
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    latestDowloadedAtomicInstanceEntries = [(MAAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
    v72 = [v13 initWithFormat:@"%ld", objc_msgSend(latestDowloadedAtomicInstanceEntries, "count")];
  }

  else
  {
    v72 = @"N";
  }

  if ([(MAAutoAssetSetStatus *)self latestDownloadedAtomicInstanceFromPreSUStaging])
  {
    v14 = @"Y";
  }

  else
  {
    v14 = @"N";
  }

  v52 = v14;
  downloadedCatalogCachedAssetSetID = [(MAAutoAssetSetStatus *)self downloadedCatalogCachedAssetSetID];
  if (downloadedCatalogCachedAssetSetID)
  {
    downloadedCatalogCachedAssetSetID2 = [(MAAutoAssetSetStatus *)self downloadedCatalogCachedAssetSetID];
  }

  downloadedCatalogDownloadedFromLive = [(MAAutoAssetSetStatus *)self downloadedCatalogDownloadedFromLive];
  if (downloadedCatalogDownloadedFromLive)
  {
    downloadedCatalogDownloadedFromLive2 = [(MAAutoAssetSetStatus *)self downloadedCatalogDownloadedFromLive];
  }

  else
  {
    downloadedCatalogDownloadedFromLive2 = @"N";
  }

  downloadedCatalogLastTimeChecked = [(MAAutoAssetSetStatus *)self downloadedCatalogLastTimeChecked];
  if (downloadedCatalogLastTimeChecked)
  {
    downloadedCatalogLastTimeChecked2 = [(MAAutoAssetSetStatus *)self downloadedCatalogLastTimeChecked];
    v70 = [v3 stringFromDate:?];
  }

  else
  {
    v70 = @"N";
  }

  downloadedCatalogPostedDate = [(MAAutoAssetSetStatus *)self downloadedCatalogPostedDate];
  if (downloadedCatalogPostedDate)
  {
    downloadedCatalogPostedDate2 = [(MAAutoAssetSetStatus *)self downloadedCatalogPostedDate];
    v69 = [v3 stringFromDate:?];
  }

  else
  {
    v69 = @"N";
  }

  currentNotifications = [(MAAutoAssetSetStatus *)self currentNotifications];
  summary = [currentNotifications summary];
  currentNeedPolicy = [(MAAutoAssetSetStatus *)self currentNeedPolicy];
  if (currentNeedPolicy)
  {
    currentNeedPolicy2 = [(MAAutoAssetSetStatus *)self currentNeedPolicy];
    summary2 = [currentNeedPolicy2 summary];
  }

  else
  {
    summary2 = @"N";
  }

  schedulerPolicy = [(MAAutoAssetSetStatus *)self schedulerPolicy];
  v58 = catalogDownloadedFromLive;
  if (schedulerPolicy)
  {
    schedulerPolicy2 = [(MAAutoAssetSetStatus *)self schedulerPolicy];
    summary3 = [schedulerPolicy2 summary];
  }

  else
  {
    summary3 = @"N";
  }

  [(MAAutoAssetSetStatus *)self stagerPolicy];
  v51 = v15 = @"N";
  if (v51)
  {
    stagerPolicy = [(MAAutoAssetSetStatus *)self stagerPolicy];
    summary4 = [stagerPolicy summary];
  }

  else
  {
    summary4 = @"N";
  }

  if ([(MAAutoAssetSetStatus *)self haveReceivedLookupResponse])
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v49 = v16;
  if ([(MAAutoAssetSetStatus *)self vendingAtomicInstanceForConfiguredEntries])
  {
    v17 = @"Y";
  }

  else
  {
    v17 = @"N";
  }

  v48 = v17;
  if ([(MAAutoAssetSetStatus *)self downloadUserInitiated])
  {
    v18 = @"Y";
  }

  else
  {
    v18 = @"N";
  }

  v47 = v18;
  downloadProgress = [(MAAutoAssetSetStatus *)self downloadProgress];
  v62 = clientDomainName;
  v55 = newerAtomicInstanceDiscovered;
  v73 = downloadedCatalogCachedAssetSetID2;
  if (downloadProgress)
  {
    downloadProgress2 = [(MAAutoAssetSetStatus *)self downloadProgress];
    v15 = [downloadProgress2 description];
  }

  downloadedNetworkBytes = [(MAAutoAssetSetStatus *)self downloadedNetworkBytes];
  downloadedFilesystemBytes = [(MAAutoAssetSetStatus *)self downloadedFilesystemBytes];
  currentLockUsage = [(MAAutoAssetSetStatus *)self currentLockUsage];
  v56 = catalogPostedDate;
  if (currentLockUsage)
  {
    v65 = [MAAutoAssetSetStatus newCurrentLockUsageSummary:self];
  }

  else
  {
    v65 = @"N";
  }

  selectorsForStaging = [(MAAutoAssetSetStatus *)self selectorsForStaging];
  v63 = v3;
  if (selectorsForStaging)
  {
    v64 = [MAAutoAssetSetStatus newSelectorsForStagingSummary:self];
  }

  else
  {
    v64 = @"N";
  }

  v57 = catalogLastTimeChecked;
  availableForUseError = [(MAAutoAssetSetStatus *)self availableForUseError];
  if (availableForUseError)
  {
    availableForUseError2 = [(MAAutoAssetSetStatus *)self availableForUseError];
    checkedSummary = [availableForUseError2 checkedSummary];
  }

  else
  {
    checkedSummary = @"N";
  }

  newerVersionError = [(MAAutoAssetSetStatus *)self newerVersionError];
  if (newerVersionError)
  {
    newerVersionError2 = [(MAAutoAssetSetStatus *)self newerVersionError];
    checkedSummary2 = [newerVersionError2 checkedSummary];
    v32 = downloadedFilesystemBytes;
    v28 = v62;
    v29 = [v54 stringWithFormat:@"                                clientDomainName: %@\n                              assetSetIdentifier: %@\n                          configuredAssetEntries: %@\n                       atomicInstancesDownloaded: %@\n                         catalogCachedAssetSetID: %@\n                       catalogDownloadedFromLive: %@\n                          catalogLastTimeChecked: %@\n                               catalogPostedDate: %@\n                   newerAtomicInstanceDiscovered: %@\n                    newerDiscoveredAtomicEntries: %@\n                        latestDownloadedInstance: %@\n                  latestDowloadedInstanceEntries: %@\n  latestDownloadedAtomicInstanceFromPreSUStaging: %@\n               downloadedCatalogCachedAssetSetID: %@\n             downloadedCatalogDownloadedFromLive: %@\n                downloadedCatalogLastTimeChecked: %@\n                     downloadedCatalogPostedDate: %@\n                            currentNotifications: %@\n                               currentNeedPolicy: %@\n                                 schedulerPolicy: %@\n                                    stagerPolicy: %@\n                      haveReceivedLookupResponse: %@\n           vendingAtomicInstanceForConfigEntries: %@\n                           downloadUserInitiated: %@\n                                downloadProgress: %@\n                          downloadedNetworkBytes: %ld\n                       downloadedFilesystemBytes: %ld\n                                currentLockUsage: %@\n                             selectorsForStaging: %@\n                            availableForUseError: %@\n                               newerVersionError: %@\n", v62, assetSetIdentifier, v82, v81, catalogCachedAssetSetID2, catalogDownloadedFromLive2, v78, v77, newerAtomicInstanceDiscovered2, v75, latestDownloadedAtomicInstance2, v72, v52, v73, downloadedCatalogDownloadedFromLive2, v70, v69, summary, summary2, summary3, summary4, v49, v48, v47, v15, downloadedNetworkBytes, v32, v65, v64, checkedSummary, checkedSummary2];
  }

  else
  {
    v33 = downloadedFilesystemBytes;
    v28 = v62;
    v29 = [v54 stringWithFormat:@"                                clientDomainName: %@\n                              assetSetIdentifier: %@\n                          configuredAssetEntries: %@\n                       atomicInstancesDownloaded: %@\n                         catalogCachedAssetSetID: %@\n                       catalogDownloadedFromLive: %@\n                          catalogLastTimeChecked: %@\n                               catalogPostedDate: %@\n                   newerAtomicInstanceDiscovered: %@\n                    newerDiscoveredAtomicEntries: %@\n                        latestDownloadedInstance: %@\n                  latestDowloadedInstanceEntries: %@\n  latestDownloadedAtomicInstanceFromPreSUStaging: %@\n               downloadedCatalogCachedAssetSetID: %@\n             downloadedCatalogDownloadedFromLive: %@\n                downloadedCatalogLastTimeChecked: %@\n                     downloadedCatalogPostedDate: %@\n                            currentNotifications: %@\n                               currentNeedPolicy: %@\n                                 schedulerPolicy: %@\n                                    stagerPolicy: %@\n                      haveReceivedLookupResponse: %@\n           vendingAtomicInstanceForConfigEntries: %@\n                           downloadUserInitiated: %@\n                                downloadProgress: %@\n                          downloadedNetworkBytes: %ld\n                       downloadedFilesystemBytes: %ld\n                                currentLockUsage: %@\n                             selectorsForStaging: %@\n                            availableForUseError: %@\n                               newerVersionError: %@\n", v62, assetSetIdentifier, v82, v81, catalogCachedAssetSetID2, catalogDownloadedFromLive2, v78, v77, newerAtomicInstanceDiscovered2, v75, latestDownloadedAtomicInstance2, v72, v52, v73, downloadedCatalogDownloadedFromLive2, v70, v69, summary, summary2, summary3, summary4, v49, v48, v47, v15, downloadedNetworkBytes, v33, v65, v64, checkedSummary, @"N"];
  }

  if (availableForUseError)
  {
  }

  if (selectorsForStaging)
  {
  }

  if (currentLockUsage)
  {
  }

  if (downloadProgress)
  {
  }

  if (v51)
  {
  }

  if (schedulerPolicy)
  {
  }

  if (currentNeedPolicy)
  {
  }

  if (downloadedCatalogPostedDate)
  {
  }

  if (downloadedCatalogLastTimeChecked)
  {
  }

  if (downloadedCatalogDownloadedFromLive)
  {
  }

  if (downloadedCatalogCachedAssetSetID)
  {
  }

  if (v90)
  {
  }

  if (latestDownloadedAtomicInstance)
  {
  }

  if (newerDiscoveredAtomicEntries)
  {
  }

  if (v55)
  {
  }

  if (v56)
  {
  }

  if (v57)
  {
  }

  if (v58)
  {
  }

  if (catalogCachedAssetSetID)
  {
  }

  if (atomicInstancesDownloaded)
  {
  }

  if (configuredAssetEntries)
  {
  }

  v30 = v29;
  return v29;
}

- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withAtomicInstancesDownloaded:(id)downloaded withNewerAtomicInstanceDiscovered:(id)discovered withNewerDiscoveredAtomicEntries:(id)entries withLatestDownloadedAtomicInstance:(id)instance withLatestDowloadedAtomicInstanceEntries:(id)instanceEntries withAllDownloadedAtomicInstanceEntries:(id)self0 withCurrentNotifications:(id)self1 withCurrentNeedPolicy:(id)self2 withSchedulerPolicy:(id)self3 withStagerPolicy:(id)self4 withDownloadUserInitiated:(BOOL)self5 withDownloadProgress:(id)self6 withDownloadedNetworkBytes:(int64_t)self7 withDownloadedFilesystemBytes:(int64_t)self8 withCurrentLockUsage:(id)self9 withSelectorsForStaging:(id)staging withAvailableForUseError:(id)error withNewerVersionError:(id)versionError
{
  BYTE2(v23) = initiated;
  LOWORD(v23) = 0;
  return [MAAutoAssetSetStatus initStatusForClientDomain:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDowloadedAtomicInstanceEntries:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" forAssetSetIdentifier:domain withConfiguredAssetEntries:identifier withAtomicInstancesDownloaded:0 withCatalogCachedAssetSetID:downloaded withCatalogDownloadedFromLive:0 withCatalogLastTimeChecked:0 withCatalogPostedDate:0 withNewerAtomicInstanceDiscovered:0 withNewerDiscoveredAtomicEntries:discovered withLatestDownloadedAtomicInstance:entries withLatestDowloadedAtomicInstanceEntries:instance withDownloadedCatalogCachedAssetSetID:instanceEntries withDownloadedCatalogDownloadedFromLive:0 withDownloadedCatalogLastTimeChecked:0 withDownloadedCatalogPostedDate:0 withCurrentNotifications:0 withCurrentNeedPolicy:notifications withSchedulerPolicy:policy withStagerPolicy:schedulerPolicy havingReceivedLookupResponse:stagerPolicy vendingAtomicInstanceForConfiguredEntries:v23 withDownloadUserInitiated:progress withDownloadProgress:bytes withDownloadedNetworkBytes:filesystemBytes withDownloadedFilesystemBytes:usage withCurrentLockUsage:staging withSelectorsForStaging:error withAvailableForUseError:versionError withNewerVersionError:?];
}

- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withNewerAtomicInstanceDiscovered:(id)discovered withNewerDiscoveredAtomicEntries:(id)atomicEntries withLatestDownloadedAtomicInstance:(id)instance withLatestDowloadedAtomicInstanceEntries:(id)self0 withAllDownloadedAtomicInstanceEntries:(id)self1 withCurrentNotifications:(id)self2 withCurrentNeedPolicy:(id)self3 withSchedulerPolicy:(id)self4 withStagerPolicy:(id)self5 withDownloadUserInitiated:(BOOL)self6 withDownloadProgress:(id)self7 withDownloadedNetworkBytes:(int64_t)self8 withDownloadedFilesystemBytes:(int64_t)self9 withCurrentLockUsage:(id)usage withSelectorsForStaging:(id)staging withAvailableForUseError:(id)error withNewerVersionError:(id)versionError
{
  BYTE2(v24) = initiated;
  LOWORD(v24) = 0;
  return [MAAutoAssetSetStatus initStatusForClientDomain:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDowloadedAtomicInstanceEntries:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" forAssetSetIdentifier:domain withConfiguredAssetEntries:identifier withAtomicInstancesDownloaded:0 withCatalogCachedAssetSetID:downloaded withCatalogDownloadedFromLive:0 withCatalogLastTimeChecked:0 withCatalogPostedDate:0 withNewerAtomicInstanceDiscovered:0 withNewerDiscoveredAtomicEntries:discovered withLatestDownloadedAtomicInstance:atomicEntries withLatestDowloadedAtomicInstanceEntries:instance withDownloadedCatalogCachedAssetSetID:instanceEntries withDownloadedCatalogDownloadedFromLive:0 withDownloadedCatalogLastTimeChecked:0 withDownloadedCatalogPostedDate:0 withCurrentNotifications:0 withCurrentNeedPolicy:notifications withSchedulerPolicy:policy withStagerPolicy:schedulerPolicy havingReceivedLookupResponse:stagerPolicy vendingAtomicInstanceForConfiguredEntries:v24 withDownloadUserInitiated:progress withDownloadProgress:bytes withDownloadedNetworkBytes:filesystemBytes withDownloadedFilesystemBytes:usage withCurrentLockUsage:staging withSelectorsForStaging:error withAvailableForUseError:versionError withNewerVersionError:?];
}

- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDowloadedAtomicInstanceEntries:(id)self4 withCurrentNotifications:(id)self5 withCurrentNeedPolicy:(id)self6 withSchedulerPolicy:(id)self7 withStagerPolicy:(id)self8 withDownloadUserInitiated:(BOOL)self9 withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)filesystemBytes withCurrentLockUsage:(id)usage withSelectorsForStaging:(id)staging withAvailableForUseError:(id)error withNewerVersionError:(id)versionError
{
  BYTE2(v27) = initiated;
  LOWORD(v27) = 0;
  return [MAAutoAssetSetStatus initStatusForClientDomain:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDowloadedAtomicInstanceEntries:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" forAssetSetIdentifier:domain withConfiguredAssetEntries:identifier withAtomicInstancesDownloaded:entries withCatalogCachedAssetSetID:downloaded withCatalogDownloadedFromLive:d withCatalogLastTimeChecked:live withCatalogPostedDate:checked withNewerAtomicInstanceDiscovered:date withNewerDiscoveredAtomicEntries:discovered withLatestDownloadedAtomicInstance:atomicEntries withLatestDowloadedAtomicInstanceEntries:instance withDownloadedCatalogCachedAssetSetID:instanceEntries withDownloadedCatalogDownloadedFromLive:0 withDownloadedCatalogLastTimeChecked:0 withDownloadedCatalogPostedDate:0 withCurrentNotifications:0 withCurrentNeedPolicy:notifications withSchedulerPolicy:policy withStagerPolicy:schedulerPolicy havingReceivedLookupResponse:stagerPolicy vendingAtomicInstanceForConfiguredEntries:v27 withDownloadUserInitiated:progress withDownloadProgress:bytes withDownloadedNetworkBytes:filesystemBytes withDownloadedFilesystemBytes:usage withCurrentLockUsage:staging withSelectorsForStaging:error withAvailableForUseError:versionError withNewerVersionError:?];
}

- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDowloadedAtomicInstanceEntries:(id)self4 withDownloadedCatalogCachedAssetSetID:(id)self5 withDownloadedCatalogDownloadedFromLive:(id)self6 withDownloadedCatalogLastTimeChecked:(id)self7 withDownloadedCatalogPostedDate:(id)self8 withCurrentNotifications:(id)self9 withCurrentNeedPolicy:(id)policy withSchedulerPolicy:(id)schedulerPolicy withStagerPolicy:(id)stagerPolicy havingReceivedLookupResponse:(BOOL)response vendingAtomicInstanceForConfiguredEntries:(BOOL)configuredEntries withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)filesystemBytes withCurrentLockUsage:(id)usage withSelectorsForStaging:(id)domain0 withAvailableForUseError:(id)domain1 withNewerVersionError:(id)domain2
{
  domainCopy = domain;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  entriesCopy = entries;
  downloadedCopy = downloaded;
  dCopy = d;
  dCopy2 = d;
  liveCopy = live;
  checkedCopy = checked;
  dateCopy = date;
  discoveredCopy = discovered;
  atomicEntriesCopy = atomicEntries;
  instanceCopy = instance;
  instanceEntriesCopy = instanceEntries;
  iDCopy = iD;
  fromLiveCopy = fromLive;
  timeCheckedCopy = timeChecked;
  postedDateCopy = postedDate;
  notificationsCopy = notifications;
  policyCopy = policy;
  schedulerPolicyCopy = schedulerPolicy;
  stagerPolicyCopy = stagerPolicy;
  progressCopy = progress;
  usageCopy = usage;
  stagingCopy = staging;
  errorCopy = error;
  versionErrorCopy = versionError;
  v69.receiver = self;
  v69.super_class = MAAutoAssetSetStatus;
  v42 = [(MAAutoAssetSetStatus *)&v69 init];
  v43 = v42;
  if (v42)
  {
    objc_storeStrong(&v42->_clientDomainName, domain);
    objc_storeStrong(&v43->_assetSetIdentifier, identifierCopy);
    objc_storeStrong(&v43->_configuredAssetEntries, entries);
    objc_storeStrong(&v43->_atomicInstancesDownloaded, downloaded);
    objc_storeStrong(&v43->_catalogCachedAssetSetID, dCopy);
    objc_storeStrong(&v43->_catalogDownloadedFromLive, live);
    objc_storeStrong(&v43->_catalogLastTimeChecked, checked);
    objc_storeStrong(&v43->_catalogPostedDate, date);
    objc_storeStrong(&v43->_newerAtomicInstanceDiscovered, discovered);
    objc_storeStrong(&v43->_newerDiscoveredAtomicEntries, atomicEntries);
    objc_storeStrong(&v43->_latestDownloadedAtomicInstance, instance);
    objc_storeStrong(&v43->_latestDowloadedAtomicInstanceEntries, instanceEntries);
    objc_storeStrong(&v43->_downloadedCatalogCachedAssetSetID, iD);
    objc_storeStrong(&v43->_downloadedCatalogDownloadedFromLive, fromLive);
    objc_storeStrong(&v43->_downloadedCatalogLastTimeChecked, timeChecked);
    objc_storeStrong(&v43->_downloadedCatalogPostedDate, postedDate);
    objc_storeStrong(&v43->_currentNotifications, notifications);
    objc_storeStrong(&v43->_currentNeedPolicy, policy);
    objc_storeStrong(&v43->_schedulerPolicy, schedulerPolicy);
    objc_storeStrong(&v43->_stagerPolicy, stagerPolicy);
    v43->_haveReceivedLookupResponse = response;
    v43->_vendingAtomicInstanceForConfiguredEntries = configuredEntries;
    v43->_downloadUserInitiated = initiated;
    objc_storeStrong(&v43->_downloadProgress, progress);
    v43->_downloadedNetworkBytes = bytes;
    v43->_downloadedFilesystemBytes = filesystemBytes;
    objc_storeStrong(&v43->_currentLockUsage, usage);
    objc_storeStrong(&v43->_selectorsForStaging, staging);
    objc_storeStrong(&v43->_availableForUseError, error);
    objc_storeStrong(&v43->_newerVersionError, versionError);
  }

  return v43;
}

- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDowloadedAtomicInstanceEntries:(id)self4 withPreviouslyVendedLockedAtomicInstance:(id)self5 withDownloadedCatalogCachedAssetSetID:(id)self6 withDownloadedCatalogDownloadedFromLive:(id)self7 withDownloadedCatalogLastTimeChecked:(id)self8 withDownloadedCatalogPostedDate:(id)self9 withCurrentNotifications:(id)notifications withCurrentNeedPolicy:(id)policy withSchedulerPolicy:(id)schedulerPolicy withStagerPolicy:(id)stagerPolicy havingReceivedLookupResponse:(BOOL)response vendingAtomicInstanceForConfiguredEntries:(BOOL)configuredEntries withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)filesystemBytes withCurrentLockUsage:(id)domain0 withSelectorsForStaging:(id)domain1 withAvailableForUseError:(id)domain2 withNewerVersionError:(id)domain3
{
  domainCopy = domain;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  entriesCopy = entries;
  downloadedCopy = downloaded;
  dCopy = d;
  dCopy2 = d;
  liveCopy = live;
  checkedCopy = checked;
  dateCopy = date;
  discoveredCopy = discovered;
  atomicEntriesCopy = atomicEntries;
  instanceCopy = instance;
  instanceEntriesCopy = instanceEntries;
  iDCopy = iD;
  fromLiveCopy = fromLive;
  timeCheckedCopy = timeChecked;
  postedDateCopy = postedDate;
  notificationsCopy = notifications;
  policyCopy = policy;
  schedulerPolicyCopy = schedulerPolicy;
  stagerPolicyCopy = stagerPolicy;
  progressCopy = progress;
  usageCopy = usage;
  stagingCopy = staging;
  errorCopy = error;
  versionErrorCopy = versionError;
  v70.receiver = self;
  v70.super_class = MAAutoAssetSetStatus;
  v43 = [(MAAutoAssetSetStatus *)&v70 init];
  v44 = v43;
  if (v43)
  {
    objc_storeStrong(&v43->_clientDomainName, domain);
    objc_storeStrong(&v44->_assetSetIdentifier, identifierCopy);
    objc_storeStrong(&v44->_configuredAssetEntries, entries);
    objc_storeStrong(&v44->_atomicInstancesDownloaded, downloaded);
    objc_storeStrong(&v44->_catalogCachedAssetSetID, dCopy);
    objc_storeStrong(&v44->_catalogDownloadedFromLive, live);
    objc_storeStrong(&v44->_catalogLastTimeChecked, checked);
    objc_storeStrong(&v44->_catalogPostedDate, date);
    objc_storeStrong(&v44->_newerAtomicInstanceDiscovered, discovered);
    objc_storeStrong(&v44->_newerDiscoveredAtomicEntries, atomicEntries);
    objc_storeStrong(&v44->_latestDownloadedAtomicInstance, instance);
    objc_storeStrong(&v44->_latestDowloadedAtomicInstanceEntries, instanceEntries);
    objc_storeStrong(&v44->_downloadedCatalogCachedAssetSetID, iD);
    objc_storeStrong(&v44->_downloadedCatalogDownloadedFromLive, fromLive);
    objc_storeStrong(&v44->_downloadedCatalogLastTimeChecked, timeChecked);
    objc_storeStrong(&v44->_downloadedCatalogPostedDate, postedDate);
    objc_storeStrong(&v44->_currentNotifications, notifications);
    objc_storeStrong(&v44->_currentNeedPolicy, policy);
    objc_storeStrong(&v44->_schedulerPolicy, schedulerPolicy);
    objc_storeStrong(&v44->_stagerPolicy, stagerPolicy);
    v44->_haveReceivedLookupResponse = response;
    v44->_vendingAtomicInstanceForConfiguredEntries = configuredEntries;
    v44->_downloadUserInitiated = initiated;
    objc_storeStrong(&v44->_downloadProgress, progress);
    v44->_downloadedNetworkBytes = bytes;
    v44->_downloadedFilesystemBytes = filesystemBytes;
    objc_storeStrong(&v44->_currentLockUsage, usage);
    objc_storeStrong(&v44->_selectorsForStaging, staging);
    objc_storeStrong(&v44->_availableForUseError, error);
    objc_storeStrong(&v44->_newerVersionError, versionError);
  }

  return v44;
}

- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDownloadedAtomicInstanceFromPreSUStaging:(BOOL)self4 withLatestDowloadedAtomicInstanceEntries:(id)self5 withPreviouslyVendedLockedAtomicInstance:(id)self6 withDownloadedCatalogCachedAssetSetID:(id)self7 withDownloadedCatalogDownloadedFromLive:(id)self8 withDownloadedCatalogLastTimeChecked:(id)self9 withDownloadedCatalogPostedDate:(id)postedDate withCurrentNotifications:(id)notifications withCurrentNeedPolicy:(id)policy withSchedulerPolicy:(id)schedulerPolicy withStagerPolicy:(id)stagerPolicy havingReceivedLookupResponse:(BOOL)response vendingAtomicInstanceForConfiguredEntries:(BOOL)configuredEntries withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)domain0 withCurrentLockUsage:(id)domain1 withSelectorsForStaging:(id)domain2 withAvailableForUseError:(id)domain3 withNewerVersionError:(id)domain4
{
  domainCopy = domain;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  entriesCopy = entries;
  entriesCopy2 = entries;
  downloadedCopy = downloaded;
  dCopy = d;
  liveCopy = live;
  checkedCopy = checked;
  dateCopy = date;
  discoveredCopy = discovered;
  atomicEntriesCopy = atomicEntries;
  instanceCopy = instance;
  instanceEntriesCopy = instanceEntries;
  iDCopy = iD;
  fromLiveCopy = fromLive;
  timeCheckedCopy = timeChecked;
  postedDateCopy = postedDate;
  notificationsCopy = notifications;
  policyCopy = policy;
  schedulerPolicyCopy = schedulerPolicy;
  stagerPolicyCopy = stagerPolicy;
  progressCopy = progress;
  usageCopy = usage;
  forStagingCopy = forStaging;
  errorCopy = error;
  versionErrorCopy = versionError;
  v71.receiver = self;
  v71.super_class = MAAutoAssetSetStatus;
  v45 = [(MAAutoAssetSetStatus *)&v71 init];
  v46 = v45;
  if (v45)
  {
    objc_storeStrong(&v45->_clientDomainName, domain);
    objc_storeStrong(&v46->_assetSetIdentifier, identifierCopy);
    objc_storeStrong(&v46->_configuredAssetEntries, entriesCopy);
    objc_storeStrong(&v46->_atomicInstancesDownloaded, downloaded);
    objc_storeStrong(&v46->_catalogCachedAssetSetID, d);
    objc_storeStrong(&v46->_catalogDownloadedFromLive, live);
    objc_storeStrong(&v46->_catalogLastTimeChecked, checked);
    objc_storeStrong(&v46->_catalogPostedDate, date);
    objc_storeStrong(&v46->_newerAtomicInstanceDiscovered, discovered);
    objc_storeStrong(&v46->_newerDiscoveredAtomicEntries, atomicEntries);
    objc_storeStrong(&v46->_latestDownloadedAtomicInstance, instance);
    objc_storeStrong(&v46->_latestDowloadedAtomicInstanceEntries, instanceEntries);
    v46->_latestDownloadedAtomicInstanceFromPreSUStaging = staging;
    objc_storeStrong(&v46->_downloadedCatalogCachedAssetSetID, iD);
    objc_storeStrong(&v46->_downloadedCatalogDownloadedFromLive, fromLive);
    objc_storeStrong(&v46->_downloadedCatalogLastTimeChecked, timeChecked);
    objc_storeStrong(&v46->_downloadedCatalogPostedDate, postedDate);
    objc_storeStrong(&v46->_currentNotifications, notifications);
    objc_storeStrong(&v46->_currentNeedPolicy, policy);
    objc_storeStrong(&v46->_schedulerPolicy, schedulerPolicy);
    objc_storeStrong(&v46->_stagerPolicy, stagerPolicy);
    v46->_haveReceivedLookupResponse = response;
    v46->_vendingAtomicInstanceForConfiguredEntries = configuredEntries;
    v46->_downloadUserInitiated = initiated;
    objc_storeStrong(&v46->_downloadProgress, progress);
    v46->_downloadedNetworkBytes = bytes;
    v46->_downloadedFilesystemBytes = filesystemBytes;
    objc_storeStrong(&v46->_currentLockUsage, usage);
    objc_storeStrong(&v46->_selectorsForStaging, forStaging);
    objc_storeStrong(&v46->_availableForUseError, error);
    objc_storeStrong(&v46->_newerVersionError, versionError);
  }

  return v46;
}

- (id)initStatusForClientDomain:(id)domain forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withAtomicInstancesDownloaded:(id)downloaded withCatalogCachedAssetSetID:(id)d withCatalogDownloadedFromLive:(id)live withCatalogLastTimeChecked:(id)checked withCatalogPostedDate:(id)self0 withNewerAtomicInstanceDiscovered:(id)self1 withNewerDiscoveredAtomicEntries:(id)self2 withLatestDownloadedAtomicInstance:(id)self3 withLatestDownloadedAtomicInstanceFromPreSUStaging:(BOOL)self4 withLatestDowloadedAtomicInstanceEntries:(id)self5 withDownloadedCatalogCachedAssetSetID:(id)self6 withDownloadedCatalogDownloadedFromLive:(id)self7 withDownloadedCatalogLastTimeChecked:(id)self8 withDownloadedCatalogPostedDate:(id)self9 withCurrentNotifications:(id)notifications withCurrentNeedPolicy:(id)policy withSchedulerPolicy:(id)schedulerPolicy withStagerPolicy:(id)stagerPolicy havingReceivedLookupResponse:(BOOL)response vendingAtomicInstanceForConfiguredEntries:(BOOL)configuredEntries withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)filesystemBytes withCurrentLockUsage:(id)domain0 withSelectorsForStaging:(id)domain1 withAvailableForUseError:(id)domain2 withNewerVersionError:(id)domain3
{
  domainCopy = domain;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  entriesCopy = entries;
  entriesCopy2 = entries;
  downloadedCopy = downloaded;
  dCopy = d;
  liveCopy = live;
  checkedCopy = checked;
  dateCopy = date;
  discoveredCopy = discovered;
  atomicEntriesCopy = atomicEntries;
  instanceCopy = instance;
  instanceEntriesCopy = instanceEntries;
  iDCopy = iD;
  fromLiveCopy = fromLive;
  timeCheckedCopy = timeChecked;
  postedDateCopy = postedDate;
  notificationsCopy = notifications;
  policyCopy = policy;
  schedulerPolicyCopy = schedulerPolicy;
  stagerPolicyCopy = stagerPolicy;
  progressCopy = progress;
  usageCopy = usage;
  forStagingCopy = forStaging;
  errorCopy = error;
  versionErrorCopy = versionError;
  v70.receiver = self;
  v70.super_class = MAAutoAssetSetStatus;
  v44 = [(MAAutoAssetSetStatus *)&v70 init];
  v45 = v44;
  if (v44)
  {
    objc_storeStrong(&v44->_clientDomainName, domain);
    objc_storeStrong(&v45->_assetSetIdentifier, identifierCopy);
    objc_storeStrong(&v45->_configuredAssetEntries, entriesCopy);
    objc_storeStrong(&v45->_atomicInstancesDownloaded, downloaded);
    objc_storeStrong(&v45->_catalogCachedAssetSetID, d);
    objc_storeStrong(&v45->_catalogDownloadedFromLive, live);
    objc_storeStrong(&v45->_catalogLastTimeChecked, checked);
    objc_storeStrong(&v45->_catalogPostedDate, date);
    objc_storeStrong(&v45->_newerAtomicInstanceDiscovered, discovered);
    objc_storeStrong(&v45->_newerDiscoveredAtomicEntries, atomicEntries);
    objc_storeStrong(&v45->_latestDownloadedAtomicInstance, instance);
    objc_storeStrong(&v45->_latestDowloadedAtomicInstanceEntries, instanceEntries);
    v45->_latestDownloadedAtomicInstanceFromPreSUStaging = staging;
    objc_storeStrong(&v45->_downloadedCatalogCachedAssetSetID, iD);
    objc_storeStrong(&v45->_downloadedCatalogDownloadedFromLive, fromLive);
    objc_storeStrong(&v45->_downloadedCatalogLastTimeChecked, timeChecked);
    objc_storeStrong(&v45->_downloadedCatalogPostedDate, postedDate);
    objc_storeStrong(&v45->_currentNotifications, notifications);
    objc_storeStrong(&v45->_currentNeedPolicy, policy);
    objc_storeStrong(&v45->_schedulerPolicy, schedulerPolicy);
    objc_storeStrong(&v45->_stagerPolicy, stagerPolicy);
    v45->_haveReceivedLookupResponse = response;
    v45->_vendingAtomicInstanceForConfiguredEntries = configuredEntries;
    v45->_downloadUserInitiated = initiated;
    objc_storeStrong(&v45->_downloadProgress, progress);
    v45->_downloadedNetworkBytes = bytes;
    v45->_downloadedFilesystemBytes = filesystemBytes;
    objc_storeStrong(&v45->_currentLockUsage, usage);
    objc_storeStrong(&v45->_selectorsForStaging, forStaging);
    objc_storeStrong(&v45->_availableForUseError, error);
    objc_storeStrong(&v45->_newerVersionError, versionError);
  }

  return v45;
}

- (MAAutoAssetSetStatus)initWithCoder:(id)coder
{
  v78[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v73.receiver = self;
  v73.super_class = MAAutoAssetSetStatus;
  v5 = [(MAAutoAssetSetStatus *)&v73 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v78[0] = objc_opt_class();
    v78[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = MEMORY[0x1E695DFD8];
    v77[0] = objc_opt_class();
    v77[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
    v11 = [v9 setWithArray:v10];

    v12 = MEMORY[0x1E695DFD8];
    v76[0] = objc_opt_class();
    v76[1] = objc_opt_class();
    v76[2] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:3];
    v14 = [v12 setWithArray:v13];

    v15 = MEMORY[0x1E695DFD8];
    v75[0] = objc_opt_class();
    v75[1] = objc_opt_class();
    v75[2] = objc_opt_class();
    v75[3] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:4];
    v17 = [v15 setWithArray:v16];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v20;

    v22 = objc_alloc(MEMORY[0x1E695DFD8]);
    v74[0] = objc_opt_class();
    v74[1] = objc_opt_class();
    v74[2] = objc_opt_class();
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:3];
    v24 = [v22 initWithArray:v23];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"configuredAssetEntries"];
    configuredAssetEntries = v5->_configuredAssetEntries;
    v5->_configuredAssetEntries = v25;

    v27 = [coderCopy decodeObjectOfClasses:v8 forKey:@"atomicInstancesDownloaded"];
    atomicInstancesDownloaded = v5->_atomicInstancesDownloaded;
    v5->_atomicInstancesDownloaded = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalogCachedAssetSetID"];
    catalogCachedAssetSetID = v5->_catalogCachedAssetSetID;
    v5->_catalogCachedAssetSetID = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalogDownloadedFromLive"];
    catalogDownloadedFromLive = v5->_catalogDownloadedFromLive;
    v5->_catalogDownloadedFromLive = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalogLastTimeChecked"];
    catalogLastTimeChecked = v5->_catalogLastTimeChecked;
    v5->_catalogLastTimeChecked = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalogPostedDate"];
    catalogPostedDate = v5->_catalogPostedDate;
    v5->_catalogPostedDate = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"newerAtomicInstanceDiscovered"];
    newerAtomicInstanceDiscovered = v5->_newerAtomicInstanceDiscovered;
    v5->_newerAtomicInstanceDiscovered = v37;

    v39 = [coderCopy decodeObjectOfClasses:v11 forKey:@"newerDiscoveredAtomicEntries"];
    newerDiscoveredAtomicEntries = v5->_newerDiscoveredAtomicEntries;
    v5->_newerDiscoveredAtomicEntries = v39;

    v5->_latestDownloadedAtomicInstanceFromPreSUStaging = [coderCopy decodeBoolForKey:@"latestDownloadedAtomicInstanceFromPreSUStaging"];
    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestDownloadedAtomicInstance"];
    latestDownloadedAtomicInstance = v5->_latestDownloadedAtomicInstance;
    v5->_latestDownloadedAtomicInstance = v41;

    v43 = [coderCopy decodeObjectOfClasses:v11 forKey:@"latestDowloadedAtomicInstanceEntries"];
    latestDowloadedAtomicInstanceEntries = v5->_latestDowloadedAtomicInstanceEntries;
    v5->_latestDowloadedAtomicInstanceEntries = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogCachedAssetSetID"];
    downloadedCatalogCachedAssetSetID = v5->_downloadedCatalogCachedAssetSetID;
    v5->_downloadedCatalogCachedAssetSetID = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogDownloadedFromLive"];
    downloadedCatalogDownloadedFromLive = v5->_downloadedCatalogDownloadedFromLive;
    v5->_downloadedCatalogDownloadedFromLive = v47;

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogLastTimeChecked"];
    downloadedCatalogLastTimeChecked = v5->_downloadedCatalogLastTimeChecked;
    v5->_downloadedCatalogLastTimeChecked = v49;

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogPostedDate"];
    downloadedCatalogPostedDate = v5->_downloadedCatalogPostedDate;
    v5->_downloadedCatalogPostedDate = v51;

    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentNotifications"];
    currentNotifications = v5->_currentNotifications;
    v5->_currentNotifications = v53;

    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentNeedPolicy"];
    currentNeedPolicy = v5->_currentNeedPolicy;
    v5->_currentNeedPolicy = v55;

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"schedulerPolicy"];
    schedulerPolicy = v5->_schedulerPolicy;
    v5->_schedulerPolicy = v57;

    v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagerPolicy"];
    stagerPolicy = v5->_stagerPolicy;
    v5->_stagerPolicy = v59;

    v5->_haveReceivedLookupResponse = [coderCopy decodeBoolForKey:@"haveReceivedLookupResponse"];
    v5->_vendingAtomicInstanceForConfiguredEntries = [coderCopy decodeBoolForKey:@"vendingAtomicInstanceForConfiguredEntries"];
    v5->_downloadUserInitiated = [coderCopy decodeBoolForKey:@"downloadUserInitiated"];
    v61 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadProgress"];
    downloadProgress = v5->_downloadProgress;
    v5->_downloadProgress = v61;

    v5->_downloadedNetworkBytes = [coderCopy decodeIntegerForKey:@"downloadedNetworkBytes"];
    v5->_downloadedFilesystemBytes = [coderCopy decodeIntegerForKey:@"downloadedFilesystemBytes"];
    v63 = [coderCopy decodeObjectOfClasses:v14 forKey:@"currentLockUsage"];
    currentLockUsage = v5->_currentLockUsage;
    v5->_currentLockUsage = v63;

    v65 = [coderCopy decodeObjectOfClasses:v17 forKey:@"selectorsForStaging"];
    selectorsForStaging = v5->_selectorsForStaging;
    v5->_selectorsForStaging = v65;

    v67 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"availableForUseError"];
    availableForUseError = v5->_availableForUseError;
    v5->_availableForUseError = v67;

    v69 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"newerVersionError"];
    newerVersionError = v5->_newerVersionError;
    v5->_newerVersionError = v69;
  }

  v71 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientDomainName = [(MAAutoAssetSetStatus *)self clientDomainName];
  [coderCopy encodeObject:clientDomainName forKey:@"clientDomainName"];

  assetSetIdentifier = [(MAAutoAssetSetStatus *)self assetSetIdentifier];
  [coderCopy encodeObject:assetSetIdentifier forKey:@"assetSetIdentifier"];

  configuredAssetEntries = [(MAAutoAssetSetStatus *)self configuredAssetEntries];
  [coderCopy encodeObject:configuredAssetEntries forKey:@"configuredAssetEntries"];

  atomicInstancesDownloaded = [(MAAutoAssetSetStatus *)self atomicInstancesDownloaded];
  [coderCopy encodeObject:atomicInstancesDownloaded forKey:@"atomicInstancesDownloaded"];

  catalogCachedAssetSetID = [(MAAutoAssetSetStatus *)self catalogCachedAssetSetID];
  [coderCopy encodeObject:catalogCachedAssetSetID forKey:@"catalogCachedAssetSetID"];

  catalogDownloadedFromLive = [(MAAutoAssetSetStatus *)self catalogDownloadedFromLive];
  [coderCopy encodeObject:catalogDownloadedFromLive forKey:@"catalogDownloadedFromLive"];

  catalogLastTimeChecked = [(MAAutoAssetSetStatus *)self catalogLastTimeChecked];
  [coderCopy encodeObject:catalogLastTimeChecked forKey:@"catalogLastTimeChecked"];

  catalogPostedDate = [(MAAutoAssetSetStatus *)self catalogPostedDate];
  [coderCopy encodeObject:catalogPostedDate forKey:@"catalogPostedDate"];

  newerAtomicInstanceDiscovered = [(MAAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  [coderCopy encodeObject:newerAtomicInstanceDiscovered forKey:@"newerAtomicInstanceDiscovered"];

  [coderCopy encodeBool:-[MAAutoAssetSetStatus latestDownloadedAtomicInstanceFromPreSUStaging](self forKey:{"latestDownloadedAtomicInstanceFromPreSUStaging"), @"latestDownloadedAtomicInstanceFromPreSUStaging"}];
  newerDiscoveredAtomicEntries = [(MAAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
  [coderCopy encodeObject:newerDiscoveredAtomicEntries forKey:@"newerDiscoveredAtomicEntries"];

  latestDownloadedAtomicInstance = [(MAAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  [coderCopy encodeObject:latestDownloadedAtomicInstance forKey:@"latestDownloadedAtomicInstance"];

  latestDowloadedAtomicInstanceEntries = [(MAAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
  [coderCopy encodeObject:latestDowloadedAtomicInstanceEntries forKey:@"latestDowloadedAtomicInstanceEntries"];

  downloadedCatalogCachedAssetSetID = [(MAAutoAssetSetStatus *)self downloadedCatalogCachedAssetSetID];
  [coderCopy encodeObject:downloadedCatalogCachedAssetSetID forKey:@"downloadedCatalogCachedAssetSetID"];

  downloadedCatalogDownloadedFromLive = [(MAAutoAssetSetStatus *)self downloadedCatalogDownloadedFromLive];
  [coderCopy encodeObject:downloadedCatalogDownloadedFromLive forKey:@"downloadedCatalogDownloadedFromLive"];

  downloadedCatalogLastTimeChecked = [(MAAutoAssetSetStatus *)self downloadedCatalogLastTimeChecked];
  [coderCopy encodeObject:downloadedCatalogLastTimeChecked forKey:@"downloadedCatalogLastTimeChecked"];

  downloadedCatalogPostedDate = [(MAAutoAssetSetStatus *)self downloadedCatalogPostedDate];
  [coderCopy encodeObject:downloadedCatalogPostedDate forKey:@"downloadedCatalogPostedDate"];

  currentNotifications = [(MAAutoAssetSetStatus *)self currentNotifications];
  [coderCopy encodeObject:currentNotifications forKey:@"currentNotifications"];

  currentNeedPolicy = [(MAAutoAssetSetStatus *)self currentNeedPolicy];
  [coderCopy encodeObject:currentNeedPolicy forKey:@"currentNeedPolicy"];

  schedulerPolicy = [(MAAutoAssetSetStatus *)self schedulerPolicy];
  [coderCopy encodeObject:schedulerPolicy forKey:@"schedulerPolicy"];

  stagerPolicy = [(MAAutoAssetSetStatus *)self stagerPolicy];
  [coderCopy encodeObject:stagerPolicy forKey:@"stagerPolicy"];

  [coderCopy encodeBool:-[MAAutoAssetSetStatus haveReceivedLookupResponse](self forKey:{"haveReceivedLookupResponse"), @"haveReceivedLookupResponse"}];
  [coderCopy encodeBool:-[MAAutoAssetSetStatus vendingAtomicInstanceForConfiguredEntries](self forKey:{"vendingAtomicInstanceForConfiguredEntries"), @"vendingAtomicInstanceForConfiguredEntries"}];
  [coderCopy encodeBool:-[MAAutoAssetSetStatus downloadUserInitiated](self forKey:{"downloadUserInitiated"), @"downloadUserInitiated"}];
  downloadProgress = [(MAAutoAssetSetStatus *)self downloadProgress];
  [coderCopy encodeObject:downloadProgress forKey:@"downloadProgress"];

  [coderCopy encodeInteger:-[MAAutoAssetSetStatus downloadedNetworkBytes](self forKey:{"downloadedNetworkBytes"), @"downloadedNetworkBytes"}];
  [coderCopy encodeInteger:-[MAAutoAssetSetStatus downloadedFilesystemBytes](self forKey:{"downloadedFilesystemBytes"), @"downloadedFilesystemBytes"}];
  currentLockUsage = [(MAAutoAssetSetStatus *)self currentLockUsage];
  [coderCopy encodeObject:currentLockUsage forKey:@"currentLockUsage"];

  selectorsForStaging = [(MAAutoAssetSetStatus *)self selectorsForStaging];
  [coderCopy encodeObject:selectorsForStaging forKey:@"selectorsForStaging"];

  availableForUseError = [(MAAutoAssetSetStatus *)self availableForUseError];
  [coderCopy encodeObject:availableForUseError forKey:@"availableForUseError"];

  newerVersionError = [(MAAutoAssetSetStatus *)self newerVersionError];
  [coderCopy encodeObject:newerVersionError forKey:@"newerVersionError"];
}

- (id)copy
{
  v28 = [MAAutoAssetSetStatus alloc];
  clientDomainName = [(MAAutoAssetSetStatus *)self clientDomainName];
  assetSetIdentifier = [(MAAutoAssetSetStatus *)self assetSetIdentifier];
  configuredAssetEntries = [(MAAutoAssetSetStatus *)self configuredAssetEntries];
  v46 = [configuredAssetEntries copy];
  atomicInstancesDownloaded = [(MAAutoAssetSetStatus *)self atomicInstancesDownloaded];
  v45 = [atomicInstancesDownloaded copy];
  catalogCachedAssetSetID = [(MAAutoAssetSetStatus *)self catalogCachedAssetSetID];
  catalogDownloadedFromLive = [(MAAutoAssetSetStatus *)self catalogDownloadedFromLive];
  catalogLastTimeChecked = [(MAAutoAssetSetStatus *)self catalogLastTimeChecked];
  catalogPostedDate = [(MAAutoAssetSetStatus *)self catalogPostedDate];
  newerAtomicInstanceDiscovered = [(MAAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  newerDiscoveredAtomicEntries = [(MAAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
  v39 = [newerDiscoveredAtomicEntries copy];
  latestDownloadedAtomicInstance = [(MAAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  v38 = [latestDownloadedAtomicInstance copy];
  latestDownloadedAtomicInstanceFromPreSUStaging = [(MAAutoAssetSetStatus *)self latestDownloadedAtomicInstanceFromPreSUStaging];
  latestDowloadedAtomicInstanceEntries = [(MAAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
  v37 = [latestDowloadedAtomicInstanceEntries copy];
  downloadedCatalogCachedAssetSetID = [(MAAutoAssetSetStatus *)self downloadedCatalogCachedAssetSetID];
  downloadedCatalogDownloadedFromLive = [(MAAutoAssetSetStatus *)self downloadedCatalogDownloadedFromLive];
  downloadedCatalogLastTimeChecked = [(MAAutoAssetSetStatus *)self downloadedCatalogLastTimeChecked];
  downloadedCatalogPostedDate = [(MAAutoAssetSetStatus *)self downloadedCatalogPostedDate];
  currentNotifications = [(MAAutoAssetSetStatus *)self currentNotifications];
  v17 = [currentNotifications copy];
  currentNeedPolicy = [(MAAutoAssetSetStatus *)self currentNeedPolicy];
  v19 = [currentNeedPolicy copy];
  schedulerPolicy = [(MAAutoAssetSetStatus *)self schedulerPolicy];
  v18 = [schedulerPolicy copy];
  stagerPolicy = [(MAAutoAssetSetStatus *)self stagerPolicy];
  v16 = [stagerPolicy copy];
  haveReceivedLookupResponse = [(MAAutoAssetSetStatus *)self haveReceivedLookupResponse];
  vendingAtomicInstanceForConfiguredEntries = [(MAAutoAssetSetStatus *)self vendingAtomicInstanceForConfiguredEntries];
  downloadUserInitiated = [(MAAutoAssetSetStatus *)self downloadUserInitiated];
  downloadProgress = [(MAAutoAssetSetStatus *)self downloadProgress];
  v5 = [downloadProgress copy];
  downloadedNetworkBytes = [(MAAutoAssetSetStatus *)self downloadedNetworkBytes];
  downloadedFilesystemBytes = [(MAAutoAssetSetStatus *)self downloadedFilesystemBytes];
  currentLockUsage = [(MAAutoAssetSetStatus *)self currentLockUsage];
  selectorsForStaging = [(MAAutoAssetSetStatus *)self selectorsForStaging];
  availableForUseError = [(MAAutoAssetSetStatus *)self availableForUseError];
  newerVersionError = [(MAAutoAssetSetStatus *)self newerVersionError];
  BYTE2(v14) = downloadUserInitiated;
  BYTE1(v14) = vendingAtomicInstanceForConfiguredEntries;
  LOBYTE(v14) = haveReceivedLookupResponse;
  LOBYTE(v13) = latestDownloadedAtomicInstanceFromPreSUStaging;
  v29 = [MAAutoAssetSetStatus initStatusForClientDomain:v28 forAssetSetIdentifier:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" withConfiguredAssetEntries:clientDomainName withAtomicInstancesDownloaded:assetSetIdentifier withCatalogCachedAssetSetID:v46 withCatalogDownloadedFromLive:v45 withCatalogLastTimeChecked:catalogCachedAssetSetID withCatalogPostedDate:catalogDownloadedFromLive withNewerAtomicInstanceDiscovered:catalogLastTimeChecked withNewerDiscoveredAtomicEntries:catalogPostedDate withLatestDownloadedAtomicInstance:newerAtomicInstanceDiscovered withLatestDownloadedAtomicInstanceFromPreSUStaging:v39 withLatestDowloadedAtomicInstanceEntries:v38 withDownloadedCatalogCachedAssetSetID:v13 withDownloadedCatalogDownloadedFromLive:v37 withDownloadedCatalogLastTimeChecked:downloadedCatalogCachedAssetSetID withDownloadedCatalogPostedDate:downloadedCatalogDownloadedFromLive withCurrentNotifications:downloadedCatalogLastTimeChecked withCurrentNeedPolicy:downloadedCatalogPostedDate withSchedulerPolicy:v17 withStagerPolicy:v19 havingReceivedLookupResponse:v18 vendingAtomicInstanceForConfiguredEntries:v16 withDownloadUserInitiated:v14 withDownloadProgress:v5 withDownloadedNetworkBytes:downloadedNetworkBytes withDownloadedFilesystemBytes:downloadedFilesystemBytes withCurrentLockUsage:currentLockUsage withSelectorsForStaging:selectorsForStaging withAvailableForUseError:availableForUseError withNewerVersionError:newerVersionError];

  return v29;
}

+ (id)newCurrentLockUsageSummary:(id)summary
{
  v36 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  currentLockUsage = [summaryCopy currentLockUsage];

  if (currentLockUsage)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"{"];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [summaryCopy currentLockUsage];
    v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v24)
    {
      v22 = *v31;
      v23 = summaryCopy;
      v6 = 1;
      do
      {
        v7 = 0;
        do
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v25 = v7;
          v8 = *(*(&v30 + 1) + 8 * v7);
          currentLockUsage2 = [summaryCopy currentLockUsage];
          v10 = [currentLockUsage2 safeObjectForKey:v8 ofClass:objc_opt_class()];

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v27;
            v15 = v6;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v27 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v17 = *(*(&v26 + 1) + 8 * i);
                v18 = [v11 safeIntegerForKey:v17];
                if ((v15 & 1) == 0)
                {
                  [(__CFString *)v5 appendString:@", "];
                }

                [(__CFString *)v5 appendFormat:@"[lockReason:%@ atomicInstance:%@ lockCount:%ld]", v8, v17, v18];
                v15 = 0;
              }

              v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
              v15 = 0;
              v6 = 0;
            }

            while (v13);
          }

          v7 = v25 + 1;
          summaryCopy = v23;
        }

        while (v25 + 1 != v24);
        v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v24);
    }

    [(__CFString *)v5 appendString:@"}"];
  }

  else
  {
    v5 = &stru_1F0C1B388;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (id)newCurrentLockUsageDetailed:(id)detailed
{
  detailedCopy = detailed;
  currentLockUsage = [detailedCopy currentLockUsage];

  if (currentLockUsage)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    currentLockUsage2 = [detailedCopy currentLockUsage];
    v7 = [currentLockUsage2 description];
    v8 = [v5 initWithFormat:@"%@", v7];
  }

  else
  {
    v8 = &stru_1F0C1B388;
  }

  return v8;
}

+ (id)newSelectorsForStagingSummary:(id)summary
{
  v22 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  selectorsForStaging = [summaryCopy selectorsForStaging];

  if (selectorsForStaging)
  {
    selectorsForStaging = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"{"];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [summaryCopy selectorsForStaging];
    v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      v8 = 1;
      do
      {
        v9 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v17 + 1) + 8 * v9);
          selectorsForStaging2 = [summaryCopy selectorsForStaging];
          v12 = [selectorsForStaging2 safeObjectForKey:v10 ofClass:objc_opt_class()];

          v13 = [v12 count];
          if ((v8 & 1) == 0)
          {
            [selectorsForStaging appendString:{@", "}];
          }

          [selectorsForStaging appendFormat:@"%@:%ld", v10, v13];

          v8 = 0;
          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
        v8 = 0;
      }

      while (v6);
    }

    [selectorsForStaging appendString:@"}"];
  }

  v14 = *MEMORY[0x1E69E9840];
  return selectorsForStaging;
}

+ (id)shortTermLockFilename:(id)filename forAssetSetIdentifier:(id)identifier forSetAtomicInstance:(id)instance
{
  instanceCopy = instance;
  identifierCopy = identifier;
  v9 = [MAAutoAssetSetStatus _shortTermLockFilenameNormalizedComponent:filename];
  v10 = [MAAutoAssetSetStatus _shortTermLockFilenameNormalizedComponent:identifierCopy];

  if (instanceCopy)
  {
    v11 = instanceCopy;
  }

  else
  {
    v11 = @"latest";
  }

  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/locks");
  v14 = [v12 initWithFormat:@"%@/%@/%@/%@/%@_%@.%@", v13, v9, v10, @"shared_locks", @"atomic_instance", v11, @"locker"];

  return v14;
}

+ (id)_shortTermLockFilenameNormalizedComponent:(id)component
{
  if (component)
  {
    v3 = MEMORY[0x1E696AB08];
    componentCopy = component;
    v5 = [v3 characterSetWithCharactersInString:{@":, /\\?~%*|<>[](){}"}];;
    v6 = [componentCopy componentsSeparatedByCharactersInSet:v5];

    v7 = [v6 componentsJoinedByString:@"_"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end