@interface _RestoreDomainPlanStandard
- (BOOL)_enumerateAndMarkATCRestorables:(id)restorables totalATCItems:(unint64_t *)items totalATCFiles:(unint64_t *)files totalATCBytes:(int64_t *)bytes error:(id *)error enumerator:(id)enumerator;
- (BOOL)_setWillRestoreInATCBackgroundPhase:(id)phase restorableID:(unint64_t)d error:(id *)error;
- (BOOL)enumerateAndMarkATCRestorables:(id *)restorables enumerator:(id)enumerator;
- (BOOL)enumerateAndMarkNotStartedDirectoriesTopDown:(id *)down enumerator:(id)enumerator;
- (BOOL)enumerateAndMarkPlacedDirectoriesBottomUp:(id *)up enumerator:(id)enumerator;
- (BOOL)enumerateAndMarkUnfinishedAssets:(id *)assets enumerator:(id)enumerator;
- (BOOL)enumerateAndMarkUnfinishedSymlinks:(id *)symlinks enumerator:(id)enumerator;
- (BOOL)enumerateAndMarkUnfinishedZeroByteFiles:(id *)files enumerator:(id)enumerator;
- (BOOL)enumerateAssetsToDownload:(id *)download enumerator:(id)enumerator;
- (BOOL)recordVerificationFailure:(id)failure error:(id *)error;
- (BOOL)recordVerificationSuccess:(id *)success;
- (BOOL)setDomainState:(unint64_t)state error:(id *)error;
- (id)atcFileInfosMatchingRelativePath:(id)path pendingOnly:(BOOL)only range:(_NSRange)range error:(id *)error;
- (unint64_t)domainState:(id *)state;
@end

@implementation _RestoreDomainPlanStandard

