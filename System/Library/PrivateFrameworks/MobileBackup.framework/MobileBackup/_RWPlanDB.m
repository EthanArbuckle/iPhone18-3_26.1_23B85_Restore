@interface _RWPlanDB
+ (BOOL)_isFatalRestoreErrorToRecordInPlan:(id)a3;
- (BOOL)_recordRetryableFailure:(id)a3 domainID:(unint64_t)a4 restoreType:(int)a5 inode:(id)a6 restorableID:(id)a7 error:(id *)a8;
@end

@implementation _RWPlanDB

- (BOOL)_recordRetryableFailure:(id)a3 domainID:(unint64_t)a4 restoreType:(int)a5 inode:(id)a6 restorableID:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  if (!v14)
  {
    __assert_rtn("[_RWPlanDB _recordRetryableFailure:domainID:restoreType:inode:restorableID:error:]", "MBRestorePlanDB.m", 2682, "failure");
  }

  if (!a4)
  {
    __assert_rtn("[_RWPlanDB _recordRetryableFailure:domainID:restoreType:inode:restorableID:error:]", "MBRestorePlanDB.m", 2683, "domainID");
  }

  if (!a8)
  {
    __assert_rtn("[_RWPlanDB _recordRetryableFailure:domainID:restoreType:inode:restorableID:error:]", "MBRestorePlanDB.m", 2684, "error");
  }

  v17 = v16;
  v18 = [v14 domain];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100274478;
  v25[3] = &unk_1003C2D68;
  v30 = [v14 code];
  v31 = a4;
  v32 = a5;
  v26 = v18;
  v27 = v15;
  v28 = v17;
  v29 = v14;
  v19 = v14;
  v20 = v17;
  v21 = v15;
  v22 = v18;
  v23 = [(MBSQLiteDB *)self groupInTransaction:a8 transaction:v25];

  return v23;
}

+ (BOOL)_isFatalRestoreErrorToRecordInPlan:(id)a3
{
  v3 = a3;
  if ([MBError isRetryableRestoreError:v3]|| ([MBError isError:v3 withCode:245]& 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [MBError isError:v3 withCode:202]^ 1;
  }

  return v4;
}

@end