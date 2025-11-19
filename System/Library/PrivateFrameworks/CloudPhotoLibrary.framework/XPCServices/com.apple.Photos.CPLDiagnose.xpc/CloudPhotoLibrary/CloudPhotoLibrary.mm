id CPLDaemonProcessInterface()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CPLDaemonProcessProtocol];
  v1 = objc_opt_class();
  v2 = [NSSet setWithObjects:v1, objc_opt_class(), 0];
  [v0 setClasses:v2 forSelector:"getEngineWrapperStatusesWithCompletionHandler:" argumentIndex:0 ofReply:1];

  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
  [v0 setClasses:v4 forSelector:"getDaemonLibraryManagerStatusesWithCompletionHandler:" argumentIndex:0 ofReply:1];

  return v0;
}

id sub_100001C9C()
{
  if (qword_100040B90 != -1)
  {
    sub_10001D5C8();
  }

  v1 = qword_100040B98;

  return v1;
}

void sub_100001DBC(id a1)
{
  v1 = [NSSet alloc];
  qword_100040B80 = [v1 initWithObjects:{CPLLibraryIdentifierSystemLibrary, CPLLibraryIdentifierSyndicationLibrary, 0}];

  _objc_release_x1();
}

void sub_100002870(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 hasPrefix:@"CPLEngineParameters-"])
  {
    v3 = [v6 length];
    if (v3 > [@"CPLEngineParameters-" length])
    {
      v4 = [v6 substringWithRange:{objc_msgSend(@"CPLEngineParameters-", "length"), objc_msgSend(v6, "length") - objc_msgSend(@"CPLEngineParameters-", "length")}];
      v5 = [*(a1 + 32) parametersForLibraryIdentifier:v4];
      if (v5)
      {
        [*(a1 + 40) addObject:v5];
      }
    }
  }
}

int64_t sub_100002958(id a1, CPLEngineParameters *a2, CPLEngineParameters *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CPLEngineParameters *)v4 libraryIdentifier];
  v7 = [(CPLEngineParameters *)v5 libraryIdentifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [(CPLEngineParameters *)v4 libraryIdentifier];
    v11 = CPLLibraryIdentifierSystemLibrary;
    v12 = [v10 isEqualToString:CPLLibraryIdentifierSystemLibrary];

    if (v12)
    {
      v9 = -1;
    }

    else
    {
      v13 = [(CPLEngineParameters *)v5 libraryIdentifier];
      v14 = [v13 isEqualToString:v11];

      if (v14)
      {
        v9 = 1;
      }

      else
      {
        v15 = [(CPLEngineParameters *)v4 libraryIdentifier];
        v16 = [(CPLEngineParameters *)v5 libraryIdentifier];
        v9 = [v15 compare:v16];
      }
    }
  }

  return v9;
}

void sub_100002E80(id a1)
{
  v1 = _CPLOSLogSubsystem();
  qword_100040B98 = os_log_create(v1, "engine.parameters");

  _objc_release_x1();
}

void sub_1000033CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000033FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003414(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *(*(*(a1 + 40) + 8) + 24) = 1;
    dispatch_semaphore_signal(*(a1 + 32));
    v4 = v5;
  }
}

void sub_100003498(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = 1;
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

intptr_t sub_100003548(intptr_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v2 = result;
    v3 = [CPLErrors cplErrorWithCode:83 description:@"failed to get management service in time"];
    v4 = *(v2[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    *(*(v2[5] + 8) + 24) = 1;
    v6 = v2[4];

    return dispatch_semaphore_signal(v6);
  }

  return result;
}

void sub_100004204(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 14);
  objc_exception_rethrow();
}

uint64_t sub_10000422C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  v4 = *(a1 + 32);
  if (*(v4 + 76) == 1)
  {
    v5 = *(v4 + 80);
    if (v5 < 1)
    {
      v6 = 60.0;
    }

    else
    {
      v6 = v5;
    }

    v7 = [NSDate dateWithTimeIntervalSinceNow:v6];
  }

  else
  {
    v7 = +[NSDate distantFuture];
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 64);
  *(v8 + 64) = v7;

  return _objc_release_x1();
}

void sub_100004408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004444(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100004E20()
{
  if (qword_100040BA8 != -1)
  {
    sub_10001E008();
  }

  v1 = qword_100040BB0;

  return v1;
}

id sub_100004E64(uint64_t a1)
{
  waitpid(*(a1 + 48), (*(a1 + 32) + 72), 0);
  [*(a1 + 40) lock];
  v2 = *(a1 + 40);

  return [v2 unlockWithCondition:1];
}

void sub_100004EB8(int a1, char *a2)
{
  if (a2)
  {
    memset(&v3, 0, sizeof(v3));
    if (!stat(a2, &v3) && !v3.st_size)
    {
      unlink(a2);
    }
  }
}

void sub_100005058(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_10000507C(uint64_t a1)
{
  fwrite("\b\b", 2uLL, 1uLL, __stderrp);
  kill(*(a1 + 40), 9);
  v2 = [*(a1 + 32) redirectStderrToFileAtPath];
  if ([v2 length])
  {
  }

  else
  {
    v3 = [*(a1 + 32) redirectStderrToFileDescriptor];

    if (v3 == -1)
    {
      return;
    }
  }

  v4 = [*(a1 + 32) redirectStderrToFileAtPath];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 redirectStderrToFileAtPath];
    if (v6)
    {
LABEL_6:
      v10 = v6;
      v7 = fopen([v10 UTF8String], "a+");
      if (v7)
      {
        v8 = v7;
        fwrite("\n\n === Aborted by user", 0x16uLL, 1uLL, v7);
        fclose(v8);
      }

      v6 = v10;
    }
  }

  else if ([v5 redirectStderrToFileDescriptor] == 1 && (objc_msgSend(*(a1 + 32), "redirectStdoutToFileAtPath"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v6 = [*(a1 + 32) redirectStdoutToFileAtPath];
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
  }
}

void sub_1000051E0(uint64_t a1)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (v3 != -1)
  {
    block[7] = v1;
    block[8] = v2;
    signal(2, v3);
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005294;
    block[3] = &unk_100034CB8;
    block[4] = *(a1 + 40);
    dispatch_sync(v5, block);
  }
}

void sub_100005438(id a1)
{
  v1 = _CPLOSLogSubsystem();
  qword_100040BB0 = os_log_create(v1, "cplctl.task");

  _objc_release_x1();
}

void sub_100005478(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100005498(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

BOOL sub_1000054C4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL sub_1000054DC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_100007668(id a1)
{
  putenv("LESS=FKRSX");

  putenv("LESSCHARSET=utf-8");
}

void sub_100007EB4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 asPlist];
  [v3 addObject:v4];
}

uint64_t sub_100009E98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100009EB0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100009F18(uint64_t a1)
{
  v2 = *(*(*(a1 + 56) + 8) + 40);
  v3 = *(a1 + 32);
  [*(a1 + 40) timeIntervalSinceNow];
  v5 = -v4;
  if (v2)
  {
    v9 = [*(*(*(a1 + 56) + 8) + 40) localizedDescription];
    [v3 printFormat:@"[force closing library manager after it took %.1f seconds to finally open and it failed miserably with error: %@]", *&v5, v9];
  }

  else
  {
    [v3 printFormat:@"[force closing library manager after it took %.1f seconds to finally open]", -v4];
    v6 = +[NSDate date];
    v7 = *(a1 + 48);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000A05C;
    v10[3] = &unk_100034DA8;
    v10[4] = *(a1 + 32);
    v11 = v6;
    v8 = v6;
    [v7 closeWithCompletionHandler:v10];
  }
}

void sub_10000A05C(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  [*(a1 + 40) timeIntervalSinceNow];
  v5 = -v4;
  if (v7)
  {
    v6 = [v7 localizedDescription];
    [v3 printFormat:@"[force closing of library manager took %.2f seconds and it failed miserably with error: %@]", *&v5, v6];
  }

  else
  {
    [v3 printFormat:@"[force closing of library manager took %.2f seconds]", -v4];
  }
}

id sub_10000A0FC()
{
  if (qword_100040C00 != -1)
  {
    sub_10001E888();
  }

  v1 = qword_100040C08;

  return v1;
}

void sub_10000AB44(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10000AB98(uint64_t a1, void *a2)
{
  v4 = a2;
  dispatch_assert_queue_V2(*(a1 + 32));
  v3 = *(*(a1 + 40) + 8);
  if (*(v3 + 24) == 1)
  {
    *(v3 + 24) = 0;
    v4[2]();
    dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));
  }
}

