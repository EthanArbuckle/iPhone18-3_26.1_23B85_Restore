@interface MAAutoAssetSetStatus
+ (id)_shortTermLockFilenameNormalizedComponent:(id)a3;
+ (id)newCurrentLockUsageDetailed:(id)a3;
+ (id)newCurrentLockUsageSummary:(id)a3;
+ (id)newSelectorsForStagingSummary:(id)a3;
+ (id)shortTermLockFilename:(id)a3 forAssetSetIdentifier:(id)a4 forSetAtomicInstance:(id)a5;
- (MAAutoAssetSetStatus)initWithCoder:(id)a3;
- (id)copy;
- (id)description;
- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withAtomicInstancesDownloaded:(id)a5 withNewerAtomicInstanceDiscovered:(id)a6 withNewerDiscoveredAtomicEntries:(id)a7 withLatestDownloadedAtomicInstance:(id)a8 withLatestDowloadedAtomicInstanceEntries:(id)a9 withAllDownloadedAtomicInstanceEntries:(id)a10 withCurrentNotifications:(id)a11 withCurrentNeedPolicy:(id)a12 withSchedulerPolicy:(id)a13 withStagerPolicy:(id)a14 withDownloadUserInitiated:(BOOL)a15 withDownloadProgress:(id)a16 withDownloadedNetworkBytes:(int64_t)a17 withDownloadedFilesystemBytes:(int64_t)a18 withCurrentLockUsage:(id)a19 withSelectorsForStaging:(id)a20 withAvailableForUseError:(id)a21 withNewerVersionError:(id)a22;
- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDowloadedAtomicInstanceEntries:(id)a14 withCurrentNotifications:(id)a15 withCurrentNeedPolicy:(id)a16 withSchedulerPolicy:(id)a17 withStagerPolicy:(id)a18 withDownloadUserInitiated:(BOOL)a19 withDownloadProgress:(id)a20 withDownloadedNetworkBytes:(int64_t)a21 withDownloadedFilesystemBytes:(int64_t)a22 withCurrentLockUsage:(id)a23 withSelectorsForStaging:(id)a24 withAvailableForUseError:(id)a25 withNewerVersionError:(id)a26;
- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDowloadedAtomicInstanceEntries:(id)a14 withDownloadedCatalogCachedAssetSetID:(id)a15 withDownloadedCatalogDownloadedFromLive:(id)a16 withDownloadedCatalogLastTimeChecked:(id)a17 withDownloadedCatalogPostedDate:(id)a18 withCurrentNotifications:(id)a19 withCurrentNeedPolicy:(id)a20 withSchedulerPolicy:(id)a21 withStagerPolicy:(id)a22 havingReceivedLookupResponse:(BOOL)a23 vendingAtomicInstanceForConfiguredEntries:(BOOL)a24 withDownloadUserInitiated:(BOOL)a25 withDownloadProgress:(id)a26 withDownloadedNetworkBytes:(int64_t)a27 withDownloadedFilesystemBytes:(int64_t)a28 withCurrentLockUsage:(id)a29 withSelectorsForStaging:(id)a30 withAvailableForUseError:(id)a31 withNewerVersionError:(id)a32;
- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDowloadedAtomicInstanceEntries:(id)a14 withPreviouslyVendedLockedAtomicInstance:(id)a15 withDownloadedCatalogCachedAssetSetID:(id)a16 withDownloadedCatalogDownloadedFromLive:(id)a17 withDownloadedCatalogLastTimeChecked:(id)a18 withDownloadedCatalogPostedDate:(id)a19 withCurrentNotifications:(id)a20 withCurrentNeedPolicy:(id)a21 withSchedulerPolicy:(id)a22 withStagerPolicy:(id)a23 havingReceivedLookupResponse:(BOOL)a24 vendingAtomicInstanceForConfiguredEntries:(BOOL)a25 withDownloadUserInitiated:(BOOL)a26 withDownloadProgress:(id)a27 withDownloadedNetworkBytes:(int64_t)a28 withDownloadedFilesystemBytes:(int64_t)a29 withCurrentLockUsage:(id)a30 withSelectorsForStaging:(id)a31 withAvailableForUseError:(id)a32 withNewerVersionError:(id)a33;
- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDownloadedAtomicInstanceFromPreSUStaging:(BOOL)a14 withLatestDowloadedAtomicInstanceEntries:(id)a15 withDownloadedCatalogCachedAssetSetID:(id)a16 withDownloadedCatalogDownloadedFromLive:(id)a17 withDownloadedCatalogLastTimeChecked:(id)a18 withDownloadedCatalogPostedDate:(id)a19 withCurrentNotifications:(id)a20 withCurrentNeedPolicy:(id)a21 withSchedulerPolicy:(id)a22 withStagerPolicy:(id)a23 havingReceivedLookupResponse:(BOOL)a24 vendingAtomicInstanceForConfiguredEntries:(BOOL)a25 withDownloadUserInitiated:(BOOL)a26 withDownloadProgress:(id)a27 withDownloadedNetworkBytes:(int64_t)a28 withDownloadedFilesystemBytes:(int64_t)a29 withCurrentLockUsage:(id)a30 withSelectorsForStaging:(id)a31 withAvailableForUseError:(id)a32 withNewerVersionError:(id)a33;
- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDownloadedAtomicInstanceFromPreSUStaging:(BOOL)a14 withLatestDowloadedAtomicInstanceEntries:(id)a15 withPreviouslyVendedLockedAtomicInstance:(id)a16 withDownloadedCatalogCachedAssetSetID:(id)a17 withDownloadedCatalogDownloadedFromLive:(id)a18 withDownloadedCatalogLastTimeChecked:(id)a19 withDownloadedCatalogPostedDate:(id)a20 withCurrentNotifications:(id)a21 withCurrentNeedPolicy:(id)a22 withSchedulerPolicy:(id)a23 withStagerPolicy:(id)a24 havingReceivedLookupResponse:(BOOL)a25 vendingAtomicInstanceForConfiguredEntries:(BOOL)a26 withDownloadUserInitiated:(BOOL)a27 withDownloadProgress:(id)a28 withDownloadedNetworkBytes:(int64_t)a29 withDownloadedFilesystemBytes:(int64_t)a30 withCurrentLockUsage:(id)a31 withSelectorsForStaging:(id)a32 withAvailableForUseError:(id)a33 withNewerVersionError:(id)a34;
- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withNewerAtomicInstanceDiscovered:(id)a7 withNewerDiscoveredAtomicEntries:(id)a8 withLatestDownloadedAtomicInstance:(id)a9 withLatestDowloadedAtomicInstanceEntries:(id)a10 withAllDownloadedAtomicInstanceEntries:(id)a11 withCurrentNotifications:(id)a12 withCurrentNeedPolicy:(id)a13 withSchedulerPolicy:(id)a14 withStagerPolicy:(id)a15 withDownloadUserInitiated:(BOOL)a16 withDownloadProgress:(id)a17 withDownloadedNetworkBytes:(int64_t)a18 withDownloadedFilesystemBytes:(int64_t)a19 withCurrentLockUsage:(id)a20 withSelectorsForStaging:(id)a21 withAvailableForUseError:(id)a22 withNewerVersionError:(id)a23;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetSetStatus

