@interface _RestoreDomainPlanBase
- (BOOL)_enumerateAndMarkNotStartedDirectoriesTopDown:(id)a3 absolutePath:(id)a4 matchingState:(unint64_t)a5 error:(id *)a6 enumerator:(id)a7;
- (BOOL)_enumerateAndMarkPlacedDirectoriesBottomUp:(id)a3 absolutePath:(id)a4 error:(id *)a5 enumerator:(id)a6;
- (BOOL)_enumerateAndMarkUnfinishedAssets:(id)a3 absolutePath:(id)a4 matchingState:(unint64_t)a5 error:(id *)a6 enumerator:(id)a7;
- (BOOL)_enumerateAndMarkUnfinishedSymlinks:(id)a3 absolutePath:(id)a4 matchingState:(unint64_t)a5 error:(id *)a6 enumerator:(id)a7;
- (BOOL)_enumerateAndMarkUnfinishedZeroByteFiles:(id)a3 absolutePath:(id)a4 matchingState:(unint64_t)a5 error:(id *)a6 enumerator:(id)a7;
- (BOOL)_enumerateAssetsToDownload:(id)a3 absolutePath:(id)a4 matchingState:(unint64_t)a5 error:(id *)a6 enumerator:(id)a7;
- (BOOL)_setAssetState:(unint64_t)a3 asset:(id)a4 withFailure:(id)a5 error:(id *)a6;
- (BOOL)wasSkipped;
- (id)_countsOfRestorablesByState:(id *)a3;
- (id)_initWithParentPlan:(id)a3 domain:(id)a4 domainID:(unint64_t)a5 restoreType:(int)a6;
@end

@implementation _RestoreDomainPlanBase

- (id)_initWithParentPlan:(id)a3 domain:(id)a4 domainID:(unint64_t)a5 restoreType:(int)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = _RestoreDomainPlanBase;
  v13 = [(_RestoreDomainPlanBase *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_parentPlan, a3);
    objc_storeStrong(&v14->_domain, a4);
    v14->_domainID = a5;
    v14->_restoreType = a6;
  }

  return v14;
}

- (BOOL)wasSkipped
{
  parentPlan = self->_parentPlan;
  domainID = self->_domainID;
  v12 = 0;
  v5 = [(MBRestorePlanDB *)parentPlan _verificationStateForDomainID:domainID error:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = v5 == 4;
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      domain = self->_domain;
      *buf = 138412546;
      v14 = domain;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=plan= Failed to get verification state for %@: %@", buf, 0x16u);
      v11 = self->_domain;
      _MBLog();
    }

    v7 = 0;
  }

  return v7;
}

- (id)_countsOfRestorablesByState:(id *)a3
{
  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanBase _countsOfRestorablesByState:]", "MBRestorePlanDB.m", 1568, "error");
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10026C128;
  v13 = sub_10026C138;
  v14 = +[NSMutableDictionary dictionary];
  parentPlan = self->_parentPlan;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10026F21C;
  v8[3] = &unk_1003C2C00;
  v8[4] = self;
  v8[5] = &v9;
  [(MBRestorePlanDB *)parentPlan _withReadOnlyDB:a3 accessor:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (BOOL)_setAssetState:(unint64_t)a3 asset:(id)a4 withFailure:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    __assert_rtn("[_RestoreDomainPlanBase _setAssetState:asset:withFailure:error:]", "MBRestorePlanDB.m", 1598, "asset");
  }

  if (!a6)
  {
    __assert_rtn("[_RestoreDomainPlanBase _setAssetState:asset:withFailure:error:]", "MBRestorePlanDB.m", 1599, "error");
  }

  v12 = v11;
  if (a3 > 1)
  {
    v20 = -[MBRestorePlanDB _recordAssetState:inode:domainID:failure:restoreType:error:](self->_parentPlan, "_recordAssetState:inode:domainID:failure:restoreType:error:", a3, [v10 originalInode], self->_domainID, v11, self->_restoreType, a6);
  }

  else
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v22 = MBRestoreAssetStateToString(a3);
      *buf = 138412546;
      v24 = v22;
      v25 = 2112;
      v26 = v10;
      _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Invalid asset state (%@) to set for asset %@", buf, 0x16u);
    }

    v14 = MBRestoreAssetStateToString(a3);
    sub_10012F400(0, a6, @"Invalid asset state (%@) to set for asset %@", v15, v16, v17, v18, v19, v14);

    v20 = 0;
  }

  return v20;
}

