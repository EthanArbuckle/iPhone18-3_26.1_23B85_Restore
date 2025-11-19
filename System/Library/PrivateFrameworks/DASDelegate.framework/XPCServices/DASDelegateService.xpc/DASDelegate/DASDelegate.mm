int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  v5 = os_log_create("com.apple.DASDelegateService", "DASDelegateService");
  v6 = qword_1000086D0;
  qword_1000086D0 = v5;

  [v4 resume];
  return 0;
}

uint64_t sub_1000012CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 endEvent];
  v6 = [v5 processName];
  [v4 setObject:v6 forKeyedSubscript:@"ProcessName"];

  v7 = [v3 beginEvent];
  v8 = [v7 string2Value];
  if ([v8 isEqualToString:@"YES"])
  {
    v9 = [v3 beginEvent];
    v10 = [v9 name];
    v11 = [v10 isEqualToString:@"AppLaunch"];

    if (v11)
    {
      v12 = @"AppLaunch";
      goto LABEL_7;
    }
  }

  else
  {
  }

  v13 = [v3 beginEvent];
  v14 = [v13 name];
  v15 = [v14 isEqualToString:@"AppResume"];

  if (!v15)
  {
    v16 = v4;
    v12 = 0;
    goto LABEL_9;
  }

  v12 = @"AppResume";
LABEL_7:
  v16 = v4;
LABEL_9:
  [v16 setObject:v12 forKeyedSubscript:@"BeginEvent"];
  [v3 durationSeconds];
  v17 = [NSNumber numberWithFloat:?];
  [v4 setObject:v17 forKeyedSubscript:@"DurationSeconds"];

  v18 = [v4 objectForKeyedSubscript:@"ProcessName"];
  if (v18)
  {
    v19 = v18;
    v20 = [v4 objectForKeyedSubscript:@"BeginEvent"];

    if (v20)
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  return 1;
}

void sub_1000019F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  if (v4)
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
    [v3 cpuTimeNs:&v10 cpuInstructions:&v9 cpuCycles:&v8 betweenStartTime:0 endTime:0];
    if ((v10 & 0x8000000000000000) == 0)
    {
      v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
      v6 = [v5 unsignedLongLongValue];
      v7 = [NSNumber numberWithUnsignedLongLong:&v6[v10]];
      [*(a1 + 32) setObject:v7 forKeyedSubscript:v4];

      *(*(*(a1 + 40) + 8) + 24) += v10;
    }
  }
}

id sub_100001AE0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:a3];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  return v9;
}

void sub_100001B60(void *a1, void *a2)
{
  v3 = a1;
  v4[0] = 67109120;
  v4[1] = [a2 processIdentifier];
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Listener accepted new connection from PID %d\n", v4, 8u);
}

void sub_100001BFC(void *a1, void *a2)
{
  v3 = a1;
  v4[0] = 67109120;
  v4[1] = [a2 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Listener rejected new connection from PID %d (no entitlement)\n", v4, 8u);
}

void sub_100001D64(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Evaluating %{public}@", &v2, 0xCu);
}

void sub_100001DDC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "SASampleStore failed to parse %{public}@: %{public}@", &v3, 0x16u);
}

void sub_100001E64(uint64_t a1, NSObject *a2)
{
  v2 = 138543618;
  v3 = a1;
  v4 = 2112;
  v5 = 0;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Evaluation of %{public}@ complete, exemption = %@", &v2, 0x16u);
}