void start()
{
  v0 = objc_autoreleasePoolPush();
  bzero(v27, 0x400uLL);
  if (_set_user_dir_suffix())
  {
    if (confstr(65537, v27, 0x400uLL))
    {
      v5 = realpath_DARWIN_EXTSN(v27, 0);
      if (v5)
      {
        free(v5);
        [NSError _setFileNameLocalizationEnabled:0];
        v7 = os_transaction_create();
        v8 = __biome_log_for_category();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Launching biomed...", v27, 2u);
        }

        +[_TtC6biomed21BMDaemonLibraryLoader loadRootLibrary];
        +[BMDaemon runLaunchTasks];
        v9 = +[CCSetsAccessDaemonDelegate defaultInstance];
        inactive = dispatch_workloop_create_inactive("com.apple.biome.access-workloop");
        v11 = qword_1000081A0;
        qword_1000081A0 = inactive;

        dispatch_set_qos_class_fallback();
        dispatch_activate(qword_1000081A0);
        v12 = qword_1000081A0;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000015D4;
        block[3] = &unk_100004190;
        v13 = v9;
        v24 = v13;
        dispatch_async_and_wait(v12, block);
        v14 = dispatch_workloop_create_inactive("com.apple.biomed.compute-workloop");
        v15 = qword_1000081B0;
        qword_1000081B0 = v14;

        dispatch_set_qos_class_fallback();
        dispatch_activate(qword_1000081B0);
        v16 = qword_1000081B0;
        v18 = _NSConcreteStackBlock;
        v19 = 3221225472;
        v20 = sub_100001720;
        v21 = &unk_100004190;
        v22 = v13;
        v17 = v13;
        dispatch_async_and_wait(v16, &v18);
        [qword_1000081B8 setUpNotificationHandler];
        +[BMDaemon registerXPCActivities];
        [qword_1000081C0 start];

        objc_autoreleasePoolPop(v0);
        dispatch_main();
      }

      v1 = __biome_log_for_category();
      if (!os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
LABEL_8:

        exit(1);
      }

      v6 = *__error();
      *buf = 67109120;
      v26 = v6;
      v3 = "failed to resolve temporary directory: %{darwin.errno}d";
    }

    else
    {
      v1 = __biome_log_for_category();
      if (!os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      v2 = *__error();
      *buf = 67109120;
      v26 = v2;
      v3 = "failed to initialize temporary directory: %{darwin.errno}d";
    }
  }

  else
  {
    v1 = __biome_log_for_category();
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v4 = *__error();
    *buf = 67109120;
    v26 = v4;
    v3 = "failed to set user dir suffix: %{darwin.errno}d";
  }

  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, v3, buf, 8u);
  goto LABEL_8;
}

void sub_1000015D4(uint64_t a1)
{
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Launching access service...", v10, 2u);
  }

  v3 = [BMAccessDelegate alloc];
  v11[0] = &off_100004208;
  v4 = objc_opt_new();
  v11[1] = &off_100004220;
  v12[0] = v4;
  v12[1] = *(a1 + 32);
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v6 = [v3 initWithDelegates:v5];

  v7 = [BMAccessDaemon alloc];
  v8 = [v7 initWithQueue:qword_1000081A0 delegate:v6];
  v9 = qword_1000081A8;
  qword_1000081A8 = v8;
}

void sub_100001720(uint64_t a1)
{
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Launching compute services...", v10, 2u);
  }

  [BMDaemon donateLaunchEventsWithQueue:qword_1000081B0];
  v3 = +[GDComputeOrchestration start];
  v4 = [BMDaemon alloc];
  v5 = [v4 initWithQueue:qword_1000081B0 eventReporter:v3];
  v6 = qword_1000081B8;
  qword_1000081B8 = v5;

  v7 = [CCDaemon alloc];
  v8 = [v7 initWithQueue:qword_1000081B0 setBookkeeping:*(a1 + 32)];
  v9 = qword_1000081C0;
  qword_1000081C0 = v8;
}

uint64_t static BMDaemonLibraryLoader.loadRootLibrary()()
{
  v0 = type metadata accessor for Library();
  v1 = sub_100001854();

  return static UnifiedLibrary.add(library:)(v0, v1);
}

unint64_t sub_100001854()
{
  result = qword_100008170;
  if (!qword_100008170)
  {
    type metadata accessor for Library();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008170);
  }

  return result;
}

id BMDaemonLibraryLoader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BMDaemonLibraryLoader.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BMDaemonLibraryLoader();
  return objc_msgSendSuper2(&v2, "init");
}

id BMDaemonLibraryLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BMDaemonLibraryLoader();
  return objc_msgSendSuper2(&v2, "dealloc");
}