- (BOOL)_enumerateAndMarkNotStartedDirectoriesTopDown:(id)a3 absolutePath:(id)a4 matchingState:(unint64_t)a5 error:(id *)a6 enumerator:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (!a6)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkNotStartedDirectoriesTopDown:absolutePath:matchingState:error:enumerator:]", "MBRestorePlanDB.m", 1692, "error");
  }

  if (!v14)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkNotStartedDirectoriesTopDown:absolutePath:matchingState:error:enumerator:]", "MBRestorePlanDB.m", 1693, "enumerator");
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10026F9BC;
  v18[3] = &unk_1003C2C28;
  v19 = v14;
  v15 = v14;
  v16 = [(_RestoreDomainPlanBase *)self _enumerateAndMarkRestorablesMatchingType:0x4000 state:a5 readOnlyDB:v12 absolutePath:v13 descending:0 error:a6 enumerator:v18];

  return v16;
}

- (BOOL)_enumerateAndMarkPlacedDirectoriesBottomUp:(id)a3 absolutePath:(id)a4 error:(id *)a5 enumerator:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!a5)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkPlacedDirectoriesBottomUp:absolutePath:error:enumerator:]", "MBRestorePlanDB.m", 1720, "error");
  }

  if (!v12)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkPlacedDirectoriesBottomUp:absolutePath:error:enumerator:]", "MBRestorePlanDB.m", 1721, "enumerator");
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10026FC90;
  v16[3] = &unk_1003C2C28;
  v17 = v12;
  v13 = v12;
  v14 = [(_RestoreDomainPlanBase *)self _enumerateAndMarkRestorablesMatchingType:0x4000 state:4 readOnlyDB:v10 absolutePath:v11 descending:1 error:a5 enumerator:v16];

  return v14;
}

- (BOOL)_enumerateAndMarkUnfinishedSymlinks:(id)a3 absolutePath:(id)a4 matchingState:(unint64_t)a5 error:(id *)a6 enumerator:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (!a6)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkUnfinishedSymlinks:absolutePath:matchingState:error:enumerator:]", "MBRestorePlanDB.m", 1747, "error");
  }

  v15 = v14;
  if (!v14)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkUnfinishedSymlinks:absolutePath:matchingState:error:enumerator:]", "MBRestorePlanDB.m", 1748, "enumerator");
  }

  domainID = self->_domainID;
  if (v13)
  {
    [v12 fetchSQL:{@"\n SELECT Restorables.inode, Restorables.size, Restorables.birth, Restorables.modified, Restorables.statusChanged, Restorables.userID, Restorables.groupID, Restorables.mode, Restorables.flags, Restorables.protectionClass, Restorables.xattrs, Restorables.relativePath, \nRestorableSymlinkTargets.targetPath, \nRestorableSymlinkTargets.linkCount, \nRestorables.restorableID\n  FROM  Restorables\n   JOIN RestorableSymlinkTargets ON\n       (RestorableSymlinkTargets.inode = Restorables.inode\n    AND RestorableSymlinkTargets.domainID = Restorables.domainID\n      )\n  WHERE absolutePath IS %@\n   AND  (restoreState = %u OR restoreState = %u)\n   AND  Restorables.domainID = %llu\n   AND  type = %u LIMIT 1", v13, a5, 6, self->_domainID, 40960}];
  }

  else
  {
    [v12 fetchSQL:{@"\n SELECT Restorables.inode, Restorables.size, Restorables.birth, Restorables.modified, Restorables.statusChanged, Restorables.userID, Restorables.groupID, Restorables.mode, Restorables.flags, Restorables.protectionClass, Restorables.xattrs, Restorables.relativePath, \nRestorableSymlinkTargets.targetPath, \nRestorableSymlinkTargets.linkCount, \nRestorables.restorableID\n  FROM  Restorables\n   JOIN RestorableSymlinkTargets ON\n       (RestorableSymlinkTargets.inode = Restorables.inode\n    AND RestorableSymlinkTargets.domainID = Restorables.domainID\n      )\n  WHERE (restoreState = %u OR restoreState = %u)\n   AND  Restorables.domainID = %llu\n   AND  type = %u", a5, 6, self->_domainID, 40960, v21}];
  }
  v17 = ;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10026FFA0;
  v22[3] = &unk_1003C1808;
  v22[4] = self;
  v23 = v15;
  v18 = v15;
  v19 = [v17 enumerateWithError:a6 block:v22];

  return v19;
}

