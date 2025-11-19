void sub_100154250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100154268(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  v4 = [*(a1 + 32) error];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(*(a1 + 48) + 8) + 40) == 0;
  }

  return v5;
}

void sub_100154404(uint64_t a1)
{
  v2 = [[CPLPrequeliteWriteTransactionBlocker alloc] initWithBypassQueue:*(*(a1 + 32) + 8) blockedQueue:*(*(a1 + 32) + 16)];
  (*(*(a1 + 40) + 16))();
}

void sub_100156354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100156378(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100156470;
  v10[3] = &unk_10027B5C8;
  v7 = a2;
  v11 = v7;
  v12 = *(a1 + 32);
  v9 = *(a1 + 40);
  v8 = v9;
  v13 = v9;
  v14 = *(a1 + 56);
  [a3 enumerateIndexesUsingBlock:v10];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

void sub_100156470(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) integerValue];
  if (([*(a1 + 40) hasActiveScopeIndex:a2 scopeType:v6] & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = sub_100150214();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [CPLEngineScopeCleanupTasks scopeTypeDescriptionForScopeType:v6];
        *buf = 138412546;
        v14 = v8;
        v15 = 2048;
        v16 = a2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Found orphan %@ index %ld - will schedule a clean-up", buf, 0x16u);
      }
    }

    v9 = *(a1 + 48);
    v10 = *(*(a1 + 64) + 8);
    obj = *(v10 + 40);
    v11 = [v9 addCleanupTaskForScopeWithIndex:a2 scopeIdentifier:@"__Orphan__" scopeType:v6 error:&obj];
    objc_storeStrong((v10 + 40), obj);
    *(*(*(a1 + 56) + 8) + 24) = v11;
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      *a3 = 1;
    }
  }
}

void sub_100157500(void *a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v2 = a1[5];
  v18 = v2;
  if (v2 > 0)
  {
    v3 = &v18;
    do
    {
      if (v2 >= 0xA00000)
      {
        v4 = 10485760;
      }

      else
      {
        v4 = v2;
      }

      *v3 = v2 - v4;
      v5 = a1[4];
      v6 = *(v5 + 8);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001BB75C;
      block[3] = &unk_1002740F8;
      block[5] = &v15;
      block[6] = v4;
      block[4] = v5;
      dispatch_sync(v6, block);
      v3 = v16 + 3;
      v2 = v16[3];
    }

    while (v2 > 0);
  }

  v7 = a1[4];
  v8 = *(v7 + 8);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001576DC;
  v13[3] = &unk_100271F68;
  v9 = a1[6];
  v13[4] = v7;
  v13[5] = v9;
  v10 = v13;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100002C9C;
  v19[3] = &unk_100271E98;
  v20 = v10;
  v11 = v8;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v19);
  dispatch_async(v11, v12);

  _Block_object_dispose(&v15, 8);
}

id sub_1001576DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32))
  {
    if ([v2 _sizeInBytes] < *(a1 + 40) && (_CPLSilentLogging & 1) == 0)
    {
      sub_1001BDB00();
    }

    v3 = [CPLPrequeliteTable tableWithName:@"initialQueryTracker"];
    if ([*(a1 + 32) hasTable:v3])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v4 = sub_100150214();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = [v3 tableName];
          *buf = 138543362;
          v11 = v5;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dropping %{public}@", buf, 0xCu);
        }
      }

      if (([*(*(a1 + 32) + 32) cplExecute:{@"DROP TABLE %@", v3}] & 1) == 0 && (_CPLSilentLogging & 1) == 0)
      {
        v6 = sub_100150214();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = [v3 tableName];
          v8 = [*(*(a1 + 32) + 32) lastError];
          *buf = 138543618;
          v11 = v7;
          v12 = 2112;
          v13 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to drop %{public}@: %@", buf, 0x16u);
        }
      }
    }

    v2 = *(a1 + 32);
  }

  *(v2 + 336) = 0;
  return [*(a1 + 32) _notifyVacuumDidComplete];
}

id sub_100157A00(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 344);
  if (!v3)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = *(*v2 + 344);
    *(*v2 + 344) = v4;

    v3 = *(*v2 + 344);
  }

  v6 = objc_retainBlock(*(a1 + 40));
  [v3 addObject:v6];

  v7 = *(a1 + 32);
  result = *(v7 + 32);
  if (result)
  {
    if (*(v7 + 336))
    {
      return result;
    }

    if ([result autovacuumableSpaceInBytes] >= 1)
    {
      return sub_1001BDBBC();
    }

    v9 = *v2;
  }

  else
  {
    v9 = *(a1 + 32);
  }

  return [v9 _notifyVacuumDidComplete];
}

void sub_100157E88(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock((v2 + v3));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100157ED4(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 28))
  {
    *(*(*(result + 40) + 8) + 24) = 0;
  }

  else
  {
    *(v1 + 28) = 1;
  }

  return result;
}

uint64_t sub_100157F04(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    sub_1001BDCB4(result);
  }

  return result;
}

void sub_100158034(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = @"date";
  v3 = +[NSDate date];
  v9[1] = @"comment";
  v10[0] = v3;
  v10[1] = @"manually marked as corrupted";
  v4 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v2 _markLibraryAsCorruptedWithInfo:v4];

  v5 = +[NSNotificationCenter defaultCenter];
  v6 = CPLLibraryMustBeWipedNotificationName;
  v7 = [*(a1 + 32) abstractObject];
  v8 = [v7 engineLibrary];
  [v5 postNotificationName:v6 object:v8];
}

void sub_100158BFC(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.store.pql");
  v3 = qword_1002D2B38;
  qword_1002D2B38 = v2;
}

void sub_100158C3C(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.store.pql.statistics");
  v3 = qword_1002D2B48;
  qword_1002D2B48 = v2;
}

void sub_100158C7C(id a1)
{
  v3[0] = @"wiping database because the current version is really too old";
  v3[1] = @"wiping database because the current version is too new";
  v4[0] = @"Local Synchronization state is really too old and needs to be wiped and rebuilt";
  v4[1] = @"Framework version has been downgraded and the local Synchronization state needs to be rebuilt from scratch to match what's on the server";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_1002D2B50;
  qword_1002D2B50 = v1;
}

id sub_100158D30@<X0>(void *a1@<X0>, uint64_t x8_0@<X8>)
{
  v4 = *(a1 + x8_0);

  return [a1 addGlobalVariable:v4 defaultValue:0 error:0];
}

id sub_100158D60(uint64_t a1)
{

  return [v1 addGlobalVariable:v2 defaultValue:a1 error:0];
}

void sub_100158DA8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + a2);
  *(v2 + a2) = a1;
}

uint64_t sub_100158DDC(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

id sub_100158DF4(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return [a1 removeItemAtURL:v10 error:&a10];
}

id sub_10015912C()
{
  if (qword_1002D2B60 != -1)
  {
    sub_1001BE1E0();
  }

  v1 = qword_1002D2B68;

  return v1;
}

void sub_100159F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100159FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = [*(a1 + 32) countOfOriginalImages];
    if (v7)
    {
      v8 = [[NSString alloc] initWithFormat:@"%lu images", v7];
      [v6 addObject:v8];
    }

    v9 = [*(a1 + 32) countOfOriginalVideos];
    if (v9)
    {
      v10 = [[NSString alloc] initWithFormat:@"%lu videos", v9];
      [v6 addObject:v10];
    }

    v11 = [*(a1 + 32) countOfOriginalOthers];
    if (v11)
    {
      v12 = [[NSString alloc] initWithFormat:@"%lu others", v11];
      [v6 addObject:v12];
    }

    if ([v6 count])
    {
      v13 = [NSString alloc];
      v14 = [v6 componentsJoinedByString:{@", "}];
      v15 = [v13 initWithFormat:@" (%@)", v14];
    }

    else
    {
      v15 = &stru_10027C2F0;
    }
  }

  else
  {
    v15 = &stru_10027C2F0;
  }

  v16 = *(*(*(a1 + 40) + 8) + 40);
  if (v16)
  {
    v17 = [CPLResource shortDescriptionForResourceType:a2];
    [v16 appendFormat:@"\n\t%@: %ld%@", v17, a3, v15];
  }

  else
  {
    v23.receiver = *(a1 + 32);
    v23.super_class = CPLPrequeliteOutgoingResources;
    v18 = objc_msgSendSuper2(&v23, "status");
    v19 = [CPLResource shortDescriptionForResourceType:a2];
    v20 = [NSMutableString stringWithFormat:@"%@\n\t%@: %ld%@", v18, v19, a3, v15];
    v21 = *(*(a1 + 40) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
  }
}

NSString *__cdecl sub_10015A240(id a1, NSNumber *a2)
{
  v2 = [(NSNumber *)a2 unsignedIntegerValue];

  return [CPLResource shortDescriptionForResourceType:v2];
}

void sub_10015A580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10015A5B4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) mainTable];
  *(*(*(a1 + 48) + 8) + 24) = [v6 cplExecute:{@"DELETE FROM %@ WHERE rowID = %ld", v7, a2}];

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

void sub_10015A640(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.outgoingResources.pql");
  v3 = qword_1002D2B68;
  qword_1002D2B68 = v2;
}

id sub_10015B0E8()
{
  if (qword_1002D2B70 != -1)
  {
    sub_1001BEA9C();
  }

  v1 = qword_1002D2B78;

  return v1;
}

id sub_10015B260(uint64_t a1, void *a2)
{
  v3 = a2;
  **(a1 + 32) = [v3 intAtIndex:1] == 0;
  v4 = [v3 stringAtIndex:0];

  return v4;
}

id sub_10015C454(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 integerAtIndex:1];
  v5 = v4;
  if ((*(a1 + 56) & 1) != 0 || v4)
  {
    v11 = [v3 cplChangeAtIndex:3];
    if (v11)
    {
      v7 = v11;
      v8 = 6;
      v9 = 5;
      v10 = 4;
      goto LABEL_7;
    }

LABEL_10:
    v7 = +[NSNull null];
    goto LABEL_14;
  }

  v6 = [v3 cplChangeAtIndex:2];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = 9;
  v9 = 8;
  v10 = 7;
LABEL_7:
  [v7 setScopedIdentifier:*(a1 + 32)];
  v12 = [v3 stringAtIndex:v10];
  [v7 setRelatedIdentifier:v12];

  v13 = [v3 stringAtIndex:v9];
  [v7 setSecondaryIdentifier:v13];

  [*(a1 + 40) _updateOtherScopeIdentifierInRecord:v7 otherScopeIndex:{objc_msgSend(v3, "integerAtIndex:", v8)}];
  v14 = *(a1 + 48);
  if (v14)
  {
    if (v5)
    {
      v15 = [v3 BOOLAtIndex:10];
      v14 = *(a1 + 48);
    }

    else
    {
      v15 = 1;
    }

    *v14 = v15;
  }

  [v7 awakeFromStorage];
LABEL_14:

  return v7;
}

id sub_10015C748(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 integerAtIndex:1];
  v5 = *(a1 + 48);
  if (v4)
  {
    *v5 = 0;
    v6 = [v3 cplChangeAtIndex:3];
    if (v6)
    {
      v7 = v6;
      [v6 setScopedIdentifier:*(a1 + 32)];
      **(a1 + 56) = [v3 BOOLAtIndex:10];
      v8 = 6;
      v9 = 5;
      v10 = 4;
LABEL_6:
      v12 = [v3 stringAtIndex:v10];
      [v7 setRelatedIdentifier:v12];

      v13 = [v3 stringAtIndex:v9];
      [v7 setSecondaryIdentifier:v13];

      [*(a1 + 40) _updateOtherScopeIdentifierInRecord:v7 otherScopeIndex:{objc_msgSend(v3, "integerAtIndex:", v8)}];
      [v7 awakeFromStorage];
      goto LABEL_8;
    }
  }

  else
  {
    *v5 = 1;
    v11 = [v3 cplChangeAtIndex:2];
    if (v11)
    {
      v7 = v11;
      [v11 setScopedIdentifier:*(a1 + 32)];
      **(a1 + 56) = 1;
      v8 = 9;
      v9 = 8;
      v10 = 7;
      goto LABEL_6;
    }
  }

  **(a1 + 56) = 0;
  v7 = +[NSNull null];
LABEL_8:

  return v7;
}

id sub_10015CAE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 72) | ([v3 intAtIndex:1] != 0);
  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = [v3 cplChangeAtIndex:v5];
  if (*(a1 + 56) && (objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_18;
  }

  if (!v6)
  {
LABEL_18:
    v6 = +[NSNull null];
    goto LABEL_28;
  }

  if (v4)
  {
    v7 = 4;
  }

  else
  {
    v7 = 7;
  }

  v8 = [v3 stringAtIndex:v7];
  v9 = v8;
  v10 = *(a1 + 32);
  if (v8)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (!(v8 | v10))
    {
LABEL_20:
      v12 = [v3 stringAtIndex:0];
      v13 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:*(a1 + 40) identifier:v12];
      [v13 setScopeIndex:*(a1 + 64)];
      [v6 setScopedIdentifier:v13];
      [v6 setRelatedIdentifier:v9];
      if (v4)
      {
        v14 = 5;
      }

      else
      {
        v14 = 8;
      }

      if (v4)
      {
        v15 = 6;
      }

      else
      {
        v15 = 9;
      }

      v16 = [v3 stringAtIndex:v14];
      [v6 setSecondaryIdentifier:v16];

      [*(a1 + 48) _updateOtherScopeIdentifierInRecord:v6 otherScopeIndex:{objc_msgSend(v3, "integerAtIndex:", v15)}];
      [v6 awakeFromStorage];

      goto LABEL_27;
    }
  }

  else if ([v8 isEqual:?])
  {
    goto LABEL_20;
  }

  +[NSNull null];
  v6 = v12 = v6;
LABEL_27:

LABEL_28:

  return v6;
}

id sub_10015CE9C(id a1, PQLResultSet *a2, id *a3)
{
  v3 = a2;
  v4 = [(PQLResultSet *)v3 stringAtIndex:1];
  if (!v4)
  {
    v4 = [(PQLResultSet *)v3 stringAtIndex:0];
    if (!v4)
    {
      v4 = +[NSNull null];
    }
  }

  v5 = v4;

  return v5;
}

id sub_10015D2E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 integerAtIndex:5] == *(a1 + 48) && (objc_msgSend(v3, "cplChangeAtIndex:", 1), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    [v4 setScopedIdentifier:*(a1 + 32)];
    v6 = [v3 stringAtIndex:2];
    [v5 setRelatedIdentifier:v6];

    v7 = [v3 stringAtIndex:3];
    [v5 setSecondaryIdentifier:v7];

    [v5 awakeFromStorage];
    [*(a1 + 40) _updateOtherScopeIdentifierInRecord:v5 otherScopeIndex:{objc_msgSend(v3, "integerAtIndex:", 4)}];
  }

  else
  {
    v5 = +[NSNull null];
  }

  return v5;
}

id sub_10015D72C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 integerAtIndex:5] == *(a1 + 48))
  {
    v4 = [v3 cplChangeAtIndex:1];
    if (*(a1 + 56) && (objc_opt_isKindOfClass() & 1) == 0)
    {
    }

    else if (v4)
    {
      v5 = [v3 stringAtIndex:0];
      v6 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:*(a1 + 32) identifier:v5];
      [v6 setScopeIndex:*(a1 + 64)];
      [v4 setScopedIdentifier:v6];
      v7 = [v3 stringAtIndex:2];
      [v4 setRelatedIdentifier:v7];

      v8 = [v3 stringAtIndex:3];
      [v4 setSecondaryIdentifier:v8];

      [v4 awakeFromStorage];
      [*(a1 + 40) _updateOtherScopeIdentifierInRecord:v4 otherScopeIndex:{objc_msgSend(v3, "integerAtIndex:", 4)}];

      goto LABEL_8;
    }
  }

  v4 = +[NSNull null];
LABEL_8:

  return v4;
}

id sub_10015E268(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40) | ([v3 intAtIndex:1] != 0);
  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = [v3 cplChangeAtIndex:v5];
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 32);
    v9 = [v3 stringAtIndex:0];
    v10 = [v8 scopedIdentifierForCloudIdentifier:v9 scopeIndex:{objc_msgSend(v3, "integerAtIndex:", 10)}];

    if (v10)
    {
      [v7 setScopedIdentifier:v10];
      if (v4)
      {
        v11 = 4;
      }

      else
      {
        v11 = 7;
      }

      if (v4)
      {
        v12 = 5;
      }

      else
      {
        v12 = 8;
      }

      if (v4)
      {
        v13 = 6;
      }

      else
      {
        v13 = 9;
      }

      v14 = [v3 stringAtIndex:v11];
      [v7 setRelatedIdentifier:v14];

      v15 = [v3 stringAtIndex:v12];
      [v7 setSecondaryIdentifier:v15];

      [*(a1 + 32) _updateOtherScopeIdentifierInRecord:v7 otherScopeIndex:{objc_msgSend(v3, "integerAtIndex:", v13)}];
      [v7 awakeFromStorage];
    }

    else
    {
      v16 = +[NSNull null];

      v7 = v16;
    }
  }

  else
  {
    v7 = +[NSNull null];
  }

  return v7;
}

id sub_10015E418(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40) | ([v3 intAtIndex:1] != 0);
  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = [v3 cplChangeAtIndex:v5];
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 32);
    v9 = [v3 stringAtIndex:0];
    v10 = [v8 scopedIdentifierForCloudIdentifier:v9 scopeIndex:{objc_msgSend(v3, "integerAtIndex:", 10)}];

    if (v10)
    {
      [v7 setScopedIdentifier:v10];
      if (v4)
      {
        v11 = 4;
      }

      else
      {
        v11 = 7;
      }

      if (v4)
      {
        v12 = 5;
      }

      else
      {
        v12 = 8;
      }

      if (v4)
      {
        v13 = 6;
      }

      else
      {
        v13 = 9;
      }

      v14 = [v3 stringAtIndex:v11];
      [v7 setRelatedIdentifier:v14];

      v15 = [v3 stringAtIndex:v12];
      [v7 setSecondaryIdentifier:v15];

      [*(a1 + 32) _updateOtherScopeIdentifierInRecord:v7 otherScopeIndex:{objc_msgSend(v3, "integerAtIndex:", v13)}];
      [v7 awakeFromStorage];
    }

    else
    {
      v16 = +[NSNull null];

      v7 = v16;
    }
  }

  else
  {
    v7 = +[NSNull null];
  }

  return v7;
}

void sub_10015E7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10015E7C8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5 || (v8 = v5, v6 = [v5 integerValue], v5 = v8, v6 < 1) || (objc_msgSend(*(a1 + 32), "scopeWithLocalScopeIndex:"), v7 = objc_claimAutoreleasedReturnValue(), v7, v5 = v8, !v7))
  {
    *(*(*(a1 + 40) + 8) + 24) += a3;
  }
}

void sub_10015EA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10015EA28(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"(nil)";
  }

  v7 = v6;
  [*(*(*(a1 + 32) + 8) + 40) appendFormat:@"\n\t%@: %ld", v6, a3];
}

void sub_10015EBFC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    v5 = @"(nil)";
  }

  v8 = v5;
  v6 = *(a1 + 32);
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  [v6 setObject:v7 forKey:v8];
}

id sub_10015EF14(id a1, PQLResultSet *a2, id *a3)
{
  v3 = a2;
  v4 = [(PQLResultSet *)v3 stringAtIndex:1];
  if (!v4)
  {
    v4 = [(PQLResultSet *)v3 stringAtIndex:0];
    if (!v4)
    {
      v4 = +[NSNull null];
    }
  }

  v5 = v4;

  return v5;
}

void sub_10015F4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_10015F4CC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cplExecute:{@"UPDATE %@ SET otherScopeIndex = 0, stagedOtherScopeIndex = 0 WHERE rowID = %lu", *(a1 + 40), a2}];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v5 = [*(a1 + 32) lastError];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *a3 = 1;
  }
}

void sub_10015F568(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.cloudcache.pql");
  v3 = qword_1002D2B78;
  qword_1002D2B78 = v2;
}

void sub_10015F688(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithTypeName:"INTEGER" defaultValue:&off_10028F118 objcClass:objc_opt_class()];
  v2 = qword_1002D2B80;
  qword_1002D2B80 = v1;
}

void sub_10015F794(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithTypeName:"DATA" defaultValue:0 objcClass:objc_opt_class()];
  v2 = qword_1002D2B90;
  qword_1002D2B90 = v1;
}

void sub_10015F89C(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithTypeName:"TEXT" defaultValue:0 objcClass:objc_opt_class()];
  v2 = qword_1002D2BA0;
  qword_1002D2BA0 = v1;
}