id sub_10000AC1C(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    sub_10001E89C();
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    sub_10001E8C8();
  }

  v2 = dispatch_semaphore_create(0);
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(*(a1 + 56) + 8) + 24) = 1;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000AD20;
  v10[3] = &unk_100034E48;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v11 = v6;
  v12 = v7;
  v8 = [v5 proxyWithErrorHandler:v10];

  return v8;
}

void sub_10000AD20(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000ADC8;
  v8[3] = &unk_100034BF8;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v3;
  v10 = v4;
  v6 = *(v5 + 16);
  v7 = v3;
  v6(v5, v8);
}

void sub_10000ADC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [v2 localizedDescription];
  v3 = [CPLErrors cplErrorWithCode:150 underlyingError:v2 description:@"call to daemon proxy failed: %@", v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10000AE58(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 8) + 40);
  if (!v1)
  {
    sub_10001E8F4();
  }

  v3 = dispatch_time(0, 40000000000);
  if (dispatch_semaphore_wait(v1, v3))
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000AF40;
    v9[3] = &unk_100034E98;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v10 = v5;
    v11 = v6;
    dispatch_sync(v4, v9);
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

uint64_t sub_10000AF40(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000AFBC;
  v3[3] = &unk_100034CB8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return (*(v1 + 16))(v1, v3);
}

uint64_t sub_10000AFBC(uint64_t a1)
{
  v2 = [CPLErrors cplErrorWithCode:83 description:@"too too long"];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10000B018(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000B0F0;
  v11[3] = &unk_100034EE8;
  v14 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v8 = *(v7 + 16);
  v9 = v6;
  v10 = v5;
  v8(v7, v11);
}

void sub_10000B0F0(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
  v2 = *(a1 + 40);
  v3 = (*(*(a1 + 56) + 8) + 40);

  objc_storeStrong(v3, v2);
}

void sub_10000B548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10000B580(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(a1 + 32));
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
    dispatch_semaphore_signal(*(a1 + 40));
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_10000B660(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CPLErrors cplErrorWithCode:83 description:@"Getting library identifiers did not complete in time"];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10000C09C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 16);
  if (v3)
  {
    if (v4)
    {
      sub_10001E978();
    }

    if (*(v2 + 8))
    {
      sub_10001E9A4();
    }

    *(*(a1 + 32) + 8) = signal(2, 1);
    v5 = dispatch_source_create(&_dispatch_source_type_signal, 2uLL, 0, *(*(a1 + 32) + 24));
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000C1F8;
    handler[3] = &unk_100034FF8;
    handler[4] = *(a1 + 32);
    v6 = v5;
    v13 = v6;
    v14 = *(a1 + 40);
    dispatch_source_set_event_handler(v6, handler);
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = v6;
    v9 = v6;

    dispatch_resume(v9);
  }

  else
  {
    if (!v4)
    {
      sub_10001E9D0();
    }

    dispatch_source_cancel(v4);
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    *(v10 + 16) = 0;

    signal(2, *(*(a1 + 32) + 8));
    *(*(a1 + 32) + 8) = 0;
  }
}

void *sub_10000C1F8(void *result)
{
  if (*(result[4] + 16) == result[5])
  {
    return (*(result[6] + 16))();
  }

  return result;
}

uint64_t sub_10000C2E4(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    sub_10001E9FC();
  }

  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  return _objc_release_x1();
}

void sub_10000C3F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (!v3)
  {
    sub_10001EA28();
  }

  *(v2 + 32) = 0;
}

uint64_t sub_10000C494(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10000C964(id a1)
{
  v1 = _CPLOSLogSubsystem();
  qword_100040C08 = os_log_create(v1, "cplctl");

  _objc_release_x1();
}

void sub_10000C9A4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x16u);
}

void sub_100011D84(id a1)
{
  v30[0] = @"cloudd";
  v29 = +[CPLProcessSpecification signalProcessSpecification];
  v31[0] = v29;
  v30[1] = @"cloudphotod";
  v28 = +[CPLProcessSpecification baseProcessSpecification];
  v27 = [v28 addDefaultsDomain:@"com.apple.cloudphotod"];
  v31[1] = v27;
  v30[2] = @"nsurlsessiond";
  v26 = +[CPLProcessSpecification baseProcessSpecification];
  v31[2] = v26;
  v30[3] = @"dasd";
  v25 = +[CPLProcessSpecification baseProcessSpecification];
  v31[3] = v25;
  v30[4] = @"deleted";
  v24 = +[CPLProcessSpecification baseProcessSpecification];
  v31[4] = v24;
  v30[5] = @"accountsd";
  v23 = +[CPLProcessSpecification baseProcessSpecification];
  v31[5] = v23;
  v30[6] = @"mediaanalysisd";
  v22 = +[CPLProcessSpecification baseProcessSpecification];
  v21 = [v22 addDefaultsDomain:@"com.apple.mediaanalysisd"];
  v31[6] = v21;
  v30[7] = @"photoanalysisd";
  v20 = +[CPLProcessSpecification signalProcessSpecification];
  v19 = [v20 addDefaultsDomain:@"com.apple.photoanalysisd"];
  v31[7] = v19;
  v30[8] = @"coreduetd";
  v18 = +[CPLProcessSpecification priviledgedProcessSpecification];
  v31[8] = v18;
  v30[9] = @"deleted_helper";
  v17 = +[CPLProcessSpecification priviledgedProcessSpecification];
  v31[9] = v17;
  v30[10] = @"fseventsd";
  v16 = +[CPLProcessSpecification priviledgedProcessSpecification];
  v31[10] = v16;
  v30[11] = @"mstreamd";
  v15 = +[CPLProcessSpecification baseProcessSpecification];
  v31[11] = v15;
  v30[12] = @"com.apple.photos.VideoConversionService";
  v14 = +[CPLProcessSpecification baseProcessSpecification];
  v31[12] = v14;
  v30[13] = @"com.apple.photos.ImageConversionService";
  v13 = +[CPLProcessSpecification baseProcessSpecification];
  v31[13] = v13;
  v30[14] = @"assetsd";
  v1 = +[CPLProcessSpecification signalProcessSpecification];
  v2 = [v1 addDefaultsDomain:@"com.apple.assetsd"];
  v31[14] = v2;
  v30[15] = @"Photos";
  v3 = +[CPLProcessSpecification baseProcessSpecification];
  v4 = [v3 addDefaultsDomain:@"com.apple.mobileslideshow"];
  v31[15] = v4;
  v30[16] = @"Camera";
  v5 = +[CPLProcessSpecification baseProcessSpecification];
  v6 = [v5 addDefaultsDomain:@"com.apple.camera"];
  v31[16] = v6;
  v30[17] = @"nebulad";
  v7 = +[CPLProcessSpecification baseProcessSpecification];
  v31[17] = v7;
  v30[18] = @"mediaserverd";
  v8 = +[CPLProcessSpecification baseProcessSpecification];
  v31[18] = v8;
  v30[19] = @"deferredmediad";
  v9 = +[CPLProcessSpecification baseProcessSpecification];
  v31[19] = v9;
  v30[20] = @"cameracaptured";
  v10 = +[CPLProcessSpecification baseProcessSpecification];
  v31[20] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:21];
  v12 = qword_100040C20;
  qword_100040C20 = v11;
}