- (BOOL)_enumerateAndMarkUnfinishedZeroByteFiles:(id)a3 absolutePath:(id)a4 matchingState:(unint64_t)a5 error:(id *)a6 enumerator:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (!a6)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkUnfinishedZeroByteFiles:absolutePath:matchingState:error:enumerator:]", "MBRestorePlanDB.m", 1820, "error");
  }

  v15 = v14;
  if (!v14)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkUnfinishedZeroByteFiles:absolutePath:matchingState:error:enumerator:]", "MBRestorePlanDB.m", 1821, "enumerator");
  }

  if (v13)
  {
    [v12 fetchSQL:{@"\n SELECT Restorables.restorableID, \nRestorables.inode, Restorables.size, Restorables.birth, Restorables.modified, Restorables.statusChanged, Restorables.userID, Restorables.groupID, Restorables.mode, Restorables.flags, Restorables.protectionClass, Restorables.xattrs, Restorables.relativePath, \nRestorableAssets.linkCount, \nRestorableAssets.recordIDSuffix, RestorableAssets.encryptionKey, RestorableAssets.compressionMethod, RestorableAssets.assetType, RestorableAssets.assetSize, RestorableAssets.assetSignature\n FROM   Restorables\n  JOIN  RestorableAssets ON \n       (RestorableAssets.inode = Restorables.inode\n    AND RestorableAssets.domainID = Restorables.domainID\n      )\n  WHERE absolutePath IS %@\n   AND  Restorables.domainID = %llu\n   AND  type = %u\n   AND  (restoreState = %u OR restoreState = %u)\n   AND  size = 0", v13, self->_domainID, 0x8000, a5, 6}];
  }

  else
  {
    [v12 fetchSQL:{@"\n SELECT Restorables.restorableID, \nRestorables.inode, Restorables.size, Restorables.birth, Restorables.modified, Restorables.statusChanged, Restorables.userID, Restorables.groupID, Restorables.mode, Restorables.flags, Restorables.protectionClass, Restorables.xattrs, Restorables.relativePath, \nRestorableAssets.linkCount, \nRestorableAssets.recordIDSuffix, RestorableAssets.encryptionKey, RestorableAssets.compressionMethod, RestorableAssets.assetType, RestorableAssets.assetSize, RestorableAssets.assetSignature\n FROM   Restorables\n  JOIN  RestorableAssets ON \n       (RestorableAssets.inode = Restorables.inode\n    AND RestorableAssets.domainID = Restorables.domainID\n      )\n  WHERE (restoreState = %u OR restoreState = %u)\n   AND  Restorables.domainID = %llu\n   AND  type = %u\n   AND  size = 0", a5, 6, self->_domainID, 0x8000, v20}];
  }
  v16 = ;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100270384;
  v21[3] = &unk_1003C1808;
  v21[4] = self;
  v22 = v15;
  v17 = v15;
  v18 = [v16 enumerateWithError:a6 block:v21];

  return v18;
}