void sub_10015F948(id a1)
{
  v1 = objc_alloc_init(_CPLPrequeliteDateType);
  v2 = qword_1002D2BB0;
  qword_1002D2BB0 = v1;
}

uint64_t sub_10016225C(sqlite3_context *a1)
{
  v1 = *(sqlite3_user_data(a1) + 2);

  return v1();
}

void sub_1001622D0(id a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (sqlite3_value_type(*a4) == 1)
  {
    v6 = sqlite3_value_int64(*a4);
    v7 = a4[1];
    v8 = pql_sqlite3_value_object();
    sqlite3_result_int(a2, [v8 containsIndex:v6]);
  }

  else
  {

    sqlite3_result_int(a2, 0);
  }
}

id sub_100162EB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringAtIndex:0];
  v5 = [v3 intAtIndex:1];

  **(a1 + 40) = v5 == 1;
  v6 = [CPLScopedIdentifier alloc];
  v7 = [*(a1 + 32) scopeIdentifier];
  v8 = [v6 initWithScopeIdentifier:v7 identifier:v4];

  return v8;
}

id sub_100163138(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringAtIndex:0];
  v5 = [v3 intAtIndex:1];

  **(a1 + 40) = v5 == 1;
  v6 = [CPLScopedIdentifier alloc];
  v7 = [*(a1 + 32) scopeIdentifier];
  v8 = [v6 initWithScopeIdentifier:v7 identifier:v4];

  return v8;
}

id sub_1001635D8()
{
  if (qword_1002D2BC8 != -1)
  {
    sub_1001BFB8C();
  }

  v1 = qword_1002D2BD0;

  return v1;
}

void sub_100164348(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.idmapping.pql");
  v3 = qword_1002D2BD0;
  qword_1002D2BD0 = v2;
}

id sub_1001645FC()
{
  if (qword_1002D2BD8 != -1)
  {
    sub_1001BFE58();
  }

  v1 = qword_1002D2BE0;

  return v1;
}

id sub_10016613C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CPLPrequeliteDownloadResource alloc] initFromPQLResultSet:v3 error:0];

  v5 = [v4 resourceWithDownloadQueue:*(a1 + 32)];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[NSNull null];
  }

  v8 = v7;

  return v8;
}

void sub_100166560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [CPLResource shortDescriptionForResourceType:a2];
  v8 = v7;
  if (v5 == 1)
  {
    [v6 appendFormat:@":\n\t%@: %ld", v7, a3];

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  else
  {
    [v6 appendFormat:@"\n\t%@: %ld", v7, a3];
  }
}

NSString *__cdecl sub_100166688(id a1, NSNumber *a2)
{
  v2 = [(NSNumber *)a2 unsignedIntegerValue];

  return [CPLResource shortDescriptionForResourceType:v2];
}

void sub_1001667F0(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.downloadQueue.pql");
  v3 = qword_1002D2BE0;
  qword_1002D2BE0 = v2;
}

id sub_100167254()
{
  if (qword_1002D2BE8 != -1)
  {
    sub_1001C0760();
  }

  v1 = qword_1002D2BF0;

  return v1;
}

id sub_10016774C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isLocalScopeIndexValid:{objc_msgSend(v3, "integerAtIndex:", 0)}])
  {
    v4 = [v3 cplChangeAtIndex:1];
    [v4 setScopeIndex:0];
  }

  else
  {
    v4 = +[NSNull null];
  }

  return v4;
}

id sub_10016791C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isLocalScopeIndexValid:{objc_msgSend(v3, "integerAtIndex:", 0)}])
  {
    v4 = [v3 cplChangeAtIndex:1];
    [v4 setScopeIndex:0];
  }

  else
  {
    v4 = +[NSNull null];
  }

  return v4;
}

id sub_100167B10(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isLocalScopeIndexValid:{objc_msgSend(v3, "integerAtIndex:", 0)}])
  {
    v4 = [v3 cplChangeAtIndex:1];
    [v4 setScopeIndex:0];
  }

  else
  {
    v4 = +[NSNull null];
  }

  return v4;
}

id sub_100167C98(id a1, PQLResultSet *a2, id *a3)
{
  v3 = [(PQLResultSet *)a2 cplChangeAtIndex:0];
  [v3 setScopeIndex:0];

  return v3;
}

id sub_100167FD8(id a1, PQLResultSet *a2, id *a3)
{
  v3 = [(PQLResultSet *)a2 cplChangeAtIndex:0];
  [v3 setScopeIndex:0];

  return v3;
}

id sub_100168574(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 integerAtIndex:2] == 1 || !objc_msgSend(*(a1 + 32), "isLocalScopeIndexValid:", objc_msgSend(v3, "integerAtIndex:", 0)))
  {
    v4 = +[NSNull null];
  }

  else
  {
    v4 = [v3 cplChangeAtIndex:1];
    [v4 setScopeIndex:0];
  }

  return v4;
}

id sub_100168790(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isLocalScopeIndexValid:{objc_msgSend(v3, "integerAtIndex:", 0)}])
  {
    v4 = [v3 cplChangeAtIndex:1];
    [v4 setScopeIndex:0];
  }

  else
  {
    v4 = +[NSNull null];
  }

  return v4;
}

id sub_100168A84(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isLocalScopeIndexValid:{objc_msgSend(v3, "integerAtIndex:", 0)}])
  {
    v4 = [v3 cplChangeAtIndex:1];
    v5 = *(a1 + 40);
    if (objc_opt_isKindOfClass())
    {
      [v4 setScopeIndex:0];
      v6 = v4;
    }

    else
    {
      v6 = +[NSNull null];
    }

    v7 = v6;
  }

  else
  {
    v7 = +[NSNull null];
  }

  return v7;
}

void sub_10016996C(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.transientrepository.pql");
  v3 = qword_1002D2BF0;
  qword_1002D2BF0 = v2;
}

id sub_100169A30(void *a1)
{
  v1 = a1;
  v2 = [[NSString alloc] initWithFormat:@"CPLPreventWipeUntil-%@", v1];

  return v2;
}

void sub_100169D5C(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_DEFAULT, a4, &buf, 0xCu);
}

id sub_10016A144()
{
  if (qword_1002D2BF8 != -1)
  {
    sub_1001C1CBC();
  }

  v1 = qword_1002D2C00;

  return v1;
}

void sub_10016AA48(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.resourcestorage.pql");
  v3 = qword_1002D2C00;
  qword_1002D2C00 = v2;
}

id sub_10016AA88@<X0>(uint64_t a1@<X8>)
{
  v5 = *&v2[a1];

  return [v2 setValue:v3 forVariable:v5 error:v1];
}

id sub_10016B2AC()
{
  if (qword_1002D2C08 != -1)
  {
    sub_1001C1D3C();
  }

  v1 = qword_1002D2C10;

  return v1;
}

void sub_10016B318(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.store.pql.migration.107137447");
  v3 = qword_1002D2C10;
  qword_1002D2C10 = v2;
}

id sub_10016BF70()
{
  if (qword_1002D2C18 != -1)
  {
    sub_1001C1E84();
  }

  v1 = qword_1002D2C20;

  return v1;
}

id sub_10016C980(id a1, PQLResultSet *a2, id *a3)
{
  v3 = a2;
  v4 = [(PQLResultSet *)v3 cplChangeAtIndex:1];
  v5 = [(PQLResultSet *)v3 integerAtIndex:0];

  [v4 setScopeIndex:v5];

  return v4;
}

id sub_10016CCDC(id a1, PQLResultSet *a2, id *a3)
{
  v3 = a2;
  v4 = [(PQLResultSet *)v3 cplChangeAtIndex:1];
  v5 = [(PQLResultSet *)v3 integerAtIndex:0];

  [v4 setScopeIndex:v5];

  return v4;
}

void sub_10016DC54(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.changepipe.pql");
  v3 = qword_1002D2C20;
  qword_1002D2C20 = v2;
}

void sub_10016DC94(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_10016E5C0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_10016E5EC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 supportsResources])
  {
    if ([v7 hasChangeType:8])
    {
      v8 = [v7 resources];
      v9 = [v8 count];

      if (v9)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }

  if ((a3 & 2) == 0)
  {
    if ([v7 supportsResources] && objc_msgSend(v7, "hasChangeType:", 8))
    {
      v10 = +[NSUUID UUID];
      v11 = [v10 UUIDString];

      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _enqueueResourcesForChange:v7 inOutgoingResourcesWithUploadIdentifier:v11];
    }

    else
    {
      v11 = 0;
    }

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      if (([v7 hasChangeType:2] & 1) == 0)
      {
        [*(*(a1 + 32) + 8) fillRelatedIdentifiersInChange:v7];
      }

      v12 = +[CPLRecordPushContext newEmptyPushContext];
      v13 = v12;
      if (v11)
      {
        v14 = [v12 copyContextWithUploadIdentifier:v11];

        v13 = v14;
      }

      *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 16) storeChange:v7 pushContext:v13 error:0];
    }
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    sub_1001C2468(v7, a3, a4);
  }

  ++*(*(a1 + 32) + 48);
}

void sub_10016E7A8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 supportsResources] && objc_msgSend(v6, "hasChangeType:", 8))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v6 resources];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _discardResourceForUpload:v12];
          if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v13 = __CPLGenericOSLogDomain();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v19 = v12;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to discard %@", buf, 0xCu);
              }
            }

            goto LABEL_16;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

void sub_10016EDD4(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.store.pql.migration.110019222");
  v3 = qword_1002D2C30;
  qword_1002D2C30 = v2;
}

id sub_10016F3DC()
{
  if (qword_1002D2C38 != -1)
  {
    sub_1001C2690();
  }

  v1 = qword_1002D2C40;

  return v1;
}

id sub_10016F8B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 cplChangeAtIndex:1];
  v7 = v6;
  if (v6)
  {
    [v6 setScopedIdentifier:*(a1 + 32)];
    v8 = [v5 stringAtIndex:2];
    [v7 setRelatedIdentifier:v8];

    v9 = [v5 stringAtIndex:3];
    [v7 setSecondaryIdentifier:v9];

    [v7 awakeFromStorage];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001C27FC(a1);
    }

    if (a3)
    {
      *a3 = [CPLErrors invalidClientCacheErrorWithReason:0];
    }
  }

  return v7;
}

id sub_10016FD74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 cplChangeAtIndex:1];
  v7 = [CPLScopedIdentifier alloc];
  v8 = *(a1 + 32);
  v9 = [v5 stringAtIndex:0];
  v10 = [v7 initWithScopeIdentifier:v8 identifier:v9];

  [v10 setScopeIndex:*(a1 + 40)];
  if (v6)
  {
    [v6 setScopedIdentifier:v10];
    v11 = [v5 stringAtIndex:2];
    [v6 setRelatedIdentifier:v11];

    v12 = [v5 stringAtIndex:3];
    [v6 setSecondaryIdentifier:v12];

    [v6 awakeFromStorage];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001C2940();
    }

    if (a3)
    {
      *a3 = [CPLErrors invalidClientCacheErrorWithReason:0];
    }
  }

  return v6;
}

id sub_100170074(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 cplChangeAtIndex:1];
  v7 = [CPLScopedIdentifier alloc];
  v8 = *(a1 + 32);
  v9 = [v5 stringAtIndex:0];
  v10 = [v7 initWithScopeIdentifier:v8 identifier:v9];

  [v10 setScopeIndex:*(a1 + 40)];
  if (v6)
  {
    [v6 setScopedIdentifier:v10];
    v11 = [v5 stringAtIndex:2];
    [v6 setRelatedIdentifier:v11];

    v12 = [v5 stringAtIndex:3];
    [v6 setSecondaryIdentifier:v12];

    [v6 awakeFromStorage];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001C2940();
    }

    if (a3)
    {
      *a3 = [CPLErrors invalidClientCacheErrorWithReason:0];
    }
  }

  return v6;
}

void sub_100170700(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"(nil)";
  }

  v7 = v6;
  [*(a1 + 32) appendFormat:@"\n\t%@: %ld", v6, a3];
}

void sub_100170858(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    v5 = @"(nil)";
  }

  v8 = v5;
  v6 = *(a1 + 32);
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  [v6 setObject:v7 forKey:v8];
}

void *sub_100170A88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringAtIndex:0];
  v5 = [v3 stringAtIndex:1];

  if (v4)
  {
    [*(a1 + 32) setRelatedIdentifier:v4];
  }

  if (v5)
  {
    [*(a1 + 32) setSecondaryIdentifier:v5];
  }

  v6 = *(a1 + 32);
  v7 = v6;

  return v6;
}

void sub_100170BE8(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.clientcache.pql");
  v3 = qword_1002D2C40;
  qword_1002D2C40 = v2;
}

id sub_100170EF4()
{
  if (qword_1002D2C48 != -1)
  {
    sub_1001C2ABC();
  }

  v1 = qword_1002D2C50;

  return v1;
}

void sub_10017150C(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.pendingrecordchecks.pql");
  v3 = qword_1002D2C50;
  qword_1002D2C50 = v2;
}

id sub_1001718C0()
{
  if (qword_1002D2C58 != -1)
  {
    sub_1001C2D78();
  }

  v1 = qword_1002D2C60;

  return v1;
}

id sub_100171CB8(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"#__NONE__#"])
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

void sub_100172A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100172A98(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) mainTable];
  *(*(*(a1 + 48) + 8) + 24) = [v6 cplExecute:{@"DELETE FROM %@ WHERE rowID = %ld", v7, a2}];

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

void sub_100172B84(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.computestatequeue.pql");
  v3 = qword_1002D2C60;
  qword_1002D2C60 = v2;
}

id sub_100172D00(uint64_t a1)
{
  v2 = [*(a1 + 32) pqStore];
  v3 = [*(a1 + 32) mainTable];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 tableHasRecords:v3] ^ 1);

  return v4;
}

id sub_100173690(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 cplChangeAtIndex:2];
  v5 = v4;
  if (v4)
  {
    [v4 setScopedIdentifier:*(a1 + 32)];
    [v5 awakeFromStorage];
    v6 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v3 integerAtIndex:3]);
    v7 = [[CPLIgnoredRecord alloc] initWithRecord:v5 ignoredDate:v6];
  }

  else
  {
    v7 = +[NSNull null];
  }

  return v7;
}

id sub_100173DFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 cplChangeAtIndex:2];
  if (v4)
  {
    v5 = [CPLScopedIdentifier alloc];
    v6 = *(a1 + 32);
    v7 = [v3 stringAtIndex:1];
    v8 = [v5 initWithScopeIdentifier:v6 identifier:v7 scopeIndex:*(a1 + 40)];

    [v4 setScopedIdentifier:v8];
    [v4 awakeFromStorage];
    v9 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v3 integerAtIndex:3]);
    v10 = [[CPLIgnoredRecord alloc] initWithRecord:v4 ignoredDate:v9];
  }

  else
  {
    v10 = +[NSNull null];
  }

  return v10;
}

void sub_1001745BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1001745E4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) cplExecute:{@"UPDATE %@ SET otherScopeIndex = 0 WHERE rowID = %lu", *(a1 + 40), a2}];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v5 = [*(a1 + 32) lastError];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *a3 = 1;
  }
}

void *sub_100174900(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = CPLPrequelitePushedChange;
    a1 = objc_msgSendSuper2(&v12, "init");
    if (a1)
    {
      v8 = objc_opt_class();
      v9 = a1[3];
      a1[3] = v8;

      v10 = [v5 scopedIdentifier];
      v11 = [v10 scopeIndex];
      a1[4] = v11;
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_1001C38A8();
      }

      sub_1001C3970(v10, a1, v5, v6);
    }
  }

  return a1;
}

id sub_1001749DC()
{
  if (qword_1002D2C68 != -1)
  {
    sub_1001C3A80();
  }

  v1 = qword_1002D2C70;

  return v1;
}

void *sub_100174A2C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 _scopedIdentifierForIdentifier:a1[5] scopeIndex:a1[4]];
    if (!v5)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = sub_1001749DC();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = a1[4];
          v9 = a1[5];
          *buf = 134218242;
          *&buf[4] = v8;
          v13 = 2112;
          v14 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "impossible to create scoped identifier for %ld/%@", buf, 0x16u);
        }
      }

      v10 = +[NSAssertionHandler currentHandler];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequelitePushRepository.m"];
      [v10 handleFailureInMethod:"changeWithinPushRepository:" object:a1 file:v11 lineNumber:205 description:{@"impossible to create scoped identifier for %ld/%@", a1[4], a1[5]}];

      abort();
    }

    sub_1001C3A94(a1 + 4, v5, a1, buf);
    a1 = *buf;
  }

  return a1;
}

id sub_100176EA8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[CPLPrequelitePushedChange alloc] initFromPQLResultSet:v5 error:a3];

  v7 = sub_100174A2C(v6, *(a1 + 32));
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = +[NSNull null];
  }

  v10 = v9;

  return v10;
}

id sub_1001776E8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[CPLPrequelitePushedChange alloc] initFromPQLResultSet:v5 error:a3];

  v7 = sub_100174A2C(v6, *(a1 + 32));
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = +[NSNull null];
  }

  v10 = v9;

  return v10;
}

void sub_100178138(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    v5 = @"(nil)";
  }

  v7 = v5;
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

void sub_1001786B8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_alloc_init(NSMutableString);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v5 allKeys];
  v8 = [v7 sortedArrayUsingSelector:"compare:"];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [v5 objectForKeyedSubscript:v13];
        [v6 appendFormat:@"\n\t%@: %@", v13, v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v4];
}

void sub_100178848(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v5 = [*(a1 + 32) indexForLocalScopeIdentifier:a2];
  v6 = *(a1 + 40);
  v7 = [NSNumber numberWithInteger:v5];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [v13 summaryDescription];
    [v8 appendFormat:@"\n\textracted: %@", v9];
  }

  else
  {
    v10 = [NSMutableString alloc];
    v11 = [v13 summaryDescription];
    v8 = [v10 initWithFormat:@"\n\textracted: %@", v11];

    v12 = *(a1 + 40);
    v9 = [NSNumber numberWithInteger:v5];
    [v12 setObject:v8 forKeyedSubscript:v9];
  }
}

void sub_100178D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100178D64(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) mainTable];
  *(*(*(a1 + 48) + 8) + 24) = [v6 cplExecute:{@"DELETE FROM %@ WHERE rowID = %ld", v7, a2}];

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

void sub_100179034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100179050(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v2 = [a2 stringAtIndex:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NSNull null];
  }

  v5 = v4;

  return v5;
}

void sub_1001792E0(uint64_t a1, void *a2, void *a3)
{
  v29 = a2;
  v5 = [a3 flags];
  if (v5)
  {
    v6 = v5;
    v7 = [v29 scopeIdentifier];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 48) mainTable];
      v11 = *(a1 + 64);
      v12 = [v29 identifier];
      v13 = [v9 cplFetch:{@"SELECT flags, changeType FROM %@ WHERE scopeIndex = %ld AND identifier = %@", v10, v11, v12}];

      if (![v13 next])
      {
LABEL_9:
        v23 = *(a1 + 56);
        v24 = [NSNumber numberWithInteger:v6];
        v25 = [v23 objectForKeyedSubscript:v24];
        v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v25 unsignedIntegerValue] + 1);
        v27 = *(a1 + 56);
        v28 = [NSNumber numberWithInteger:v6];
        [v27 setObject:v26 forKeyedSubscript:v28];

        goto LABEL_10;
      }

      v14 = [v13 integerAtIndex:0];
      v15 = +[CPLRecordPushContext mergingFlags:previousFlags:changeType:](CPLRecordPushContext, "mergingFlags:previousFlags:changeType:", v14, v6, [v13 integerAtIndex:1]);
      v6 = v15;
      if (v14)
      {
        if (v15 == v14)
        {
          goto LABEL_10;
        }

        v16 = *(a1 + 56);
        v17 = [NSNumber numberWithInteger:v14];
        v18 = [v16 objectForKeyedSubscript:v17];
        v19 = [v18 unsignedIntegerValue];

        if (v19)
        {
          v20 = [NSNumber numberWithUnsignedInteger:v19 - 1];
          v21 = *(a1 + 56);
          v22 = [NSNumber numberWithInteger:v14];
          [v21 setObject:v20 forKeyedSubscript:v22];
        }
      }

      if (v6)
      {
        goto LABEL_9;
      }

LABEL_10:
    }
  }
}

id sub_100179694(uint64_t a1, void *a2)
{
  v3 = [a2 stringAtIndex:0];
  if (v3)
  {
    v4 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:*(a1 + 32) identifier:v3 scopeIndex:*(a1 + 40)];
  }

  else
  {
    v4 = +[NSNull null];
  }

  v5 = v4;

  return v5;
}