void sub_10001265C(uint64_t a1)
{
  v1 = +[NSFileManager defaultManager];
  v38 = [@"~/Library/Logs/photoslibraryupgrade.log" stringByExpandingTildeInPath];
  v48[0] = v38;
  v49[0] = @"Logs-mbfloagent";
  v35 = [@"~/Library/Logs/PhotosUpgrade.log" stringByExpandingTildeInPath];
  v48[1] = v35;
  v49[1] = @"Logs-Migration";
  v33 = [@"~/Library/Logs/PhotosUpgrade.aapbz" stringByExpandingTildeInPath];
  v48[2] = v33;
  v49[2] = @"Logs-Migration";
  v2 = [@"~/Library/Logs/PhotosUpgrade.aapbz.old" stringByExpandingTildeInPath];
  v48[3] = v2;
  v49[3] = @"Logs-Migration";
  v3 = [@"~/Library/Logs/PhotosLegacyUpgrade.aapbz" stringByExpandingTildeInPath];
  v48[4] = v3;
  v49[4] = @"Logs-MigrationService";
  v4 = [@"~/Library/Logs/PhotosLegacyUpgrade.aapbz.old" stringByExpandingTildeInPath];
  v48[5] = v4;
  v49[5] = @"Logs-MigrationService";
  v5 = [@"~/Library/Logs/PhotosUpgradeCompanion.log" stringByExpandingTildeInPath];
  v48[6] = v5;
  v49[6] = @"Logs-MigrationService";
  v6 = [@"~/Library/Logs/PhotosLegacyUpgradeCompanion.aapbz" stringByExpandingTildeInPath];
  v48[7] = v6;
  v49[7] = @"Logs-MigrationService";
  v7 = [@"~/Library/Logs/PhotosLegacyUpgradeCompanion.aapbz.old" stringByExpandingTildeInPath];
  v48[8] = v7;
  v49[8] = @"Logs-MigrationService";
  v8 = [@"~/Library/Logs/PhotosSearch.aapbz" stringByExpandingTildeInPath];
  v48[9] = v8;
  v49[9] = @"Logs-Search";
  v9 = [@"~/Library/Logs/PhotosSearch.aapbz.old" stringByExpandingTildeInPath];
  v48[10] = v9;
  v49[10] = @"Logs-Search";
  v10 = v1;
  v11 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:11];

  v12 = a1;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v44;
    v32 = v10;
    v34 = *v44;
    do
    {
      v17 = 0;
      v36 = v15;
      do
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v43 + 1) + 8 * v17);
        v19 = [v13 objectForKeyedSubscript:v18];
        v42 = 1;
        if ([v10 fileExistsAtPath:v18 isDirectory:&v42] && (v42 & 1) == 0)
        {
          v20 = [*(*(v12 + 32) + 168) URLByAppendingPathComponent:v19];
          v21 = [v18 lastPathComponent];
          [v20 URLByAppendingPathComponent:v21];
          v23 = v22 = v12;

          v41 = 0;
          LODWORD(v21) = [v10 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v41];
          v24 = v41;
          v39 = v23;
          if (v21)
          {
            v25 = [NSURL fileURLWithPath:v18];
            v40 = v24;
            v26 = [v10 copyItemAtURL:v25 toURL:v23 error:&v40];
            v27 = v40;

            if (v26)
            {
              v15 = v36;
LABEL_14:

              v12 = a1;
              v16 = v34;
              goto LABEL_15;
            }

            v30 = *(a1 + 32);
            v29 = [v30 _simplifiedPathForURL:v25];
            v31 = [v27 localizedDescription];
            [v30 printFormat:@"Failed to copy %@: %@", v29, v31];
          }

          else
          {
            v28 = *(v22 + 32);
            v25 = [v28 _simplifiedPathForURL:v20];
            v29 = [v24 localizedDescription];
            [v28 printFormat:@"Can't create %@: %@", v25, v29];
            v27 = v24;
          }

          v15 = v36;

          v10 = v32;
          goto LABEL_14;
        }

LABEL_15:

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v15);
  }
}

void sub_100012C80(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v4 = *a3;
  if (sqlite3_value_type(*a3) == 4)
  {
    v5 = sqlite3_value_blob(v4);
    v11 = [[NSData alloc] initWithBytesNoCopy:v5 length:sqlite3_value_bytes(v4) freeWhenDone:0];
    v6 = [NSPropertyListSerialization propertyListWithData:"propertyListWithData:options:format:error:" options:? format:? error:?];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 objectForKeyedSubscript:@"p"];
        if (v7)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v7 removeObjectForKey:@"rD"];
            v8 = malloc_type_malloc([v11 length], 0xE5ED9686uLL);
            v9 = +[NSOutputStream outputStreamToBuffer:capacity:](NSOutputStream, "outputStreamToBuffer:capacity:", v8, [v11 length]);
            [v9 open];
            v10 = [NSPropertyListSerialization writePropertyList:v6 toStream:v9 format:200 options:0 error:0];
            [v9 close];
            if (v10 >= 1)
            {
              sqlite3_result_blob(a1, v8, v10, &_free);

LABEL_14:

              return;
            }

            free(v8);
          }
        }
      }
    }

    sqlite3_result_value(a1, v4);
    goto LABEL_14;
  }

  sqlite3_result_value(a1, v4);
}

void sub_100012FAC(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v4 = *a3;
  if (sqlite3_value_type(*a3) == 4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = sqlite3_value_blob(v4);
    v7 = [[NSData alloc] initWithBytesNoCopy:v6 length:sqlite3_value_bytes(v4) freeWhenDone:0];
    v8 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:v7 class:objc_opt_class()];
    v9 = v8;
    if (!v8)
    {
      goto LABEL_23;
    }

    v24 = v5;
    v10 = [v8 share];
    v11 = [v10 URL];
    v12 = v11 != 0;
    if (v11)
    {
      v13 = v11;
      v14 = [v11 cpl_redactedShareURL];

      [v10 setURL:v14];
    }

    else
    {
      v14 = 0;
    }

    v15 = [v10 transportShare];
    if (v15)
    {
      [v10 setTransportShare:0];
      v12 = 1;
    }

    if (objc_opt_respondsToSelector())
    {
      v16 = v9;
      v17 = [v16 previewImageData];
      if (v17)
      {
        [v16 setPreviewImageData:0];
        v12 = 1;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v18 = v9;
      v19 = [v18 thumbnailImageData];
      if (v19)
      {
        v20 = v19;
        [v18 setThumbnailImageData:0];
      }

      else
      {

        if (!v12)
        {
          goto LABEL_20;
        }
      }
    }

    else if (!v12)
    {
LABEL_20:
      v5 = v24;
      if (v7)
      {
        v22 = [v7 length];
        v23 = malloc_type_malloc(v22, 0x89CE17F1uLL);
        [v7 getBytes:v23 range:{0, v22}];
        sqlite3_result_blob(a1, v23, v22, &_free);

LABEL_24:

        objc_autoreleasePoolPop(v5);
        return;
      }

LABEL_23:
      sqlite3_result_value(a1, v4);
      goto LABEL_24;
    }

    v21 = [NSKeyedArchiver cpl_archivedDataWithRootObject:v9];

    v7 = v21;
    goto LABEL_20;
  }

  sqlite3_result_value(a1, v4);
}

void sub_100013388(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v4 = *a3;
  if (sqlite3_value_type(*a3) == 3 && (v5 = sqlite3_value_text(v4), (v6 = [[NSString alloc] initWithBytesNoCopy:v5 length:strlen(v5) encoding:4 freeWhenDone:0]) != 0))
  {
    v7 = v6;
    v9 = [v6 cpl_redactedShareURL];

    v8 = v9;
    sqlite3_result_text(a1, [v9 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {

    sqlite3_result_value(a1, v4);
  }
}

void sub_100014760(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) stringByAppendingPathComponent:a2];
  [v2 addObject:v3];
}

void sub_1000154CC(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v7[0] = v3[62];
  v7[1] = @"library";
  v7[2] = @"-l";
  v7[3] = v2;
  v7[4] = @"summary";
  v4 = [NSArray arrayWithObjects:v7 count:5];
  v5 = [NSString stringWithFormat:@"Getting %@ summary", *(a1 + 48)];
  v6 = [*(a1 + 48) stringByAppendingPathComponent:@"library_summary.log"];
  [v3 collectOutputOfCommandAndArguments:v4 label:v5 filename:v6 outputIsStderr:0 timeout:1];
}

void sub_100016058(uint64_t a1, uint64_t a2)
{
  v16 = 1;
  v3 = [*(a1 + 32) stringByAppendingPathComponent:a2];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3 isDirectory:&v16];
  v6 = v16;

  if (v5 && (v6 & 1) != 0)
  {
    v7 = +[NSFileManager defaultManager];
    v8 = [v7 contentsOfDirectoryAtPath:v3 error:0];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100016184;
    v12[3] = &unk_100035120;
    v9 = v3;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = v9;
    v14 = v10;
    v15 = v11;
    [v8 enumerateObjectsUsingBlock:v12];
  }
}

void sub_100016184(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 containsString:@"Model"] & 1) != 0 || objc_msgSend(v5, "containsString:", @"PersonID"))
  {
    v3 = [*(a1 + 32) stringByAppendingPathComponent:v5];
    v4 = [NSURL fileURLWithPath:v3];
    if (([v4 hasDirectoryPath] & 1) == 0)
    {
      [*(a1 + 40) collectFileAtURL:v4 suffix:0 destinationDirectory:*(a1 + 48)];
    }
  }
}

void sub_100016374(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 shouldSignal])
  {
    [*(a1 + 32) appendFormat:@" %@", v5];
  }
}

void sub_100016520(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 shouldSample])
  {
    v6 = [v5 requiresRoot];
    v7 = *(a1 + 32);
    if (!v6 || v7[447] == 1)
    {
      [v7 sampleProcess:v8];
      if ([v5 shouldRunMemoryTools])
      {
        [*(a1 + 32) executeMemoryToolsOnProcess:v8];
      }
    }
  }
}

