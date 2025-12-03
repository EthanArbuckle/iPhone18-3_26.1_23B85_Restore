@interface _RestoreDomainPlanATC
- (BOOL)_enumerate:(id)_enumerate error:(id *)error block:(id)block;
- (BOOL)enumerateAndMarkNotStartedDirectoriesTopDown:(id *)down enumerator:(id)enumerator;
- (BOOL)enumerateAndMarkPlacedDirectoriesBottomUp:(id *)up enumerator:(id)enumerator;
- (BOOL)enumerateAndMarkUnfinishedAssets:(id *)assets enumerator:(id)enumerator;
- (BOOL)enumerateAndMarkUnfinishedSymlinks:(id *)symlinks enumerator:(id)enumerator;
- (BOOL)enumerateAndMarkUnfinishedZeroByteFiles:(id *)files enumerator:(id)enumerator;
- (BOOL)enumerateAssetsToDownload:(id *)download enumerator:(id)enumerator;
- (id)_initWithParentPlan:(id)plan domain:(id)domain domainID:(unint64_t)d atcPaths:(id)paths;
@end

@implementation _RestoreDomainPlanATC

- (id)_initWithParentPlan:(id)plan domain:(id)domain domainID:(unint64_t)d atcPaths:(id)paths
{
  planCopy = plan;
  domainCopy = domain;
  pathsCopy = paths;
  if (!planCopy)
  {
    __assert_rtn("[_RestoreDomainPlanATC _initWithParentPlan:domain:domainID:atcPaths:]", "MBRestorePlanDB.m", 2303, "parentPlan");
  }

  if (!domainCopy)
  {
    __assert_rtn("[_RestoreDomainPlanATC _initWithParentPlan:domain:domainID:atcPaths:]", "MBRestorePlanDB.m", 2304, "domain");
  }

  v13 = pathsCopy;
  if (!pathsCopy)
  {
    __assert_rtn("[_RestoreDomainPlanATC _initWithParentPlan:domain:domainID:atcPaths:]", "MBRestorePlanDB.m", 2305, "atcPaths");
  }

  v17.receiver = self;
  v17.super_class = _RestoreDomainPlanATC;
  v14 = [(_RestoreDomainPlanBase *)&v17 _initWithParentPlan:planCopy domain:domainCopy domainID:d restoreType:2];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 5, paths);
  }

  return v15;
}

- (BOOL)enumerateAndMarkNotStartedDirectoriesTopDown:(id *)down enumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  if (!down)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkNotStartedDirectoriesTopDown:enumerator:]", "MBRestorePlanDB.m", 2324, "error");
  }

  v7 = enumeratorCopy;
  if (!enumeratorCopy)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkNotStartedDirectoriesTopDown:enumerator:]", "MBRestorePlanDB.m", 2325, "enumerator");
  }

  directories = [(_ATCPaths *)self->_atcPaths directories];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002729C8;
  v12[3] = &unk_1003C2D18;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = [(_RestoreDomainPlanATC *)self _enumerate:directories error:down block:v12];

  return v10;
}

- (BOOL)enumerateAndMarkPlacedDirectoriesBottomUp:(id *)up enumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  if (!up)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkPlacedDirectoriesBottomUp:enumerator:]", "MBRestorePlanDB.m", 2334, "error");
  }

  v7 = enumeratorCopy;
  if (!enumeratorCopy)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkPlacedDirectoriesBottomUp:enumerator:]", "MBRestorePlanDB.m", 2335, "enumerator");
  }

  directories = [(_ATCPaths *)self->_atcPaths directories];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100272AFC;
  v12[3] = &unk_1003C2D18;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = [(_RestoreDomainPlanATC *)self _enumerate:directories error:up block:v12];

  return v10;
}

- (BOOL)enumerateAndMarkUnfinishedSymlinks:(id *)symlinks enumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  if (!symlinks)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkUnfinishedSymlinks:enumerator:]", "MBRestorePlanDB.m", 2344, "error");
  }

  v7 = enumeratorCopy;
  if (!enumeratorCopy)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkUnfinishedSymlinks:enumerator:]", "MBRestorePlanDB.m", 2345, "enumerator");
  }

  symlinks = [(_ATCPaths *)self->_atcPaths symlinks];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100272C2C;
  v12[3] = &unk_1003C2D18;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = [(_RestoreDomainPlanATC *)self _enumerate:symlinks error:symlinks block:v12];

  return v10;
}

- (BOOL)enumerateAndMarkUnfinishedZeroByteFiles:(id *)files enumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  if (!files)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkUnfinishedZeroByteFiles:enumerator:]", "MBRestorePlanDB.m", 2354, "error");
  }

  v7 = enumeratorCopy;
  if (!enumeratorCopy)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkUnfinishedZeroByteFiles:enumerator:]", "MBRestorePlanDB.m", 2355, "enumerator");
  }

  zeroByteFiles = [(_ATCPaths *)self->_atcPaths zeroByteFiles];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100272D60;
  v12[3] = &unk_1003C2D18;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = [(_RestoreDomainPlanATC *)self _enumerate:zeroByteFiles error:files block:v12];

  return v10;
}

- (BOOL)enumerateAndMarkUnfinishedAssets:(id *)assets enumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  if (!assets)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkUnfinishedAssets:enumerator:]", "MBRestorePlanDB.m", 2364, "error");
  }

  v7 = enumeratorCopy;
  if (!enumeratorCopy)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkUnfinishedAssets:enumerator:]", "MBRestorePlanDB.m", 2365, "enumerator");
  }

  assetFiles = [(_ATCPaths *)self->_atcPaths assetFiles];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100272E94;
  v12[3] = &unk_1003C2D18;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = [(_RestoreDomainPlanATC *)self _enumerate:assetFiles error:assets block:v12];

  return v10;
}

- (BOOL)enumerateAssetsToDownload:(id *)download enumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  if (!download)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAssetsToDownload:enumerator:]", "MBRestorePlanDB.m", 2374, "error");
  }

  v7 = enumeratorCopy;
  if (!enumeratorCopy)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAssetsToDownload:enumerator:]", "MBRestorePlanDB.m", 2375, "enumerator");
  }

  assetFiles = [(_ATCPaths *)self->_atcPaths assetFiles];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100272FC8;
  v12[3] = &unk_1003C2D18;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = [(_RestoreDomainPlanATC *)self _enumerate:assetFiles error:download block:v12];

  return v10;
}

- (BOOL)_enumerate:(id)_enumerate error:(id *)error block:(id)block
{
  _enumerateCopy = _enumerate;
  blockCopy = block;
  if (!_enumerateCopy)
  {
    __assert_rtn("[_RestoreDomainPlanATC _enumerate:error:block:]", "MBRestorePlanDB.m", 2392, "absolutePaths");
  }

  if (!error)
  {
    __assert_rtn("[_RestoreDomainPlanATC _enumerate:error:block:]", "MBRestorePlanDB.m", 2393, "error");
  }

  if (!blockCopy)
  {
    __assert_rtn("[_RestoreDomainPlanATC _enumerate:error:block:]", "MBRestorePlanDB.m", 2394, "block");
  }

  parentPlan = self->super._parentPlan;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100273120;
  v15[3] = &unk_1003C2CA0;
  v16 = _enumerateCopy;
  v17 = blockCopy;
  v11 = blockCopy;
  v12 = _enumerateCopy;
  v13 = [(MBRestorePlanDB *)parentPlan _withReadOnlyDB:error accessor:v15];

  return v13;
}

@end