id sub_100179A1C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[CPLPrequelitePushedChange alloc] initFromPQLResultSet:v5 error:a3];

  v7 = sub_100174A2C(v6, *(a1 + 32));
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = +[NSNull null];
  }

  v10 = v9;

  return v10;
}

void sub_10017AA5C(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.pushrepository.pql");
  v3 = qword_1002D2C70;
  qword_1002D2C70 = v2;
}

void sub_10017AA9C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 0x16u);
}

id sub_10017AAD4()
{
  if (qword_1002D2C78 != -1)
  {
    sub_1001C5890();
  }

  v1 = qword_1002D2C80;

  return v1;
}

void sub_10017BC14(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.store.history");
  v3 = qword_1002D2C80;
  qword_1002D2C80 = v2;
}

id sub_10017BE9C()
{
  if (qword_1002D2C88 != -1)
  {
    sub_1001C5A8C();
  }

  v1 = qword_1002D2C90;

  return v1;
}

id sub_10017C410(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CPLScopedIdentifier alloc];
  v5 = *(a1 + 32);
  v6 = [v3 stringAtIndex:0];

  v7 = [v4 initWithScopeIdentifier:v5 identifier:v6 scopeIndex:*(a1 + 40)];

  return v7;
}

id sub_10017C7B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringAtIndex:0];
  v5 = [v3 stringAtIndex:1];

  if (v4 && v5)
  {
    v8 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:*(a1 + 32) identifier:v4 scopeIndex:*(a1 + 40)];
    v9 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:*(a1 + 32) identifier:v5 scopeIndex:*(a1 + 40)];
    v6 = sub_1001C5930([CPLPrequeliteRemappedRecord alloc], v8, v9);
  }

  else
  {
    v6 = +[NSNull null];
  }

  return v6;
}

void sub_10017C96C(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.remappedrecords.pql");
  v3 = qword_1002D2C90;
  qword_1002D2C90 = v2;
}

id sub_10017CAE8(uint64_t a1)
{
  v2 = [*(a1 + 32) pqStore];
  v3 = [*(a1 + 32) mainTable];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 tableHasRecords:v3] ^ 1);

  return v4;
}

void sub_10017D0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_10017D0F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 integerAtIndex:0];
  v5 = *(*(a1 + 40) + 8);
  if (v4 != *(v5 + 24))
  {
    *(v5 + 24) = v4;
    v6 = [*(a1 + 32) scopeWithStableIndex:v4];
    if (v6 && ([*(a1 + 32) valueForFlag:16 forScope:v6] & 1) == 0)
    {
      v8 = [v6 scopeIdentifier];
      v9 = *(*(a1 + 56) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    *(*(*(a1 + 48) + 8) + 24) = v7;
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v11 = [v3 stringAtIndex:1];
    v12 = [v3 stringAtIndex:2];
    v13 = v12;
    if (v11 && v12 && (v14 = NSClassFromString(v12)) != 0 && (v15 = v14, ([(objc_class *)v14 isSubclassOfClass:objc_opt_class()]& 1) != 0))
    {
      v16 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:*(*(*(a1 + 56) + 8) + 40) identifier:v11];
      v17 = [[CPLPlaceholderRecord alloc] initWithRecordClass:v15 scopedIdentifier:v16 relatedRecordClass:0 relatedIdentifier:0];

      if (v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  v17 = +[NSNull null];
LABEL_16:

  return v17;
}

void sub_10017D6E8(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.revertrecords.pql");
  v3 = qword_1002D2CA0;
  qword_1002D2CA0 = v2;
}

id sub_10017DA04()
{
  if (qword_1002D2CA8 != -1)
  {
    sub_1001C5EA4();
  }

  v1 = qword_1002D2CB0;

  return v1;
}

void sub_10017E0DC(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.quarantinedrecords.pql");
  v3 = qword_1002D2CB0;
  qword_1002D2CB0 = v2;
}

id sub_10017EAAC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[CPLRecordStatus alloc] initFromPQLResultSet:v5 center:*(a1 + 32) error:a3];

  return v6;
}

void sub_10017F248(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.statuscenter.pql");
  v3 = qword_1002D2CC0;
  qword_1002D2CC0 = v2;
}

id sub_1001805BC()
{
  if (qword_1002D2CD0 != -1)
  {
    sub_1001C7AD0();
  }

  v1 = qword_1002D2CD8;

  return v1;
}

uint64_t sub_100181A14(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 lastPathComponent];
  v7 = [CPLResourceIdentity identityForStorageName:v6];
  [v7 setAvailable:1];
  if (v7)
  {
    (*(*(a1 + 32) + 16))();
  }

  return 1;
}

void sub_100181BC0(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.resourcestorage.filestorage.bucket");
  v3 = qword_1002D2CD8;
  qword_1002D2CD8 = v2;
}

uint64_t sub_100181C4C(uint64_t result, float a2)
{
  *(v2 - 128) = a2;
  *(v2 - 124) = result;
  return result;
}

id sub_100181C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!v5)
  {
    a4 = 0;
  }

  return [v4 _setIsOriginal:a4 markedForDelete:? onDestinationURL:? clearFlags:? error:?];
}

id sub_100181C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = *(v13 + v14);
  a13 = v16;

  return [v18 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&a13];
}

BOOL sub_100181CE4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

ssize_t sub_100182160(int a1, const char *a2)
{

  return fgetxattr(a1, a2, 0, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
}

id sub_1001821D8()
{
  if (qword_1002D2CE0 != -1)
  {
    sub_1001C8154();
  }

  v1 = qword_1002D2CE8;

  return v1;
}

id sub_100182438(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 40);
  if (v4 == v2)
  {
    *(v3 + 40) = 0;

    v2 = *(a1 + 40);
  }

  return [v2 sessionIsDone];
}

void sub_1001825D0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 40) == v2)
  {
    if ([*(a1 + 48) isCPLOperationDeferredError] && (v4 = *(a1 + 32), !*(v4 + 48)))
    {
      objc_storeStrong((v4 + 48), *(a1 + 40));
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1001826DC;
      v8[3] = &unk_1002720E0;
      v7 = *(a1 + 40);
      v8[4] = *(a1 + 32);
      v9 = v7;
      [v9 deferWithBlock:v8];
    }

    else
    {
      [*(a1 + 40) sessionIsDone];
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  else
  {

    [v2 sessionIsDone];
  }
}

void sub_1001826DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001827E8;
  v7[3] = &unk_1002720E0;
  v7[4] = v2;
  v8 = v1;
  v4 = v7;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002CE8;
  block[3] = &unk_100271E98;
  v10 = v4;
  v5 = v3;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v5, v6);
}

void sub_1001827E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (*(v2 + 48) == v1)
  {
    objc_storeStrong((v2 + 40), v1);
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;

    v7 = [*(a1 + 32) abstractObject];
    [v7 startRequiredSyncSessionNow:*(a1 + 40)];
  }

  else
  {
    v3 = *(a1 + 40);

    [v3 sessionIsDone];
  }
}

uint64_t sub_1001829B8(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), sub_1001C7F4C, @"com.apple.cpl.test.haschanges", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100182B44(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 1;
  *(*(a1 + 32) + 57) = 1;
  v2 = [*(a1 + 32) abstractObject];
  v3 = [v2 engineLibrary];
  v4 = [v3 transport];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100182C5C;
  v8[3] = &unk_10027BF50;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v7 = v4;
  [CPLCallObserver observeAsyncCallOn:v7 selector:"findPersistedInitialSyncSession:completionHandler:" block:v8];
}

void sub_100182C5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100182D58;
  v10[3] = &unk_10027BF00;
  v4 = *(a1 + 32);
  v11 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100182F2C;
  v6[3] = &unk_10027BF28;
  v7 = v3;
  v8 = v11;
  v9 = *(a1 + 48);
  v5 = v3;
  [v4 findPersistedInitialSyncSession:v10 completionHandler:v6];
}

void sub_100182D58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100182E7C;
  v10[3] = &unk_1002720E0;
  v10[4] = v4;
  v11 = v3;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002CE8;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = v5;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void sub_100182E7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (*(v2 + 48) == v1)
  {
    objc_storeStrong((v2 + 40), v1);
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;

    v7 = [*(a1 + 32) abstractObject];
    [v7 startRequiredSyncSessionNow:*(a1 + 40)];
  }

  else
  {
    v3 = *(a1 + 40);

    [v3 sessionIsDone];
  }
}

void sub_100182F2C(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) callDidFinish];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(v5 + 8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100183068;
  v11[3] = &unk_100271DE0;
  v11[4] = v5;
  v12 = v3;
  v13 = v4;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002CE8;
  block[3] = &unk_100271E98;
  v15 = v7;
  v8 = v6;
  v9 = v3;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

void sub_100183068(uint64_t a1)
{
  v2 = (a1 + 32);
  *(*(a1 + 32) + 56) = 0;
  v3 = *(a1 + 32);
  if (*(v3 + 57) == 1)
  {
    *(v3 + 57) = 0;
    objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
    v4 = *(*(a1 + 32) + 48);
    v5 = *(*(a1 + 48) + 16);

    v5();
  }

  else
  {
    [*(a1 + 40) sessionWontHappen];
    (*(*(a1 + 48) + 16))();
    v6 = *(a1 + 32);
    if (v6[5])
    {
      sub_1001C8168(v2, 40, v6);
    }
  }
}

void sub_100183230(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 57) == 1)
  {
    *(v2 + 57) = 0;
    v8 = [*(a1 + 32) abstractObject];
    v3 = [v8 engineLibrary];
    v4 = [v3 transport];
    [v4 dropPersistedInitialSyncSession];

    v5 = v8;
  }

  else
  {
    v6 = *(v2 + 48);
    if (!v6)
    {
      return;
    }

    [v6 sessionWontHappen];
    v7 = *(a1 + 32);
    v5 = *(v7 + 48);
    *(v7 + 48) = 0;
  }
}

uint64_t sub_100183418(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;

    v2 = *(a1 + 32);
  }

  if (*(v2 + 57) == 1)
  {
    *(v2 + 57) = 0;
    v6 = [*(a1 + 32) abstractObject];
    v7 = [v6 engineLibrary];
    v8 = [v7 transport];
    [v8 dropPersistedInitialSyncSession];

    v2 = *(a1 + 32);
  }

  v9 = *(v2 + 48);
  if (v9)
  {
    if (*(a1 + 48) == 1)
    {
      [v9 sessionWontHappen];
    }

    else
    {
      [v9 engineIsClosing];
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 48);
    *(v10 + 48) = 0;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, *(a1 + 32), @"com.apple.cpl.test.haschanges", 0);
  v13 = *(*(a1 + 40) + 16);

  return v13();
}

void sub_1001836E0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    [v2 sessionWontHappen];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = *(a1 + 32);
      v6 = *(v5 + 16);
      *(v5 + 16) = 0;

      v3 = *(a1 + 32);
    }

    v7 = *(v3 + 48);
    *(v3 + 48) = 0;
  }

  [*(a1 + 40) timeIntervalSinceNow];
  if (v8 < 0.100000001)
  {
    v8 = 0.100000001;
  }

  v9 = 60000000000;
  if (v8 < 600.0)
  {
    v9 = 5000000000;
  }

  if (v8 >= 60.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v8 * 1000000000.0;
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 48));
  v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 32) + 8));
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001838B8;
  v19[3] = &unk_1002720E0;
  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v20 = v13;
  v21 = v14;
  dispatch_source_set_event_handler(v12, v19);
  v15 = dispatch_walltime(0, v11);
  dispatch_source_set_timer(v12, v15, 0xFFFFFFFFFFFFFFFFLL, v10);
  v16 = *(a1 + 32);
  v17 = *(v16 + 16);
  *(v16 + 16) = v12;
  v18 = v12;

  dispatch_resume(*(*(a1 + 32) + 16));
}

void sub_1001838B8(uint64_t a1)
{
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  if (*(a1 + 32) == *(v1 + 48))
  {
    dispatch_source_cancel(*(v1 + 16));
    objc_storeStrong((*(a1 + 40) + 40), *(a1 + 32));
    v4 = *(a1 + 40);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    v6 = *(a1 + 40);
    if (v6[56] == 1)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001C8254(v2, 40);
      }
    }

    else
    {
      v7 = [v6 abstractObject];
      [v7 startRequiredSyncSessionNow:*(a1 + 32)];
    }

    v8 = *(*v2 + 16);
    *(*v2 + 16) = 0;
  }
}

void sub_100183ABC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);
  if (v3 == v2)
  {
    [v3 sessionWontHappen];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    if (v5)
    {
      dispatch_source_cancel(v5);
      v6 = *(a1 + 32);
      v7 = *(v6 + 16);
      *(v6 + 16) = 0;

      v4 = *(a1 + 32);
    }

    v8 = *(v4 + 48);
    *(v4 + 48) = 0;
  }
}

void sub_100183BF0(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.scheduler.base");
  v3 = qword_1002D2CE8;
  qword_1002D2CE8 = v2;
}

id sub_100184294(void **a1, uint64_t a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100009A78();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a2 + 32) componentsJoinedByString:{@", "}];
      sub_10000AF90();
      sub_10000AF80();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }

    a3 = *a1;
  }

  return [a3 setEnabledTopics:0 ignoredTopics:0 opportunisticTopics:*(a2 + 32)];
}

id sub_10018437C(void **a1, uint64_t a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100009A78();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(a2 + 32) componentsJoinedByString:{@", "}];
      sub_10000AF90();
      sub_10000AF80();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    }

    a3 = *a1;
  }

  return [a3 setEnabledTopics:*(a2 + 32) ignoredTopics:0 opportunisticTopics:0];
}

void sub_10018447C(uint64_t a1, uint64_t *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      sub_10000AF60(&_mh_execute_header, v6, v7, "APS connection should not be set here", v8, v9, v10, v11, 0);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = *(a1 + 56);
  v14 = *a2;
  v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLCloudKitPushNotificationCenter.m"];
  [v12 handleFailureInMethod:v13 object:v14 file:v15 lineNumber:126 description:@"APS connection should not be set here"];

  abort();
}

id sub_100184540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100009A78();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = a1;
      sub_1000033B4();
      v12 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Start waiting for push notifications, topic %@, environment: %@", &v10, 0x16u);
    }
  }

  v7 = [[APSConnection alloc] initWithEnvironmentName:*(*a3 + 24) namedDelegatePort:@"com.apple.photos.cloud.pushnotification" queue:*(*a3 + 112)];
  v8 = *(*a3 + 8);
  *(*a3 + 8) = v7;

  return [*(*a3 + 8) setDelegate:?];
}

void sub_10018464C(uint64_t a1, uint64_t *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      sub_10000AF60(&_mh_execute_header, v6, v7, "Idle APS environment should be set here", v8, v9, v10, v11, 0);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = *(a1 + 56);
  v14 = *a2;
  v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLCloudKitPushNotificationCenter.m"];
  [v12 handleFailureInMethod:v13 object:v14 file:v15 lineNumber:113 description:@"Idle APS environment should be set here"];

  abort();
}

void sub_100184710(uint64_t a1, uint64_t *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      sub_10000AF60(&_mh_execute_header, v6, v7, "Idle APS connection should be set here", v8, v9, v10, v11, 0);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = *(a1 + 56);
  v14 = *a2;
  v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLCloudKitPushNotificationCenter.m"];
  [v12 handleFailureInMethod:v13 object:v14 file:v15 lineNumber:112 description:@"Idle APS connection should be set here"];

  abort();
}

id sub_1001847D4(void **a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100009A78();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopped waiting for push notifications before we had a chance to set them up", v5, 2u);
    }

    a2 = *a1;
  }

  return [a2 _setPushRegistrationStatus:@"closed" error:0];
}

void sub_100184868(void *a1, uint64_t a2, uint64_t *a3)
{
  [a1 _setPushRegistrationStatus:@"failed" error:a2];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100009A78();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a3;
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to get push environment and push topic: %@", &v6, 0xCu);
    }
  }
}

id sub_100184930(id *a1, id a2, uint64_t a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100009A78();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stop waiting for push notifications", v10, 2u);
    }

    a2 = *a1;
  }

  [a2 _setEnabledTopics:&__NSArray0__struct];
  [*a1 shutdown];
  *(a3 + 16) = 0;
  v6 = *a1;
  *a1 = 0;

  v7 = *(a3 + 32);
  *(a3 + 32) = 0;

  v8 = *(a3 + 24);
  *(a3 + 24) = 0;

  return [a3 _setPushRegistrationStatus:@"stopped" error:0];
}

void sub_100184A10(id a1, NSString *a2)
{
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10000B7D8();
    if (sub_10000FABC(v4))
    {
      sub_1000033F8();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }

  sub_100022348();
}

void sub_100184AC0(id a1)
{
  v2 = [[NSURL alloc] initFileURLWithPath:@"/usr/local/lib/libEnginePlistImplementation.dylib" isDirectory:0];
  qword_1002C4F00 = dlopen([v2 fileSystemRepresentation], 1);
  if (!qword_1002C4F00 && (_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10000B7D8();
    if (sub_100003448(v3))
    {
      v4 = [CPLErrors posixErrorForURL:v2];
      sub_10000AF90();
      sub_10000F984();
      _os_log_impl(v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_100184BBC(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    if (_CPLSilentLogging)
    {
      return;
    }

    v2 = sub_10000B7D8();
    if (!sub_10000FAE0(v2))
    {
      goto LABEL_19;
    }

    *v23 = 0;
    v5 = "SIGINFO: daemon is already computing info";
    goto LABEL_18;
  }

  v7 = *(a1 + 32);
  if (*(v7 + 138) == 1)
  {
    if (_CPLSilentLogging)
    {
      return;
    }

    v8 = sub_10000B7D8();
    if (!sub_10000FAE0(v8))
    {
      goto LABEL_19;
    }

    *v23 = 0;
    v5 = "SIGINFO: daemon is waiting for first unlock";
    goto LABEL_18;
  }

  if (*(v7 + 136) == 1)
  {
    if (_CPLSilentLogging)
    {
      return;
    }

    v9 = sub_10000B7D8();
    if (!sub_10000FAE0(v9))
    {
      goto LABEL_19;
    }

    *v23 = 0;
    v5 = "SIGINFO: daemon is closing";
    goto LABEL_18;
  }

  if ([*(v7 + 80) count])
  {
    v10 = dispatch_group_create();
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v11 = *(a1 + 32);
    v12 = v11[10];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100184DE8;
    v20[3] = &unk_100271FD8;
    v21 = v11;
    v22 = v10;
    v1 = v10;
    [v12 enumerateOpenedWrappersWithBlock:v20];
    v13 = *(*(a1 + 32) + 128);
    sub_1000033D8();
    sub_10000FB5C();
    v17 = sub_10000BAD0;
    v18 = &unk_100272000;
    v19 = *(a1 + 40);
    dispatch_group_notify(v1, v14, block);
  }

  else
  {
    if (_CPLSilentLogging)
    {
      return;
    }

    v15 = sub_10000B7D8();
    if (sub_10000FAE0(v15))
    {
      *v23 = 0;
      v5 = "SIGINFO: no engine configured";
LABEL_18:
      sub_10000FA44(&_mh_execute_header, v3, v4, v5, v23);
    }
  }

LABEL_19:
}

void sub_100184DE8(dispatch_group_t *a1, void *a2)
{
  v3 = a2;
  if ([(objc_class *)a1[4][10].isa isWrapperOpened:v3])
  {
    dispatch_group_enter(a1[5]);
    v4 = [v3 engine];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100184F4C;
    v12[3] = &unk_100271FB0;
    v13 = v3;
    v14 = a1[5];
    [v4 getStatusForComponents:0 completionHandler:v12];

    a1 = v13;
LABEL_6:

    goto LABEL_7;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10000B7D8();
    if (sub_10000FABC(v5))
    {
      v15 = 138412290;
      v16 = v3;
      sub_10000FAA0();
      _os_log_impl(v6, v7, v8, v9, v10, v11);
    }

    goto LABEL_6;
  }

LABEL_7:
}

void sub_100184F4C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_10000B7D8();
      if (sub_10000FBAC(v8))
      {
        v9 = *(a1 + 32);
        sub_10000343C();
        v14 = 2112;
        v15 = v7;
        v10 = "SIGINFO for %@ failed: %@";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v10, v13, 0x16u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = sub_10000B7D8();
    if (sub_10000FBAC(v11))
    {
      v12 = *(a1 + 32);
      sub_10000343C();
      v14 = 2114;
      v15 = v6;
      v10 = "SIGINFO for %@:\n%{public}@";
      goto LABEL_8;
    }

LABEL_9:
  }

  dispatch_group_leave(*(a1 + 40));
}

id sub_100185078(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10000B7D8();
    if (sub_10000FABC(v3))
    {
      LOWORD(v11) = 0;
      sub_10000F960();
      _os_log_impl(v4, v5, v6, v7, v8, v9);
    }
  }

  return [*(*(a1 + 32) + 80) enumerateOpenedWrappersWithBlock:{&stru_100272068, v11}];
}

void sub_1001851B8(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10000B7D8();
    if (sub_100003424(v5))
    {
      *v21 = 0;
      sub_100003408(&_mh_execute_header, v6, v7, "System is requesting a configuration refresh", v21);
    }
  }

  [*(*(a1 + 32) + 192) didAcquireTaskWithIdentifier:@"com.apple.cloudphotod.configurationrefresh"];
  sub_10000FA60();
  v17 = 3221225472;
  v18 = sub_10000C320;
  v19 = &unk_1002720B8;
  v20 = *(a1 + 32);
  [v4 setExpirationHandlerWithReason:v16];
  v8 = *(*(a1 + 32) + 80);
  sub_10000F9D0();
  v12 = sub_100185370;
  v13 = &unk_1002720E0;
  v14 = v9;
  v15 = v4;
  v10 = v4;
  [v8 refreshAllConfigurationDictionariesWithCompletionHandler:v11];
  [*(*(a1 + 32) + 80) enumerateOpenedWrappersWithBlock:&stru_100272100];
}

id sub_1001852E8(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10000B7D8();
    if (sub_10000FABC(v3))
    {
      LOWORD(v11) = 0;
      sub_10000F960();
      _os_log_impl(v4, v5, v6, v7, v8, v9);
    }
  }

  [*(*(a1 + 32) + 192) didExpireTaskWithIdentifier:@"com.apple.cloudphotod.configurationrefresh" reason:{*(a1 + 40), v11}];
  return [*(*(a1 + 32) + 80) cancelConfigurationDictionariesRefresh];
}

