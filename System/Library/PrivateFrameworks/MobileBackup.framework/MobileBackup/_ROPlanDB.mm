@interface _ROPlanDB
- (BOOL)_enumerateFatalFailuresOfType:(id)a3 error:(id *)a4 enumerator:(id)a5;
- (BOOL)_enumerateNonFatalFailuresOfType:(id)a3 error:(id *)a4 enumerator:(id)a5;
- (id)_childFailuresOfErrorID:(unint64_t)a3 error:(id *)a4;
@end

@implementation _ROPlanDB

- (id)_childFailuresOfErrorID:(unint64_t)a3 error:(id *)a4
{
  if (!a3)
  {
    __assert_rtn("[_ROPlanDB _childFailuresOfErrorID:error:]", "MBRestorePlanDB.m", 2570, "errorID");
  }

  if (!a4)
  {
    __assert_rtn("[_ROPlanDB _childFailuresOfErrorID:error:]", "MBRestorePlanDB.m", 2571, "error");
  }

  v7 = +[NSMutableArray array];
  v8 = [(MBSQLiteDB *)self fetchSQL:@"\nSELECT\n  E.errorID, \n\n   E.errorDomain, \n   E.errorCode, \n   E.description, \n   E.timestamp\n FROM  Errors AS E\n\n  JOIN FatalErrorRelationships AS F\n    ON E.errorID = F.errorID\n WHERE F.parentErrorID = %llu", a3];;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100273C10;
  v13[3] = &unk_1003C2D40;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  v10 = [v8 enumerateWithError:a4 block:v13];

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_enumerateFatalFailuresOfType:(id)a3 error:(id *)a4 enumerator:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!a4)
  {
    __assert_rtn("[_ROPlanDB _enumerateFatalFailuresOfType:error:enumerator:]", "MBRestorePlanDB.m", 2607, "error");
  }

  v10 = v9;
  if (!v9)
  {
    __assert_rtn("[_ROPlanDB _enumerateFatalFailuresOfType:error:enumerator:]", "MBRestorePlanDB.m", 2608, "enumerator");
  }

  v11 = [(MBSQLiteDB *)self fetchSQL:@"\nSELECT\n  E.errorID, \n\n   E.errorDomain, \n   E.errorCode, \n   E.description, \n   E.timestamp, \n\n   E.count, \n   D.domain, \n   R.relativePath, \n   E.inode\n FROM  Errors AS E\n\n  LEFT JOIN Domains AS D\n    ON E.domainID = D.domainID\n  LEFT JOIN Restorables AS R\n    ON E.restorableID = R.restorableID\n\n  JOIN FatalErrorRelationships AS F\n    ON E.errorID = F.errorID\n WHERE F.parentErrorID IS NULL"];;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100273EDC;
  v15[3] = &unk_1003C1808;
  v15[4] = self;
  v16 = v10;
  v12 = v10;
  v13 = [v11 enumerateWithError:a4 block:v15];

  return v13;
}

- (BOOL)_enumerateNonFatalFailuresOfType:(id)a3 error:(id *)a4 enumerator:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!a4)
  {
    __assert_rtn("[_ROPlanDB _enumerateNonFatalFailuresOfType:error:enumerator:]", "MBRestorePlanDB.m", 2643, "error");
  }

  v10 = v9;
  if (!v9)
  {
    __assert_rtn("[_ROPlanDB _enumerateNonFatalFailuresOfType:error:enumerator:]", "MBRestorePlanDB.m", 2644, "enumerator");
  }

  v11 = [(MBSQLiteDB *)self fetchSQL:@"\nSELECT\n\n   E.errorDomain, \n   E.errorCode, \n   E.description, \n   E.timestamp, \n\n   E.count, \n   D.domain, \n   R.relativePath, \n   E.inode\n FROM  Errors AS E\n\n  LEFT JOIN Domains AS D\n    ON E.domainID = D.domainID\n  LEFT JOIN Restorables AS R\n    ON E.restorableID = R.restorableID\n WHERE E.errorID NOT IN (\n    SELECT errorID FROM FatalErrorRelationships\n)"];;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100274184;
  v15[3] = &unk_1003BE658;
  v16 = v10;
  v12 = v10;
  v13 = [v11 enumerateWithError:a4 block:v15];

  return v13;
}

@end