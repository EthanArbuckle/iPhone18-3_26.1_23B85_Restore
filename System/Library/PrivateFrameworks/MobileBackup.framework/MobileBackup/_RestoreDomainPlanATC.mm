@interface _RestoreDomainPlanATC
- (BOOL)_enumerate:(id)a3 error:(id *)a4 block:(id)a5;
- (BOOL)enumerateAndMarkNotStartedDirectoriesTopDown:(id *)a3 enumerator:(id)a4;
- (BOOL)enumerateAndMarkPlacedDirectoriesBottomUp:(id *)a3 enumerator:(id)a4;
- (BOOL)enumerateAndMarkUnfinishedAssets:(id *)a3 enumerator:(id)a4;
- (BOOL)enumerateAndMarkUnfinishedSymlinks:(id *)a3 enumerator:(id)a4;
- (BOOL)enumerateAndMarkUnfinishedZeroByteFiles:(id *)a3 enumerator:(id)a4;
- (BOOL)enumerateAssetsToDownload:(id *)a3 enumerator:(id)a4;
- (id)_initWithParentPlan:(id)a3 domain:(id)a4 domainID:(unint64_t)a5 atcPaths:(id)a6;
@end

@implementation _RestoreDomainPlanATC

- (id)_initWithParentPlan:(id)a3 domain:(id)a4 domainID:(unint64_t)a5 atcPaths:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v10)
  {
    __assert_rtn("[_RestoreDomainPlanATC _initWithParentPlan:domain:domainID:atcPaths:]", "MBRestorePlanDB.m", 2303, "parentPlan");
  }

  if (!v11)
  {
    __assert_rtn("[_RestoreDomainPlanATC _initWithParentPlan:domain:domainID:atcPaths:]", "MBRestorePlanDB.m", 2304, "domain");
  }

  v13 = v12;
  if (!v12)
  {
    __assert_rtn("[_RestoreDomainPlanATC _initWithParentPlan:domain:domainID:atcPaths:]", "MBRestorePlanDB.m", 2305, "atcPaths");
  }

  v17.receiver = self;
  v17.super_class = _RestoreDomainPlanATC;
  v14 = [(_RestoreDomainPlanBase *)&v17 _initWithParentPlan:v10 domain:v11 domainID:a5 restoreType:2];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 5, a6);
  }

  return v15;
}

- (BOOL)enumerateAndMarkNotStartedDirectoriesTopDown:(id *)a3 enumerator:(id)a4
{
  v6 = a4;
  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkNotStartedDirectoriesTopDown:enumerator:]", "MBRestorePlanDB.m", 2324, "error");
  }

  v7 = v6;
  if (!v6)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkNotStartedDirectoriesTopDown:enumerator:]", "MBRestorePlanDB.m", 2325, "enumerator");
  }

  v8 = [(_ATCPaths *)self->_atcPaths directories];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002729C8;
  v12[3] = &unk_1003C2D18;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = [(_RestoreDomainPlanATC *)self _enumerate:v8 error:a3 block:v12];

  return v10;
}

- (BOOL)enumerateAndMarkPlacedDirectoriesBottomUp:(id *)a3 enumerator:(id)a4
{
  v6 = a4;
  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkPlacedDirectoriesBottomUp:enumerator:]", "MBRestorePlanDB.m", 2334, "error");
  }

  v7 = v6;
  if (!v6)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkPlacedDirectoriesBottomUp:enumerator:]", "MBRestorePlanDB.m", 2335, "enumerator");
  }

  v8 = [(_ATCPaths *)self->_atcPaths directories];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100272AFC;
  v12[3] = &unk_1003C2D18;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = [(_RestoreDomainPlanATC *)self _enumerate:v8 error:a3 block:v12];

  return v10;
}

- (BOOL)enumerateAndMarkUnfinishedSymlinks:(id *)a3 enumerator:(id)a4
{
  v6 = a4;
  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkUnfinishedSymlinks:enumerator:]", "MBRestorePlanDB.m", 2344, "error");
  }

  v7 = v6;
  if (!v6)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkUnfinishedSymlinks:enumerator:]", "MBRestorePlanDB.m", 2345, "enumerator");
  }

  v8 = [(_ATCPaths *)self->_atcPaths symlinks];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100272C2C;
  v12[3] = &unk_1003C2D18;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = [(_RestoreDomainPlanATC *)self _enumerate:v8 error:a3 block:v12];

  return v10;
}

- (BOOL)enumerateAndMarkUnfinishedZeroByteFiles:(id *)a3 enumerator:(id)a4
{
  v6 = a4;
  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkUnfinishedZeroByteFiles:enumerator:]", "MBRestorePlanDB.m", 2354, "error");
  }

  v7 = v6;
  if (!v6)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkUnfinishedZeroByteFiles:enumerator:]", "MBRestorePlanDB.m", 2355, "enumerator");
  }

  v8 = [(_ATCPaths *)self->_atcPaths zeroByteFiles];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100272D60;
  v12[3] = &unk_1003C2D18;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = [(_RestoreDomainPlanATC *)self _enumerate:v8 error:a3 block:v12];

  return v10;
}

- (BOOL)enumerateAndMarkUnfinishedAssets:(id *)a3 enumerator:(id)a4
{
  v6 = a4;
  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkUnfinishedAssets:enumerator:]", "MBRestorePlanDB.m", 2364, "error");
  }

  v7 = v6;
  if (!v6)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAndMarkUnfinishedAssets:enumerator:]", "MBRestorePlanDB.m", 2365, "enumerator");
  }

  v8 = [(_ATCPaths *)self->_atcPaths assetFiles];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100272E94;
  v12[3] = &unk_1003C2D18;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = [(_RestoreDomainPlanATC *)self _enumerate:v8 error:a3 block:v12];

  return v10;
}

- (BOOL)enumerateAssetsToDownload:(id *)a3 enumerator:(id)a4
{
  v6 = a4;
  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAssetsToDownload:enumerator:]", "MBRestorePlanDB.m", 2374, "error");
  }

  v7 = v6;
  if (!v6)
  {
    __assert_rtn("[_RestoreDomainPlanATC enumerateAssetsToDownload:enumerator:]", "MBRestorePlanDB.m", 2375, "enumerator");
  }

  v8 = [(_ATCPaths *)self->_atcPaths assetFiles];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100272FC8;
  v12[3] = &unk_1003C2D18;
  v12[4] = self;
  v13 = v7;
  v9 = v7;
  v10 = [(_RestoreDomainPlanATC *)self _enumerate:v8 error:a3 block:v12];

  return v10;
}

- (BOOL)_enumerate:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v8)
  {
    __assert_rtn("[_RestoreDomainPlanATC _enumerate:error:block:]", "MBRestorePlanDB.m", 2392, "absolutePaths");
  }

  if (!a4)
  {
    __assert_rtn("[_RestoreDomainPlanATC _enumerate:error:block:]", "MBRestorePlanDB.m", 2393, "error");
  }

  if (!v9)
  {
    __assert_rtn("[_RestoreDomainPlanATC _enumerate:error:block:]", "MBRestorePlanDB.m", 2394, "block");
  }

  parentPlan = self->super._parentPlan;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100273120;
  v15[3] = &unk_1003C2CA0;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = [(MBRestorePlanDB *)parentPlan _withReadOnlyDB:a4 accessor:v15];

  return v13;
}

@end