id sub_100185370(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10000B7D8();
    if (sub_10000FABC(v3))
    {
      LOWORD(v11) = 0;
      sub_10000F960();
      _os_log_impl(v4, v5, v6, v7, v8, v9);
    }
  }

  [*(*(a1 + 32) + 192) didFinishTaskWithIdentifier:{@"com.apple.cloudphotod.configurationrefresh", v11}];
  [*(a1 + 40) setTaskCompleted];
  return [*(a1 + 32) _updateConfigurationRefreshIntervalIfNecessary];
}

void sub_1001854C0(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10000B7D8();
    if (sub_100003424(v5))
    {
      *v16 = 0;
      sub_100003408(&_mh_execute_header, v6, v7, "System is requesting a maintenance", v16);
    }
  }

  [sub_10000FB68() didAcquireTaskWithIdentifier:@"com.apple.cloudphotod.maintenance"];
  v8 = [NSProgress progressWithTotalUnitCount:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100185628;
  v14[3] = &unk_100272150;
  v14[4] = *(a1 + 32);
  v9 = v8;
  v15 = v9;
  [v4 setExpirationHandlerWithReason:v14];
  sub_1000033D8();
  sub_10000FB5C();
  v12 = *(a1 + 32);
  v13 = v4;
  v10 = v9;
  v11 = v4;
  sub_10000FB40(v11);
}

id sub_100185628(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  sub_10000FA80();
  v26 = v4;
  v27 = v3;
  v6 = v5;
  sub_10000F92C();
  v29 = v7;
  v8 = v2;
  v16 = sub_10000FBC4(v8, v9, v10, v11, v12, v13, v14, v15, v25, 3221225472, sub_10000C470, &unk_100271F68, v26, v27, v28);
  dispatch_async(v8, v16);

  if ((_CPLSilentLogging & 1) == 0)
  {
    v17 = sub_10000B7D8();
    if (sub_10000FABC(v17))
    {
      sub_10000F974();
      _os_log_impl(v18, v19, v20, v21, v22, v23);
    }
  }

  return [*(a1 + 40) cancel];
}

id sub_100185728(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10000B7D8();
    if (sub_10000FABC(v3))
    {
      LOWORD(v11) = 0;
      sub_10000F960();
      _os_log_impl(v4, v5, v6, v7, v8, v9);
    }
  }

  [*(a1 + 32) setTaskCompleted];
  [*(*(a1 + 40) + 192) didFinishTaskWithIdentifier:@"com.apple.cloudphotod.maintenance"];
  return [*(a1 + 48) setCompletedUnitCount:{objc_msgSend(*(a1 + 48), "totalUnitCount")}];
}

void sub_100185884(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10000B7D8();
    if (sub_100003424(v5))
    {
      *v23 = 0;
      sub_100003408(&_mh_execute_header, v6, v7, "System is requesting a backup", v23);
    }
  }

  [sub_10000FB68() didAcquireTaskWithIdentifier:@"com.apple.cloudphotod.backup"];
  v8 = [NSProgress progressWithTotalUnitCount:1];
  [[CPLBGSTGenericActivity alloc] initWithTask:v4];
  sub_10000FA20();
  v21 = *(a1 + 32);
  v9 = v8;
  v10 = [sub_10000FB74() addDeferHandler:?];
  sub_1000033D8();
  sub_10000FB5C();
  v16 = *(a1 + 32);
  v17 = v2;
  v18 = v11;
  v19 = v4;
  v20 = v8;
  v12 = v8;
  v13 = v4;
  v14 = v10;
  v15 = v2;
  sub_10000FB40(v15);
}

void sub_100185A1C(uint64_t a1, void *a2)
{
  v5 = a2;
  sub_10000F9F8();
  v25 = v6;
  v8 = v7;
  v9 = v3;
  sub_10000F92C();
  v28 = v10;
  v29 = &unk_100271E98;
  v30 = v11;
  v12 = v2;
  v20 = sub_10000FBC4(v12, v13, v14, v15, v16, v17, v18, v19, v24, 3221225472, sub_10000C530, &unk_1002720E0, v25, v8, v27[0]);
  dispatch_async(v12, v20);

  if ((_CPLSilentLogging & 1) == 0)
  {
    v21 = sub_10000B7D8();
    if (sub_100003424(v21))
    {
      *v27 = 0;
      sub_100003408(&_mh_execute_header, v22, v23, "System-requested backup has expired", v27);
    }
  }

  [*(a1 + 40) cancel];
}

void sub_100185E88(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10000B7D8();
    if (sub_100003424(v5))
    {
      *v23 = 0;
      sub_100003408(&_mh_execute_header, v6, v7, "System is requesting an Initial Download", v23);
    }
  }

  [sub_10000FB68() didAcquireTaskWithIdentifier:@"com.apple.cloudphotod.initialdownload.fastpass"];
  v8 = [NSProgress progressWithTotalUnitCount:1];
  [[CPLBGSTGenericActivity alloc] initWithTask:v4];
  sub_10000FA20();
  v21 = *(a1 + 32);
  v9 = v8;
  v10 = [sub_10000FB74() addDeferHandler:?];
  sub_1000033D8();
  sub_10000FB5C();
  v16 = *(a1 + 32);
  v17 = v2;
  v18 = v4;
  v19 = v11;
  v20 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v4;
  v15 = v2;
  sub_10000FB40(v15);
}

void sub_100186020(uint64_t a1, void *a2)
{
  v5 = a2;
  sub_10000F9F8();
  v25 = v6;
  v8 = v7;
  v9 = v3;
  sub_10000F92C();
  v28 = v10;
  v29 = &unk_100271E98;
  v30 = v11;
  v12 = v2;
  v20 = sub_10000FBC4(v12, v13, v14, v15, v16, v17, v18, v19, v24, 3221225472, sub_10000C740, &unk_1002720E0, v25, v8, v27[0]);
  dispatch_async(v12, v20);

  if ((_CPLSilentLogging & 1) == 0)
  {
    v21 = sub_10000B7D8();
    if (sub_100003424(v21))
    {
      *v27 = 0;
      sub_100003408(&_mh_execute_header, v22, v23, "System-requested Initial Download has expired", v27);
    }
  }

  [*(a1 + 40) cancel];
}

void sub_100186130(uint64_t a1, uint64_t a2)
{
  v3 = [[BGSystemTaskResult alloc] initWithIdentifier:@"com.apple.cloudphotod.initialdownload.assets" cumulativeProductionCount:a2];
  v4 = [[NSSet alloc] initWithObjects:{v3, 0}];
  v5 = *(a1 + 32);
  v15 = 0;
  v6 = [v5 producedCumulativeResults:v4 error:&v15];
  v7 = v15;
  if (v6)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_10000B7D8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        sub_10000FB10();
        v10 = "Notified %@ Initial Download has produced %lu assets";
        v11 = v8;
        v12 = OS_LOG_TYPE_DEFAULT;
        v13 = 22;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v11, v12, v10, buf, v13);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_10000B7D8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      sub_10000FB10();
      v17 = 2112;
      v18 = v7;
      v10 = "Failed to notify %@ Initial Download has produced %lu assets: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 32;
      goto LABEL_8;
    }

LABEL_9:
  }
}

void sub_100186388(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10000B7D8();
    if (sub_100003424(v5))
    {
      *v21 = 0;
      sub_100003408(&_mh_execute_header, v6, v7, "System is requesting periodic upload of compute states", v21);
    }
  }

  [sub_10000FB68() didAcquireTaskWithIdentifier:@"com.apple.cloudphotod.periodic.upload.computestates"];
  sub_10000FA60();
  v17 = 3221225472;
  v18 = sub_1001864A0;
  v19 = &unk_1002720B8;
  v20 = *(a1 + 32);
  [v4 setExpirationHandlerWithReason:v16];
  v8 = *(*(a1 + 32) + 80);
  sub_10000F9D0();
  v12 = sub_100186588;
  v13 = &unk_100272268;
  v14 = v4;
  v15 = v9;
  v10 = v4;
  [v8 executePeriodicUploadOfComputeStatesWithCompletionHandler:v11];
}

void sub_1001864A0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 128);
  sub_10000FA80();
  v21 = v3;
  v22 = v2;
  v5 = v4;
  sub_10000F92C();
  v24 = v6;
  v25 = &unk_100271E98;
  v26 = v7;
  v8 = v1;
  v16 = sub_10000FBC4(v8, v9, v10, v11, v12, v13, v14, v15, v20, 3221225472, sub_10000CC0C, &unk_100271F68, v21, v22, v23[0]);
  dispatch_async(v8, v16);

  if ((_CPLSilentLogging & 1) == 0)
  {
    v17 = sub_10000B7D8();
    if (sub_10000FAE0(v17))
    {
      *v23 = 0;
      sub_10000FA44(&_mh_execute_header, v18, v19, "System-requested periodic upload of compute states has expired", v23);
    }
  }
}

id sub_100186588(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10000B7D8();
    if (sub_10000FABC(v3))
    {
      LOWORD(v11) = 0;
      sub_10000F960();
      _os_log_impl(v4, v5, v6, v7, v8, v9);
    }
  }

  [*(a1 + 32) setTaskCompleted];
  return [*(*(a1 + 40) + 192) didFinishTaskWithIdentifier:@"com.apple.cloudphotod.periodic.upload.computestates"];
}

uint64_t sub_100187430()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_10000B7D8();
    if (sub_10000FAE0(v1))
    {
      sub_10000F9B0(&_mh_execute_header, v2, v3, "Daemon is launching", v4, v5, v6, v7, 0);
    }
  }

  CPLEnableUnsupportedScopesAlert();
  return CPLRequestClientSetRequestBlock();
}

void sub_1001874A0()
{
  v0 = +[NSUserDefaults standardUserDefaults];
  v1 = [v0 BOOLForKey:@"CPLDontAskToWipeDatabase"];

  if ((v1 & 1) == 0)
  {
    [CPLPrequeliteStore setShouldWarnUserBeforeWipeOnUpgrade:1];
  }
}

id sub_100187520(void *a1)
{
  if (_CPLSilentLogging != 1)
  {
    v2 = sub_10000B7D8();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Using engine with CloudKit transport", v5, 2u);
    }
  }

  v3 = objc_opt_class();
  return [a1 setPlatformImplementation:v3 forClass:objc_opt_class()];
}

void sub_1001875CC()
{
  v1 = sub_10000B7D8();
  if (sub_10000FBDC(v1))
  {
    sub_10000FAAC();
    _os_log_impl(v2, v3, v4, v5, v6, 8u);
  }
}

void sub_100187678(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = sub_10000B7D8();
    if (sub_10000FAE0(v2))
    {
      sub_10000F9B0(&_mh_execute_header, v3, v4, "Daemon is idle and has no engine to manage. Exiting", v5, v6, v7, v8, 0);
    }
  }

  v9 = _CPLExit();
  sub_1001876C4(v9);
}

void sub_1001876C4(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v3 = __CPLGenericOSLogDomain();
    if (sub_100003448(v3))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Missing bundle identifier", v9, 2u);
    }
  }

  v4 = +[NSAssertionHandler currentHandler];
  v7 = a1 + 32;
  v5 = *(a1 + 32);
  v6 = *(v7 + 8);
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLDaemon.m"];
  [v4 handleFailureInMethod:v6 object:v5 file:v8 lineNumber:379 description:@"Missing bundle identifier"];

  abort();
}

id sub_100187790(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    v5 = sub_10000B7D8();
    if (sub_10000FABC(v5))
    {
      sub_10000FB34();
      sub_1000033F8();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  *(*a3 + 136) = 1;
  return [*(*a3 + 80) stopAllWithCompletionHandler:&stru_100271F88];
}

void sub_100187850(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = sub_10000B7D8();
    if (sub_10000FAE0(v2))
    {
      sub_10000F9B0(&_mh_execute_header, v3, v4, "Got SIGTERM signal. Exiting immediately", v5, v6, v7, v8, 0);
    }
  }

  exit(0);
}

uint64_t sub_10018789C(uint64_t a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10000B7D8();
    if (sub_100003424(v5))
    {
      *v9 = 0;
      sub_100003408(&_mh_execute_header, v6, v7, "Device is unlocked at launch", v9);
    }
  }

  *(a1 + 138) = 0;
  return (*(a2 + 16))(a2);
}

id sub_100187924(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v4 = sub_10000B7D8();
      if (sub_100003448(v4))
      {
        sub_10000FB34();
        sub_10000F984();
LABEL_8:
        _os_log_impl(v5, v6, v7, v8, v9, v10);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = sub_10000B7D8();
    if (sub_10000FABC(v11))
    {
      LOWORD(v13) = 0;
      sub_10000F960();
      goto LABEL_8;
    }

LABEL_9:
  }

  [*(a2 + 48) setTaskCompleted];
  return [sub_10000FB88() didFinishTaskWithIdentifier:@"com.apple.cloudphotod.backup"];
}

id sub_100187A18(id *a1)
{
  [*a1 setTaskCompleted];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10000B7D8();
    if (sub_100003448(v2))
    {
      sub_10000FB34();
      sub_10000F984();
      _os_log_impl(v3, v4, v5, v6, v7, v8);
    }
  }

  [sub_10000FB88() didErrorTaskWithIdentifier:@"com.apple.cloudphotod.backup"];
  return [sub_10000FB88() didFinishTaskWithIdentifier:@"com.apple.cloudphotod.backup"];
}

id sub_100187AE8()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_10000B7D8();
    if (sub_10000FABC(v1))
    {
      sub_10000F960();
      _os_log_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  return [sub_10000FB88() didDeferTaskWithIdentifier:@"com.apple.cloudphotod.backup"];
}

uint64_t sub_100187B60(void *a1)
{
  if (_CPLSilentLogging)
  {
    return 1;
  }

  v3 = sub_10000B7D8();
  if (sub_10000FABC(v3))
  {
    v4 = CPLPrimaryScopeIdentifierForCurrentUniverse();
    sub_10000AF90();
    sub_1000033F8();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  result = 0;
  *a1 = v1;
  return result;
}

id sub_100187C5C(uint64_t a1, char a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10000B7D8();
    if (sub_100003424(v5))
    {
      *v10 = 0;
      sub_100003408(&_mh_execute_header, v6, v7, "System-requested Initial Download finished successfully", v10);
    }
  }

  if (a2)
  {
    v8 = 50;
  }

  else
  {
    v8 = 30;
  }

  return [*(a1 + 48) _reportICPLFeatureCheckpoint:v8];
}

void sub_100187CE8(uint64_t *a1)
{
  v3 = sub_10000B7D8();
  if (sub_10000FBDC(v3))
  {
    v4 = *a1;
    sub_10000343C();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_100187D94(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10000B7D8();
    if (sub_10000FABC(v5))
    {
      v6 = 5 - *(*a1 + 200);
      sub_10000343C();
      sub_1000033F8();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }
  }

  *a2 = 0x4072C00000000000;
}

id sub_100187E5C(id *a1, uint64_t a2, uint64_t a3)
{
  [*a1 setTaskCompleted];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10000B7D8();
    if (sub_100003448(v5))
    {
      sub_10000FB34();
      sub_10000F984();
      _os_log_impl(v6, v7, v8, v9, v10, v11);
    }
  }

  [*(*(a3 + 48) + 192) didErrorTaskWithIdentifier:@"com.apple.cloudphotod.initialdownload.fastpass"];
  return [*(*(a3 + 48) + 192) didFinishTaskWithIdentifier:@"com.apple.cloudphotod.initialdownload.fastpass"];
}

id sub_100187F34(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10000B7D8();
    if (sub_10000FABC(v3))
    {
      LOWORD(v11) = 0;
      sub_10000F960();
      _os_log_impl(v4, v5, v6, v7, v8, v9);
    }
  }

  return [*(*(a1 + 48) + 192) didDeferTaskWithIdentifier:{@"com.apple.cloudphotod.initialdownload.fastpass", v11}];
}

id sub_100187FC4(uint64_t a1, id *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10000B7D8();
    if (sub_10000FABC(v4))
    {
      sub_10000FB34();
      sub_1000033F8();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }

  v10 = [UMUserSyncTask taskWithName:@"iCPL upload" reason:@"Starting a push session"];
  v11 = *a2;
  *a2 = v10;

  return [*a2 begin];
}

void sub_1001880A4(void *a1)
{
  v3 = sub_10000B7D8();
  if (sub_10000FBDC(v3))
  {
    v4 = [a1 path];
    sub_10000AF90();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }
}

void sub_100188160(void *a1)
{
  v3 = sub_10000B7D8();
  if (sub_10000FBDC(v3))
  {
    v4 = [a1 path];
    sub_10000AF90();
    sub_10000FAAC();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

void sub_100188204()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_10000B7D8();
    if (sub_10000FAE0(v1))
    {
      sub_10000F9B0(&_mh_execute_header, v2, v3, "No engines are configured", v4, v5, v6, v7, 0);
    }
  }
}

id sub_100188268(void *a1, void *a2)
{
  result = [a1 unopenedCount];
  if (!result)
  {

    return [a2 _registerAfterLaunchWhenAllEnginesAreOpened];
  }

  return result;
}

void sub_1001882B0()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_10000B7D8();
    if (sub_10000FAE0(v1))
    {
      sub_10000F9B0(&_mh_execute_header, v2, v3, "No more engines open - exiting immediately", v4, v5, v6, v7, 0);
    }
  }

  exit(0);
}

void sub_100188330(uint64_t a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10000B7D8();
    if (sub_100003424(v5))
    {
      *v9 = 0;
      sub_100003408(&_mh_execute_header, v6, v7, "Registering for sync bubble", v9);
    }
  }

  v8 = +[UMUserManager sharedManager];
  [v8 registerUserSyncStakeholder:a1 withMachServiceName:@"com.apple.cloudphotod.syncstakeholder"];

  *a2 = 1;
}

id sub_1001883D4(id *a1, uint64_t a2, void ***a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10000B7D8();
    if (sub_10000FBAC(v7))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Notified that we need to upload content. Starting sync task", v13, 2u);
    }
  }

  v8 = [UMUserSyncTask taskWithName:@"iCPL upload" reason:@"Pushing pending records"];
  v9 = *a1;
  *a1 = v8;

  [*a1 begin];
  v10 = *(a2 + 80);
  v11 = *(a2 + 17);
  *a3 = _NSConcreteStackBlock;
  a3[1] = 3221225472;
  a3[2] = sub_10000F620;
  a3[3] = &unk_100272468;
  a3[4] = a2;
  return [v10 forceBackupWithActivity:0 forceClientPush:v11 completionHandler:a3];
}