- (unint64_t)domainState:(id *)state
{
  if (!state)
  {
    __assert_rtn("[_RestoreDomainPlanStandard domainState:]", "MBRestorePlanDB.m", 2003, "error");
  }

  v5 = [(MBRestorePlanDB *)self->super._parentPlan _validRWDatabase:?];
  v6 = [v5 fetchCountWithError:state sql:{@"\n SELECT engineState\n FROM   Domains\n WHERE  domainID = %llu", self->super._domainID}];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

- (BOOL)setDomainState:(unint64_t)state error:(id *)error
{
  if (!state)
  {
    __assert_rtn("[_RestoreDomainPlanStandard setDomainState:error:]", "MBRestorePlanDB.m", 2019, "state != MBRestoreDomainStateUndefined");
  }

  if (!error)
  {
    __assert_rtn("[_RestoreDomainPlanStandard setDomainState:error:]", "MBRestorePlanDB.m", 2020, "error");
  }

  if ([(MBDomain *)self->super._domain hasRootPath])
  {
    rootPath = [(MBDomain *)self->super._domain rootPath];
  }

  else
  {
    rootPath = 0;
  }

  v8 = [(MBRestorePlanDB *)self->super._parentPlan _validRWDatabase:error];
  v9 = [v8 executeWithError:error sql:{@"\n UPDATE Domains\n SET    engineState = %u, \n        rootPath = %@\n WHERE  domainID = %llu", state, rootPath, self->super._domainID}];

  return v9;
}

- (BOOL)recordVerificationSuccess:(id *)success
{
  if (!success)
  {
    __assert_rtn("[_RestoreDomainPlanStandard recordVerificationSuccess:]", "MBRestorePlanDB.m", 2033, "error");
  }

  successCopy = success;
  v5 = [(MBRestorePlanDB *)self->super._parentPlan _validRWDatabase:?];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002710C0;
  v7[3] = &unk_1003C08F0;
  v7[4] = self;
  LOBYTE(successCopy) = [v5 performWithConnection:successCopy accessor:v7];

  return successCopy;
}

- (BOOL)recordVerificationFailure:(id)failure error:(id *)error
{
  failureCopy = failure;
  if (!failureCopy)
  {
    __assert_rtn("[_RestoreDomainPlanStandard recordVerificationFailure:error:]", "MBRestorePlanDB.m", 2041, "failure");
  }

  if (!error)
  {
    __assert_rtn("[_RestoreDomainPlanStandard recordVerificationFailure:error:]", "MBRestorePlanDB.m", 2042, "error");
  }

  v7 = failureCopy;
  v8 = [(MBRestorePlanDB *)self->super._parentPlan _validRWDatabase:error];
  v9 = v8;
  if (v8 && [v8 _recordFailure:v7 domainID:self->super._domainID restoreType:self->super._restoreType inode:0 restorableID:0 error:error])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100271208;
    v12[3] = &unk_1003C08F0;
    v12[4] = self;
    v10 = [v9 performWithConnection:error accessor:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)enumerateAndMarkATCRestorables:(id *)restorables enumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  if (!restorables)
  {
    __assert_rtn("[_RestoreDomainPlanStandard enumerateAndMarkATCRestorables:enumerator:]", "MBRestorePlanDB.m", 2057, "error");
  }

  if (!enumeratorCopy)
  {
    __assert_rtn("[_RestoreDomainPlanStandard enumerateAndMarkATCRestorables:enumerator:]", "MBRestorePlanDB.m", 2058, "enumerator");
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  parentPlan = self->super._parentPlan;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100271428;
  v14[3] = &unk_1003C2C50;
  v14[4] = self;
  v16 = &v27;
  v17 = &v23;
  v18 = &v19;
  v8 = enumeratorCopy;
  v15 = v8;
  LODWORD(parentPlan) = [(MBRestorePlanDB *)parentPlan _withReadOnlyDB:restorables accessor:v14];

  if (parentPlan)
  {
    if (v28[3])
    {
      v9 = [(MBRestorePlanDB *)self->super._parentPlan _validRWDatabase:restorables];
      v10 = v28[3];
      v11 = v20[3];
      v12 = [v9 executeWithError:restorables sql:{@"\n UPDATE Domains\n SET    totalATCItems = %llu, \n        totalATCFiles = %llu, \n        totalATCBytes = %llu\n WHERE  domainID = %llu;", v10, v24[3], v11, self->super._domainID}];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v12;
}

- (BOOL)_enumerateAndMarkATCRestorables:(id)restorables totalATCItems:(unint64_t *)items totalATCFiles:(unint64_t *)files totalATCBytes:(int64_t *)bytes error:(id *)error enumerator:(id)enumerator
{
  restorablesCopy = restorables;
  enumeratorCopy = enumerator;
  if (!restorablesCopy)
  {
    __assert_rtn("[_RestoreDomainPlanStandard _enumerateAndMarkATCRestorables:totalATCItems:totalATCFiles:totalATCBytes:error:enumerator:]", "MBRestorePlanDB.m", 2086, "readOnlyDB");
  }

  if (!items)
  {
    __assert_rtn("[_RestoreDomainPlanStandard _enumerateAndMarkATCRestorables:totalATCItems:totalATCFiles:totalATCBytes:error:enumerator:]", "MBRestorePlanDB.m", 2087, "totalATCItems");
  }

  if (!files)
  {
    __assert_rtn("[_RestoreDomainPlanStandard _enumerateAndMarkATCRestorables:totalATCItems:totalATCFiles:totalATCBytes:error:enumerator:]", "MBRestorePlanDB.m", 2088, "totalATCFiles");
  }

  if (!bytes)
  {
    __assert_rtn("[_RestoreDomainPlanStandard _enumerateAndMarkATCRestorables:totalATCItems:totalATCFiles:totalATCBytes:error:enumerator:]", "MBRestorePlanDB.m", 2089, "totalATCBytes");
  }

  if (!error)
  {
    __assert_rtn("[_RestoreDomainPlanStandard _enumerateAndMarkATCRestorables:totalATCItems:totalATCFiles:totalATCBytes:error:enumerator:]", "MBRestorePlanDB.m", 2090, "error");
  }

  v16 = enumeratorCopy;
  if (!enumeratorCopy)
  {
    __assert_rtn("[_RestoreDomainPlanStandard _enumerateAndMarkATCRestorables:totalATCItems:totalATCFiles:totalATCBytes:error:enumerator:]", "MBRestorePlanDB.m", 2091, "enumerator");
  }

  v17 = [restorablesCopy fetchSQL:{@"\n SELECT Restorables.inode, Restorables.size, Restorables.birth, Restorables.modified, Restorables.statusChanged, Restorables.userID, Restorables.groupID, Restorables.mode, Restorables.flags, Restorables.protectionClass, Restorables.xattrs, Restorables.relativePath, \npriority, \nrestorableID\n FROM   Restorables\n WHERE  domainID = %llu", self->super._domainID}];;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1002716C0;
  v21[3] = &unk_1003C2C78;
  v21[4] = self;
  v22 = v16;
  itemsCopy = items;
  filesCopy = files;
  bytesCopy = bytes;
  v18 = v16;
  v19 = [v17 enumerateWithError:error block:v21];

  return v19;
}

- (BOOL)_setWillRestoreInATCBackgroundPhase:(id)phase restorableID:(unint64_t)d error:(id *)error
{
  phaseCopy = phase;
  if (!phaseCopy)
  {
    __assert_rtn("[_RestoreDomainPlanStandard _setWillRestoreInATCBackgroundPhase:restorableID:error:]", "MBRestorePlanDB.m", 2140, "restorable");
  }

  if (!d)
  {
    __assert_rtn("[_RestoreDomainPlanStandard _setWillRestoreInATCBackgroundPhase:restorableID:error:]", "MBRestorePlanDB.m", 2141, "restorableID != 0");
  }

  if (!error)
  {
    __assert_rtn("[_RestoreDomainPlanStandard _setWillRestoreInATCBackgroundPhase:restorableID:error:]", "MBRestorePlanDB.m", 2142, "error");
  }

  v9 = phaseCopy;
  absolutePath = [phaseCopy absolutePath];
  v11 = [(MBRestorePlanDB *)self->super._parentPlan _validRWDatabase:error];
  v12 = [v11 executeWithError:error sql:{@"\nUPDATE Restorables\n   SET absolutePath = %@\n WHERE restorableID = %llu;", absolutePath, d}];

  return v12;
}

- (BOOL)enumerateAndMarkNotStartedDirectoriesTopDown:(id *)down enumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  if (!down)
  {
    __assert_rtn("[_RestoreDomainPlanStandard enumerateAndMarkNotStartedDirectoriesTopDown:enumerator:]", "MBRestorePlanDB.m", 2161, "error");
  }

  if (!enumeratorCopy)
  {
    __assert_rtn("[_RestoreDomainPlanStandard enumerateAndMarkNotStartedDirectoriesTopDown:enumerator:]", "MBRestorePlanDB.m", 2162, "enumerator");
  }

  parentPlan = self->super._parentPlan;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100271B58;
  v11[3] = &unk_1003C2CA0;
  v11[4] = self;
  v12 = enumeratorCopy;
  v8 = enumeratorCopy;
  v9 = [(MBRestorePlanDB *)parentPlan _withReadOnlyDB:down accessor:v11];

  return v9;
}

- (BOOL)enumerateAndMarkPlacedDirectoriesBottomUp:(id *)up enumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  if (!up)
  {
    __assert_rtn("[_RestoreDomainPlanStandard enumerateAndMarkPlacedDirectoriesBottomUp:enumerator:]", "MBRestorePlanDB.m", 2170, "error");
  }

  if (!enumeratorCopy)
  {
    __assert_rtn("[_RestoreDomainPlanStandard enumerateAndMarkPlacedDirectoriesBottomUp:enumerator:]", "MBRestorePlanDB.m", 2171, "enumerator");
  }

  parentPlan = self->super._parentPlan;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100271C6C;
  v11[3] = &unk_1003C2CA0;
  v11[4] = self;
  v12 = enumeratorCopy;
  v8 = enumeratorCopy;
  v9 = [(MBRestorePlanDB *)parentPlan _withReadOnlyDB:up accessor:v11];

  return v9;
}

- (BOOL)enumerateAndMarkUnfinishedSymlinks:(id *)symlinks enumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  if (!symlinks)
  {
    __assert_rtn("[_RestoreDomainPlanStandard enumerateAndMarkUnfinishedSymlinks:enumerator:]", "MBRestorePlanDB.m", 2179, "error");
  }

  if (!enumeratorCopy)
  {
    __assert_rtn("[_RestoreDomainPlanStandard enumerateAndMarkUnfinishedSymlinks:enumerator:]", "MBRestorePlanDB.m", 2180, "enumerator");
  }

  parentPlan = self->super._parentPlan;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100271D7C;
  v11[3] = &unk_1003C2CA0;
  v11[4] = self;
  v12 = enumeratorCopy;
  v8 = enumeratorCopy;
  v9 = [(MBRestorePlanDB *)parentPlan _withReadOnlyDB:symlinks accessor:v11];

  return v9;
}

- (BOOL)enumerateAndMarkUnfinishedZeroByteFiles:(id *)files enumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  if (!files)
  {
    __assert_rtn("[_RestoreDomainPlanStandard enumerateAndMarkUnfinishedZeroByteFiles:enumerator:]", "MBRestorePlanDB.m", 2188, "error");
  }

  if (!enumeratorCopy)
  {
    __assert_rtn("[_RestoreDomainPlanStandard enumerateAndMarkUnfinishedZeroByteFiles:enumerator:]", "MBRestorePlanDB.m", 2189, "enumerator");
  }

  parentPlan = self->super._parentPlan;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100271E90;
  v11[3] = &unk_1003C2CA0;
  v11[4] = self;
  v12 = enumeratorCopy;
  v8 = enumeratorCopy;
  v9 = [(MBRestorePlanDB *)parentPlan _withReadOnlyDB:files accessor:v11];

  return v9;
}