void sub_10001666C(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = [a3 defaultsDomain];
  if (v5)
  {
    v6 = [[NSString alloc] initWithFormat:@"/usr/bin/defaults read /var/mobile/Library/Preferences/%@.plist", v5];
    v7 = [[NSString alloc] initWithFormat:@"Getting defaults for %@", v11];
    v8 = [NSString alloc];
    v9 = [*(a1 + 32) processDetailPath:v11];
    v10 = [v8 initWithFormat:@"%@-defaults.txt", v9];

    [*(a1 + 32) collectOutputOfCommand:v6 label:v7 filename:v10];
  }
}

void sub_100017174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000171BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000171D4(uint64_t a1, void *a2)
{
  v4 = a2;
  dispatch_assert_queue_V2(*(a1 + 32));
  v3 = *(*(a1 + 40) + 8);
  if (*(v3 + 24) == 1)
  {
    *(v3 + 24) = 0;
    v4[2]();
    dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));
  }
}

id sub_100017258(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    sub_10001EC10();
  }

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    sub_10001EC3C();
  }

  v2 = dispatch_semaphore_create(0);
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(*(a1 + 64) + 8) + 24) = 1;
  v5 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100017368;
  v9[3] = &unk_100035198;
  v6 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v6;
  v11 = *(a1 + 72);
  v7 = [v5 proxyWithErrorHandler:v9];

  return v7;
}

void sub_100017368(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100017418;
  v7[3] = &unk_100035170;
  v4 = a1[5];
  v7[4] = a1[4];
  v8 = v3;
  v9 = a1[6];
  v5 = *(v4 + 16);
  v6 = v3;
  v5(v4, v7);
}

void sub_100017418(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) localizedDescription];
  [v2 printFormat:@"  call to daemon proxy failed: %@", v3];

  *(*(*(a1 + 48) + 8) + 24) = 0;
}

void sub_10001747C(uint64_t a1)
{
  v1 = *(*(*(a1 + 56) + 8) + 40);
  if (!v1)
  {
    sub_10001EC68();
  }

  v3 = dispatch_time(0, 40000000000);
  if (dispatch_semaphore_wait(v1, v3))
  {
    v4 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100017568;
    v8[3] = &unk_100035020;
    v5 = *(a1 + 48);
    v8[4] = *(a1 + 40);
    v9 = v5;
    dispatch_sync(v4, v8);
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

uint64_t sub_100017568(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000175E4;
  v3[3] = &unk_100034BD0;
  v1 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  return (*(v1 + 16))(v1, v3);
}

void sub_1000175F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000176C8;
  v12[3] = &unk_1000350F8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v7;
  v15 = v6;
  v9 = *(v8 + 16);
  v10 = v6;
  v11 = v5;
  v9(v8, v12);
}

void sub_1000176C8(id *a1)
{
  v2 = a1[5];
  if (a1[4])
  {
    [a1[5] printFormat:&stru_100035A18];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [a1[4] componentsSeparatedByString:@"\n"];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [a1[5] printFormat:@"  %@", *(*(&v9 + 1) + 8 * i)];
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    [a1[5] printFormat:&stru_100035A18];
  }

  else
  {
    v8 = [a1[6] localizedDescription];
    [v2 printFormat:@"  failed: %@", v8];
  }
}

void sub_100017870(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100017944;
  v12[3] = &unk_1000350F8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v7;
  v15 = v6;
  v9 = *(v8 + 16);
  v10 = v6;
  v11 = v5;
  v9(v8, v12);
}

void sub_100017944(id *a1)
{
  v2 = a1[4];
  if (v2)
  {
    if ([v2 count])
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v3 = a1[4];
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v12;
        do
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v12 != v6)
            {
              objc_enumerationMutation(v3);
            }

            [a1[5] printFormat:@"  * %@", *(*(&v11 + 1) + 8 * i)];
          }

          v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v5);
      }
    }

    else
    {
      v9 = a1[5];

      [v9 printFormat:@"    no library managers are connected"];
    }
  }

  else
  {
    v8 = a1[5];
    v10 = [a1[6] localizedDescription];
    [v8 printFormat:@"    failed: %@", v10];
  }
}

void sub_100017E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100017E98(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 48;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000188D4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  if ([a3 shouldRunTaskInfo])
  {
    v5 = [NSString stringWithFormat:@"/usr/bin/taskinfo --threads %@", v9];
    v6 = [NSString stringWithFormat:@"Gathering taskinfo on %@", v9];
    v7 = [*(a1 + 32) processDetailPath:v9];
    v8 = [NSString stringWithFormat:@"%@-taskinfo.txt", v7];

    [*(a1 + 32) collectOutputOfCommand:v5 label:v6 filename:v8];
  }
}

void sub_100018B04(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 defaultsDomain];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v7 defaultsDomain];
    [v5 writePreferenceInDomain:v6 withKey:0 toDirectory:*(a1 + 40) currentUser:1];
  }
}

void sub_100018D20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v19 = 0;
  v3 = [Libsysdiagnose sysdiagnoseWithMetadata:v2 withMetrics:0 withError:&v19];
  v4 = v19;
  v5 = v4;
  if (v3)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v7 = v6;
    v8 = *(a1 + 48);
    v9 = [*(*(a1 + 40) + 168) URLByAppendingPathComponent:@"sysdiagnose"];
    v10 = [v9 path];

    v11 = +[NSFileManager defaultManager];
    v18 = v5;
    v12 = [v11 moveItemAtPath:v3 toPath:v10 error:&v18];
    v13 = v18;

    if (v12)
    {
      [*(a1 + 40) printFormat:@"  sysdiagnose elapsed time: %.2fs", v7 - v8];
    }

    else
    {
      v16 = *(a1 + 40);
      v17 = [v13 localizedDescription];
      [v16 printFormat:@"  sysdiagnose error moving %@ to %@: %@", v3, v10, v17];
    }
  }

  else
  {
    *(*(a1 + 40) + 476) = 1;
    v14 = *(a1 + 40);
    if (v4)
    {
      v15 = [v4 localizedDescription];
      [v14 printFormat:@"  sysdiagnose failed: %@", v15];
    }

    else
    {
      [v14 printFormat:@"  sysdiagnose failed: %@", @"unknown reason"];
    }
  }
}

_BYTE *sub_1000195A0(uint64_t a1)
{
  [*(a1 + 32) collectCloudPhotodGlobalStatus];
  [*(a1 + 32) collectAppLibraryIdentifiers];
  if ([*(a1 + 32) includeSPL])
  {
    [*(a1 + 32) collectCloudPhotodStatusWithLibraryIdentifier:CPLLibraryIdentifierSystemLibrary subdirectory:0];
  }

  v2 = *(a1 + 32);
  if (v2[16])
  {
    v3 = [v2 _readAppPrivateData];
    v4 = [v3 valueForKeyPath:@"Library.Identifier.ContainerIdentifier"];
    v5 = v4;
    if (v4)
    {
      if (([v4 isEqualToString:@"com.apple.photos"] & 1) == 0)
      {
        v6 = [v3 valueForKeyPath:@"Library.Identifier.UUID"];
        if (v6)
        {
          v7 = v6;
          v8 = CPLLibraryIdentifierForApp();

          if (v8)
          {
            [*(a1 + 32) collectCloudPhotodStatusWithLibraryIdentifier:v8 subdirectory:@"Library"];
          }
        }
      }
    }

    v2 = *(a1 + 32);
  }

  [v2 collectAccountStatus];
  result = *(a1 + 32);
  if (result[472] == 1)
  {

    return [result collectDefaults];
  }

  return result;
}

