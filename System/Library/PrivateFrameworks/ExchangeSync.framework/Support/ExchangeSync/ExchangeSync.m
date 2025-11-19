uint64_t start()
{
  v12 = 0;
  v0 = objc_autoreleasePoolPush();
  setESIsRunningInExchangeSyncD();
  +[DAPriorityManager vendPriorityManagers];
  v1 = +[ESDMain sharedMain];
  [v1 waitForSystemAvailability];
  v2 = +[ESDAccessManager sharedManager];
  [v1 setRunLoopStoppedRef:&v12];
  [v1 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:&stru_1000040D8];
  if ((+[DAEASOAuthMigrationActivity profileMigrationDisabled]& 1) == 0)
  {
    v3 = objc_alloc_init(DAEASOAuthMigrationActivity);
    [v3 scheduleActivity];
  }

  v4 = +[DAPriorityManager sharedManager];
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v5, v6))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Resuming high availability queue", v11, 2u);
  }

  dispatch_resume(gDADHighAvailabilityQueue);
  objc_autoreleasePoolPop(v0);
  do
  {
    v7 = objc_autoreleasePoolPush();
    v8 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 86400.0, 1u);
    v9 = v12;
    objc_autoreleasePoolPop(v7);
  }

  while ((v9 & 1) == 0 && (v8 - 1) > 1);
  return 0;
}

void sub_100000C90(id a1)
{
  v1 = DALoggingwithCategory();
  v2 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v1, v2))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "exchangesyncd_main kicking off our agents - with license to kill", v4, 2u);
  }

  v3 = +[ESDAgentManager sharedManager];
  [v3 _loadAndStartExchangeMonitoringAgents];
}