- (BOOL)_enumerateAndMarkUnfinishedAssets:(id)a3 absolutePath:(id)a4 matchingState:(unint64_t)a5 error:(id *)a6 enumerator:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (!a6)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkUnfinishedAssets:absolutePath:matchingState:error:enumerator:]", "MBRestorePlanDB.m", 1872, "error");
  }

  v15 = v14;
  if (!v14)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkUnfinishedAssets:absolutePath:matchingState:error:enumerator:]", "MBRestorePlanDB.m", 1873, "enumerator");
  }

  if (v13)
  {
    [v12 fetchSQL:{@"\n SELECT Restorables.restorableID, \nRestorables.inode, Restorables.size, Restorables.birth, Restorables.modified, Restorables.statusChanged, Restorables.userID, Restorables.groupID, Restorables.mode, Restorables.flags, Restorables.protectionClass, Restorables.xattrs, Restorables.relativePath, \nRestorableAssets.linkCount, \nRestorableAssets.recordIDSuffix, RestorableAssets.encryptionKey, RestorableAssets.compressionMethod, RestorableAssets.assetType, RestorableAssets.assetSize, RestorableAssets.assetSignature\n FROM   Restorables\n  JOIN  RestorableAssets ON \n       (RestorableAssets.inode = Restorables.inode\n    AND RestorableAssets.domainID = Restorables.domainID\n      )\n  WHERE absolutePath IS %@\n   AND  Restorables.domainID = %llu\n   AND  type = %u\n   AND  (restoreState = %u OR restoreState = %u)\n   AND  size != 0 LIMIT 1", v13, self->_domainID, 0x8000, a5, 6}];
  }

  else
  {
    [v12 fetchSQL:{@"\n SELECT Restorables.restorableID, \nRestorables.inode, Restorables.size, Restorables.birth, Restorables.modified, Restorables.statusChanged, Restorables.userID, Restorables.groupID, Restorables.mode, Restorables.flags, Restorables.protectionClass, Restorables.xattrs, Restorables.relativePath, \nRestorableAssets.linkCount, \nRestorableAssets.recordIDSuffix, RestorableAssets.encryptionKey, RestorableAssets.compressionMethod, RestorableAssets.assetType, RestorableAssets.assetSize, RestorableAssets.assetSignature\n FROM   Restorables\n  JOIN  RestorableAssets ON \n       (RestorableAssets.inode = Restorables.inode\n    AND RestorableAssets.domainID = Restorables.domainID\n      )\n  WHERE (restoreState = %u OR restoreState = %u)\n   AND  Restorables.domainID = %llu\n   AND  type = %u\n   AND  size != 0", a5, 6, self->_domainID, 0x8000, v20}];
  }
  v16 = ;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100270734;
  v21[3] = &unk_1003C1808;
  v21[4] = self;
  v22 = v15;
  v17 = v15;
  v18 = [v16 enumerateWithError:a6 block:v21];

  return v18;
}

- (BOOL)_enumerateAssetsToDownload:(id)a3 absolutePath:(id)a4 matchingState:(unint64_t)a5 error:(id *)a6 enumerator:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (!v12)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAssetsToDownload:absolutePath:matchingState:error:enumerator:]", "MBRestorePlanDB.m", 1942, "readOnlyDB");
  }

  if (!a6)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAssetsToDownload:absolutePath:matchingState:error:enumerator:]", "MBRestorePlanDB.m", 1943, "error");
  }

  v15 = v14;
  if (!v14)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAssetsToDownload:absolutePath:matchingState:error:enumerator:]", "MBRestorePlanDB.m", 1944, "enumerator");
  }

  domainID = self->_domainID;
  if (v13)
  {
    [v12 fetchSQL:{@"\nSELECT RestorableAssets.inode, \nlinkCount, \nRestorableAssets.recordIDSuffix, RestorableAssets.encryptionKey, RestorableAssets.compressionMethod, RestorableAssets.assetType, RestorableAssets.assetSize, RestorableAssets.assetSignature, \nRestorables.size, \nRestorables.protectionClass, \nRestorables.relativePath\n FROM  RestorableAssets\n JOIN  Restorables ON \n      (RestorableAssets.inode = Restorables.inode\n   AND RestorableAssets.domainID = Restorables.domainID\n     )\n WHERE Restorables.absolutePath IS %@\n   AND RestorableAssets.domainID = %llu\n   AND (RestorableAssets.assetState = %lu OR RestorableAssets.assetState = %lu)\n   AND Restorables.restoreState = %u LIMIT 1", v13, domainID, 1, 3, a5}];
  }

  else
  {
    [v12 fetchSQL:{@"\nSELECT RestorableAssets.inode, \nlinkCount, \nRestorableAssets.recordIDSuffix, RestorableAssets.encryptionKey, RestorableAssets.compressionMethod, RestorableAssets.assetType, RestorableAssets.assetSize, RestorableAssets.assetSignature, \nRestorables.size, \nRestorables.protectionClass, \nRestorables.relativePath\n FROM  RestorableAssets\n JOIN  Restorables ON \n      (RestorableAssets.inode = Restorables.inode\n   AND RestorableAssets.domainID = Restorables.domainID\n     )\n WHERE RestorableAssets.domainID = %llu\n   AND (RestorableAssets.assetState = %lu OR RestorableAssets.assetState = %lu)\n   AND Restorables.restoreState = %u\n GROUP BY RestorableAssets.inode;", domainID, 1, 3, a5, v21}];
  }
  v17 = ;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100270CB0;
  v22[3] = &unk_1003BE658;
  v23 = v15;
  v18 = v15;
  v19 = [v17 enumerateWithError:a6 block:v22];

  return v19;
}

@end