void sub_1001884E4(char a1, uint64_t a2, void *a3)
{
  if ((a1 & 1) == 0)
  {
    v5 = sub_10000B7D8();
    if (sub_10000FABC(v5))
    {
      LOWORD(v14) = 0;
      sub_10000F960();
      _os_log_impl(v6, v7, v8, v9, v10, v11);
    }

    a3 = *(*a2 + 168);
  }

  [a3 end];
  v12 = *(*a2 + 168);
  *(*a2 + 168) = 0;

  [*(*a2 + 176) end];
  v13 = *(*a2 + 176);
  *(*a2 + 176) = 0;
}

void sub_100188810(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10000FD9C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = NSStringFromSelector(*(a1 + 32));
      sub_1000119B0(&_mh_execute_header, v4, v5, "%{public}@ cancelled", v6, v7, v8, v9, 2u);
    }
  }
}

uint64_t sub_1001888C8(void *a1)
{
  if (a1[4])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = sub_10000FD9C();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = a1[5];
        v4 = a1[6];
        sub_100003460();
        v17 = v5;
        v6 = "Failed to get %{public}@ activated for %@";
        v7 = v2;
        v8 = OS_LOG_TYPE_ERROR;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v7, v8, v6, v16, 0x16u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10000FD9C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[5];
      v10 = a1[6];
      sub_100003460();
      v17 = v11;
      v6 = "Successfully got %{public}@ activated for %@";
      v7 = v2;
      v8 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_8;
    }

LABEL_9:
  }

  v12 = a1[4];
  v13 = sub_1000119D0(a1[7]);
  return v14(v13);
}

void sub_1001889E8(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10000FD9C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = NSStringFromSelector(*(a1 + 32));
      sub_1000119B0(&_mh_execute_header, v4, v5, "%{public}@ cancelled", v6, v7, v8, v9, 2u);
    }
  }
}

void sub_100188AA0(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10000FD9C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = NSStringFromSelector(*(a1 + 32));
      sub_1000119B0(&_mh_execute_header, v4, v5, "%{public}@ cancelled", v6, v7, v8, v9, 2u);
    }
  }
}

uint64_t sub_100188B6C(uint64_t a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10000FD9C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = a1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found %@", &v8, 0xCu);
    }
  }

  v5 = sub_1000119D0(*(a2 + 56));
  return v6(v5, 0);
}

void sub_100188C3C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 engine];
  v7 = [v6 mainScopeIdentifier];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_10000FD9C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = a1;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found %@ - requesting %{public}@ is activated", &v12, 0x16u);
    }
  }

  v9 = *(a2 + 40);
  *a3 = _NSConcreteStackBlock;
  *(a3 + 8) = 3221225472;
  *(a3 + 16) = sub_10000FFA0;
  *(a3 + 24) = &unk_100272568;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  *(a3 + 48) = *(a2 + 48);
  *(a3 + 56) = a1;
  *(a3 + 64) = *(a2 + 56);
  v10 = v7;
  v11 = v6;
  [v9 performAsCurrentWithPendingUnitCount:1 usingBlock:a3];
}

uint64_t sub_100188DD8(uint64_t a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10000FD9C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      sub_100003460();
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to get %{public}@: %@", v9, 0x16u);
    }
  }

  v6 = sub_1000119D0(*(a1 + 56));
  return v7(v6, a2);
}

uint64_t sub_100188EAC(uint64_t *a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10000FD9C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a2 + 40);
      if (*(a2 + 72))
      {
        v6 = " with activated main scope";
      }

      else
      {
        v6 = "";
      }

      v7 = *a1;
      v13 = 138543874;
      v14 = v5;
      v15 = 2080;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Requesting %{public}@%s but checking active Apple Account failed: %@", &v13, 0x20u);
    }

    v8 = *a1;
  }

  v9 = sub_1000119D0(*(a2 + 64));
  return v11(v9, v10);
}

void sub_100188FBC(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100011E54();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Watching %@ has been be cancelled", &v4, 0xCu);
    }
  }
}

id sub_100189368(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100011E54();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v9) = 138412290;
      *(&v9 + 4) = *(a1 + 32);
      sub_100013984();
      sub_1000139CC(v3, v4, v5, v6, v7);
    }
  }

  return [*(a1 + 32) _emergencyExit];
}

void sub_100189544(void *a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [a1 libraryIdentifier];
      v12 = 138412290;
      v13 = v7;
      sub_1000139CC(&_mh_execute_header, v6, v8, "No engine provided for %@", &v12);
    }
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLEngineWrapper.m"];
  v11 = [a1 libraryIdentifier];
  [v9 handleFailureInMethod:a2 object:a3 file:v10 lineNumber:66 description:{@"No engine provided for %@", v11}];

  abort();
}

id sub_100189650(uint64_t a1, void ***a2)
{
  if (*(a1 + 96))
  {
    v4 = [[CPLDaemonDiskArbitration alloc] initWithVolumeURL:*(a1 + 96) queue:*(a1 + 8)];
    v5 = *(a1 + 24);
    *(a1 + 24) = v4;

    [*(a1 + 24) addVolumeUnmountObserver:a1];
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:a1 selector:"_libraryMustBeWiped:" name:CPLLibraryMustBeWipedNotificationName object:*(a1 + 88)];

  v7 = *(a1 + 88);
  *a2 = _NSConcreteStackBlock;
  a2[1] = 3221225472;
  a2[2] = sub_100011EB4;
  a2[3] = &unk_100272468;
  a2[4] = a1;
  return [v7 openWithCompletionHandler:a2];
}

void sub_10018973C()
{
  v0 = sub_100011E54();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1000139A0();
    sub_1000139CC(&_mh_execute_header, v0, v1, "%@ was deleted before we even knew it", v2);
  }
}

id sub_1001897E8(uint64_t *a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100011E54();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v4 = *a1;
      [*(*a1 + 88) currentClosingComponentName];
      *v10 = 138412546;
      *&v10[4] = v4;
      *&v10[14] = *&v10[12] = 2114;
      sub_100013984();
      _os_log_impl(v5, v6, OS_LOG_TYPE_FAULT, v7, v8, 0x16u);
    }

    a2 = *a1;
  }

  return [a2 _emergencyExit];
}

id sub_1001898D0(id *a1, uint64_t *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100011E54();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a2;
      *v12 = 138412546;
      *&v12[4] = *a1;
      sub_1000033B4();
      *&v12[14] = v6;
      sub_100013984();
      _os_log_impl(v7, v8, OS_LOG_TYPE_ERROR, v9, v10, 0x16u);
    }
  }

  return [*a1 _emergencyExit];
}

id sub_1001899A4(id *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100011E54();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v8) = 138412290;
      *(&v8 + 4) = a1;
      sub_100013984();
      _os_log_impl(v3, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 0xCu);
    }
  }

  [a1 setInEmergencyClosing:{1, v8}];
  return [a1[11] emergencyClose];
}

id sub_100189A68(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100011E54();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v8) = 138412290;
      *(&v8 + 4) = a1;
      sub_100013984();
      _os_log_impl(v3, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 0xCu);
    }
  }

  return [a1 _emergencyExit];
}

id sub_100189B20(_BYTE *a1, uint64_t a2, void *a3)
{
  *a1 = 0;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100011E54();
    if (sub_100003424(v6))
    {
      sub_1000139A0();
      sub_100013990();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }
  }

  v12 = [*(a2 + 88) scheduler];
  [v12 enableSynchronizationWithReason:@"camera"];

  v13 = [*(a2 + 88) supervisor];
  *a3 = v13;
  return [v13 resume];
}

id sub_100189C04(_BYTE *a1, uint64_t a2, void *a3)
{
  *a1 = 1;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100011E54();
    if (sub_100003424(v6))
    {
      sub_1000139A0();
      sub_100013990();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }
  }

  v12 = [*(a2 + 88) scheduler];
  [v12 disableSynchronizationWithReason:@"camera"];

  v13 = [*(a2 + 88) supervisor];
  *a3 = v13;
  return [v13 pause];
}

void sub_100189CEC(void *a1, uint64_t a2, id *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100011E54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000139A0();
      sub_1000033B4();
      sub_1000139AC(&_mh_execute_header, v7, v8, "%@ for %@ is present - disabling background synchronization", v9, v10, v11, v12, v16);
    }
  }

  [*(a2 + 56) addObject:a1];
  [*a3 removeObject:a1];
  v13 = [*(a2 + 88) scheduler];
  v14 = [a1 name];
  [v13 disableSynchronizationWithReason:v14];

  v15 = [*(a2 + 88) supervisor];
  [v15 pause];
}

void sub_100189E08(void *a1, uint64_t a2, id *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100011E54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000139A0();
      sub_1000033B4();
      sub_1000139AC(&_mh_execute_header, v7, v8, "%@ for %@ is absent - re-enabling background synchronization", v9, v10, v11, v12, v16);
    }
  }

  [*(a2 + 64) addObject:a1];
  [*a3 removeObject:a1];
  v13 = [*(a2 + 88) scheduler];
  v14 = [a1 name];
  [v13 enableSynchronizationWithReason:v14];

  v15 = [*(a2 + 88) supervisor];
  [v15 resume];
}

void sub_100189F24(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Trying to get a proxy for %@ but the connection is closed", buf, 0xCu);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLDaemonProcessProtocol.m"];
  [v5 handleFailureInMethod:a1 object:a2 file:v6 lineNumber:82 description:{@"Trying to get a proxy for %@ but the connection is closed", a2}];

  abort();
}

void sub_10018A008(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 8);
    v4 = a2;
    v5 = [v4 libraryIdentifier];
    [v3 removeObjectForKey:v5];

    WeakRetained = objc_loadWeakRetained((a1 + 80));
    [WeakRetained wrapperArray:a1 wrapperShouldBeDropped:v4];
  }
}

void sub_10018A098(id a1, NSString *a2, CPLEngineWrapper *a3, BOOL *a4)
{
  v5 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100013FC4();
    if (sub_10000FABC(v6))
    {
      sub_1000187DC();
      sub_1000033F8();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }
  }

  [(CPLEngineWrapper *)v5 stop];
}

void sub_10018A148(id a1, NSString *a2, CPLEngineWrapper *a3, BOOL *a4)
{
  v5 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100013FC4();
    if (sub_10000FABC(v6))
    {
      sub_1000187DC();
      sub_1000033F8();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }
  }

  [(CPLEngineWrapper *)v5 emergencyClose];
}

id sub_10018A1F8(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100013FC4();
    if (sub_10000FABC(v3))
    {
      v4 = *(a1 + 32);
      sub_10000343C();
      sub_1000033F8();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }

  return [*(a1 + 40) _executeMaintenanceWithEnumerator:*(a1 + 48) progress:*(a1 + 56) completionHandler:*(a1 + 64)];
}

void sub_10018A2A8(uint64_t a1)
{
  v2 = [*(a1 + 32) recordComputeStatePushQueue];
  if ([v2 countOfComputeStates])
  {
    v3 = [*(a1 + 40) engine];
    v4 = [v3 scheduler];
    [v4 noteScopeNeedsToUploadComputeState];

    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_100013FC4();
      if (sub_100003424(v5))
      {
        v6 = *(a1 + 40);
        sub_10000343C();
        sub_10000FAA0();
        _os_log_impl(v7, v8, v9, v10, v11, v12);
      }
    }
  }
}

void sub_10018A39C(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100013FC4();
    if (sub_10000FABC(v3))
    {
      NSStringFromSelector(*(a1 + 40));
      *(&v13 + 4) = LODWORD(v13) = 138543362;
      sub_1000033F8();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }

  v9 = *(a1 + 32);
  v10 = +[CPLErrors operationCancelledError];
  v11 = sub_100018790();
  v12(v11);
}

void sub_10018A754()
{
  v1 = sub_100013FC4();
  if (sub_10000FBDC(v1))
  {
    sub_1000187A4();
    sub_1000187BC(&_mh_execute_header, v2, v3, "%{public}@ can't be opened: %@\nResetting stored parameters and will just wait for a client to connect", v4, v5, v6, v7, v8);
  }
}

void sub_10018A7E8(uint64_t a1)
{
  v2 = sub_100013FC4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 138543362;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%{public}@ has not been configured yet", &v3, 0xCu);
  }
}

void sub_10018A88C(uint64_t a1, void *a2)
{
  v4 = sub_100013FC4();
  if (sub_10000FBDC(v4))
  {
    v11 = [a2 localizedDescription];
    sub_1000187BC(&_mh_execute_header, v5, v6, "Can't open %@: %@", v7, v8, v9, v10, 2u);
  }
}

void sub_10018A944()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100013FC4();
    if (sub_10000FBDC(v1))
    {
      sub_1000187A4();
      sub_1000187BC(&_mh_execute_header, v2, v3, "Can't instantiate wrapper for %@: %@", v4, v5, v6, v7, v8);
    }
  }
}

void sub_10018A9E8(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "There are more closing wrappers than total wrappers", v7, 2u);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLEngineWrapperArray.m"];
  [v5 handleFailureInMethod:a1 object:a2 file:v6 lineNumber:302 description:@"There are more closing wrappers than total wrappers"];

  abort();
}

void sub_10018AABC()
{
  v1 = sub_100013FC4();
  if (sub_10000FBDC(v1))
  {
    sub_1000187A4();
    sub_1000187BC(&_mh_execute_header, v2, v3, "Trying to open engine %@ but it mismatches with parameters for %@", v4, v5, v6, v7, v8);
  }
}

id sub_10018AB50(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100013FC4();
    if (sub_100003424(v5))
    {
      sub_1000187E8(&_mh_execute_header, v6, v7, "Finished all necessary backup activities successfully", v8, v9, v10, v11, 0);
    }
  }

  (*(a1 + 16))(a1, 0);
  return [a2 setCompletedUnitCount:{objc_msgSend(a2, "totalUnitCount")}];
}

id sub_10018ABE8(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    v4 = sub_100013FC4();
    if (sub_10000FABC(v4))
    {
      v5 = *(a2 + 40);
      sub_10000343C();
      sub_1000033F8();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  return [*(a2 + 48) _forceBackupWithActivity:*(a2 + 56) forceClientPush:*(a2 + 88) enumerator:*(a2 + 64) progress:*(a2 + 72) completionHandler:*(a2 + 80)];
}

uint64_t sub_10018AC94()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100013FC4();
    if (sub_10000FABC(v1))
    {
      sub_1000033F8();
      _os_log_impl(v2, v3, v4, v5, v6, 2u);
    }
  }

  v7 = sub_100018790();
  return v8(v7);
}

uint64_t sub_10018AD08()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100013FC4();
    if (sub_10000FABC(v1))
    {
      sub_1000033F8();
      _os_log_impl(v2, v3, v4, v5, v6, 2u);
    }
  }

  v7 = sub_100018790();
  return v8(v7);
}

uint64_t sub_10018AD7C(uint64_t a1, uint64_t *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100013FC4();
    if (sub_100003424(v5))
    {
      sub_1000187E8(&_mh_execute_header, v6, v7, "Requested maintenance has been cancelled", v8, v9, v10, v11, 0);
    }
  }

  v12 = +[CPLErrors operationCancelledError];
  *a2 = v12;
  return (*(a1 + 16))(a1, v12);
}

uint64_t sub_10018AE14()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_100013FC4();
    if (sub_10000FABC(v1))
    {
      sub_1000033F8();
      _os_log_impl(v2, v3, v4, v5, v6, 2u);
    }
  }

  v7 = sub_100018790();
  return v8(v7);
}

void sub_10018AE88(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100013FC4();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 40);
      sub_10000343C();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Client has not tried to open %@ for a long time", v8, 0xCu);
    }
  }

  v4 = *(a1 + 48);
  v5 = [CPLErrors cplErrorWithCode:83 description:@"Client failed to open library in time"];
  v6 = sub_100018790();
  v7(v6);
}

id sub_10018AF70(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100013FC4();
    if (sub_10000FABC(v3))
    {
      sub_1000187DC();
      sub_1000033F8();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }

  return [a1 emergencyClose];
}

void sub_10018B018()
{
  v0 = sub_100013FC4();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    sub_10000FAA0();
    _os_log_impl(v1, v2, v3, v4, v5, v6);
  }
}

void sub_10018B0B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100019000;
    v6[3] = &unk_100271F68;
    v6[4] = a1;
    v6[5] = a2;
    v3 = v6;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002828;
    block[3] = &unk_100271E98;
    v8 = v3;
    v4 = v2;
    v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v4, v5);
  }
}

void sub_10018B28C(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10001A484();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      sub_100021E9C();
      sub_100021EC0(&_mh_execute_header, v4, v5, "Force dropping library manager for %@ and killing caller", v6, v7, v8, v9, v11[0], v11[1], v12, v13, v14, v15, v16);
    }
  }

  v10 = *(a1 + 32);
  sub_100021D24();
  sub_100021E90();
  v12 = sub_10001AC18;
  v13 = &unk_1002723C8;
  v14 = v10;
  v15 = *(a1 + 40);
  [v10 _dropManagerWithCompletionBlock:v11];
}

void sub_10018B380(uint64_t a1)
{
  [*(*(a1 + 32) + 8) markLibraryManagerAsInvalid];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10001A484();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      sub_100021E9C();
      sub_100021EC0(&_mh_execute_header, v4, v5, "Force dropping library manager for %@", v6, v7, v8, v9, v11[0], v11[1], v12, v13, v14, v15, v16);
    }
  }

  v10 = *(a1 + 32);
  sub_100021D24();
  sub_100021E90();
  v12 = sub_10001ADC8;
  v13 = &unk_1002723C8;
  v14 = v10;
  v15 = *(a1 + 40);
  [v10 _dropManagerWithCompletionBlock:v11];
}

void sub_10018B480(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10001A484();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 32) + 96);
      v4 = *(*(a1 + 32) + 104);
      v6 = 138412546;
      v7 = v4;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ has been deactivated by %{public}@ - exiting now if possible", &v6, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
  [WeakRetained daemonLibraryManagerWantsToExitNow:*(a1 + 32)];
}

void sub_10018BDDC(id a1, NSError *a2)
{
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10001A484();
    if (sub_100003448(v4))
    {
      sub_1000187DC();
      sub_100021D44();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }
}

void sub_10018C008(id a1, NSError *a2)
{
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10001A484();
    if (sub_100003448(v4))
    {
      sub_1000187DC();
      sub_100021D44();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }
}

void sub_10018C174(id a1, NSError *a2)
{
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10001A484();
    if (sub_100003448(v4))
    {
      sub_1000187DC();
      sub_100021D44();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }
}

void sub_10018C398(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10001A484();
    if (sub_1000033C0(v5))
    {
      v6 = *(a1 + 32);
      sub_100003474();
      sub_100021D74();
      _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    }
  }

  v12 = sub_100021D84(*(a1 + 40));
  v13(v12);
}

void sub_10018C578(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10001A484();
    if (sub_1000033C0(v5))
    {
      sub_1000187DC();
      sub_100021D74();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  v11 = sub_100021DE8(*(a1 + 32));
  v12(v11);
}

void sub_10018C768(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10001A484();
    if (sub_100003448(v5))
    {
      v6 = *(a1 + 32);
      sub_100003474();
      sub_100021D44();
      _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    }
  }
}

void sub_10018C984(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10001A484();
    if (sub_100003448(v5))
    {
      v6 = *(a1 + 32);
      sub_100003474();
      sub_100021D44();
      _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    }
  }
}

void sub_10018CBE4(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10001A484();
    if (sub_100003448(v5))
    {
      v6 = *(a1 + 32);
      sub_100003474();
      sub_100021D44();
      _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    }
  }
}

void sub_10018CE3C(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10001A484();
    if (sub_100003448(v5))
    {
      v6 = *(a1 + 32);
      sub_100003474();
      sub_100021D44();
      _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    }
  }
}

void sub_10018CFF8(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10001A484();
    if (sub_10000FBDC(v3))
    {
      v4 = *(a1 + 32);
      sub_10000343C();
      sub_10000FAAC();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }
}

void sub_10018D1A0(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10001A484();
    if (sub_10000FBDC(v3))
    {
      v4 = *(a1 + 32);
      sub_10000343C();
      sub_10000FAAC();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }
}

void sub_10018D39C(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10001A484();
    if (sub_10000FBDC(v3))
    {
      v4 = *(a1 + 32);
      sub_10000343C();
      sub_10000FAAC();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }
}

void sub_10018D610(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10001A484();
    if (sub_10000FBDC(v3))
    {
      v4 = *(a1 + 32);
      sub_10000343C();
      sub_10000FAAC();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }
}

void sub_10018D840(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10001A484();
    if (sub_10000FBDC(v3))
    {
      v4 = *(a1 + 32);
      sub_10000343C();
      sub_10000FAAC();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }
}

void sub_10018DA18(id a1, NSError *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10001A484();
    if (sub_10000FBDC(v3))
    {
      sub_10000FAAC();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }
}

void sub_10018DCD8(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10001A484();
    if (sub_100003448(v5))
    {
      v6 = *(a1 + 32);
      sub_100003474();
      sub_100021D44();
      _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    }
  }
}