- (BOOL)enumerateAndMarkUnfinishedAssets:(id *)assets enumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  if (!assets)
  {
    __assert_rtn("[_RestoreDomainPlanStandard enumerateAndMarkUnfinishedAssets:enumerator:]", "MBRestorePlanDB.m", 2197, "error");
  }

  if (!enumeratorCopy)
  {
    __assert_rtn("[_RestoreDomainPlanStandard enumerateAndMarkUnfinishedAssets:enumerator:]", "MBRestorePlanDB.m", 2198, "enumerator");
  }

  parentPlan = self->super._parentPlan;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100271FA4;
  v11[3] = &unk_1003C2CA0;
  v11[4] = self;
  v12 = enumeratorCopy;
  v8 = enumeratorCopy;
  v9 = [(MBRestorePlanDB *)parentPlan _withReadOnlyDB:assets accessor:v11];

  return v9;
}

- (BOOL)enumerateAssetsToDownload:(id *)download enumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  if (!download)
  {
    __assert_rtn("[_RestoreDomainPlanStandard enumerateAssetsToDownload:enumerator:]", "MBRestorePlanDB.m", 2206, "error");
  }

  if (!enumeratorCopy)
  {
    __assert_rtn("[_RestoreDomainPlanStandard enumerateAssetsToDownload:enumerator:]", "MBRestorePlanDB.m", 2207, "enumerator");
  }

  parentPlan = self->super._parentPlan;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002720B8;
  v11[3] = &unk_1003C2CA0;
  v11[4] = self;
  v12 = enumeratorCopy;
  v8 = enumeratorCopy;
  v9 = [(MBRestorePlanDB *)parentPlan _withReadOnlyDB:download accessor:v11];

  return v9;
}

