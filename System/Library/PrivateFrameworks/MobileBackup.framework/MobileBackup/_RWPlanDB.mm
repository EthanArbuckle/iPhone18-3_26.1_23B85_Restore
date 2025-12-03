@interface _RWPlanDB
+ (BOOL)_isFatalRestoreErrorToRecordInPlan:(id)plan;
- (BOOL)_recordRetryableFailure:(id)failure domainID:(unint64_t)d restoreType:(int)type inode:(id)inode restorableID:(id)iD error:(id *)error;
@end

@implementation _RWPlanDB

- (BOOL)_recordRetryableFailure:(id)failure domainID:(unint64_t)d restoreType:(int)type inode:(id)inode restorableID:(id)iD error:(id *)error
{
  failureCopy = failure;
  inodeCopy = inode;
  iDCopy = iD;
  if (!failureCopy)
  {
    __assert_rtn("[_RWPlanDB _recordRetryableFailure:domainID:restoreType:inode:restorableID:error:]", "MBRestorePlanDB.m", 2682, "failure");
  }

  if (!d)
  {
    __assert_rtn("[_RWPlanDB _recordRetryableFailure:domainID:restoreType:inode:restorableID:error:]", "MBRestorePlanDB.m", 2683, "domainID");
  }

  if (!error)
  {
    __assert_rtn("[_RWPlanDB _recordRetryableFailure:domainID:restoreType:inode:restorableID:error:]", "MBRestorePlanDB.m", 2684, "error");
  }

  v17 = iDCopy;
  domain = [failureCopy domain];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100274478;
  v25[3] = &unk_1003C2D68;
  code = [failureCopy code];
  dCopy = d;
  typeCopy = type;
  v26 = domain;
  v27 = inodeCopy;
  v28 = v17;
  v29 = failureCopy;
  v19 = failureCopy;
  v20 = v17;
  v21 = inodeCopy;
  v22 = domain;
  v23 = [(MBSQLiteDB *)self groupInTransaction:error transaction:v25];

  return v23;
}

+ (BOOL)_isFatalRestoreErrorToRecordInPlan:(id)plan
{
  planCopy = plan;
  if ([MBError isRetryableRestoreError:planCopy]|| ([MBError isError:planCopy withCode:245]& 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [MBError isError:planCopy withCode:202]^ 1;
  }

  return v4;
}

@end