id sub_10018DD90(void *a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10001A484();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a2 + 32);
      sub_1000187DC();
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ disconnected from %@", v11, 0x16u);
    }
  }

  [*(*(a2 + 32) + 8) markLibraryManagerAsInvalid];
  [*(a2 + 32) _dropManagerWithCompletionBlock:&stru_100272C98];
  [*(*(a2 + 32) + 88) setDelegate:0];
  v7 = *(a2 + 32);
  v8 = *(v7 + 88);
  *(v7 + 88) = 0;

  WeakRetained = objc_loadWeakRetained((*(a2 + 32) + 112));
  [WeakRetained daemonLibraryManagerHasBeenDisconnected:*(a2 + 32)];

  return [a1 setInvalidationHandler:0];
}

void sub_10018DED4(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10001A484();
    if (sub_1000033C0(v3))
    {
      v4 = *(a1 + 96);
      v5 = *(a1 + 80);
      v6 = [objc_opt_class() shortDescription];
      *buf = 138543874;
      v10 = v4;
      v11 = 1024;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%{public}@ (%d) unexpectedly quit during %@ session - might trigger a reset sync", buf, 0x1Cu);
    }
  }

  v7 = *(a1 + 96);
  v8 = [objc_opt_class() shortDescription];
  [CPLResetTracker registerLikelyResetReason:@"%@ unexpectedly quit during %@ session", v7, v8];
}

void sub_10018E004(uint64_t a1, uint64_t *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      v6 = *(*a2 + 16);
      *buf = 138412290;
      v14 = objc_opt_class();
      v7 = v14;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Incorrect class for library manager implementation: %@", buf, 0xCu);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = *(a1 + 96);
  v10 = *a2;
  v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLDaemonLibraryManager.m"];
  v12 = *(*a2 + 16);
  [v8 handleFailureInMethod:v9 object:v10 file:v11 lineNumber:297 description:{@"Incorrect class for library manager implementation: %@", objc_opt_class()}];

  abort();
}

void sub_10018E110()
{
  sub_100021E08();
  v3 = v2;
  [*(*v2 + 16) setClientQueue:*(*v2 + 56)];
  v4 = *(*v3 + 16);
  v5 = [*(*v3 + 104) engine];
  [v4 setEngineLibrary:v5];

  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_10001A484();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(*v3 + 8);
      sub_10000343C();
      sub_10000FB94(&_mh_execute_header, v6, v8, "Opening %@", v11);
    }
  }

  v9 = *(*v3 + 8);
  *v0 = _NSConcreteStackBlock;
  *(v0 + 8) = 3221225472;
  *(v0 + 16) = sub_10001B778;
  *(v0 + 24) = &unk_100272DD0;
  *(v0 + 32) = v9;
  *(v0 + 40) = *v3;
  *(v0 + 48) = *(v1 + 80);
  v10 = v9;
  [v10 openWithCompletionHandler:v0];
}

void sub_10018E298(char a1, void *a2, void *a3)
{
  if ((a1 & 1) == 0)
  {
    v5 = sub_10001A484();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a2;
      v7 = *a3;
      WeakRetained = objc_loadWeakRetained((*a2 + 112));
      v10 = 138412802;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v14 = 2112;
      v15 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ tried to open a mismatched %{public}@ - resetting parameters and asking %@ to quit immediately", &v10, 0x20u);
    }
  }

  v9 = objc_loadWeakRetained((*a2 + 112));
  [v9 daemonLibraryManager:*a2 wantsToExitAfterResettingParametersForLibraryWithIdentifier:*a3];
}

void sub_10018E3A4(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    v4 = sub_10001A484();
    if (sub_100003448(v4))
    {
      v5 = [*(a2 + 104) libraryIdentifier];
      sub_100021CC8();
      sub_100021D44();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  +[CPLErrors unknownError];
  objc_claimAutoreleasedReturnValue();
  v11 = sub_100021D10();
  v12(v11, v2);
}

void sub_10018E478()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_10001A484();
    if (sub_100003448(v1))
    {
      sub_10000FB34();
      sub_100021D44();
      _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
    }
  }

  +[CPLErrors unknownError];
  objc_claimAutoreleasedReturnValue();
  v7 = sub_100021D10();
  v8(v7, v0);
}

void sub_10018E544()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_10001A484();
    if (sub_100003448(v1))
    {
      sub_100021E14();
      sub_100021D44();
      _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
    }
  }

  +[CPLErrors unknownError];
  objc_claimAutoreleasedReturnValue();
  v7 = sub_100021D10();
  v8(v7, v0);
}

uint64_t sub_10018E620()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_10001A484();
    if (sub_100003448(v1))
    {
      sub_10000FB34();
      sub_100021D44();
      _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
    }
  }

  v7 = sub_100018790();
  return v8(v7);
}

uint64_t sub_10018E6D4(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    v4 = sub_10001A484();
    if (sub_100021E38(v4))
    {
      v5 = a2[4];
      v6 = a2[5];
      sub_10000343C();
      sub_100021D64();
      _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    }
  }

  v12 = sub_100021D84(a2[8]);
  return v13(v12);
}

uint64_t sub_10018E784()
{
  sub_100021E08();
  if ((v2 & 1) == 0)
  {
    v3 = sub_10001A484();
    if (sub_100021E20(v3))
    {
      sub_1000187DC();
      sub_100021D94(&_mh_execute_header, v4, v5, "Push session failed to begin with error %@", v6, v7, v8, v9, v13);
    }
  }

  v10 = sub_100021DE8(*(v0 + 40));
  return v11(v10);
}

uint64_t sub_10018E824(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    v5 = sub_10001A484();
    if (sub_100021E38(v5))
    {
      sub_10000FB34();
      sub_100021D64();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  [CPLResetTracker discardTracker:*(a3 + 32)];
  v11 = sub_100021D84(*(a3 + 40));
  return v12(v11);
}

uint64_t sub_10018E8E0()
{
  sub_100021E08();
  if ((v2 & 1) == 0)
  {
    v3 = sub_10001A484();
    if (sub_100021E20(v3))
    {
      sub_1000187DC();
      sub_100021D94(&_mh_execute_header, v4, v5, "Pull session failed to begin with error %@", v6, v7, v8, v9, v13);
    }
  }

  v10 = sub_100021DE8(*(v0 + 40));
  return v11(v10);
}

uint64_t sub_10018E980(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    v5 = sub_10001A484();
    if (sub_100021E38(v5))
    {
      sub_10000FB34();
      sub_100021D64();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  [CPLResetTracker discardTracker:*(a3 + 32)];
  v11 = sub_100021D84(*(a3 + 40));
  return v12(v11);
}

uint64_t sub_10018EA3C()
{
  sub_100021E08();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10001A484();
    if (sub_1000033C0(v2))
    {
      sub_100021E14();
      sub_100021D74();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  *v0 = +[CPLErrors unknownError];
  v8 = sub_100021D54();
  return v9(v8);
}

uint64_t sub_10018EB08()
{
  sub_100021E08();
  if ((v2 & 1) == 0)
  {
    v3 = sub_10001A484();
    if (sub_100021E20(v3))
    {
      sub_1000187DC();
      sub_100021D94(&_mh_execute_header, v4, v5, "Finalizing failed with error %@", v6, v7, v8, v9, v13);
    }
  }

  v10 = sub_100021DE8(*(v0 + 32));
  return v11(v10);
}

uint64_t sub_10018EBA8(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    v4 = sub_10001A484();
    if (sub_100021E38(v4))
    {
      sub_100021D64();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
    }
  }

  v10 = sub_100021D84(*(a2 + 32));
  return v11(v10);
}

uint64_t sub_10018EC14()
{
  sub_100021E08();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10001A484();
    if (sub_1000033C0(v2))
    {
      sub_100021E14();
      sub_100021D74();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  *v0 = +[CPLErrors unknownError];
  v8 = sub_100021D54();
  return v9(v8);
}

uint64_t sub_10018ECE4()
{
  sub_100021E08();
  if ((v2 & 1) == 0)
  {
    v3 = sub_10001A484();
    if (sub_100021E20(v3))
    {
      sub_1000187DC();
      sub_100021D94(&_mh_execute_header, v4, v5, "Getting changes failed with error %@", v6, v7, v8, v9, v11);
    }
  }

  return (*(*(v0 + 32) + 16))();
}

void sub_10018ED94(char a1)
{
  if ((a1 & 1) == 0)
  {
    v1 = sub_10001A484();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      sub_1000139A0();
      sub_10000FB94(&_mh_execute_header, v1, v2, "Got %@", v3);
    }
  }
}

uint64_t sub_10018EE34()
{
  sub_100021E08();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10001A484();
    if (sub_1000033C0(v2))
    {
      sub_100021E14();
      sub_100021D74();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  *v0 = +[CPLErrors unknownError];
  v8 = sub_100021D54();
  return v9(v8);
}

uint64_t sub_10018EF04()
{
  sub_100021E08();
  if ((v2 & 1) == 0)
  {
    v3 = sub_10001A484();
    if (sub_100021E20(v3))
    {
      sub_1000187DC();
      sub_100021D94(&_mh_execute_header, v4, v5, "Acknowledging batch failed with error %@", v6, v7, v8, v9, v13);
    }
  }

  v10 = sub_100021DE8(*(v0 + 32));
  return v11(v10);
}

uint64_t sub_10018EFA8()
{
  sub_100021E08();
  if ((v2 & 1) == 0)
  {
    v3 = sub_10001A484();
    if (sub_100021E20(v3))
    {
      sub_1000187DC();
      sub_100021D94(&_mh_execute_header, v4, v5, "Acknowledging batch succeeded with new library version %@", v6, v7, v8, v9, v13);
    }
  }

  v10 = sub_100021D84(*(v0 + 32));
  return v11(v10);
}

uint64_t sub_10018F04C()
{
  sub_100021E08();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10001A484();
    if (sub_1000033C0(v2))
    {
      sub_100021E14();
      sub_100021D74();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  *v0 = +[CPLErrors unknownError];
  v8 = sub_100021D54();
  return v9(v8);
}

void sub_10018F124()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_10001A484();
    if (sub_100003448(v1))
    {
      sub_10000FB34();
      sub_100021D44();
      _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
    }
  }

  +[CPLErrors unknownError];
  objc_claimAutoreleasedReturnValue();
  v7 = sub_100021D10();
  v8(v7, v0, 0);
}

void sub_10018F1F4()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_10001A484();
    if (sub_100003448(v1))
    {
      sub_10000FB34();
      sub_100021D44();
      _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
    }
  }

  +[CPLErrors unknownError];
  objc_claimAutoreleasedReturnValue();
  v7 = sub_100021D10();
  v8(v7, v0);
}

void sub_10018F2C0()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_100021DB4();
    v2 = sub_10001A484();
    if (sub_100003448(v2))
    {
      v3 = NSStringFromSelector(v1);
      sub_100021CC8();
      sub_100021D44();
      _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
    }
  }

  +[CPLErrors unknownError];
  objc_claimAutoreleasedReturnValue();
  v9 = sub_100021CE0();
  v10(v9);
}

void sub_10018F39C()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_100021DB4();
    v2 = sub_10001A484();
    if (sub_100003448(v2))
    {
      v3 = NSStringFromSelector(v1);
      sub_100021CC8();
      sub_100021D44();
      _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
    }
  }

  +[CPLErrors unknownError];
  objc_claimAutoreleasedReturnValue();
  v9 = sub_100021D10();
  v10(v9, v0);
}

void sub_10018F47C()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_100021DB4();
    v2 = sub_10001A484();
    if (sub_100003448(v2))
    {
      v3 = NSStringFromSelector(v1);
      sub_100021CC8();
      sub_100021D44();
      _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
    }
  }

  v9 = +[CPLErrors unknownError];
  v10 = sub_100018790();
  v11(v10);
}

uint64_t sub_10018F564()
{
  sub_100021E08();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10001A484();
    if (sub_1000033C0(v2))
    {
      sub_100021E14();
      sub_100021D74();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  *v0 = +[CPLErrors unknownError];
  v8 = sub_100021D54();
  return v9(v8);
}

uint64_t sub_10018F630()
{
  sub_100021E08();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10001A484();
    if (sub_1000033C0(v2))
    {
      sub_100021E14();
      sub_100021D74();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  *v0 = +[CPLErrors unknownError];
  v8 = sub_100021D54();
  return v9(v8);
}

uint64_t sub_10018F6FC()
{
  sub_100021E08();
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_10001A484();
    if (sub_1000033C0(v2))
    {
      sub_100021E14();
      sub_100021D74();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }
  }

  *v0 = +[CPLErrors unknownError];
  v8 = sub_100021D54();
  return v9(v8);
}

uint64_t sub_10018F7C8()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_100021DB4();
    v2 = sub_10001A484();
    if (sub_100003448(v2))
    {
      v3 = NSStringFromSelector(v1);
      sub_100021CC8();
      sub_100021D44();
      _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
    }
  }

  v9 = sub_100018790();
  return v10(v9);
}

uint64_t sub_10018F894()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_100021DB4();
    v2 = sub_10001A484();
    if (sub_100003448(v2))
    {
      v3 = NSStringFromSelector(v1);
      sub_100021CC8();
      sub_100021D44();
      _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
    }
  }

  v9 = sub_100018790();
  return v10(v9);
}

uint64_t sub_10018F95C()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_10001A484();
    if (sub_100003448(v1))
    {
      sub_10000FB34();
      sub_100021D44();
      _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
    }
  }

  v7 = sub_100018790();
  return v8(v7);
}

uint64_t sub_10018FA10(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    v4 = sub_10001A484();
    if (sub_100021E38(v4))
    {
      v5 = *(a2 + 32);
      sub_10000343C();
      sub_100021D64();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  v11 = sub_100021D84(*(a2 + 56));
  return v12(v11);
}

uint64_t sub_10018FAB4()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v1 = sub_10001A484();
    if (sub_100003448(v1))
    {
      sub_10000FB34();
      sub_100021D44();
      _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
    }
  }

  v7 = sub_100018790();
  return v8(v7);
}

uint64_t sub_10018FB68(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    v4 = sub_10001A484();
    if (sub_100021E38(v4))
    {
      v13 = [*(a2 + 32) componentsJoinedByString:{@", "}];
      sub_100021D64();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }

  v10 = sub_100021D84(*(a2 + 56));
  return v11(v10);
}

id sub_10018FC30(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10001A484();
    if (sub_100021E38(v4))
    {
      v5 = [a2 userInfo];
      v6 = [v5 objectForKey:_NSXPCConnectionInvocationReplyToSelectorKey];
      sub_100021CC8();
      sub_100021D64();
      _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    }
  }

  return [a2 invoke];
}

void sub_10018FD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTActivityReport.m"];
  [v6 handleFailureInMethod:a1 object:a2 file:v7 lineNumber:175 description:{@"Invalid phase %ld", a3}];

  abort();
}

void sub_10018FDA4(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = objc_opt_class();
      v7 = sub_100023390(v6);
      sub_1000233B4(&_mh_execute_header, v8, v9, "%@ only supports %@", v10, v11, v12, v13, v17, v18, v19);
    }
  }

  v14 = +[NSAssertionHandler currentHandler];
  v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTActivityReport.m"];
  v16 = objc_opt_class();
  [v14 handleFailureInMethod:a2 object:a1 file:v15 lineNumber:250 description:{@"%@ only supports %@", v16, objc_opt_class()}];

  abort();
}

void sub_10018FEC0(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = objc_opt_class();
      v7 = sub_100023390(v6);
      sub_1000233B4(&_mh_execute_header, v8, v9, "%@ only supports %@", v10, v11, v12, v13, v17, v18, v19);
    }
  }

  v14 = +[NSAssertionHandler currentHandler];
  v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTActivityReport.m"];
  v16 = objc_opt_class();
  [v14 handleFailureInMethod:a2 object:a1 file:v15 lineNumber:262 description:{@"%@ only supports %@", v16, objc_opt_class()}];

  abort();
}

BOOL sub_10018FFDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!a1)
  {
    goto LABEL_9;
  }

  v8 = (v5 | v6) == 0;
  if (!v5 || !v6)
  {
    goto LABEL_12;
  }

  if ([v5 isEqual:v6])
  {
    v8 = 1;
    goto LABEL_12;
  }

  v9 = realpath_DARWIN_EXTSN([v5 fileSystemRepresentation], 0);
  if (!v9)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_12;
  }

  v10 = v9;
  v11 = realpath_DARWIN_EXTSN([v7 fileSystemRepresentation], 0);
  if (v11)
  {
    v12 = v11;
    v8 = strcmp(v10, v11) == 0;
    free(v12);
  }

  else
  {
    v8 = 0;
  }

  free(v10);
LABEL_12:

  return v8;
}

void sub_1001901F8(void *a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [a1 asPlist];
      *buf = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to serialize %@: %@", buf, 0x16u);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLEngineParameters.m"];
  v10 = [a1 asPlist];
  [v8 handleFailureInMethod:a2 object:a1 file:v9 lineNumber:141 description:{@"Failed to serialize %@: %@", v10, a3}];

  abort();
}

void sub_100190318(uint64_t a1)
{
  v2 = sub_100023BA4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Invalid plist from coder: %@", &v3, 0xCu);
  }
}

void sub_1001903E4(void *a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100023BA4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      v8 = a1;
      v9 = 2112;
      v10 = CPLLibraryIdentifierSystemLibrary;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Automatically renaming %{public}@ to %@", &v7, 0x16u);
    }
  }

  v5 = CPLLibraryIdentifierSystemLibrary;
  *a2 = CPLLibraryIdentifierSystemLibrary;
  v6 = v5;
}

void sub_1001904CC(void *a1, void *a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100023BA4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [a2 libraryIdentifier];
      v7 = [a2 cloudLibraryResourceStorageURL];
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Client asked to store some weird path for %@: %@", &v12, 0x16u);
    }
  }

  v8 = a3[1];
  v9 = +[NSDate date];
  v10 = [a2 libraryIdentifier];
  v11 = [a3 _keyForInsanityForLibraryIdentifier:v10];
  [v8 setObject:v9 forKey:v11];
}

void sub_1001908D8(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100025CA0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Engine is closing for %@", buf, 0xCu);
    }
  }

  *(*(a1 + 32) + 74) = 1;
  v4 = [*(a1 + 32) taskIdentifier];
  v5 = dispatch_time(0, 30000000000);
  v6 = *(a1 + 32);
  v7 = *(v6 + 136);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027528;
  block[3] = &unk_1002733C8;
  v8 = *(a1 + 40);
  v11 = v4;
  v12 = v8;
  block[4] = v6;
  v9 = v4;
  dispatch_after(v5, v7, block);
}

void sub_100190A48(uint64_t a1)
{
  v3 = [*(a1 + 32) currentActivity];
  objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  if (!v3)
  {
    if (*(*(a1 + 32) + 72) == 1)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v6 = sub_100025CA0();
        if (sub_100003424(v6))
        {
          goto LABEL_12;
        }

        goto LABEL_13;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = sub_100025CA0();
      if (sub_100003424(v7))
      {
LABEL_12:
        v8 = *(a1 + 32);
        sub_10000343C();
        sub_100013990();
        _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
      }

LABEL_13:
    }

    [*(a1 + 32) _updateRequestIfNecessary];
    goto LABEL_15;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100025CA0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      sub_10000343C();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Updating prediction for %@ but task is already running", v14, 0xCu);
    }
  }

LABEL_15:
}

__CFString *sub_100190D64(__CFString *a1, double a2)
{
  if (a1)
  {
    if (a2 == 0.0)
    {
      a1 = @"none";

      return a1;
    }

    if (a2 < 1.0)
    {
      a1 = @"<1s";

      return a1;
    }

    a1 = [CPLDateFormatter stringForTimeInterval:v2];
  }

  return a1;
}

id sub_100190DE0(uint64_t a1, _BYTE *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100025CA0();
    if (sub_100003424(v5))
    {
      LODWORD(v14) = 138412290;
      *(&v14 + 4) = a1;
      sub_100013990();
      _os_log_impl(v6, v7, v8, v9, v10, 0xCu);
    }
  }

  v11 = [*(a1 + 128) now];
  v12 = *(a1 + 40);
  *(a1 + 40) = v11;

  [a1 _scheduleBlockedTimeout];
  *a2 = 1;
  return [*(a1 + 128) submitTaskRequestForRescheduler:a1];
}

void sub_1001910D8(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v4))
    {
      sub_10000348C(&_mh_execute_header, v5, v6, "Acquired Task for %@ twice", v7, v8, v9, v10, v13, v14, 2u);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
  [sub_1000034AC() handleFailureInMethod:a2 object:? file:? lineNumber:? description:?];

  abort();
}