- (id)atcFileInfosMatchingRelativePath:(id)path pendingOnly:(BOOL)only range:(_NSRange)range error:(id *)error
{
  length = range.length;
  location = range.location;
  pathCopy = path;
  if (!error)
  {
    __assert_rtn("[_RestoreDomainPlanStandard atcFileInfosMatchingRelativePath:pendingOnly:range:error:]", "MBRestorePlanDB.m", 2221, "error");
  }

  v12 = pathCopy;
  v13 = +[NSMutableArray array];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  parentPlan = self->super._parentPlan;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1002724A4;
  v33[3] = &unk_1003C2CF0;
  onlyCopy = only;
  v33[4] = self;
  v37 = location;
  v38 = length;
  v15 = v12;
  v34 = v15;
  v36 = &v40;
  v16 = v13;
  v35 = v16;
  if ([(MBRestorePlanDB *)parentPlan _withReadOnlyDB:error accessor:v33])
  {

    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v16 count];
        v20 = v41[3];
        v21 = [v16 count];
        name = [(MBDomain *)self->super._domain name];
        *buf = 134218754;
        v45 = &v19[-v20];
        v46 = 2048;
        v47 = v21;
        v48 = 2112;
        v49 = name;
        v50 = 2112;
        v51 = v15;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=plan= =atc= Found %llu/%lu restore files from plan for domain:%@, relativePath:%@", buf, 0x2Au);
      }

      [v16 count];
      v23 = v41[3];
      [v16 count];
      name2 = [(MBDomain *)self->super._domain name];
      _MBLog();
    }

    v24 = v16;
  }

  else
  {
    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = v25;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        name3 = [(MBDomain *)self->super._domain name];
        v28 = *error;
        *buf = 138412802;
        v45 = name3;
        v46 = 2112;
        v47 = v15;
        v48 = 2112;
        v49 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "=plan= =atc= Failed finding restore files from plan for domain:%@, relativePath:%@ %@", buf, 0x20u);
      }

      name4 = [(MBDomain *)self->super._domain name];
      v32 = *error;
      _MBLog();
    }

    v24 = 0;
  }

  _Block_object_dispose(&v40, 8);

  return v24;
}

@end