id sub_1000196EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 473) == 1)
  {
    if (*(v2 + 451))
    {
      goto LABEL_4;
    }

    v28[0] = *(v2 + 496);
    v28[1] = @"listcloudphotoguids";
    v3 = [NSArray arrayWithObjects:v28 count:2];
    [v2 collectOutputOfCommandAndArguments:v3 label:@"Getting local photo cloudGUIDs" filename:@"local_photo_cloud_guids.txt" outputIsStderr:0 timeout:*(*(a1 + 32) + 448)];

    v4 = *(a1 + 32);
    v27[0] = v4[62];
    v27[1] = @"librarysummary";
    v5 = [NSArray arrayWithObjects:v27 count:2];
    [v4 collectOutputOfCommandAndArguments:v5 label:@"Getting local library summary" filename:@"local_asset_counts.txt" outputIsStderr:0 timeout:*(*(a1 + 32) + 448)];

    v6 = *(a1 + 32);
    v26[0] = v6[62];
    v26[1] = @"resource";
    v26[2] = @"status";
    v7 = [NSArray arrayWithObjects:v26 count:3];
    [v6 collectOutputOfCommandAndArguments:v7 label:@"Getting resource model summary" filename:@"resource_model_status.txt" outputIsStderr:0 timeout:*(*(a1 + 32) + 448)];

    v8 = *(a1 + 32);
    v25[0] = v8[62];
    v25[1] = @"printmoments";
    v9 = [NSArray arrayWithObjects:v25 count:2];
    [v8 collectOutputOfCommandAndArguments:v9 label:@"Getting Moments info" filename:@"moments.txt" outputIsStderr:0 timeout:*(*(a1 + 32) + 448)];

    v10 = *(a1 + 32);
    v24[0] = v10[62];
    v24[1] = @"graph";
    v24[2] = @"statistics";
    v24[3] = @"contactsuggestions";
    v11 = [NSArray arrayWithObjects:v24 count:4];
    [v10 collectOutputOfCommandAndArguments:v11 label:@"Getting people contact suggestions diagnosis" filename:@"people_contact_suggestions_diagnosis.log" outputIsStderr:0 timeout:*(*(a1 + 32) + 448)];

    v2 = *(a1 + 32);
    if (*(v2 + 473))
    {
LABEL_4:
      v23[0] = *(v2 + 496);
      v23[1] = @"triage-log";
      v23[2] = @"json-pretty";
      v12 = [NSArray arrayWithObjects:v23 count:3];
      [v2 collectOutputOfCommandAndArguments:v12 label:@"Getting triage logs" filename:@"triageLogs.txt" outputIsStderr:0 timeout:*(*(a1 + 32) + 448)];

      v13 = *(a1 + 32);
      v22[0] = v13[62];
      v22[1] = @"printdbmetadata";
      v14 = [NSArray arrayWithObjects:v22 count:2];
      [v13 collectOutputOfCommandAndArguments:v14 label:@"Getting db metadata" filename:@"dbMetadata.txt" outputIsStderr:0 timeout:*(*(a1 + 32) + 448)];

      v15 = *(a1 + 32);
      v21[0] = v15[62];
      v21[1] = @"backgroundjob";
      v21[2] = @"status";
      v16 = [NSArray arrayWithObjects:v21 count:3];
      [v15 collectOutputOfCommandAndArguments:v16 label:@"Getting backgroundjobservice status" filename:@"backgroundjobserviceStatus.txt" outputIsStderr:0 timeout:1];

      [*(a1 + 32) collectOutputOfCommand:@"/usr/local/bin/backupctl restoreInfo" label:@"Getting backupd restore info" filename:0 timeout:1];
      [*(a1 + 32) collectOutputOfCommand:@"/usr/local/bin/backupctl listFailures" label:@"Getting backupd failures" filename:0 timeout:1];
      [*(a1 + 32) collectLocalLibraryMetadataInfo];
      [*(a1 + 32) collectOutputOfCommand:@"/usr/local/bin/ckctl -v prod -c com.apple.photos.cloud -x deviceID" label:@"Collecting deviceID" filename:@"deviceID.txt"];
      [*(a1 + 32) collectOutputOfCommand:@"/usr/local/bin/accounts_tool listAccounts -v" label:@"Collecting accounts" filename:@"accounts_list.txt"];
      v17 = *(a1 + 32);
      v20[0] = v17[62];
      v20[1] = @"sharing";
      v20[2] = @"syndicationResults";
      v20[3] = @"summary";
      v18 = [NSArray arrayWithObjects:v20 count:4];
      [v17 collectOutputOfCommandAndArguments:v18 label:@"Getting Syndication Results Summary" filename:@"syndication_results_summary.txt" outputIsStderr:0 timeout:1];

      [*(a1 + 32) collectSearchDiagnostics];
      [*(a1 + 32) collectMemoryCreationDiagnostics];
      [*(a1 + 32) collectSilentMover];
      [*(a1 + 32) collectLOFetchRecordings];
      v2 = *(a1 + 32);
    }
  }

  result = [*(v2 + 488) count];
  if (result)
  {
    return [*(a1 + 32) collectFeatureAreaDiagnostics];
  }

  return result;
}