- (id)summary
{
  v31 = MEMORY[0x1E696AEC0];
  v3 = [(MAAutoAssetSetStatus *)self clientDomainName];
  v4 = [(MAAutoAssetSetStatus *)self assetSetIdentifier];
  v36 = [(MAAutoAssetSetStatus *)self configuredAssetEntries];
  v30 = [v36 count];
  v35 = [(MAAutoAssetSetStatus *)self atomicInstancesDownloaded];
  v29 = [v35 count];
  v34 = [(MAAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  if (v34)
  {
    v5 = [(MAAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  }

  else
  {
    v5 = @"N";
  }

  v32 = [(MAAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
  v27 = [v32 count];
  v6 = [(MAAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  v37 = v4;
  v38 = v3;
  v33 = v5;
  if (v6)
  {
    v39 = [(MAAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  }

  else
  {
    v39 = @"N";
  }

  v28 = [(MAAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
  v7 = [v28 count];
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

  v11 = [(MAAutoAssetSetStatus *)self currentLockUsage];
  if (v11)
  {
    v12 = [MAAutoAssetSetStatus newCurrentLockUsageSummary:self];
  }

  else
  {
    v12 = @"N";
  }

  v13 = [(MAAutoAssetSetStatus *)self availableForUseError];
  if (v13)
  {
    v14 = [(MAAutoAssetSetStatus *)self availableForUseError];
    v15 = [v14 checkedSummary];
    v23 = v9;
    v25 = v10;
    v21 = v8;
    v16 = v33;
    v17 = v37;
    v18 = v38;
    v19 = [v31 stringWithFormat:@"[domain:%@|setID:%@|config:%ld|AIs:%ld(newer:%@[%ld])(latest:%@[%ld])|lookupRsp:%@(forConfig:%@)|user:%@|locks:%@|availErr:%@]", v38, v37, v30, v29, v33, v27, v39, v7, v21, v23, v25, v12, v15];
  }

  else
  {
    v24 = v9;
    v26 = v10;
    v22 = v8;
    v16 = v33;
    v17 = v37;
    v18 = v38;
    v19 = [v31 stringWithFormat:@"[domain:%@|setID:%@|config:%ld|AIs:%ld(newer:%@[%ld])(latest:%@[%ld])|lookupRsp:%@(forConfig:%@)|user:%@|locks:%@|availErr:%@]", v38, v37, v30, v29, v33, v27, v39, v7, v22, v24, v26, v12, @"N"];
  }

  if (v11)
  {
  }

  if (v6)
  {
  }

  if (v34)
  {
  }

  return v19;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateFormat:@"yyyy-MM-dd_HH:mm:ss"];
  v54 = MEMORY[0x1E696AEC0];
  v4 = [(MAAutoAssetSetStatus *)self clientDomainName];
  v93 = [(MAAutoAssetSetStatus *)self assetSetIdentifier];
  v61 = [(MAAutoAssetSetStatus *)self configuredAssetEntries];
  if (v61)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v46 = [(MAAutoAssetSetStatus *)self configuredAssetEntries];
    v82 = [v5 initWithFormat:@"%ld", objc_msgSend(v46, "count")];
  }

  else
  {
    v82 = @"N";
  }

  v60 = [(MAAutoAssetSetStatus *)self atomicInstancesDownloaded];
  if (v60)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v45 = [(MAAutoAssetSetStatus *)self atomicInstancesDownloaded];
    v81 = [v6 initWithFormat:@"%ld", objc_msgSend(v45, "count")];
  }

  else
  {
    v81 = @"N";
  }

  v59 = [(MAAutoAssetSetStatus *)self catalogCachedAssetSetID];
  if (v59)
  {
    v80 = [(MAAutoAssetSetStatus *)self catalogCachedAssetSetID];
  }

  else
  {
    v80 = @"N";
  }

  v7 = [(MAAutoAssetSetStatus *)self catalogDownloadedFromLive];
  if (v7)
  {
    v79 = [(MAAutoAssetSetStatus *)self catalogDownloadedFromLive];
  }

  else
  {
    v79 = @"N";
  }

  v8 = [(MAAutoAssetSetStatus *)self catalogLastTimeChecked];
  if (v8)
  {
    v44 = [(MAAutoAssetSetStatus *)self catalogLastTimeChecked];
    v78 = [v3 stringFromDate:?];
  }

  else
  {
    v78 = @"N";
  }

  v9 = [(MAAutoAssetSetStatus *)self catalogPostedDate];
  if (v9)
  {
    v43 = [(MAAutoAssetSetStatus *)self catalogPostedDate];
    v77 = [v3 stringFromDate:?];
  }

  else
  {
    v77 = @"N";
  }

  v10 = [(MAAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  if (v10)
  {
    v76 = [(MAAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  }

  else
  {
    v76 = @"N";
  }

  v92 = [(MAAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
  if (v92)
  {
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v42 = [(MAAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
    v75 = [v11 initWithFormat:@"%ld", objc_msgSend(v42, "count")];
  }

  else
  {
    v75 = @"N";
  }

  v91 = [(MAAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  if (v91)
  {
    v74 = [(MAAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  }

  else
  {
    v74 = @"N";
  }

  [(MAAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
  v90 = v12 = @"N";
  if (v90)
  {
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v41 = [(MAAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
    v72 = [v13 initWithFormat:@"%ld", objc_msgSend(v41, "count")];
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
  v89 = [(MAAutoAssetSetStatus *)self downloadedCatalogCachedAssetSetID];
  if (v89)
  {
    v12 = [(MAAutoAssetSetStatus *)self downloadedCatalogCachedAssetSetID];
  }

  v88 = [(MAAutoAssetSetStatus *)self downloadedCatalogDownloadedFromLive];
  if (v88)
  {
    v71 = [(MAAutoAssetSetStatus *)self downloadedCatalogDownloadedFromLive];
  }

  else
  {
    v71 = @"N";
  }

  v87 = [(MAAutoAssetSetStatus *)self downloadedCatalogLastTimeChecked];
  if (v87)
  {
    v40 = [(MAAutoAssetSetStatus *)self downloadedCatalogLastTimeChecked];
    v70 = [v3 stringFromDate:?];
  }

  else
  {
    v70 = @"N";
  }

  v86 = [(MAAutoAssetSetStatus *)self downloadedCatalogPostedDate];
  if (v86)
  {
    v39 = [(MAAutoAssetSetStatus *)self downloadedCatalogPostedDate];
    v69 = [v3 stringFromDate:?];
  }

  else
  {
    v69 = @"N";
  }

  v53 = [(MAAutoAssetSetStatus *)self currentNotifications];
  v85 = [v53 summary];
  v84 = [(MAAutoAssetSetStatus *)self currentNeedPolicy];
  if (v84)
  {
    v38 = [(MAAutoAssetSetStatus *)self currentNeedPolicy];
    v68 = [v38 summary];
  }

  else
  {
    v68 = @"N";
  }

  v83 = [(MAAutoAssetSetStatus *)self schedulerPolicy];
  v58 = v7;
  if (v83)
  {
    v37 = [(MAAutoAssetSetStatus *)self schedulerPolicy];
    v67 = [v37 summary];
  }

  else
  {
    v67 = @"N";
  }

  [(MAAutoAssetSetStatus *)self stagerPolicy];
  v51 = v15 = @"N";
  if (v51)
  {
    v36 = [(MAAutoAssetSetStatus *)self stagerPolicy];
    v66 = [v36 summary];
  }

  else
  {
    v66 = @"N";
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
  v50 = [(MAAutoAssetSetStatus *)self downloadProgress];
  v62 = v4;
  v55 = v10;
  v73 = v12;
  if (v50)
  {
    v35 = [(MAAutoAssetSetStatus *)self downloadProgress];
    v15 = [v35 description];
  }

  v19 = [(MAAutoAssetSetStatus *)self downloadedNetworkBytes];
  v20 = [(MAAutoAssetSetStatus *)self downloadedFilesystemBytes];
  v21 = [(MAAutoAssetSetStatus *)self currentLockUsage];
  v56 = v9;
  if (v21)
  {
    v65 = [MAAutoAssetSetStatus newCurrentLockUsageSummary:self];
  }

  else
  {
    v65 = @"N";
  }

  v22 = [(MAAutoAssetSetStatus *)self selectorsForStaging];
  v63 = v3;
  if (v22)
  {
    v64 = [MAAutoAssetSetStatus newSelectorsForStagingSummary:self];
  }

  else
  {
    v64 = @"N";
  }

  v57 = v8;
  v23 = [(MAAutoAssetSetStatus *)self availableForUseError];
  if (v23)
  {
    v34 = [(MAAutoAssetSetStatus *)self availableForUseError];
    v24 = [v34 checkedSummary];
  }

  else
  {
    v24 = @"N";
  }

  v25 = [(MAAutoAssetSetStatus *)self newerVersionError];
  if (v25)
  {
    v26 = [(MAAutoAssetSetStatus *)self newerVersionError];
    v27 = [v26 checkedSummary];
    v32 = v20;
    v28 = v62;
    v29 = [v54 stringWithFormat:@"                                clientDomainName: %@\n                              assetSetIdentifier: %@\n                          configuredAssetEntries: %@\n                       atomicInstancesDownloaded: %@\n                         catalogCachedAssetSetID: %@\n                       catalogDownloadedFromLive: %@\n                          catalogLastTimeChecked: %@\n                               catalogPostedDate: %@\n                   newerAtomicInstanceDiscovered: %@\n                    newerDiscoveredAtomicEntries: %@\n                        latestDownloadedInstance: %@\n                  latestDowloadedInstanceEntries: %@\n  latestDownloadedAtomicInstanceFromPreSUStaging: %@\n               downloadedCatalogCachedAssetSetID: %@\n             downloadedCatalogDownloadedFromLive: %@\n                downloadedCatalogLastTimeChecked: %@\n                     downloadedCatalogPostedDate: %@\n                            currentNotifications: %@\n                               currentNeedPolicy: %@\n                                 schedulerPolicy: %@\n                                    stagerPolicy: %@\n                      haveReceivedLookupResponse: %@\n           vendingAtomicInstanceForConfigEntries: %@\n                           downloadUserInitiated: %@\n                                downloadProgress: %@\n                          downloadedNetworkBytes: %ld\n                       downloadedFilesystemBytes: %ld\n                                currentLockUsage: %@\n                             selectorsForStaging: %@\n                            availableForUseError: %@\n                               newerVersionError: %@\n", v62, v93, v82, v81, v80, v79, v78, v77, v76, v75, v74, v72, v52, v73, v71, v70, v69, v85, v68, v67, v66, v49, v48, v47, v15, v19, v32, v65, v64, v24, v27];
  }

  else
  {
    v33 = v20;
    v28 = v62;
    v29 = [v54 stringWithFormat:@"                                clientDomainName: %@\n                              assetSetIdentifier: %@\n                          configuredAssetEntries: %@\n                       atomicInstancesDownloaded: %@\n                         catalogCachedAssetSetID: %@\n                       catalogDownloadedFromLive: %@\n                          catalogLastTimeChecked: %@\n                               catalogPostedDate: %@\n                   newerAtomicInstanceDiscovered: %@\n                    newerDiscoveredAtomicEntries: %@\n                        latestDownloadedInstance: %@\n                  latestDowloadedInstanceEntries: %@\n  latestDownloadedAtomicInstanceFromPreSUStaging: %@\n               downloadedCatalogCachedAssetSetID: %@\n             downloadedCatalogDownloadedFromLive: %@\n                downloadedCatalogLastTimeChecked: %@\n                     downloadedCatalogPostedDate: %@\n                            currentNotifications: %@\n                               currentNeedPolicy: %@\n                                 schedulerPolicy: %@\n                                    stagerPolicy: %@\n                      haveReceivedLookupResponse: %@\n           vendingAtomicInstanceForConfigEntries: %@\n                           downloadUserInitiated: %@\n                                downloadProgress: %@\n                          downloadedNetworkBytes: %ld\n                       downloadedFilesystemBytes: %ld\n                                currentLockUsage: %@\n                             selectorsForStaging: %@\n                            availableForUseError: %@\n                               newerVersionError: %@\n", v62, v93, v82, v81, v80, v79, v78, v77, v76, v75, v74, v72, v52, v73, v71, v70, v69, v85, v68, v67, v66, v49, v48, v47, v15, v19, v33, v65, v64, v24, @"N"];
  }

  if (v23)
  {
  }

  if (v22)
  {
  }

  if (v21)
  {
  }

  if (v50)
  {
  }

  if (v51)
  {
  }

  if (v83)
  {
  }

  if (v84)
  {
  }

  if (v86)
  {
  }

  if (v87)
  {
  }

  if (v88)
  {
  }

  if (v89)
  {
  }

  if (v90)
  {
  }

  if (v91)
  {
  }

  if (v92)
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

  if (v59)
  {
  }

  if (v60)
  {
  }

  if (v61)
  {
  }

  v30 = v29;
  return v29;
}

- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withAtomicInstancesDownloaded:(id)a5 withNewerAtomicInstanceDiscovered:(id)a6 withNewerDiscoveredAtomicEntries:(id)a7 withLatestDownloadedAtomicInstance:(id)a8 withLatestDowloadedAtomicInstanceEntries:(id)a9 withAllDownloadedAtomicInstanceEntries:(id)a10 withCurrentNotifications:(id)a11 withCurrentNeedPolicy:(id)a12 withSchedulerPolicy:(id)a13 withStagerPolicy:(id)a14 withDownloadUserInitiated:(BOOL)a15 withDownloadProgress:(id)a16 withDownloadedNetworkBytes:(int64_t)a17 withDownloadedFilesystemBytes:(int64_t)a18 withCurrentLockUsage:(id)a19 withSelectorsForStaging:(id)a20 withAvailableForUseError:(id)a21 withNewerVersionError:(id)a22
{
  BYTE2(v23) = a15;
  LOWORD(v23) = 0;
  return [MAAutoAssetSetStatus initStatusForClientDomain:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDowloadedAtomicInstanceEntries:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" forAssetSetIdentifier:a3 withConfiguredAssetEntries:a4 withAtomicInstancesDownloaded:0 withCatalogCachedAssetSetID:a5 withCatalogDownloadedFromLive:0 withCatalogLastTimeChecked:0 withCatalogPostedDate:0 withNewerAtomicInstanceDiscovered:0 withNewerDiscoveredAtomicEntries:a6 withLatestDownloadedAtomicInstance:a7 withLatestDowloadedAtomicInstanceEntries:a8 withDownloadedCatalogCachedAssetSetID:a9 withDownloadedCatalogDownloadedFromLive:0 withDownloadedCatalogLastTimeChecked:0 withDownloadedCatalogPostedDate:0 withCurrentNotifications:0 withCurrentNeedPolicy:a11 withSchedulerPolicy:a12 withStagerPolicy:a13 havingReceivedLookupResponse:a14 vendingAtomicInstanceForConfiguredEntries:v23 withDownloadUserInitiated:a16 withDownloadProgress:a17 withDownloadedNetworkBytes:a18 withDownloadedFilesystemBytes:a19 withCurrentLockUsage:a20 withSelectorsForStaging:a21 withAvailableForUseError:a22 withNewerVersionError:?];
}

- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withNewerAtomicInstanceDiscovered:(id)a7 withNewerDiscoveredAtomicEntries:(id)a8 withLatestDownloadedAtomicInstance:(id)a9 withLatestDowloadedAtomicInstanceEntries:(id)a10 withAllDownloadedAtomicInstanceEntries:(id)a11 withCurrentNotifications:(id)a12 withCurrentNeedPolicy:(id)a13 withSchedulerPolicy:(id)a14 withStagerPolicy:(id)a15 withDownloadUserInitiated:(BOOL)a16 withDownloadProgress:(id)a17 withDownloadedNetworkBytes:(int64_t)a18 withDownloadedFilesystemBytes:(int64_t)a19 withCurrentLockUsage:(id)a20 withSelectorsForStaging:(id)a21 withAvailableForUseError:(id)a22 withNewerVersionError:(id)a23
{
  BYTE2(v24) = a16;
  LOWORD(v24) = 0;
  return [MAAutoAssetSetStatus initStatusForClientDomain:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDowloadedAtomicInstanceEntries:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" forAssetSetIdentifier:a3 withConfiguredAssetEntries:a4 withAtomicInstancesDownloaded:0 withCatalogCachedAssetSetID:a6 withCatalogDownloadedFromLive:0 withCatalogLastTimeChecked:0 withCatalogPostedDate:0 withNewerAtomicInstanceDiscovered:0 withNewerDiscoveredAtomicEntries:a7 withLatestDownloadedAtomicInstance:a8 withLatestDowloadedAtomicInstanceEntries:a9 withDownloadedCatalogCachedAssetSetID:a10 withDownloadedCatalogDownloadedFromLive:0 withDownloadedCatalogLastTimeChecked:0 withDownloadedCatalogPostedDate:0 withCurrentNotifications:0 withCurrentNeedPolicy:a12 withSchedulerPolicy:a13 withStagerPolicy:a14 havingReceivedLookupResponse:a15 vendingAtomicInstanceForConfiguredEntries:v24 withDownloadUserInitiated:a17 withDownloadProgress:a18 withDownloadedNetworkBytes:a19 withDownloadedFilesystemBytes:a20 withCurrentLockUsage:a21 withSelectorsForStaging:a22 withAvailableForUseError:a23 withNewerVersionError:?];
}

- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDowloadedAtomicInstanceEntries:(id)a14 withCurrentNotifications:(id)a15 withCurrentNeedPolicy:(id)a16 withSchedulerPolicy:(id)a17 withStagerPolicy:(id)a18 withDownloadUserInitiated:(BOOL)a19 withDownloadProgress:(id)a20 withDownloadedNetworkBytes:(int64_t)a21 withDownloadedFilesystemBytes:(int64_t)a22 withCurrentLockUsage:(id)a23 withSelectorsForStaging:(id)a24 withAvailableForUseError:(id)a25 withNewerVersionError:(id)a26
{
  BYTE2(v27) = a19;
  LOWORD(v27) = 0;
  return [MAAutoAssetSetStatus initStatusForClientDomain:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDowloadedAtomicInstanceEntries:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" forAssetSetIdentifier:a3 withConfiguredAssetEntries:a4 withAtomicInstancesDownloaded:a5 withCatalogCachedAssetSetID:a6 withCatalogDownloadedFromLive:a7 withCatalogLastTimeChecked:a8 withCatalogPostedDate:a9 withNewerAtomicInstanceDiscovered:a10 withNewerDiscoveredAtomicEntries:a11 withLatestDownloadedAtomicInstance:a12 withLatestDowloadedAtomicInstanceEntries:a13 withDownloadedCatalogCachedAssetSetID:a14 withDownloadedCatalogDownloadedFromLive:0 withDownloadedCatalogLastTimeChecked:0 withDownloadedCatalogPostedDate:0 withCurrentNotifications:0 withCurrentNeedPolicy:a15 withSchedulerPolicy:a16 withStagerPolicy:a17 havingReceivedLookupResponse:a18 vendingAtomicInstanceForConfiguredEntries:v27 withDownloadUserInitiated:a20 withDownloadProgress:a21 withDownloadedNetworkBytes:a22 withDownloadedFilesystemBytes:a23 withCurrentLockUsage:a24 withSelectorsForStaging:a25 withAvailableForUseError:a26 withNewerVersionError:?];
}

- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDowloadedAtomicInstanceEntries:(id)a14 withDownloadedCatalogCachedAssetSetID:(id)a15 withDownloadedCatalogDownloadedFromLive:(id)a16 withDownloadedCatalogLastTimeChecked:(id)a17 withDownloadedCatalogPostedDate:(id)a18 withCurrentNotifications:(id)a19 withCurrentNeedPolicy:(id)a20 withSchedulerPolicy:(id)a21 withStagerPolicy:(id)a22 havingReceivedLookupResponse:(BOOL)a23 vendingAtomicInstanceForConfiguredEntries:(BOOL)a24 withDownloadUserInitiated:(BOOL)a25 withDownloadProgress:(id)a26 withDownloadedNetworkBytes:(int64_t)a27 withDownloadedFilesystemBytes:(int64_t)a28 withCurrentLockUsage:(id)a29 withSelectorsForStaging:(id)a30 withAvailableForUseError:(id)a31 withNewerVersionError:(id)a32
{
  v68 = a3;
  v46 = a4;
  v67 = a4;
  v66 = a5;
  v65 = a6;
  v47 = a7;
  v64 = a7;
  v63 = a8;
  v62 = a9;
  v61 = a10;
  v60 = a11;
  v59 = a12;
  v58 = a13;
  v57 = a14;
  v56 = a15;
  v55 = a16;
  v54 = a17;
  v53 = a18;
  v37 = a19;
  v38 = a20;
  v39 = a21;
  v40 = a22;
  v52 = a26;
  v51 = a29;
  v50 = a30;
  v49 = a31;
  v41 = a32;
  v69.receiver = self;
  v69.super_class = MAAutoAssetSetStatus;
  v42 = [(MAAutoAssetSetStatus *)&v69 init];
  v43 = v42;
  if (v42)
  {
    objc_storeStrong(&v42->_clientDomainName, a3);
    objc_storeStrong(&v43->_assetSetIdentifier, v46);
    objc_storeStrong(&v43->_configuredAssetEntries, a5);
    objc_storeStrong(&v43->_atomicInstancesDownloaded, a6);
    objc_storeStrong(&v43->_catalogCachedAssetSetID, v47);
    objc_storeStrong(&v43->_catalogDownloadedFromLive, a8);
    objc_storeStrong(&v43->_catalogLastTimeChecked, a9);
    objc_storeStrong(&v43->_catalogPostedDate, a10);
    objc_storeStrong(&v43->_newerAtomicInstanceDiscovered, a11);
    objc_storeStrong(&v43->_newerDiscoveredAtomicEntries, a12);
    objc_storeStrong(&v43->_latestDownloadedAtomicInstance, a13);
    objc_storeStrong(&v43->_latestDowloadedAtomicInstanceEntries, a14);
    objc_storeStrong(&v43->_downloadedCatalogCachedAssetSetID, a15);
    objc_storeStrong(&v43->_downloadedCatalogDownloadedFromLive, a16);
    objc_storeStrong(&v43->_downloadedCatalogLastTimeChecked, a17);
    objc_storeStrong(&v43->_downloadedCatalogPostedDate, a18);
    objc_storeStrong(&v43->_currentNotifications, a19);
    objc_storeStrong(&v43->_currentNeedPolicy, a20);
    objc_storeStrong(&v43->_schedulerPolicy, a21);
    objc_storeStrong(&v43->_stagerPolicy, a22);
    v43->_haveReceivedLookupResponse = a23;
    v43->_vendingAtomicInstanceForConfiguredEntries = a24;
    v43->_downloadUserInitiated = a25;
    objc_storeStrong(&v43->_downloadProgress, a26);
    v43->_downloadedNetworkBytes = a27;
    v43->_downloadedFilesystemBytes = a28;
    objc_storeStrong(&v43->_currentLockUsage, a29);
    objc_storeStrong(&v43->_selectorsForStaging, a30);
    objc_storeStrong(&v43->_availableForUseError, a31);
    objc_storeStrong(&v43->_newerVersionError, a32);
  }

  return v43;
}

- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDowloadedAtomicInstanceEntries:(id)a14 withPreviouslyVendedLockedAtomicInstance:(id)a15 withDownloadedCatalogCachedAssetSetID:(id)a16 withDownloadedCatalogDownloadedFromLive:(id)a17 withDownloadedCatalogLastTimeChecked:(id)a18 withDownloadedCatalogPostedDate:(id)a19 withCurrentNotifications:(id)a20 withCurrentNeedPolicy:(id)a21 withSchedulerPolicy:(id)a22 withStagerPolicy:(id)a23 havingReceivedLookupResponse:(BOOL)a24 vendingAtomicInstanceForConfiguredEntries:(BOOL)a25 withDownloadUserInitiated:(BOOL)a26 withDownloadProgress:(id)a27 withDownloadedNetworkBytes:(int64_t)a28 withDownloadedFilesystemBytes:(int64_t)a29 withCurrentLockUsage:(id)a30 withSelectorsForStaging:(id)a31 withAvailableForUseError:(id)a32 withNewerVersionError:(id)a33
{
  v69 = a3;
  v47 = a4;
  v68 = a4;
  v67 = a5;
  v66 = a6;
  v48 = a7;
  v65 = a7;
  v64 = a8;
  v63 = a9;
  v62 = a10;
  v61 = a11;
  v60 = a12;
  v59 = a13;
  v58 = a14;
  v57 = a16;
  v56 = a17;
  v55 = a18;
  v54 = a19;
  v38 = a20;
  v39 = a21;
  v40 = a22;
  v41 = a23;
  v53 = a27;
  v52 = a30;
  v51 = a31;
  v50 = a32;
  v42 = a33;
  v70.receiver = self;
  v70.super_class = MAAutoAssetSetStatus;
  v43 = [(MAAutoAssetSetStatus *)&v70 init];
  v44 = v43;
  if (v43)
  {
    objc_storeStrong(&v43->_clientDomainName, a3);
    objc_storeStrong(&v44->_assetSetIdentifier, v47);
    objc_storeStrong(&v44->_configuredAssetEntries, a5);
    objc_storeStrong(&v44->_atomicInstancesDownloaded, a6);
    objc_storeStrong(&v44->_catalogCachedAssetSetID, v48);
    objc_storeStrong(&v44->_catalogDownloadedFromLive, a8);
    objc_storeStrong(&v44->_catalogLastTimeChecked, a9);
    objc_storeStrong(&v44->_catalogPostedDate, a10);
    objc_storeStrong(&v44->_newerAtomicInstanceDiscovered, a11);
    objc_storeStrong(&v44->_newerDiscoveredAtomicEntries, a12);
    objc_storeStrong(&v44->_latestDownloadedAtomicInstance, a13);
    objc_storeStrong(&v44->_latestDowloadedAtomicInstanceEntries, a14);
    objc_storeStrong(&v44->_downloadedCatalogCachedAssetSetID, a16);
    objc_storeStrong(&v44->_downloadedCatalogDownloadedFromLive, a17);
    objc_storeStrong(&v44->_downloadedCatalogLastTimeChecked, a18);
    objc_storeStrong(&v44->_downloadedCatalogPostedDate, a19);
    objc_storeStrong(&v44->_currentNotifications, a20);
    objc_storeStrong(&v44->_currentNeedPolicy, a21);
    objc_storeStrong(&v44->_schedulerPolicy, a22);
    objc_storeStrong(&v44->_stagerPolicy, a23);
    v44->_haveReceivedLookupResponse = a24;
    v44->_vendingAtomicInstanceForConfiguredEntries = a25;
    v44->_downloadUserInitiated = a26;
    objc_storeStrong(&v44->_downloadProgress, a27);
    v44->_downloadedNetworkBytes = a28;
    v44->_downloadedFilesystemBytes = a29;
    objc_storeStrong(&v44->_currentLockUsage, a30);
    objc_storeStrong(&v44->_selectorsForStaging, a31);
    objc_storeStrong(&v44->_availableForUseError, a32);
    objc_storeStrong(&v44->_newerVersionError, a33);
  }

  return v44;
}

- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDownloadedAtomicInstanceFromPreSUStaging:(BOOL)a14 withLatestDowloadedAtomicInstanceEntries:(id)a15 withPreviouslyVendedLockedAtomicInstance:(id)a16 withDownloadedCatalogCachedAssetSetID:(id)a17 withDownloadedCatalogDownloadedFromLive:(id)a18 withDownloadedCatalogLastTimeChecked:(id)a19 withDownloadedCatalogPostedDate:(id)a20 withCurrentNotifications:(id)a21 withCurrentNeedPolicy:(id)a22 withSchedulerPolicy:(id)a23 withStagerPolicy:(id)a24 havingReceivedLookupResponse:(BOOL)a25 vendingAtomicInstanceForConfiguredEntries:(BOOL)a26 withDownloadUserInitiated:(BOOL)a27 withDownloadProgress:(id)a28 withDownloadedNetworkBytes:(int64_t)a29 withDownloadedFilesystemBytes:(int64_t)a30 withCurrentLockUsage:(id)a31 withSelectorsForStaging:(id)a32 withAvailableForUseError:(id)a33 withNewerVersionError:(id)a34
{
  v69 = a3;
  v49 = a4;
  v67 = a4;
  v50 = a5;
  v66 = a5;
  v64 = a6;
  v62 = a7;
  v60 = a8;
  v58 = a9;
  v57 = a10;
  v70 = a11;
  v68 = a12;
  v65 = a13;
  v63 = a15;
  v61 = a17;
  v59 = a18;
  v56 = a19;
  v39 = a20;
  v40 = a21;
  v41 = a22;
  v42 = a23;
  v43 = a24;
  v44 = a28;
  v55 = a31;
  v54 = a32;
  v53 = a33;
  v52 = a34;
  v71.receiver = self;
  v71.super_class = MAAutoAssetSetStatus;
  v45 = [(MAAutoAssetSetStatus *)&v71 init];
  v46 = v45;
  if (v45)
  {
    objc_storeStrong(&v45->_clientDomainName, a3);
    objc_storeStrong(&v46->_assetSetIdentifier, v49);
    objc_storeStrong(&v46->_configuredAssetEntries, v50);
    objc_storeStrong(&v46->_atomicInstancesDownloaded, a6);
    objc_storeStrong(&v46->_catalogCachedAssetSetID, a7);
    objc_storeStrong(&v46->_catalogDownloadedFromLive, a8);
    objc_storeStrong(&v46->_catalogLastTimeChecked, a9);
    objc_storeStrong(&v46->_catalogPostedDate, a10);
    objc_storeStrong(&v46->_newerAtomicInstanceDiscovered, a11);
    objc_storeStrong(&v46->_newerDiscoveredAtomicEntries, a12);
    objc_storeStrong(&v46->_latestDownloadedAtomicInstance, a13);
    objc_storeStrong(&v46->_latestDowloadedAtomicInstanceEntries, a15);
    v46->_latestDownloadedAtomicInstanceFromPreSUStaging = a14;
    objc_storeStrong(&v46->_downloadedCatalogCachedAssetSetID, a17);
    objc_storeStrong(&v46->_downloadedCatalogDownloadedFromLive, a18);
    objc_storeStrong(&v46->_downloadedCatalogLastTimeChecked, a19);
    objc_storeStrong(&v46->_downloadedCatalogPostedDate, a20);
    objc_storeStrong(&v46->_currentNotifications, a21);
    objc_storeStrong(&v46->_currentNeedPolicy, a22);
    objc_storeStrong(&v46->_schedulerPolicy, a23);
    objc_storeStrong(&v46->_stagerPolicy, a24);
    v46->_haveReceivedLookupResponse = a25;
    v46->_vendingAtomicInstanceForConfiguredEntries = a26;
    v46->_downloadUserInitiated = a27;
    objc_storeStrong(&v46->_downloadProgress, a28);
    v46->_downloadedNetworkBytes = a29;
    v46->_downloadedFilesystemBytes = a30;
    objc_storeStrong(&v46->_currentLockUsage, a31);
    objc_storeStrong(&v46->_selectorsForStaging, a32);
    objc_storeStrong(&v46->_availableForUseError, a33);
    objc_storeStrong(&v46->_newerVersionError, a34);
  }

  return v46;
}

- (id)initStatusForClientDomain:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withAtomicInstancesDownloaded:(id)a6 withCatalogCachedAssetSetID:(id)a7 withCatalogDownloadedFromLive:(id)a8 withCatalogLastTimeChecked:(id)a9 withCatalogPostedDate:(id)a10 withNewerAtomicInstanceDiscovered:(id)a11 withNewerDiscoveredAtomicEntries:(id)a12 withLatestDownloadedAtomicInstance:(id)a13 withLatestDownloadedAtomicInstanceFromPreSUStaging:(BOOL)a14 withLatestDowloadedAtomicInstanceEntries:(id)a15 withDownloadedCatalogCachedAssetSetID:(id)a16 withDownloadedCatalogDownloadedFromLive:(id)a17 withDownloadedCatalogLastTimeChecked:(id)a18 withDownloadedCatalogPostedDate:(id)a19 withCurrentNotifications:(id)a20 withCurrentNeedPolicy:(id)a21 withSchedulerPolicy:(id)a22 withStagerPolicy:(id)a23 havingReceivedLookupResponse:(BOOL)a24 vendingAtomicInstanceForConfiguredEntries:(BOOL)a25 withDownloadUserInitiated:(BOOL)a26 withDownloadProgress:(id)a27 withDownloadedNetworkBytes:(int64_t)a28 withDownloadedFilesystemBytes:(int64_t)a29 withCurrentLockUsage:(id)a30 withSelectorsForStaging:(id)a31 withAvailableForUseError:(id)a32 withNewerVersionError:(id)a33
{
  v68 = a3;
  v48 = a4;
  v66 = a4;
  v49 = a5;
  v65 = a5;
  v63 = a6;
  v61 = a7;
  v59 = a8;
  v57 = a9;
  v56 = a10;
  v69 = a11;
  v67 = a12;
  v64 = a13;
  v62 = a15;
  v60 = a16;
  v58 = a17;
  v55 = a18;
  v38 = a19;
  v39 = a20;
  v40 = a21;
  v41 = a22;
  v42 = a23;
  v43 = a27;
  v54 = a30;
  v53 = a31;
  v52 = a32;
  v51 = a33;
  v70.receiver = self;
  v70.super_class = MAAutoAssetSetStatus;
  v44 = [(MAAutoAssetSetStatus *)&v70 init];
  v45 = v44;
  if (v44)
  {
    objc_storeStrong(&v44->_clientDomainName, a3);
    objc_storeStrong(&v45->_assetSetIdentifier, v48);
    objc_storeStrong(&v45->_configuredAssetEntries, v49);
    objc_storeStrong(&v45->_atomicInstancesDownloaded, a6);
    objc_storeStrong(&v45->_catalogCachedAssetSetID, a7);
    objc_storeStrong(&v45->_catalogDownloadedFromLive, a8);
    objc_storeStrong(&v45->_catalogLastTimeChecked, a9);
    objc_storeStrong(&v45->_catalogPostedDate, a10);
    objc_storeStrong(&v45->_newerAtomicInstanceDiscovered, a11);
    objc_storeStrong(&v45->_newerDiscoveredAtomicEntries, a12);
    objc_storeStrong(&v45->_latestDownloadedAtomicInstance, a13);
    objc_storeStrong(&v45->_latestDowloadedAtomicInstanceEntries, a15);
    v45->_latestDownloadedAtomicInstanceFromPreSUStaging = a14;
    objc_storeStrong(&v45->_downloadedCatalogCachedAssetSetID, a16);
    objc_storeStrong(&v45->_downloadedCatalogDownloadedFromLive, a17);
    objc_storeStrong(&v45->_downloadedCatalogLastTimeChecked, a18);
    objc_storeStrong(&v45->_downloadedCatalogPostedDate, a19);
    objc_storeStrong(&v45->_currentNotifications, a20);
    objc_storeStrong(&v45->_currentNeedPolicy, a21);
    objc_storeStrong(&v45->_schedulerPolicy, a22);
    objc_storeStrong(&v45->_stagerPolicy, a23);
    v45->_haveReceivedLookupResponse = a24;
    v45->_vendingAtomicInstanceForConfiguredEntries = a25;
    v45->_downloadUserInitiated = a26;
    objc_storeStrong(&v45->_downloadProgress, a27);
    v45->_downloadedNetworkBytes = a28;
    v45->_downloadedFilesystemBytes = a29;
    objc_storeStrong(&v45->_currentLockUsage, a30);
    objc_storeStrong(&v45->_selectorsForStaging, a31);
    objc_storeStrong(&v45->_availableForUseError, a32);
    objc_storeStrong(&v45->_newerVersionError, a33);
  }

  return v45;
}

- (MAAutoAssetSetStatus)initWithCoder:(id)a3
{
  v78[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
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

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v20;

    v22 = objc_alloc(MEMORY[0x1E695DFD8]);
    v74[0] = objc_opt_class();
    v74[1] = objc_opt_class();
    v74[2] = objc_opt_class();
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:3];
    v24 = [v22 initWithArray:v23];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"configuredAssetEntries"];
    configuredAssetEntries = v5->_configuredAssetEntries;
    v5->_configuredAssetEntries = v25;

    v27 = [v4 decodeObjectOfClasses:v8 forKey:@"atomicInstancesDownloaded"];
    atomicInstancesDownloaded = v5->_atomicInstancesDownloaded;
    v5->_atomicInstancesDownloaded = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"catalogCachedAssetSetID"];
    catalogCachedAssetSetID = v5->_catalogCachedAssetSetID;
    v5->_catalogCachedAssetSetID = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"catalogDownloadedFromLive"];
    catalogDownloadedFromLive = v5->_catalogDownloadedFromLive;
    v5->_catalogDownloadedFromLive = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"catalogLastTimeChecked"];
    catalogLastTimeChecked = v5->_catalogLastTimeChecked;
    v5->_catalogLastTimeChecked = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"catalogPostedDate"];
    catalogPostedDate = v5->_catalogPostedDate;
    v5->_catalogPostedDate = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"newerAtomicInstanceDiscovered"];
    newerAtomicInstanceDiscovered = v5->_newerAtomicInstanceDiscovered;
    v5->_newerAtomicInstanceDiscovered = v37;

    v39 = [v4 decodeObjectOfClasses:v11 forKey:@"newerDiscoveredAtomicEntries"];
    newerDiscoveredAtomicEntries = v5->_newerDiscoveredAtomicEntries;
    v5->_newerDiscoveredAtomicEntries = v39;

    v5->_latestDownloadedAtomicInstanceFromPreSUStaging = [v4 decodeBoolForKey:@"latestDownloadedAtomicInstanceFromPreSUStaging"];
    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latestDownloadedAtomicInstance"];
    latestDownloadedAtomicInstance = v5->_latestDownloadedAtomicInstance;
    v5->_latestDownloadedAtomicInstance = v41;

    v43 = [v4 decodeObjectOfClasses:v11 forKey:@"latestDowloadedAtomicInstanceEntries"];
    latestDowloadedAtomicInstanceEntries = v5->_latestDowloadedAtomicInstanceEntries;
    v5->_latestDowloadedAtomicInstanceEntries = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogCachedAssetSetID"];
    downloadedCatalogCachedAssetSetID = v5->_downloadedCatalogCachedAssetSetID;
    v5->_downloadedCatalogCachedAssetSetID = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogDownloadedFromLive"];
    downloadedCatalogDownloadedFromLive = v5->_downloadedCatalogDownloadedFromLive;
    v5->_downloadedCatalogDownloadedFromLive = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogLastTimeChecked"];
    downloadedCatalogLastTimeChecked = v5->_downloadedCatalogLastTimeChecked;
    v5->_downloadedCatalogLastTimeChecked = v49;

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadedCatalogPostedDate"];
    downloadedCatalogPostedDate = v5->_downloadedCatalogPostedDate;
    v5->_downloadedCatalogPostedDate = v51;

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentNotifications"];
    currentNotifications = v5->_currentNotifications;
    v5->_currentNotifications = v53;

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentNeedPolicy"];
    currentNeedPolicy = v5->_currentNeedPolicy;
    v5->_currentNeedPolicy = v55;

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"schedulerPolicy"];
    schedulerPolicy = v5->_schedulerPolicy;
    v5->_schedulerPolicy = v57;

    v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagerPolicy"];
    stagerPolicy = v5->_stagerPolicy;
    v5->_stagerPolicy = v59;

    v5->_haveReceivedLookupResponse = [v4 decodeBoolForKey:@"haveReceivedLookupResponse"];
    v5->_vendingAtomicInstanceForConfiguredEntries = [v4 decodeBoolForKey:@"vendingAtomicInstanceForConfiguredEntries"];
    v5->_downloadUserInitiated = [v4 decodeBoolForKey:@"downloadUserInitiated"];
    v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadProgress"];
    downloadProgress = v5->_downloadProgress;
    v5->_downloadProgress = v61;

    v5->_downloadedNetworkBytes = [v4 decodeIntegerForKey:@"downloadedNetworkBytes"];
    v5->_downloadedFilesystemBytes = [v4 decodeIntegerForKey:@"downloadedFilesystemBytes"];
    v63 = [v4 decodeObjectOfClasses:v14 forKey:@"currentLockUsage"];
    currentLockUsage = v5->_currentLockUsage;
    v5->_currentLockUsage = v63;

    v65 = [v4 decodeObjectOfClasses:v17 forKey:@"selectorsForStaging"];
    selectorsForStaging = v5->_selectorsForStaging;
    v5->_selectorsForStaging = v65;

    v67 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"availableForUseError"];
    availableForUseError = v5->_availableForUseError;
    v5->_availableForUseError = v67;

    v69 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"newerVersionError"];
    newerVersionError = v5->_newerVersionError;
    v5->_newerVersionError = v69;
  }

  v71 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetSetStatus *)self clientDomainName];
  [v4 encodeObject:v5 forKey:@"clientDomainName"];

  v6 = [(MAAutoAssetSetStatus *)self assetSetIdentifier];
  [v4 encodeObject:v6 forKey:@"assetSetIdentifier"];

  v7 = [(MAAutoAssetSetStatus *)self configuredAssetEntries];
  [v4 encodeObject:v7 forKey:@"configuredAssetEntries"];

  v8 = [(MAAutoAssetSetStatus *)self atomicInstancesDownloaded];
  [v4 encodeObject:v8 forKey:@"atomicInstancesDownloaded"];

  v9 = [(MAAutoAssetSetStatus *)self catalogCachedAssetSetID];
  [v4 encodeObject:v9 forKey:@"catalogCachedAssetSetID"];

  v10 = [(MAAutoAssetSetStatus *)self catalogDownloadedFromLive];
  [v4 encodeObject:v10 forKey:@"catalogDownloadedFromLive"];

  v11 = [(MAAutoAssetSetStatus *)self catalogLastTimeChecked];
  [v4 encodeObject:v11 forKey:@"catalogLastTimeChecked"];

  v12 = [(MAAutoAssetSetStatus *)self catalogPostedDate];
  [v4 encodeObject:v12 forKey:@"catalogPostedDate"];

  v13 = [(MAAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  [v4 encodeObject:v13 forKey:@"newerAtomicInstanceDiscovered"];

  [v4 encodeBool:-[MAAutoAssetSetStatus latestDownloadedAtomicInstanceFromPreSUStaging](self forKey:{"latestDownloadedAtomicInstanceFromPreSUStaging"), @"latestDownloadedAtomicInstanceFromPreSUStaging"}];
  v14 = [(MAAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
  [v4 encodeObject:v14 forKey:@"newerDiscoveredAtomicEntries"];

  v15 = [(MAAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  [v4 encodeObject:v15 forKey:@"latestDownloadedAtomicInstance"];

  v16 = [(MAAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
  [v4 encodeObject:v16 forKey:@"latestDowloadedAtomicInstanceEntries"];

  v17 = [(MAAutoAssetSetStatus *)self downloadedCatalogCachedAssetSetID];
  [v4 encodeObject:v17 forKey:@"downloadedCatalogCachedAssetSetID"];

  v18 = [(MAAutoAssetSetStatus *)self downloadedCatalogDownloadedFromLive];
  [v4 encodeObject:v18 forKey:@"downloadedCatalogDownloadedFromLive"];

  v19 = [(MAAutoAssetSetStatus *)self downloadedCatalogLastTimeChecked];
  [v4 encodeObject:v19 forKey:@"downloadedCatalogLastTimeChecked"];

  v20 = [(MAAutoAssetSetStatus *)self downloadedCatalogPostedDate];
  [v4 encodeObject:v20 forKey:@"downloadedCatalogPostedDate"];

  v21 = [(MAAutoAssetSetStatus *)self currentNotifications];
  [v4 encodeObject:v21 forKey:@"currentNotifications"];

  v22 = [(MAAutoAssetSetStatus *)self currentNeedPolicy];
  [v4 encodeObject:v22 forKey:@"currentNeedPolicy"];

  v23 = [(MAAutoAssetSetStatus *)self schedulerPolicy];
  [v4 encodeObject:v23 forKey:@"schedulerPolicy"];

  v24 = [(MAAutoAssetSetStatus *)self stagerPolicy];
  [v4 encodeObject:v24 forKey:@"stagerPolicy"];

  [v4 encodeBool:-[MAAutoAssetSetStatus haveReceivedLookupResponse](self forKey:{"haveReceivedLookupResponse"), @"haveReceivedLookupResponse"}];
  [v4 encodeBool:-[MAAutoAssetSetStatus vendingAtomicInstanceForConfiguredEntries](self forKey:{"vendingAtomicInstanceForConfiguredEntries"), @"vendingAtomicInstanceForConfiguredEntries"}];
  [v4 encodeBool:-[MAAutoAssetSetStatus downloadUserInitiated](self forKey:{"downloadUserInitiated"), @"downloadUserInitiated"}];
  v25 = [(MAAutoAssetSetStatus *)self downloadProgress];
  [v4 encodeObject:v25 forKey:@"downloadProgress"];

  [v4 encodeInteger:-[MAAutoAssetSetStatus downloadedNetworkBytes](self forKey:{"downloadedNetworkBytes"), @"downloadedNetworkBytes"}];
  [v4 encodeInteger:-[MAAutoAssetSetStatus downloadedFilesystemBytes](self forKey:{"downloadedFilesystemBytes"), @"downloadedFilesystemBytes"}];
  v26 = [(MAAutoAssetSetStatus *)self currentLockUsage];
  [v4 encodeObject:v26 forKey:@"currentLockUsage"];

  v27 = [(MAAutoAssetSetStatus *)self selectorsForStaging];
  [v4 encodeObject:v27 forKey:@"selectorsForStaging"];

  v28 = [(MAAutoAssetSetStatus *)self availableForUseError];
  [v4 encodeObject:v28 forKey:@"availableForUseError"];

  v29 = [(MAAutoAssetSetStatus *)self newerVersionError];
  [v4 encodeObject:v29 forKey:@"newerVersionError"];
}

- (id)copy
{
  v28 = [MAAutoAssetSetStatus alloc];
  v48 = [(MAAutoAssetSetStatus *)self clientDomainName];
  v47 = [(MAAutoAssetSetStatus *)self assetSetIdentifier];
  v34 = [(MAAutoAssetSetStatus *)self configuredAssetEntries];
  v46 = [v34 copy];
  v33 = [(MAAutoAssetSetStatus *)self atomicInstancesDownloaded];
  v45 = [v33 copy];
  v44 = [(MAAutoAssetSetStatus *)self catalogCachedAssetSetID];
  v41 = [(MAAutoAssetSetStatus *)self catalogDownloadedFromLive];
  v43 = [(MAAutoAssetSetStatus *)self catalogLastTimeChecked];
  v42 = [(MAAutoAssetSetStatus *)self catalogPostedDate];
  v40 = [(MAAutoAssetSetStatus *)self newerAtomicInstanceDiscovered];
  v32 = [(MAAutoAssetSetStatus *)self newerDiscoveredAtomicEntries];
  v39 = [v32 copy];
  v31 = [(MAAutoAssetSetStatus *)self latestDownloadedAtomicInstance];
  v38 = [v31 copy];
  v25 = [(MAAutoAssetSetStatus *)self latestDownloadedAtomicInstanceFromPreSUStaging];
  v30 = [(MAAutoAssetSetStatus *)self latestDowloadedAtomicInstanceEntries];
  v37 = [v30 copy];
  v36 = [(MAAutoAssetSetStatus *)self downloadedCatalogCachedAssetSetID];
  v35 = [(MAAutoAssetSetStatus *)self downloadedCatalogDownloadedFromLive];
  v22 = [(MAAutoAssetSetStatus *)self downloadedCatalogLastTimeChecked];
  v21 = [(MAAutoAssetSetStatus *)self downloadedCatalogPostedDate];
  v27 = [(MAAutoAssetSetStatus *)self currentNotifications];
  v17 = [v27 copy];
  v26 = [(MAAutoAssetSetStatus *)self currentNeedPolicy];
  v19 = [v26 copy];
  v24 = [(MAAutoAssetSetStatus *)self schedulerPolicy];
  v18 = [v24 copy];
  v23 = [(MAAutoAssetSetStatus *)self stagerPolicy];
  v16 = [v23 copy];
  v15 = [(MAAutoAssetSetStatus *)self haveReceivedLookupResponse];
  v3 = [(MAAutoAssetSetStatus *)self vendingAtomicInstanceForConfiguredEntries];
  v4 = [(MAAutoAssetSetStatus *)self downloadUserInitiated];
  v20 = [(MAAutoAssetSetStatus *)self downloadProgress];
  v5 = [v20 copy];
  v6 = [(MAAutoAssetSetStatus *)self downloadedNetworkBytes];
  v7 = [(MAAutoAssetSetStatus *)self downloadedFilesystemBytes];
  v8 = [(MAAutoAssetSetStatus *)self currentLockUsage];
  v9 = [(MAAutoAssetSetStatus *)self selectorsForStaging];
  v10 = [(MAAutoAssetSetStatus *)self availableForUseError];
  v11 = [(MAAutoAssetSetStatus *)self newerVersionError];
  BYTE2(v14) = v4;
  BYTE1(v14) = v3;
  LOBYTE(v14) = v15;
  LOBYTE(v13) = v25;
  v29 = [MAAutoAssetSetStatus initStatusForClientDomain:v28 forAssetSetIdentifier:"initStatusForClientDomain:forAssetSetIdentifier:withConfiguredAssetEntries:withAtomicInstancesDownloaded:withCatalogCachedAssetSetID:withCatalogDownloadedFromLive:withCatalogLastTimeChecked:withCatalogPostedDate:withNewerAtomicInstanceDiscovered:withNewerDiscoveredAtomicEntries:withLatestDownloadedAtomicInstance:withLatestDownloadedAtomicInstanceFromPreSUStaging:withLatestDowloadedAtomicInstanceEntries:withDownloadedCatalogCachedAssetSetID:withDownloadedCatalogDownloadedFromLive:withDownloadedCatalogLastTimeChecked:withDownloadedCatalogPostedDate:withCurrentNotifications:withCurrentNeedPolicy:withSchedulerPolicy:withStagerPolicy:havingReceivedLookupResponse:vendingAtomicInstanceForConfiguredEntries:withDownloadUserInitiated:withDownloadProgress:withDownloadedNetworkBytes:withDownloadedFilesystemBytes:withCurrentLockUsage:withSelectorsForStaging:withAvailableForUseError:withNewerVersionError:" withConfiguredAssetEntries:v48 withAtomicInstancesDownloaded:v47 withCatalogCachedAssetSetID:v46 withCatalogDownloadedFromLive:v45 withCatalogLastTimeChecked:v44 withCatalogPostedDate:v41 withNewerAtomicInstanceDiscovered:v43 withNewerDiscoveredAtomicEntries:v42 withLatestDownloadedAtomicInstance:v40 withLatestDownloadedAtomicInstanceFromPreSUStaging:v39 withLatestDowloadedAtomicInstanceEntries:v38 withDownloadedCatalogCachedAssetSetID:v13 withDownloadedCatalogDownloadedFromLive:v37 withDownloadedCatalogLastTimeChecked:v36 withDownloadedCatalogPostedDate:v35 withCurrentNotifications:v22 withCurrentNeedPolicy:v21 withSchedulerPolicy:v17 withStagerPolicy:v19 havingReceivedLookupResponse:v18 vendingAtomicInstanceForConfiguredEntries:v16 withDownloadUserInitiated:v14 withDownloadProgress:v5 withDownloadedNetworkBytes:v6 withDownloadedFilesystemBytes:v7 withCurrentLockUsage:v8 withSelectorsForStaging:v9 withAvailableForUseError:v10 withNewerVersionError:v11];

  return v29;
}

+ (id)newCurrentLockUsageSummary:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 currentLockUsage];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"{"];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [v3 currentLockUsage];
    v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v24)
    {
      v22 = *v31;
      v23 = v3;
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
          v9 = [v3 currentLockUsage];
          v10 = [v9 safeObjectForKey:v8 ofClass:objc_opt_class()];

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
          v3 = v23;
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

+ (id)newCurrentLockUsageDetailed:(id)a3
{
  v3 = a3;
  v4 = [v3 currentLockUsage];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [v3 currentLockUsage];
    v7 = [v6 description];
    v8 = [v5 initWithFormat:@"%@", v7];
  }

  else
  {
    v8 = &stru_1F0C1B388;
  }

  return v8;
}

+ (id)newSelectorsForStagingSummary:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 selectorsForStaging];

  if (v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"{"];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [v3 selectorsForStaging];
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
          v11 = [v3 selectorsForStaging];
          v12 = [v11 safeObjectForKey:v10 ofClass:objc_opt_class()];

          v13 = [v12 count];
          if ((v8 & 1) == 0)
          {
            [v4 appendString:{@", "}];
          }

          [v4 appendFormat:@"%@:%ld", v10, v13];

          v8 = 0;
          ++v9;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
        v8 = 0;
      }

      while (v6);
    }

    [v4 appendString:@"}"];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (id)shortTermLockFilename:(id)a3 forAssetSetIdentifier:(id)a4 forSetAtomicInstance:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [MAAutoAssetSetStatus _shortTermLockFilenameNormalizedComponent:a3];
  v10 = [MAAutoAssetSetStatus _shortTermLockFilenameNormalizedComponent:v8];

  if (v7)
  {
    v11 = v7;
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

+ (id)_shortTermLockFilenameNormalizedComponent:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E696AB08];
    v4 = a3;
    v5 = [v3 characterSetWithCharactersInString:{@":, /\\?~%*|<>[](){}"}];;
    v6 = [v4 componentsSeparatedByCharactersInSet:v5];

    v7 = [v6 componentsJoinedByString:@"_"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end