@interface PQLConnection
- (BOOL)_recordVerificationState:(unint64_t)a3 domainID:(unint64_t)a4 error:(id *)a5;
- (BOOL)executeStatements:(id)a3 error:(id *)a4;
- (BOOL)executeWithError:(id *)a3 sql:(id)a4;
- (BOOL)fetchObjectOfClass:(Class)a3 outObject:(id *)a4 error:(id *)a5 sql:(id)a6;
- (BOOL)groupInTransaction:(id *)a3 transaction:(id)a4;
- (BOOL)performSchemaUpgrades:(id)a3 isReadOnly:(BOOL)a4 error:(id *)a5;
- (id)fetchObjectOfClass:(Class)a3 error:(id *)a4 sql:(id)a5;
- (unint64_t)fetchCountWithError:(id *)a3 sql:(id)a4;
@end

@implementation PQLConnection

- (BOOL)executeWithError:(id *)a3 sql:(id)a4
{
  v6 = [(PQLConnection *)self execute:a4 args:&v9];
  v7 = v6;
  if (a3 && (v6 & 1) == 0)
  {
    *a3 = [(PQLConnection *)self lastError];
  }

  return v7;
}

- (BOOL)executeStatements:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!a4)
  {
    __assert_rtn("[PQLConnection(MBAdditions) executeStatements:error:]", "PQLConnection+MBAdditions.m", 63, "error");
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      if (![(PQLConnection *)self executeRaw:v12, v18])
      {
        break;
      }

      objc_autoreleasePoolPop(v13);
      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    v15 = [(PQLConnection *)self lastError];
    objc_autoreleasePoolPop(v13);

    if (v15)
    {
      v16 = v15;
      v14 = 0;
      *a4 = v15;
      goto LABEL_13;
    }

    v14 = 1;
  }

  else
  {
LABEL_10:
    v14 = 1;
    v15 = v7;
LABEL_13:
  }

  return v14;
}

- (id)fetchObjectOfClass:(Class)a3 error:(id *)a4 sql:(id)a5
{
  v7 = [(PQLConnection *)self fetchObjectOfClass:a3 sql:a5 args:&v12];
  v8 = v7;
  if (a4 && !v7)
  {
    v9 = [(PQLConnection *)self lastError];
    *a4 = [v9 excludingNotFound];
  }

  return v8;
}

- (BOOL)fetchObjectOfClass:(Class)a3 outObject:(id *)a4 error:(id *)a5 sql:(id)a6
{
  v9 = [(PQLConnection *)self fetchObjectOfClass:a3 sql:a6 args:&v14];
  v10 = [(PQLConnection *)self lastError];
  v11 = [v10 excludingNotFound];

  if (!v11)
  {
    v12 = v9;
    a5 = a4;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = v11;
  if (a5)
  {
LABEL_3:
    *a5 = v12;
  }

LABEL_4:

  return v11 == 0;
}

- (unint64_t)fetchCountWithError:(id *)a3 sql:(id)a4
{
  v5 = a4;
  v6 = [(PQLConnection *)self fetchObjectOfClass:objc_opt_class() sql:v5 args:&v9];

  if (v6)
  {
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (BOOL)performSchemaUpgrades:(id)a3 isReadOnly:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v9 = a3;
  if (!v9)
  {
    __assert_rtn("[PQLConnection(MBAdditions) performSchemaUpgrades:isReadOnly:error:]", "PQLConnection+MBAdditions.m", 118, "schemaUpgrades");
  }

  if (!a5)
  {
    __assert_rtn("[PQLConnection(MBAdditions) performSchemaUpgrades:isReadOnly:error:]", "PQLConnection+MBAdditions.m", 119, "error");
  }

  v10 = v9;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v33;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        if ([v16 version] <= v13)
        {
          v17 = +[NSAssertionHandler currentHandler];
          [v17 handleFailureInMethod:a2 object:self file:@"PQLConnection+MBAdditions.m" lineNumber:125 description:@"Database versions are not ordered correctly!"];
        }

        v13 = [v16 version];
      }

      v12 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v18 = [(PQLConnection *)self userVersion];
  v19 = [v18 unsignedIntValue];

  if (v19 >= v13)
  {
LABEL_26:
    v20 = 1;
    goto LABEL_28;
  }

  if (!v6)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v21 = v10;
    v22 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v29;
      while (2)
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(v21);
          }

          if (![(PQLConnection *)self _performSchemaUpgrade:*(*(&v28 + 1) + 8 * j) fromDatabaseVersion:v19 error:a5, v28])
          {
            [(PQLConnection *)self close:0];

            v20 = 0;
            goto LABEL_28;
          }

          v26 = [(PQLConnection *)self userVersion];
          v19 = [v26 unsignedIntValue];
        }

        v23 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_26;
  }

  [(PQLConnection *)self close:0];
  [MBError errorWithCode:1 format:@"Can't migrate RO database"];
  *a5 = v20 = 0;
LABEL_28:

  return v20;
}

- (BOOL)groupInTransaction:(id *)a3 transaction:(id)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1001E4AA0;
  v16 = sub_1001E4AB0;
  v17 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001E4D64;
  v9[3] = &unk_1003C13F8;
  v6 = a4;
  v10 = v6;
  v11 = &v12;
  v7 = [(PQLConnection *)self groupInTransaction:v9];
  if (a3)
  {
    *a3 = v13[5];
  }

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (BOOL)_recordVerificationState:(unint64_t)a3 domainID:(unint64_t)a4 error:(id *)a5
{
  if (!a3)
  {
    __assert_rtn("[PQLConnection(_MBPlanAdditions) _recordVerificationState:domainID:error:]", "MBRestorePlanDB.m", 2442, "state");
  }

  if (!a4)
  {
    __assert_rtn("[PQLConnection(_MBPlanAdditions) _recordVerificationState:domainID:error:]", "MBRestorePlanDB.m", 2443, "domainID");
  }

  if (!a5)
  {
    __assert_rtn("[PQLConnection(_MBPlanAdditions) _recordVerificationState:domainID:error:]", "MBRestorePlanDB.m", 2444, "error");
  }

  return [(PQLConnection *)self executeWithError:a5 sql:@"\nUPDATE Domains\n    SET verificationStatus = %u\n WHERE domainID = %llu", a3, a4];
}

@end