void *CPLDiagnoseRecursiveFileListing()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v130 = v7;
  v9 = v8;
  v10 = v0;
  v11 = v9;
  v12 = v11;
  if (v4)
  {
    v138 = v4 + 2;
    v131 = v4 + 5;
    v132 = v4 + 1;
    v124 = v4 + 3;
    v125 = v4 + 4;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v143 = 0;
  v144 = 0;
  v141 = 0;
  v142 = 0;
  v4 = &v144;
  v125 = &v140;
  v124 = &v141;
  v139 = 0;
  v140 = 0;
  v131 = &v139;
  v138 = &v142;
  v132 = &v143;
  if (v6)
  {
LABEL_3:
    *v6 = 0;
  }

LABEL_4:
  v120 = v6;
  v13 = fopen([v11 fileSystemRepresentation], "wx");
  if (v13)
  {
    v14 = v13;
    v121 = malloc_type_malloc(0x100000uLL, 0x7B6407BFuLL);
    setvbuf(v14, v121, 0, 0x100000uLL);
    v151[0] = [v10 fileSystemRepresentation];
    v151[1] = 0;
    v15 = fts_open_b(v151, 81, &stru_1000352F0);
    v122 = v15 != 0;
    if (v15)
    {
      v16 = v15;
      v118 = v12;
      v119 = v10;
      fwrite("mode link_count inode purgeable_flags uid gid file_size modification_date filename\n\n", 0x54uLL, 1uLL, v14);
      v17 = fts_read(v16);
      if (!v17)
      {
        goto LABEL_140;
      }

      v18 = v17;
      v19 = 0uLL;
      v20 = 1;
      v123 = v16;
      v126 = v4;
      while (1)
      {
        fts_info = v18->fts_info;
        if (fts_info > 3)
        {
          if (fts_info == 4 || fts_info == 7)
          {
            strerror(v18->fts_errno);
            fprintf(v14, "ERROR %s: %s\n", v23);
          }

          goto LABEL_133;
        }

        if (fts_info != 1)
        {
          if (fts_info == 2)
          {
            fprintf(v14, "ERROR %s: directory causes a cycle\n", 0.0);
          }

          goto LABEL_133;
        }

        fts_path = v18->fts_path;
        *&v154.f_mntonname[392] = v19;
        *&v154.f_mntonname[408] = v19;
        *&v154.f_mntonname[360] = v19;
        *&v154.f_mntonname[376] = v19;
        *&v154.f_mntonname[328] = v19;
        *&v154.f_mntonname[344] = v19;
        *&v154.f_mntonname[296] = v19;
        *&v154.f_mntonname[312] = v19;
        *&v154.f_mntonname[264] = v19;
        *&v154.f_mntonname[280] = v19;
        *&v154.f_mntonname[232] = v19;
        *&v154.f_mntonname[248] = v19;
        *&v154.f_mntonname[200] = v19;
        *&v154.f_mntonname[216] = v19;
        *&v154.f_mntonname[168] = v19;
        *&v154.f_mntonname[184] = v19;
        *&v154.f_mntonname[136] = v19;
        *&v154.f_mntonname[152] = v19;
        *&v154.f_mntonname[104] = v19;
        *&v154.f_mntonname[120] = v19;
        *&v154.f_mntonname[72] = v19;
        *&v154.f_mntonname[88] = v19;
        *&v154.f_mntonname[40] = v19;
        *&v154.f_mntonname[56] = v19;
        *&v154.f_mntonname[8] = v19;
        *&v154.f_mntonname[24] = v19;
        *&v154.f_flags = v19;
        *&v154.f_fstypename[8] = v19;
        *&v154.f_files = v19;
        *v154.f_fsid.val = v19;
        *&v154.f_bsize = v19;
        *&v154.f_bfree = v19;
        if (statfs(fts_path, &v154))
        {
          v25 = __stderrp;
          v26 = __error();
          strerror(*v26);
          v16 = v123;
          fprintf(v25, "error finding volume info for %s: %s\n");
        }

        else
        {
          memset(v161, 0, 28);
          *flagset_p = 0u;
          *__str = xmmword_100025E20;
          v159 = 0;
          if (getattrlist(v154.f_mntonname, __str, flagset_p, 0x2CuLL, 0))
          {
            v27 = __stderrp;
            v28 = __error();
            strerror(*v28);
            fprintf(v27, "error finding volume capabilities for %s: %s\n");
          }

          else if ((v161[1] & 2) != 0)
          {
            v156 = 0;
            *v155 = xmmword_100025E38;
            *__bp = 0;
            if (getattrlist(fts_path, v155, __bp, 8uLL, 0))
            {
              v98 = __stderrp;
              v99 = __error();
              strerror(*v99);
              v16 = v123;
              fprintf(v98, "error finding ATTR_DIR_ENTRYCOUNT for %s: %s\n");
            }

            else if (*&__bp[4] >= 0xC351u)
            {
              fprintf(v14, "ERROR too many entries (%ld): %s\n", *&__bp[4], v18->fts_path);
              fts_set(v16, v18, 4);
              goto LABEL_133;
            }
          }
        }

        v29 = fts_children(v16, 0);
        if (!v29)
        {
          goto LABEL_132;
        }

        v30 = v29;
        if ((v20 & 1) == 0)
        {
          fputc(10, v14);
        }

        if (!v18->fts_level)
        {
          v31 = [NSString stringWithUTF8String:v18->fts_path];
          memset(&v154, 0, 144);
          if (!stat([v31 fileSystemRepresentation], &v154))
          {
            sub_10001B494(".", &v154, v14);
          }

          v32 = [v31 stringByAppendingPathComponent:@".."];
          if (!stat([v32 fileSystemRepresentation], &v154))
          {
            sub_10001B494("..", &v154, v14);
          }

          fputc(10, v14);
        }

        fputs(v18->fts_path, v14);
        fputc(58, v14);
        fputc(10, v14);
        st_nlink = 0;
        st_size = 0;
        v35 = v30;
        v136 = 1;
        v137 = 1;
        v135 = 1;
        do
        {
          v36 = v35->fts_info;
          if (v36 == 10 || v36 == 7)
          {
            v38 = strerror(v35->fts_errno);
            fprintf(v14, "ERROR %s: %s\n", v35->fts_name, v38);
          }

          else
          {
            fts_statp = v35->fts_statp;
            if (fts_statp->st_nlink > st_nlink)
            {
              st_nlink = fts_statp->st_nlink;
            }

            v40 = snprintf(__str, 0x400uLL, "%u", fts_statp->st_uid);
            if (v40 <= v137)
            {
              v41 = v137;
            }

            else
            {
              v41 = v40;
            }

            v137 = v41;
            v42 = snprintf(__str, 0x400uLL, "%u", fts_statp->st_gid);
            if (v42 <= v136)
            {
              v43 = v136;
            }

            else
            {
              v43 = v42;
            }

            v136 = v43;
            v44 = snprintf(__str, 0x400uLL, "%llu", fts_statp->st_ino);
            if (v44 <= v135)
            {
              v45 = v135;
            }

            else
            {
              v45 = v44;
            }

            v135 = v45;
            if (fts_statp->st_size > st_size)
            {
              st_size = fts_statp->st_size;
            }
          }

          v35 = v35->fts_link;
        }

        while (v35);
        v129 = snprintf(__str, 0x400uLL, "%hu", st_nlink);
        v128 = snprintf(__str, 0x400uLL, "%lld", st_size);
        do
        {
          v46 = v30->fts_info;
          if (v46 == 7 || v46 == 10)
          {
            goto LABEL_130;
          }

          v48 = v30->fts_statp;
          __bp[11] = 0;
          strcpy(__bp, "          ");
          strmode(v48->st_mode, __bp);
          __bp[10] = 0;
          fputs(__bp, v14);
          if (v30->fts_level)
          {
            fts_name = __str;
            snprintf(__str, 0x400uLL, "%s/%s", v30->fts_parent->fts_accpath, v30->fts_name);
          }

          else
          {
            fts_name = v30->fts_name;
          }

          v50 = listxattr(fts_name, 0, 0, 1);
          entry_p = 0;
          link_np = acl_get_link_np(fts_name, ACL_TYPE_EXTENDED);
          v52 = link_np;
          if (link_np && acl_get_entry(link_np, 0, &entry_p) == -1)
          {
            acl_free(v52);
            v52 = 0;
          }

          acl = v52;
          if (v52)
          {
            v53 = 43;
          }

          else
          {
            v53 = 32;
          }

          if (v50 >= 1)
          {
            v54 = 64;
          }

          else
          {
            v54 = v53;
          }

          fputc(v54, v14);
          v55 = localtime(&v48->st_mtimespec.tv_sec);
          strftime(v155, 0x28uLL, "%FT%T", v55);
          tv_nsec = v48->st_mtimespec.tv_nsec;
          if (tv_nsec <= 0)
          {
            v57 = v48->st_mtimespec.tv_nsec;
          }

          else
          {
            v57 = tv_nsec / 0xF4240uLL;
          }

          v145 = 0;
          fsctl(fts_name, 0x40084A47uLL, &v145, 0);
          fprintf(v14, " %*d %*llu %04llx %-*u  %-*u  %*lld %s.%03ld ", v129, v48->st_nlink, v135, v48->st_ino, v145, v137, v48->st_uid, v136, v48->st_gid, v128, v48->st_size, v155, v57);
          sub_10001B5B4(v30->fts_name, v14);
          v58 = v48->st_mode & 0xF000;
          v59 = v131;
          if (v58 != 0x4000)
          {
            if (v58 == 40960)
            {
              if (v30->fts_level)
              {
                fts_accpath = v30->fts_parent->fts_accpath;
                snprintf(&v154, 0x401uLL, "%s/%s");
              }

              else
              {
                snprintf(&v154, 0x401uLL, "%s");
              }

              v61 = readlink(&v154, flagset_p, 0x400uLL);
              if (v61 == -1)
              {
                v62 = __error();
                v63 = strerror(*v62);
                fprintf(v14, "\nERROR ls: %s: %s\n", &v154, v63);
              }

              else
              {
                *(flagset_p + v61) = 0;
                fwrite(" -> ", 4uLL, 1uLL, v14);
                sub_10001B5B4(flagset_p, v14);
              }

              v59 = v125;
            }

            else
            {
              v59 = v124;
            }
          }

          ++*v59;
          fputc(10, v14);
          *v4 += v48->st_size;
          *v132 += v48->st_blocks;
          if (!v130 || v50 < 1)
          {
            goto LABEL_128;
          }

          v127 = v48;
          v64 = v50 & ~(v50 >> 63);
          v65 = malloc_type_malloc(v64, 0xD1269FB9uLL);
          v66 = 1;
          listxattr(fts_name, v65, v64, 1);
          v67 = 0;
          v68 = 0;
          *v138 += v64;
          v69 = &v65[v64];
          v70 = 4;
          __s1 = v65;
          v71 = v65;
          do
          {
            v72 = v66;
            v68 = reallocf(v68, v70);
            v73 = getxattr(fts_name, v71, 0, 0, 0, 1);
            if (v73 >= 1)
            {
              *v138 += v73;
            }

            v68[v67] = v73;
            v71 += strlen(v71) + 1;
            v70 += 4;
            ++v67;
            ++v66;
          }

          while (v71 < v69);
          v74 = 0;
          v75 = __s1;
          do
          {
            if (strcmp(v75, "com.apple.quarantine"))
            {
              fputc(9, v14);
              sub_10001B5B4(v75, v14);
              fputc(9, v14);
              fprintf(v14, "%*jd ", v128, v68[v74]);
              fputc(10, v14);
              v75 += strlen(v75) + 1;
            }

            ++v74;
          }

          while (v72 != v74);
          free(__s1);
          free(v68);
          v4 = v126;
          v76 = acl;
          if (acl)
          {
            st_mode = v127->st_mode;
            *&v154.f_bsize = 0;
            tag_type_p = ACL_UNDEFINED_TAG;
            flagset_p[0] = 0;
            permset_p = 0;
            if (!acl_get_entry(acl, 0, &v154))
            {
              v78 = 0;
              if ((st_mode & 0xF000) == 0x4000)
              {
                v79 = 1;
              }

              else
              {
                v79 = 2;
              }

              do
              {
                if (!acl_get_tag_type(*&v154.f_bsize, &tag_type_p) && !acl_get_flagset_np(*&v154.f_bsize, flagset_p) && !acl_get_permset(*&v154.f_bsize, &permset_p))
                {
                  qualifier = acl_get_qualifier(*&v154.f_bsize);
                  if (qualifier)
                  {
                    v81 = qualifier;
                    v82 = malloc_type_malloc(0x105uLL, 0x100004077774924uLL);
                    if (!v82)
                    {
                      sub_10001EC94();
                    }

                    v83 = v82;
                    uuid_unparse_upper(v81, v82);
                    acl_free(v81);
                    v84 = "unknown";
                    if (tag_type_p == ACL_EXTENDED_DENY)
                    {
                      v84 = "deny";
                    }

                    if (tag_type_p == ACL_EXTENDED_ALLOW)
                    {
                      v85 = "allow";
                    }

                    else
                    {
                      v85 = v84;
                    }

                    flag_np = acl_get_flag_np(flagset_p[0], ACL_ENTRY_INHERITED);
                    v87 = " inherited";
                    if (!flag_np)
                    {
                      v87 = "";
                    }

                    fprintf(v14, " %d: %s%s %s ", v78, v83, v87, v85);
                    free(v83);
                    v88 = 0;
                    v89 = &dword_100035320;
                    v90 = 17;
                    v91 = "read";
                    do
                    {
                      if (acl_get_perm_np(permset_p, *(v89 - 4)) && (*v89 & v79) != 0)
                      {
                        v92 = ",";
                        if (!v88)
                        {
                          v92 = "";
                        }

                        fprintf(v14, "%s%s", v92, v91);
                        ++v88;
                      }

                      v91 = *(v89 + 2);
                      v89 += 6;
                      --v90;
                    }

                    while (v90);
                    v93 = &dword_1000354D0;
                    v94 = 4;
                    v95 = "file_inherit";
                    do
                    {
                      if (acl_get_flag_np(flagset_p[0], *(v93 - 4)) && (*v93 & v79) != 0)
                      {
                        v96 = ",";
                        if (!v88)
                        {
                          v96 = "";
                        }

                        fprintf(v14, "%s%s", v96, v95);
                        ++v88;
                      }

                      v95 = *(v93 + 2);
                      v93 += 6;
                      --v94;
                    }

                    while (v94);
                    fputc(10, v14);
                    v4 = v126;
                    v76 = acl;
                  }
                }

                ++v78;
                if (*&v154.f_bsize)
                {
                  v97 = -1;
                }

                else
                {
                  v97 = 0;
                }
              }

              while (!acl_get_entry(v76, v97, &v154));
            }

LABEL_128:
            if (acl)
            {
              acl_free(acl);
            }
          }

LABEL_130:
          v30 = v30->fts_link;
        }

        while (v30);
        v20 = 0;
LABEL_132:
        v16 = v123;
LABEL_133:
        v18 = fts_read(v16);
        v19 = 0uLL;
        if (!v18)
        {
LABEL_140:
          fts_close(v16);
          if (ftell(v14))
          {
            v100 = *v4;
            v101 = *v124;
            fprintf(v14, "\nTOTALS st_size=%lld st_blocks=%lld xattr_size=%lld directories=%ld files=%ld symlinks=%ld\n", *v4, *v132, *v138, *v131, *v124, *v125);
            fprintf(v14, "       size in MiB: %lldMiB, blocks in MiB: %lldMiB\n", *v4 / 0x100000, *v132 / 2048);
            fclose(v14);
            free(v121);
            v12 = v118;
            v10 = v119;
          }

          else
          {
            fclose(v14);
            free(v121);
            v12 = v118;
            v115 = [v118 fileSystemRepresentation];
            remove(v115, v116);
            v10 = v119;
            if (v120)
            {
              *v120 = 1;
            }
          }

          goto LABEL_151;
        }
      }
    }

    if (v2)
    {
      v109 = __error();
      v110 = [NSString stringWithUTF8String:strerror(*v109)];
      v111 = v10;
      v112 = *__error();
      v149[0] = NSLocalizedDescriptionKey;
      v149[1] = NSLocalizedFailureReasonErrorKey;
      v150[0] = @"Error opening path to find recursive listing.";
      v150[1] = v110;
      v149[2] = NSFilePathErrorKey;
      v150[2] = v111;
      v113 = [NSDictionary dictionaryWithObjects:v150 forKeys:v149 count:3];
      v114 = v112;
      v10 = v111;
      *v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v114 userInfo:v113];
    }

    fclose(v14);
    free(v121);
LABEL_151:
    v2 = v122;
  }

  else if (v2)
  {
    v102 = __error();
    v103 = [NSString stringWithUTF8String:strerror(*v102)];
    v104 = v12;
    v105 = *__error();
    v152[0] = NSLocalizedDescriptionKey;
    v152[1] = NSLocalizedFailureReasonErrorKey;
    v153[0] = @"Error opening recursive listing file for writing.";
    v153[1] = v103;
    v152[2] = NSFilePathErrorKey;
    v153[2] = v104;
    [NSDictionary dictionaryWithObjects:v153 forKeys:v152 count:3];
    v107 = v106 = v10;
    v108 = v105;
    v12 = v104;
    *v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v108 userInfo:v107];

    v10 = v106;
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10001B494(const char *a1, uint64_t a2, FILE *a3)
{
  __bp[11] = 0;
  strcpy(__bp, "          ");
  strmode(*(a2 + 4), __bp);
  __bp[10] = 0;
  fprintf(a3, "stat %s: ", a1);
  fprintf(a3, "st_dev=%d st_ino=%llu st_mode=%d (%s) st_nlink=%d st_uid=%d st_gid=%d st_rdev=%d st_size=%lld ", *a2, *(a2 + 8), *(a2 + 4), __bp, *(a2 + 6), *(a2 + 16), *(a2 + 20), *(a2 + 24), *(a2 + 96));
  fprintf(a3, "st_atime=%ld st_mtime=%ld st_ctime=%ld st_birthtime=%ld st_blksize=%d st_block=%lld st_flags=%d", *(a2 + 32), *(a2 + 48), *(a2 + 64), *(a2 + 80), *(a2 + 112), *(a2 + 104), *(a2 + 116));
  return fputc(10, a3);
}

