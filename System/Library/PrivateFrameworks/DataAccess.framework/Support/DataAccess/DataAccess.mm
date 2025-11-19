uint64_t start()
{
  v8 = 0;
  v0 = objc_autoreleasePoolPush();
  setDAIsRunningInDataAccessD();
  [DAPowerAssertionManager vendDaemons:objc_opt_class()];
  +[DAPriorityManager vendPriorityManagers];
  +[DADConnection setShouldIgnoreAccountChanges];
  v1 = +[DADMain sharedMain];
  [v1 waitForSystemAvailability];
  v2 = +[DADAccessManager sharedManager];
  [v1 setRunLoopStoppedRef:&v8];
  [v1 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:&stru_1000040E0];
  v3 = +[DAPriorityManager sharedManager];
  dispatch_resume(gDADHighAvailabilityQueue);

  objc_autoreleasePoolPop(v0);
  do
  {
    v4 = objc_autoreleasePoolPush();
    v5 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 86400.0, 1u);
    v6 = v8;
    objc_autoreleasePoolPop(v4);
  }

  while ((v6 & 1) == 0 && (v5 - 1) > 1);
  return 0;
}

void sub_100000B64(id a1)
{
  v1 = DALoggingwithCategory();
  v2 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v1, v2))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "dataaccessd_main kicking off our agents - with licencse to kill", v4, 2u);
  }

  v3 = +[DADAgentManager sharedManager];
  [v3 _loadAndStartMonitoringAgents];
}