id sub_1001911A0(void *a1, void *a2, double a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_100025CA0();
    if (sub_100003424(v7))
    {
      *v14 = 138412802;
      *&v14[4] = a1;
      *&v14[12] = 2048;
      *&v14[14] = a3;
      *&v14[22] = 2112;
      v15 = a2;
      sub_100013990();
      _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
    }
  }

  [a1 setTaskCompleted];
  return [a2 _dropTaskRequest];
}

void sub_100191284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 128) now];
  v6 = *(*a2 + 56);
  *(*a2 + 56) = v5;

  *(*a2 + 64) = *(a3 + 56);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_100025CA0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a3 + 40);
      v9 = [CPLBGSTActivityReport descriptionForExpirationReason:*(a3 + 56)];
      [*(*a2 + 56) timeIntervalSinceDate:*(*a2 + 48)];
      v11 = v10;
      v12 = [*(a3 + 40) request];
      [v12 expectedDuration];
      v14 = 138413058;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      v18 = 2048;
      v19 = v11;
      v20 = 2048;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ has expired (reason: %{public}@) after running for %.1fs (vs. estimated running time before expiration: %.1fs)", &v14, 0x2Au);
    }
  }
}

void sub_1001913E4(uint64_t a1, uint64_t *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v5 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v5))
    {
      sub_10000AF60(&_mh_execute_header, v6, v7, "Missing acquire date when expiring", v8, v9, v10, v11, 0);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = *(a1 + 48);
  v14 = *a2;
  v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_1001914A4(uint64_t a1, uint64_t *a2)
{
  v3 = *(*a2 + 40);
  *(*a2 + 40) = a1;

  *(*a2 + 72) = 1;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100025CA0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *a2;
      sub_10000343C();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resubmitting task request for %@ after task has been deferred", v6, 0xCu);
    }
  }
}

void sub_100191578(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Switching Background Task Request from %{public}@ to %{public}@", buf, 0x16u);
}

void sub_1001915E8(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_10000FAAC();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_10019167C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@ has been deferred without any current task", buf, 0xCu);
}

void sub_1001916D4(id *a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (sub_10002B0A8(v6))
    {
      [*a1 count];
      sub_10002B0D4(&_mh_execute_header, v7, v8, "%@ is done or won't happen while some %lu clients are registered to this session", v9, v10, v11, v12, v15, v16, 2u);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
  [sub_10002B108() handleFailureInMethod:a3 object:objc_msgSend(*a1 file:"count") lineNumber:? description:?];

  abort();
}

void sub_1001917C0(_BYTE *a1, uint64_t a2, _BYTE *a3)
{
  v7 = sub_100025CA0();
  if (sub_100003424(v7))
  {
    v8 = *(a2 + 120);
    sub_10000343C();
    sub_100013990();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
  }

  *a3 = *a1 & 1;
}

void sub_100191944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (sub_10002B0A8(v6))
    {
      v17 = *(a1 + 120);
      sub_10002B0D4(&_mh_execute_header, v7, v8, "Trying to deregister for %@ while we are registered for %@", v9, v10, v11, v12, v15, v16, 2u);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
  [sub_10002B108() handleFailureInMethod:a3 object:*(a1 + 120) file:? lineNumber:? description:?];

  abort();
}

id sub_100191AFC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_100025CA0();
    if (sub_1000033C0(v7))
    {
      v9 = 138412546;
      v10 = a1;
      v11 = 2112;
      v12 = a2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to submit %@: %@", &v9, 0x16u);
    }
  }

  a3[40] = 0;
  return [a3 _acquiredTask:0 error:a2];
}

id sub_100191BD8(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_100025CA0();
    if (sub_100003424(v7))
    {
      LODWORD(v15) = 138412290;
      *(&v15 + 4) = a1;
      sub_100013990();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    }
  }

  v13 = [CPLErrors cplErrorWithCode:150 description:@"Automatically failing background task", v15];
  *a3 = v13;
  a2[40] = 0;
  return [a2 _acquiredTask:0 error:v13];
}

void sub_100191CC0()
{
  if (_CPLSilentLogging != 1)
  {
    v1 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v1))
    {
      sub_10000AF60(&_mh_execute_header, v2, v3, "Missing task or error", v4, v5, v6, v7, 0);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_100191D78()
{
  if (_CPLSilentLogging != 1)
  {
    v1 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v1))
    {
      sub_10000AF60(&_mh_execute_header, v2, v3, "Acquired task without an interested rescheduler", v4, v5, v6, v7, 0);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_100191E30()
{
  if (_CPLSilentLogging != 1)
  {
    v1 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v1))
    {
      sub_10000AF60(&_mh_execute_header, v2, v3, "Acquired task without having a current registered task identifier", v4, v5, v6, v7, 0);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_100191EE8()
{
  if (_CPLSilentLogging != 1)
  {
    v1 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v1))
    {
      sub_10000AF60(&_mh_execute_header, v2, v3, "Acquired task without a request", v4, v5, v6, v7, 0);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_100192140()
{
  v0 = sub_100025CA0();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1000187A4();
    sub_10000FAAC();
    _os_log_impl(v1, v2, v3, v4, v5, 0x16u);
  }
}

void sub_1001922B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = +[NSAssertionHandler currentHandler];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
  [v8 handleFailureInMethod:a2 object:a3 file:v9 lineNumber:922 description:{@"Failed to cancel %@: %@", *a1, a4}];

  abort();
}

void sub_100192348()
{
  if (_CPLSilentLogging != 1)
  {
    v1 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v1))
    {
      sub_10000AF60(&_mh_execute_header, v2, v3, "Trying to cancel a nil task request", v4, v5, v6, v7, 0);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

void sub_100192400()
{
  if (_CPLSilentLogging != 1)
  {
    v1 = __CPLGenericOSLogDomain();
    if (sub_1000033C0(v1))
    {
      sub_10000AF60(&_mh_execute_header, v2, v3, "Trying to update an unknown task request", v4, v5, v6, v7, 0);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLBGSTRescheduler.m"];
  [sub_1000034AC() handleFailureInMethod:? object:? file:? lineNumber:? description:?];

  abort();
}

uint64_t sub_1001924B8(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100025CA0();
    if (sub_100003424(v3))
    {
      sub_100013990();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
    }
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32));
}

uint64_t sub_100192544(char a1, uint64_t *a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    v5 = sub_100025CA0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a2;
      sub_10000343C();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found no persisted request for %@", v8, 0xCu);
    }
  }

  return (*(*(a3 + 56) + 16))();
}

void sub_1001926F0(uint64_t a1, __CFString **a2, void *a3)
{
  v5 = sub_100190D64(a1, *(a1 + 88));
  v6 = *&(*a2)[3].isa;
  if (*&(*a2)[2].length != v6)
  {
    v16 = sub_100190D64(*a2, v6);
    v17 = [[NSString alloc] initWithFormat:@"%@ (estimated: %@)", v5, v16];

    v5 = v17;
  }

  v7 = [NSString alloc];
  if ((*a2)[1].isa)
  {
    v8 = @"Requested";
  }

  else
  {
    v8 = @"Last requested";
  }

  v9 = [v7 initWithFormat:@"%@ running time: %@", v8, v5];
  [a3 addObject:v9];

  v10 = *a2;
  if (LOBYTE((*a2)[2].data) == 1)
  {
    [a3 addObject:@"Session has been explicitly extended bypassing prediction"];
    v10 = *a2;
  }

  isa = v10[1].isa;
  if (!isa)
  {
    isa = v10[2].isa;
  }

  v12 = [isa identifier];
  if (v12)
  {
    v13 = [(*a2)[3].info lastSubmitDate];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(*a2)[2].info descriptionWithNow:v13];
  if (v14)
  {
    v15 = [[NSString alloc] initWithFormat:@"Prediction: %@", v14];
    [a3 addObject:v15];
  }
}

void sub_100192A18(uint64_t a1, void *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *a2;
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Trying to acquire CloudKit rescheduler manager for %@ twice", buf, 0xCu);
    }
  }

  v6 = +[NSAssertionHandler currentHandler];
  v8 = *(a1 + 64);
  v7 = *(a1 + 72);
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLCloudKitReschedulerCoordinator.m"];
  [v6 handleFailureInMethod:v8 object:v7 file:v9 lineNumber:69 description:{@"Trying to acquire CloudKit rescheduler manager for %@ twice", *a2}];

  abort();
}

uint64_t sub_100192B20(void *a1, uint64_t a2, uint64_t a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_10002B988();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a1;
      v8 = *(*(*a2 + 8) + 40);
      v13 = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Dropping rescheduler manager for %{public}@: %@", &v13, 0x16u);
    }
  }

  [qword_1002C4FF0 removeObjectForKey:*a1];
  v9 = *(*(*a2 + 8) + 40);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v11 = qword_1002C4FE8;
    v12 = [*(*(*a2 + 8) + 40) taskIdentifier];
    [v11 removeObject:v12];

    return [*(a3 + 48) _saveRegisteredTaskIdentifiers];
  }

  return result;
}

void sub_100192C70(uint64_t a1)
{
  if (_CPLSilentLogging != 1)
  {
    v2 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = NSStringFromSelector(*(a1 + 32));
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Calling %@ too many times", buf, 0xCu);
    }
  }

  v4 = +[NSAssertionHandler currentHandler];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Daemon/CPLCloudKitReschedulerCoordinator.m"];
  v8 = NSStringFromSelector(*(a1 + 32));
  [v4 handleFailureInMethod:v5 object:v6 file:v7 lineNumber:118 description:{@"Calling %@ too many times", v8}];

  abort();
}

void sub_100192D80(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10002C8A4();
    if (sub_10000FABC(v3))
    {
      v12 = a1[4];
      sub_1000033F8();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }

  v9 = [[CPLExitSharedLibrarySupervisor alloc] initWithScopeIdentifier:a1[4] exitState:0 supervisorInfo:a1[6]];
  v10 = a1[5];
  v11 = *(v10 + 16);
  *(v10 + 16) = v9;
}

void sub_100192E54(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 40);
  if ([v4 isCPLErrorWithCode:10000])
  {
  }

  else if (v4)
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_12;
    }

    v5 = sub_10002C8A4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 48) scopeIdentifier];
      v7 = *(a1 + 40);
      *buf = 138543618;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Forced exit for %{public}@ finished with error %@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10002C8A4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 48) scopeIdentifier];
      *buf = 138543362;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Forced exit for %{public}@ finished successfully", buf, 0xCu);
    }

    v4 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v4 = 0;
LABEL_12:
  v9 = *(a1 + 32);
  if ((*(v9 + 24) & 1) == 0)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v18 = sub_10002E528;
    v19 = &unk_100271F40;
    v20 = *(a1 + 48);
    v10 = v17;
    os_unfair_lock_lock((v9 + 8));
    v18(v10);
    os_unfair_lock_unlock((v9 + 8));

    v11 = *(a1 + 32);
    v12 = *(v11 + 80);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002E530;
    v15[3] = &unk_1002726D0;
    v15[4] = v11;
    v16 = *(a1 + 48);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002E7D4;
    v14[3] = &unk_100273588;
    v14[4] = *(a1 + 32);
    v13 = [v12 performWriteTransactionWithBlock:v15 completionHandler:v14];
  }
}

void sub_100193144(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

id sub_100193198(id *a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10002C8A4();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(*a1 + 2) scopeIdentifier];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Client is in foreground, will try to process staged scopes for %{public}@", &v7, 0xCu);
    }
  }

  result = [*a1 _launchForcedExitForSupervisor:*(*a1 + 2)];
  *(*(*(a2 + 40) + 8) + 24) = 0;
  return result;
}

void sub_100193288(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10002C8A4();
    if (sub_10000FABC(v3))
    {
      v10 = [*(*a1 + 16) scopeIdentifier];
      sub_1000033F8();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }

  v9 = *(*a1 + 16);
  *(*a1 + 16) = 0;
}

void sub_10019335C(uint64_t a1, void *a2, uint64_t a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_10002C8A4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v15 = 138543362;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ needs to be supervised, start supervising its exit", &v15, 0xCu);
    }
  }

  v8 = [CPLExitSharedLibrarySupervisor alloc];
  v9 = [*(a1 + 48) scopeIdentifier];
  v10 = [(CPLExitSharedLibrarySupervisor *)v8 initWithScopeIdentifier:v9 exitState:*a2 supervisorInfo:0];
  v11 = *(*a3 + 16);
  *(*a3 + 16) = v10;

  v12 = [*(*a3 + 16) supervisorInfo];
  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  sub_10002F6FC(*(a1 + 56));
}

void sub_10019349C(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    v6 = sub_10002C8A4();
    if (sub_10000FABC(v6))
    {
      v7 = +[CPLExitSharedLibrarySupervisor descriptionForExitState:](CPLExitSharedLibrarySupervisor, "descriptionForExitState:", [*(*a2 + 16) exitState]);
      v8 = [*(*a2 + 16) nextForcedExitDate];
      v14 = [CPLDateFormatter stringFromDateAgo:v8 now:0];
      sub_1000033F8();
      _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
    }
  }

  sub_10002F6FC(*(a3 + 40));
}

id sub_1001935C0(char a1, id *a2)
{
  if ((a1 & 1) == 0)
  {
    v4 = sub_10002C8A4();
    if (sub_10000FABC(v4))
    {
      +[CPLExitSharedLibrarySupervisor descriptionForExitState:](CPLExitSharedLibrarySupervisor, "descriptionForExitState:", [*(*a2 + 2) exitState]);
      *(&v11 + 4) = LODWORD(v11) = 138412290;
      sub_1000033F8();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    }
  }

  return [*a2 _launchForcedExitForSupervisor:{*(*a2 + 2), v11}];
}

void sub_100193698(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v2 = sub_10002C8A4();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v5 = [CPLExitSharedLibrarySupervisor descriptionForExitState:*(a1 + 64)];
        v6 = [*(a1 + 48) scopeIdentifier];
        v7 = *(a1 + 40);
        v15 = 138412802;
        v16 = v5;
        v17 = 2114;
        v18 = v6;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to report %@ to the server for %{public}@: %@", &v15, 0x20u);

LABEL_8:
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_10002C8A4();
    if (sub_10000FABC(v8))
    {
      v5 = [CPLExitSharedLibrarySupervisor descriptionForExitState:*(a1 + 64)];
      [*(a1 + 48) scopeIdentifier];
      v15 = 138412546;
      v16 = v5;
      v18 = v17 = 2114;
      sub_1000033F8();
      _os_log_impl(v9, v10, v11, v12, v13, 0x16u);

      goto LABEL_8;
    }

LABEL_9:
  }

  v14 = *(*a2 + 48);
  *(*a2 + 48) = 0;
}

void sub_1001939A4(uint64_t a1, id *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100003568();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 48) cpl_zoneName];
      *buf = 138543362;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Created primary zone with zoneID: %{public}@", buf, 0xCu);
    }
  }

  v6 = [*(a1 + 56) firstObject];
  if (!v6)
  {
    if (_CPLSilentLogging != 1)
    {
      v8 = sub_100003568();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [*(*a2 + 39) scopeIdentifier];
        v10 = *(a1 + 48);
        *buf = 138412546;
        v17 = v9;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Zone for %@ (%@) was not actually created", buf, 0x16u);
      }
    }

    v11 = +[NSAssertionHandler currentHandler];
    v12 = *(a1 + 64);
    v13 = *a2;
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitFetchTransportScopeTask.m"];
    v15 = [*(*a2 + 39) scopeIdentifier];
    [v11 handleFailureInMethod:v12 object:v13 file:v14 lineNumber:80 description:{@"Zone for %@ (%@) was not actually created", v15, *(a1 + 48)}];

    abort();
  }

  v7 = v6;
  [*a2 _callCompletionWithZone:v6];
}

void sub_100193BC0(uint64_t a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100003568();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HIDWORD(*a2);
      sub_1000119B0(&_mh_execute_header, v4, v5, "Transport scope needs to be inferred for %@ - doing it naively for now", v6, v7, v8, v9, 2u);
    }
  }
}

void sub_100193C6C(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v5 = *(a2 + 312);
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = v5;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Fetching %{public}@ for %@", buf, 0x16u);
}

void sub_100193CE0()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v0 = sub_100003568();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *v1 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "No zoneID to validate against", v1, 2u);
    }
  }
}

void sub_100193D5C(id *a1, uint64_t a2, uint64_t a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100003568();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*a1 scope];
      v8 = [v7 scopeIdentifier];
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Feature seems disabled for %{public}@ - inferring zone exists so we can track it", &v12, 0xCu);
    }
  }

  v9 = [[CKRecordZone alloc] initWithZoneID:*(*(*a2 + 8) + 40)];
  v10 = *(*a3 + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_100193E80(uint64_t a1)
{
  v2 = sub_100003568();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(*a1 + 8) + 40) zoneName];
    sub_1000119B0(&_mh_execute_header, v4, v5, "Using stored zone %{public}@", v6, v7, v8, v9, 2u);
  }
}

void sub_100193F34(uint64_t a1, uint64_t *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_100003568();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000AF60(&_mh_execute_header, v5, v6, "Zone should have been fetched by now", v7, v8, v9, v10, 0);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = *(a1 + 104);
  v13 = *a2;
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitFetchTransportScopeTask.m"];
  [v11 handleFailureInMethod:v12 object:v13 file:v14 lineNumber:263 description:@"Zone should have been fetched by now"];

  abort();
}

void sub_100194000(uint64_t a1, uint64_t a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100003568();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(*(*a1 + 8) + 40) cpl_zoneName];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Found no zone but was not asked to create %{public}@", &v7, 0xCu);
    }
  }

  v6 = [CPLErrors cplErrorWithCode:150 description:@"No zone found for library"];
  (*(*(*a2 + 272) + 16))();
}

void sub_10019412C(uint64_t a1, uint64_t *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_100003568();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000AF60(&_mh_execute_header, v5, v6, "Zone ID for Zone should have been determined by now", v7, v8, v9, v10, 0);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = *(a1 + 104);
  v13 = *a2;
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitFetchTransportScopeTask.m"];
  [v11 handleFailureInMethod:v12 object:v13 file:v14 lineNumber:292 description:@"Zone ID for Zone should have been determined by now"];

  abort();
}

uint64_t sub_1001941F8(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_100194204(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_100194210(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_10019421C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

uint64_t sub_100194228(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t sub_100194234(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

void sub_100194240(uint64_t a1)
{
  v2 = [*(a1 + 32) operationDidFinishWithError:*(a1 + 40)];
  if ((*(a1 + 48) & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    if (qword_1002C5018 != -1)
    {
      dispatch_once(&qword_1002C5018, &stru_100273978);
    }

    v3 = qword_1002C5020;
    if (os_log_type_enabled(qword_1002C5020, OS_LOG_TYPE_ERROR))
    {
      v4 = *(*(a1 + 32) + 296);
      v6 = 134218242;
      v7 = v4;
      v8 = 2112;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to send feedback with exit status %ld with error: %@", &v6, 0x16u);
    }

    v5 = *(a1 + 48);
  }

  (*(*(*(a1 + 32) + 272) + 16))();
}

id *sub_100194CDC(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v22 = a2;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (a1)
  {
    v23.receiver = a1;
    v23.super_class = CPLCKShareRecordTodo;
    v18 = objc_msgSendSuper2(&v23, "init");
    a1 = v18;
    if (v18)
    {
      objc_storeStrong(v18 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
      objc_storeStrong(a1 + 4, a5);
      v19 = [v16 copy];
      v20 = a1[5];
      a1[5] = v19;

      objc_storeStrong(a1 + 6, a7);
    }
  }

  return a1;
}

BOOL sub_100195B0C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = a2;
  v9 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_1000035AC();
    if (sub_1000374B8(v10))
    {
      *buf = 138412290;
      v24 = v9;
      sub_1000374A0(&_mh_execute_header, v4, v11, "Fetched shared record to create pseudo-sparse record:\n%@", buf);
    }
  }

  v12 = [*(a1 + 32) copiedRecordFromSourceRecord:v9 action:@"Copy (pseudo sparse record)" error:a4];
  if (v12)
  {
    v13 = [*(a1 + 32) baseCKRecord];

    if (v12 != v13)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v17 = sub_1000035AC();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v12;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@ was not merged but actually copied", buf, 0xCu);
        }
      }

      v18 = +[NSAssertionHandler currentHandler];
      v21 = a1 + 40;
      v19 = *(a1 + 40);
      v20 = *(v21 + 8);
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKBatchUploadPlanner.m"];
      [v18 handleFailureInMethod:v20 object:v19 file:v22 lineNumber:789 description:{@"%@ was not merged but actually copied", v12}];

      abort();
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = sub_1000035AC();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v12;
        sub_1000374A0(&_mh_execute_header, v14, v15, "Created pseudo-sparse record will be: %@", buf);
      }
    }
  }

  return v12 != 0;
}

BOOL sub_100195D38(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = a2;
  v9 = a3;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_1000035AC();
    if (sub_1000374B8(v10))
    {
      *buf = 138412290;
      v24 = v9;
      sub_1000374A0(&_mh_execute_header, v4, v11, "Fetched shared record to create private related record:\n%@", buf);
    }
  }

  v12 = [*(a1 + 32) copiedRecordFromSourceRecord:v9 action:@"Copy (pseudo sparse record)" error:a4];
  if (v12)
  {
    v13 = [*(a1 + 32) baseCKRecord];

    if (v12 != v13)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v17 = sub_1000035AC();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v12;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@ was not merged but actually copied", buf, 0xCu);
        }
      }

      v18 = +[NSAssertionHandler currentHandler];
      v21 = a1 + 40;
      v20 = *(a1 + 40);
      v19 = *(v21 + 8);
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKBatchUploadPlanner.m"];
      [v18 handleFailureInMethod:v19 object:v20 file:v22 lineNumber:969 description:{@"%@ was not merged but actually copied", v12}];

      abort();
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = sub_1000035AC();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v12;
        sub_1000374A0(&_mh_execute_header, v14, v15, "Created private record from shared record will be: %@", buf);
      }
    }

    if ([v9 cpl_isEPPRecord])
    {
      [v12 cpl_markRecordAsEPP];
    }
  }

  return v12 != 0;
}