unint64_t sub_10001B5B4(char *a1, FILE *a2)
{
  v3 = a1;
  v16 = 0;
  memset(&v17, 0, sizeof(v17));
  result = mbrtowc(&v16, a1, 6uLL, &v17);
  if (result)
  {
    v5 = result;
    v6 = 0;
    while (v5 > 0xFFFFFFFFFFFFFFFDLL)
    {
      if (v5 == -1)
      {
        LODWORD(result) = 1;
LABEL_21:
        v12 = 4 * result;
        v13 = v3;
        v14 = result;
        do
        {
          v15 = *v13++;
          fputc(92, a2);
          fputc((v15 >> 6) | 0x30, a2);
          fputc((v15 >> 3) & 7 | 0x30, a2);
          result = fputc(v15 & 7 | 0x30, a2);
          --v14;
        }

        while (v14);
        v6 += v12;
        goto LABEL_24;
      }

      result = strlen(v3);
LABEL_18:
      if (result >= 1)
      {
        goto LABEL_21;
      }

LABEL_24:
      if (v5 == -1)
      {
        v5 = 1;
        memset(&v17, 0, sizeof(v17));
      }

      else if (v5 == -2)
      {
        return result;
      }

      v3 += v5;
      result = mbrtowc(&v16, v3, 6uLL, &v17);
      v5 = result;
      if (!result)
      {
        return result;
      }
    }

    v7 = v16;
    if (v16 > 0x7F)
    {
      v8 = __maskrune(v16, 0x40000uLL);
      v7 = v16;
      if (!v8)
      {
LABEL_17:
        result = v5;
        goto LABEL_18;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v16] & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    if (v7 != 34 && v7 != 92)
    {
      if (v5 >= 1)
      {
        v9 = v5 & 0x7FFFFFFF;
        v10 = v3;
        do
        {
          v11 = *v10++;
          fputc(v11, a2);
          --v9;
        }

        while (v9);
        v7 = v16;
      }

      result = wcwidth(v7);
      v6 += result;
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  return result;
}

void sub_10001B950(id a1)
{
  qword_100040C38 = MGCopyAnswer();

  _objc_release_x1();
}

void *sub_10001C31C(void *result)
{
  v1 = result[4];
  if (*(v1 + 8) == 1)
  {
    *(*(result[6] + 8) + 24) = 1;
  }

  else
  {
    *(v1 + 8) = 1;
    return (*(result[5] + 16))(result[5], 1, *(result[4] + 16), 0);
  }

  return result;
}

id sub_10001C36C(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  *(*(a1 + 32) + 8) = -1;
  v2 = *(a1 + 32);

  return [v2 notifyClientsStateChangedOnQueue];
}

void sub_10001C4FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 remoteObjectProxy];
  [v4 diagnosticServiceStateDidChange:*(*(a1 + 32) + 8) outputURL:*(*(a1 + 32) + 16) error:*(*(a1 + 32) + 24)];
}

void sub_10001C928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10001C950(void *a1)
{
  v1 = [*(a1[4] + 40) setObject:a1[5] forKey:a1[6]];

  return _xpc_transaction_interrupt_clean_exit(v1);
}

void sub_10001C988(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained didInvalidateClientConnectionWithIdentifier:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_10001CA74(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    *buf = 138412290;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "removing connection %@", buf, 0xCu);
  }

  [*(*(a1 + 40) + 40) removeObjectForKey:*(a1 + 32)];
  if (![*(*(a1 + 40) + 40) count])
  {
    v3 = dispatch_time(0, 10000000000);
    v4 = *(a1 + 40);
    v5 = *(v4 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001CB9C;
    block[3] = &unk_100034BD0;
    block[4] = v4;
    dispatch_after(v3, v5, block);
  }
}

id sub_10001CB9C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) count];
  if (!result)
  {

    return _xpc_transaction_exit_clean();
  }

  return result;
}

void sub_10001CD30(id a1)
{
  qword_100040C48 = [[NSRegularExpression alloc] initWithPattern:@"[0-9 options:A-Z]{10}\\.(.*)" error:{0, 0}];

  _objc_release_x1();
}

int main(int argc, const char **argv, const char **envp)
{
  signal(15, 1);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  v4 = qword_100040C58;
  qword_100040C58 = v3;

  dispatch_source_set_event_handler(qword_100040C58, &stru_100035618);
  dispatch_resume(qword_100040C58);
  v5 = CPLDiagnosticsService;
  [CPLCTLCommand setToolName:CPLDiagnosticsService];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "starting %@", &v8, 0xCu);
  }

  v6 = objc_alloc_init(CPLDiagnoseService);
  v7 = +[NSXPCListener serviceListener];
  [v7 setDelegate:v6];
  [v7 resume];
  exit(1);
}

void sub_10001D090(id a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "exit on SIGTERM", v1, 2u);
  }

  exit(0);
}

void sub_10001D0E8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10001D104(uint64_t a1, uint64_t a2)
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

BOOL sub_10001D1E8(uint64_t a1, void *a2, void *a3)
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

void sub_10001D404(void *a1, uint64_t a2, uint64_t a3)
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

void sub_10001D524(uint64_t a1)
{
  v2 = sub_100001C9C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Invalid plist from coder: %@", &v3, 0xCu);
  }
}

void sub_10001D5F0(void *a1, void *a2)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_100001C9C();
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

void sub_10001D6D8(void *a1, void *a2, void *a3)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100001C9C();
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

void sub_10001D830(uint64_t a1, uint64_t a2)
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
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Tools/cplctl-support/CPLPhotosDaemon.m"];
  [v5 handleFailureInMethod:a1 object:a2 file:v6 lineNumber:79 description:{@"Trying to get a proxy for %@ but the connection is closed", a2}];

  abort();
}

void sub_10001D914(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *v3;
  if (*v3)
  {
    v1 = 1;
    do
    {
      free(v4);
      v3 = *(a1 + 32);
      v4 = v3[v1++];
    }

    while (v4);
  }

  free(v3);
  if (posix_spawn_file_actions_destroy(*(a1 + 40)) && (_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_100004E20();
    if (sub_1000054DC(v5))
    {
      v6 = __error();
      strerror(*v6);
      sub_1000054B8();
      sub_100005498(&_mh_execute_header, v7, v8, "Unable to detroy the file actions properly (%s).", v9, v10, v11, v12, v13);
    }
  }

  free(*(a1 + 40));
}

void sub_10001D9F8(NSObject *a1, int a2)
{
  *(*(a1[5].isa + 1) + 24) = signal(2, 1);
  if (*(*(a1[5].isa + 1) + 24) == -1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_100004E20();
      if (sub_1000054C4(v9))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Unable to retreive handler for SIGINT.", buf, 2u);
      }
    }
  }

  else
  {
    v4 = dispatch_get_global_queue(0, 0);
    v5 = dispatch_source_create(&_dispatch_source_type_signal, 2uLL, 0, v4);
    v6 = *(a1[6].isa + 1);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(*(a1[6].isa + 1) + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000507C;
    v10[3] = &unk_100034C68;
    v11 = a2;
    v10[4] = a1[4].isa;
    dispatch_source_set_event_handler(v8, v10);
    dispatch_resume(*(*(a1[6].isa + 1) + 40));
  }
}

void sub_10001DB60(int a1)
{
  v3 = sub_100004E20();
  if (sub_1000054C4(v3))
  {
    strerror(a1);
    sub_1000054B8();
    sub_100005478(&_mh_execute_header, v4, v5, "Unable to spawn a new process (%s).", v6, v7, v8, v9, v10);
  }
}

void sub_10001DBF0(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100004E20();
    if (sub_1000054DC(v3))
    {
      v4 = __error();
      strerror(*v4);
      sub_1000054B8();
      sub_100005498(&_mh_execute_header, v5, v6, "Unable to initialize the file actions properly (%s).", v7, v8, v9, v10, v11);
    }
  }

  *a1 = 1;
}

void sub_10001DC9C(void *a1)
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100004E20();
    if (sub_1000054DC(v3))
    {
      v4 = __error();
      strerror(*v4);
      sub_1000054B8();
      sub_100005498(&_mh_execute_header, v5, v6, "Unable to perform spawn action (%s).", v7, v8, v9, v10, v11);
    }
  }

  *a1 = 1;
}

void sub_10001DD48()
{
  v1 = sub_100004E20();
  if (sub_1000054C4(v1))
  {
    v2 = __error();
    strerror(*v2);
    sub_1000054B8();
    sub_100005478(&_mh_execute_header, v3, v4, "Unable to redirect stdin (%s).", v5, v6, v7, v8, v9);
  }
}

void sub_10001DDD8()
{
  v1 = sub_100004E20();
  if (sub_1000054C4(v1))
  {
    v2 = __error();
    strerror(*v2);
    sub_1000054B8();
    sub_100005478(&_mh_execute_header, v3, v4, "Unable to redirect stderr (%s).", v5, v6, v7, v8, v9);
  }
}

void sub_10001DE68()
{
  v1 = sub_100004E20();
  if (sub_1000054C4(v1))
  {
    v2 = __error();
    strerror(*v2);
    sub_1000054B8();
    sub_100005478(&_mh_execute_header, v3, v4, "Unable to perform spawn action (%s).", v5, v6, v7, v8, v9);
  }
}

void sub_10001DEF8(void **a1, posix_spawn_file_actions_t *a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = a1 + 1;
    do
    {
      free(v4);
      v6 = *v5++;
      v4 = v6;
    }

    while (v6);
  }

  free(a1);
  if (posix_spawn_file_actions_destroy(a2) && (_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_100004E20();
    if (sub_1000054DC(v7))
    {
      v8 = __error();
      strerror(*v8);
      sub_1000054B8();
      sub_100005498(&_mh_execute_header, v9, v10, "Unable to destroy the file actions properly (%s).", v11, v12, v13, v14, v15);
    }
  }

  free(a2);
}

void sub_10001E120(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && (_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10000A0FC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Error closing daemon's library manager: %@", &v5, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10001E4FC(uint64_t a1, const char *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v18 = NSStringFromSelector(a2);
      sub_10000C9A4(&_mh_execute_header, v6, v7, "+[%@ %@] called twice", v8, v9, v10, v11, v16, v17, 2u);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Tools/cplctl/CPLCTLCommand.m"];
  v14 = objc_opt_class();
  v15 = NSStringFromSelector(a2);
  [v12 handleFailureInMethod:a2 object:a1 file:v13 lineNumber:58 description:{@"+[%@ %@] called twice", v14, v15}];

  abort();
}

void sub_10001E62C(uint64_t a1, const char *a2)
{
  if (_CPLSilentLogging != 1)
  {
    v4 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v18 = NSStringFromSelector(a2);
      sub_10000C9A4(&_mh_execute_header, v6, v7, "+[%@ %@] has not been set yet", v8, v9, v10, v11, v16, v17, 2u);
    }
  }

  v12 = +[NSAssertionHandler currentHandler];
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Tools/cplctl/CPLCTLCommand.m"];
  v14 = objc_opt_class();
  v15 = NSStringFromSelector(a2);
  [v12 handleFailureInMethod:a2 object:a1 file:v13 lineNumber:63 description:{@"+[%@ %@] has not been set yet", v14, v15}];

  abort();
}

void sub_10001E75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_CPLSilentLogging != 1)
  {
    v6 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [qword_100040BF0 objectForKey:a1];
      *buf = 138412546;
      v12 = a1;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Command %@ is already registered (for %@)", buf, 0x16u);
    }
  }

  v8 = +[NSAssertionHandler currentHandler];
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Tools/cplctl/CPLCTLCommand.m"];
  v10 = [qword_100040BF0 objectForKey:a1];
  [v8 handleFailureInMethod:a2 object:a3 file:v9 lineNumber:159 description:{@"Command %@ is already registered (for %@)", a1, v10}];

  abort();
}

void sub_10001EDB8()
{
  sub_1000054B8();
  v1 = 2114;
  v2 = @"application-identifier";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Invalid value of %{public}@ for entitlement %{public}@. We expect TEAMID.BUNDLEID, and insist that TEAMID is exactly 10 characters long, consisting of [0-9][A-Z].", v0, 0x16u);
}