void sub_100195F78(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

void sub_100195F88(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

void sub_100195F98(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

id sub_100196634(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
  }

  else
  {
    v2 = 0;
  }

  return [v2 isEqual:*(a1 + 32)];
}

id sub_10019698C(uint64_t a1, void *a2, uint64_t a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1000035AC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = a1;
      sub_1000374A0(&_mh_execute_header, v6, v7, "Already shared %@", &v9);
    }
  }

  return [a2 _dontUnshareRecordWithScopedIdentifier:a1 recordClass:a3];
}

void sub_100196A58(uint64_t *a1)
{
  v2 = sub_1000035AC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a1;
    v5 = 138412290;
    v6 = v4;
    sub_1000374A0(&_mh_execute_header, v2, v3, "Dropping %@ (shared)", &v5);
  }
}

void sub_100196AF8(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_1000035AC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v15 = HIDWORD(*(a1 + 128));
      sub_10000348C(&_mh_execute_header, v5, v6, "Trying to delete shared record for %@ without any shared record ID", v7, v8, v9, v10, v13, v14, 2u);
    }
  }

  v11 = +[NSAssertionHandler currentHandler];
  v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKBatchUploadPlanner.m"];
  [v11 handleFailureInMethod:a2 object:a1 file:v12 lineNumber:456 description:{@"Trying to delete shared record for %@ without any shared record ID", *(a1 + 128)}];

  abort();
}

void sub_100196BD4(void **a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = *a1;
  *a1 = v2;
}

void sub_100196C18(uint64_t a1, uint64_t a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1000035AC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v13 = 138412546;
      *&v13[4] = a1;
      sub_1000033B4();
      *&v13[14] = a2;
      sub_100013984();
      sub_10003752C(v7, v8, v9, v10, v11);
    }
  }

  v12 = [CPLErrors unknownError:*v13];
  if (a3)
  {
    v12 = v12;
    *a3 = v12;
  }
}

id sub_100196E90(uint64_t a1, id *a2, uint64_t a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1000035AC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = a1;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Removing shared master %@ from uploads as it will be moved later", &v8, 0xCu);
    }
  }

  return [*a2 removeObjectAtIndex:a3];
}

void sub_100196F60(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000035AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100021CFC();
    v6 = a2;
    sub_10003752C(&_mh_execute_header, v3, v4, "Failed to create CKRecord for %@: %@", v5);
  }
}

void sub_1001972A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_1000035AC();
    if (sub_10002B0A8(v6))
    {
      v8 = *(a1 + 128);
      v11 = 138412546;
      v12 = a3;
      v13 = 2112;
      v14 = v8;
      sub_10003752C(&_mh_execute_header, v3, v7, "Trying to update %@ for %@ but it is not a supported key", &v11);
    }
  }

  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKBatchUploadPlanner.m"];
  [sub_10002B108() handleFailureInMethod:a3 object:*(a1 + 128) file:? lineNumber:? description:?];

  abort();
}

void sub_100197528(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v27 = [WeakRetained propertyMapping];

  v13 = *(a1 + 24);
  if (v13)
  {
    v14 = *(v13 + 16);
  }

  else
  {
    v14 = 0;
  }

  v15 = [sub_1000374DC(v6 v7];
  if (v15)
  {
    v22 = 0;
  }

  else
  {
    v23 = *(a1 + 24);
    if (v23)
    {
      v24 = *(v23 + 16);
    }

    else
    {
      v24 = 0;
    }

    v22 = [sub_1000374DC(v15 v16];
  }

  *a3 = v22;
}

void sub_100197770(uint64_t a1, uint64_t a2, char *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v37 = [WeakRetained propertyMapping];

  v13 = *(a1 + 24);
  if (v13)
  {
    v14 = *(v13 + 16);
  }

  else
  {
    v14 = 0;
  }

  v15 = [sub_1000374DC(v6 v7];
  if (v15)
  {
    v22 = 0;
  }

  else if (*(a1 + 32) == 1 && ((v23 = *(a1 + 24)) == 0 ? (v24 = 0) : (v24 = *(v23 + 16)), v25 = [sub_1000374DC(v15 v16], (v25 & 1) == 0))
  {
    v32 = *(a1 + 24);
    if (v32)
    {
      v33 = *(v32 + 16);
    }

    else
    {
      v33 = 0;
    }

    v22 = [sub_1000374DC(v25 v26] ^ 1;
  }

  else
  {
    v22 = 1;
  }

  *a3 = v22;
}

void sub_100197858(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [*(a1 + 32) changeWithSourceRecordID:v9];
  if (v12)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = sub_1000035F0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [v9 cplFullDescription];
        v15 = v30 = v11;
        v16 = [v13 sourceRecordChangeTag];
        [v13 destinationRecord];
        v17 = v29 = v10;
        v18 = [v17 recordID];
        v19 = [v18 cplFullDescription];
        sub_10003ABA4();
        v38 = v16;
        sub_10003AB90();
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to move [%@ etag: %@] to %@: %@", buf, 0x2Au);

        v10 = v29;
        v11 = v30;
      }
    }

    if (byte_1002C5038 == 1 && (_CPLSilentLogging & 1) == 0)
    {
      v20 = sub_1000035F0();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [v13 destinationRecord];
        v22 = [v21 cplFullDescription];
        *buf = 138412290;
        v37 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Destination record was %@", buf, 0xCu);
      }

LABEL_13:
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v20 = sub_1000035F0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [v9 cplFullDescription];
      v24 = v23 = v11;
      v25 = [v13 sourceRecordChangeTag];
      v26 = [v10 recordID];
      v27 = [v26 cplFullDescription];
      sub_10003ABA4();
      v38 = v25;
      sub_10003AB90();
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Successfully moved [%@ etag: %@] to %@. Move marker: %@", buf, 0x2Au);

      v11 = v23;
      v12 = 0;
    }

    goto LABEL_13;
  }

  if (*(a1 + 40) && (v9 || v10 || v13))
  {
    v28 = *(a1 + 48);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000398C0;
    v31[3] = &unk_100273198;
    v32 = v9;
    v33 = *(a1 + 40);
    v34 = v10;
    v35 = v13;
    [v28 dispatchAsync:v31];
  }
}

void sub_100197BE8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
  v9 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  if (v8)
  {
    if ([v8 cpl_inExpunged])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = sub_1000035F0();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          sub_10003AB78();
          v11 = "Won't move %@ to %@ as its real record is expunged";
LABEL_13:
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0x16u);
          goto LABEL_28;
        }

        goto LABEL_28;
      }
    }

    else
    {
      if (![v8 cpl_isSparseRecord])
      {
        [*(a1 + 56) prepareCopyForCKRecordID:v7 fromCKRecord:v8];
        v12 = [v8 recordID];
        [*(a1 + 64) setObject:v12 forKeyedSubscript:v7];

        v13 = *(a1 + 112);
        v14 = *(a1 + 56);
        v35 = 0;
        v15 = [CPLCloudKitTransportTask copiedRecordFromSourceRecord:v8 sourceDatabaseScope:v13 toRecordID:v9 helper:v14 action:@"Move" error:&v35];
        v16 = v35;
        v10 = v35;
        if (v15)
        {
          if (qword_1002C5048)
          {
            v17 = (*(qword_1002C5048 + 16))();
            if ([v17 moveStep])
            {
              v36 = @"inject_fault_step";
              v18 = *(a1 + 72);
              +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v17 moveStep]);
              v19 = v34 = v17;
              v20 = [v18 objectForKeyedSubscript:v19];
              v37 = v20;
              v21 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
              v22 = [NSMutableDictionary dictionaryWithDictionary:v21];

              v17 = v34;
              [v34 workItemDelay];
              if (v23 != 0.0)
              {
                [v34 workItemDelay];
                v25 = [NSNumber numberWithInt:(v24 * 1000.0)];
                [v22 setObject:v25 forKeyedSubscript:@"sparsifier_work_item_vesting_delay_milliseconds"];
              }

              [v15 setPluginFields:v22];
              if ((_CPLSilentLogging & 1) == 0)
              {
                v26 = sub_1000035F0();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  v27 = [v15 recordID];
                  *buf = 138412546;
                  v39 = v27;
                  v40 = 2112;
                  v41 = v22;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Setting move plug-in fields on %@ to %@", buf, 0x16u);
                }
              }
            }
          }

          v28 = objc_alloc_init(CKMovePhotosChange);
          v29 = [v8 recordID];
          [v28 setSourceRecordID:v29];

          v30 = [v8 etag];
          [v28 setSourceRecordChangeTag:v30];

          [v28 setDestinationRecord:v15];
          v31 = *(a1 + 80);
          v32 = [v8 recordID];
          v33 = [v15 recordID];
          [v31 addCopyMoveFromRecordID:v32 toRecordID:v33];

          [*(a1 + 88) addChange:v28];
        }

        else
        {
          objc_storeStrong((*(*(a1 + 96) + 8) + 40), v16);
          *a4 = 1;
        }

        goto LABEL_28;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = sub_1000035F0();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          sub_10003AB78();
          v11 = "Won't move %@ to %@ as its real record is a sparse record";
          goto LABEL_13;
        }

        goto LABEL_28;
      }
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_1000035F0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      sub_10003AB78();
      v11 = "Won't move %@ to %@ as its real record has already disappeared";
      goto LABEL_13;
    }

LABEL_28:
  }
}

void sub_1001980C0(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_1000035F0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Record for %@ has not been downloaded", buf, 0xCu);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = *(a1 + 104);
  v7 = *(a1 + 48);
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTask+CKRecordCopy.m"];
  [v5 handleFailureInMethod:v6 object:v7 file:v8 lineNumber:136 description:{@"Record for %@ has not been downloaded", a2}];

  abort();
}

void sub_1001981B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000035F0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10003ABB8(&_mh_execute_header, v4, v5, "Failed to upload copied records: %@", v6, v7, v8, v9, 2u);
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_1000035F0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = HIDWORD(*(a2 + 48));
      sub_10003ABB8(&_mh_execute_header, v11, v12, "Records were:\n %@", v13, v14, v15, v16, 2u);
    }
  }
}

void sub_1001982A0(uint64_t a1, uint64_t *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = sub_1000035F0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Source recordIDs have not been populated correctly", v9, 2u);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = *(a1 + 80);
  v7 = *a2;
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTask+CKRecordCopy.m"];
  [v5 handleFailureInMethod:v6 object:v7 file:v8 lineNumber:267 description:@"Source recordIDs have not been populated correctly"];

  abort();
}

void sub_1001983A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to find target for resource-ful record %@", buf, 0xCu);
    }
  }

  v7 = +[NSAssertionHandler currentHandler];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKRecordBuilder.m"];
  [v7 handleFailureInMethod:a1 object:a2 file:v8 lineNumber:48 description:{@"Failed to find target for resource-ful record %@", a3}];

  abort();
}

void sub_100198490(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Trying to create an union builder with no builders", v7, 2u);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKRecordBuilder.m"];
  [v5 handleFailureInMethod:a1 object:a2 file:v6 lineNumber:96 description:@"Trying to create an union builder with no builders"];

  abort();
}

uint64_t sub_100198578(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_10019858C(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

id sub_1001985F8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 session];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 shouldCheckEPPCapability];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_10019864C(id result)
{
  if (result)
  {
    v1 = +[NSUserDefaults standardUserDefaults];
    v2 = [v1 BOOLForKey:@"CPLAllowEPPCapabilityCheckOnNonPrivateDatabases"];

    return v2;
  }

  return result;
}

uint64_t sub_10019869C(void *a1, uint64_t a2)
{
  if (sub_10019864C(a1))
  {
    return 1;
  }

  v4 = [CPLErrors cplErrorWithCode:1002 description:@"EPP Capability check has been disabled for non-private databases"];
  (*(a2 + 16))(a2, 0, v4);

  return 0;
}

void sub_10019870C(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    v3 = sub_100003634();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a2 + 48);
      sub_100003460();
      sub_1000187BC(&_mh_execute_header, v5, v6, "Failed to check capability for %{public}@: %@", v7, v8, v9, v10, v11);
    }
  }
}

void sub_1001987B8(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    v3 = sub_100003634();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a2 + 48);
      sub_100003460();
      sub_1000187BC(&_mh_execute_header, v5, v6, "Failed to check capability for %{public}@ (ignoring): %@", v7, v8, v9, v10, v11);
    }
  }
}

void sub_100198864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_100003634();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      sub_100003460();
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Container does not support capability check for %{public}@: %@", v8, 0x16u);
    }
  }

  *(*a3 + 24) = 1;
}

void sub_10019893C(uint64_t a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v2 = sub_100003634();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 48);
      v4 = *(a1 + 56);
      v5 = 138543618;
      v6 = v3;
      v7 = 2114;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Checked capabilities on %{public}@ returned: %{public}@", &v5, 0x16u);
    }
  }
}

void sub_100198A18(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to encode prefix", v7, 2u);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitComputeStateEncryptionHelper.m"];
  [v5 handleFailureInMethod:a1 object:a2 file:v6 lineNumber:142 description:@"Failed to encode prefix"];

  abort();
}

void sub_100198AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@ was unable to produce any data", buf, 0xCu);
    }
  }

  v7 = +[NSAssertionHandler currentHandler];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKFeedbackOperation.m"];
  [v7 handleFailureInMethod:a1 object:a2 file:v8 lineNumber:27 description:{@"%@ was unable to produce any data", a3}];

  abort();
}

void sub_100198DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100198E00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10003FC10();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Invalid value for group '%@': %@", &v8, 0x16u);
    }
  }
}

void sub_100198F14(uint64_t *a1)
{
  sub_100003150(a1[4]);
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_100198F6C(uint64_t a1)
{
  sub_100003150(*(a1 + 32));
  result = [*(*(a1 + 32) + 16) count];
  if (result)
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 16), "count")}];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(*(a1 + 32) + 16);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10003FF1C;
    v7[3] = &unk_100273F10;
    v7[4] = *(a1 + 40);
    return [v6 enumerateKeysAndObjectsUsingBlock:v7];
  }

  return result;
}

void sub_10019906C(uint64_t a1, uint64_t a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Missing throttling error", v7, 2u);
    }
  }

  v5 = +[NSAssertionHandler currentHandler];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitTransportTaskGate.m"];
  [v5 handleFailureInMethod:a1 object:a2 file:v6 lineNumber:237 description:@"Missing throttling error"];

  abort();
}

uint64_t sub_100199140(char a1, void *a2, void *a3)
{
  if ((a1 & 1) == 0)
  {
    v5 = sub_100003678();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [a2 componentsJoinedByString:{@", "}];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Forcing disabled features: (%@)", &v10, 0xCu);
    }
  }

  v7 = a3[36];
  v8 = a3[35];
  return (*(a3[34] + 16))();
}

void sub_100199248(char a1, void ***a2, void **a3)
{
  if ((a1 & 1) == 0)
  {
    v5 = sub_100003678();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching list of disabled features from server", v7, 2u);
    }
  }

  v6 = objc_alloc_init(CPLCKCheckFeatureAvailabilityOperation);
  *a2 = _NSConcreteStackBlock;
  a2[1] = 3221225472;
  a2[2] = sub_1000416AC;
  a2[3] = &unk_100273FC8;
  a2[4] = a3;
  [(CPLCKCheckFeatureAvailabilityOperation *)v6 setFeatureCheckAvailabilityCompletionBlock:a2];
  [a3 launchOperation:v6 type:1 withContext:0];
}

void sub_10019934C(void *a1, void *a2)
{
  v3 = a2;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_1000036BC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Updated cursor: %@", &v11, 0xCu);
    }
  }

  v5 = a1[4];
  v6 = *(*(a1[6] + 8) + 40);
  v7 = [[CPLCKQueryCursor alloc] initWithQueryCursor:v3 additionalInfo:a1[5]];
  [v5 sendProgressBatch:v6 updatedCursor:v7];

  *(*(a1[7] + 8) + 24) = 0;
  v8 = objc_alloc_init(CPLChangeBatch);
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_100199488(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_1000036BC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v9 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ignoring cursor fetch %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = a1[4];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000436B8;
    v7[3] = &unk_100271F40;
    v7[4] = v6;
    [v6 dispatchAsync:v7];
    (*(a1[5] + 16))();
  }

  objc_autoreleasePoolPop(v4);
}

id sub_1001995E0(id *a1, uint64_t a2, uint64_t a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1000036BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*a1 + a2);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting additional query for sparse assets in %@", &v9, 0xCu);
    }
  }

  return [*a1 _runQueryWithCurrentUserID:*(a3 + 40) cursor:0 additionalInfo:@"Sparse" completionHandler:*(*a1 + 34)];
}

uint64_t sub_1001996E4(uint64_t *a1, void *a2, uint64_t a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_1000036BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a1;
      v8 = [a2 scopeIdentifier];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring unsupported %@ for %@", &v10, 0x16u);
    }
  }

  return (*(a3 + 16))(a3, 0);
}

void sub_10019980C(void *a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_1000036BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = HIDWORD(*a1);
      sub_10002B064(&_mh_execute_header, v7, v8, "Did not find query for %@", v9, v10, v11, v12, v15, v16, 2u);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitQueryTask.m"];
  [v13 handleFailureInMethod:a2 object:a3 file:v14 lineNumber:179 description:{@"Did not find query for %@", *a1}];

  abort();
}

void sub_100199904(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Translating CKRecord to record raised an exception: %@\nCKRecord = %@", buf, 0x16u);
}

void sub_10019996C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000036BC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412546;
    v6 = a1;
    v7 = 2112;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to fetch %@ in query: %@", &v5, 0x16u);
  }
}

void sub_100199A2C(void *a1, id *a2, uint64_t *a3)
{
  v6 = [CPLCloudKitErrors realErrorForError:a1];
  v7 = [*a2 lastOperationRequestUUIDs];
  v8 = [a1 localizedDescription];
  *a3 = [CPLCloudKitErrors CPLErrorForCloudKitError:v6 withRequestUUIDs:v7 description:@"Error downloading batch: %@", v8];
}

void sub_100199AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = sub_1000036BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002B064(&_mh_execute_header, v7, v8, "Invalid class for cursor %@", v9, v10, v11, v12, v15, v16, 2u);
    }
  }

  v13 = +[NSAssertionHandler currentHandler];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitQueryTask.m"];
  [v13 handleFailureInMethod:a1 object:a2 file:v14 lineNumber:346 description:{@"Invalid class for cursor %@", a3}];

  abort();
}

void sub_100199BDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    v7 = v3;
    if (!v4)
    {
      v5 = objc_alloc_init(NSMutableArray);
      v6 = *(a1 + 8);
      *(a1 + 8) = v5;

      v4 = *(a1 + 8);
    }

    [v4 addObject:v7];
    v3 = v7;
  }
}

uint64_t sub_100199C64(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_100199C78(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = objc_alloc_init(CPLRemappedRecord);
  sub_100199BDC(a1, v8);
  *a2 = 0;
  a2[1] = 0;
  if (PBReaderPlaceMark() && CPLRemappedRecordReadFrom(v8, a3))
  {
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    result = 0;
    *a4 = 0;
  }

  return result;
}