@interface XPCModelRunnerConnectionMonitor
+ (int64_t)diagnoseNoXPCResponse:(int)response;
+ (void)disableMonitoring;
+ (void)enableMonitoring;
@end

@implementation XPCModelRunnerConnectionMonitor

+ (int64_t)diagnoseNoXPCResponse:(int)response
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = qword_27EE82098;
  v5 = MEMORY[0x277D86228];
  if (qword_27EE82098 == MEMORY[0x277D86228])
  {
    v6 = os_log_create("com.apple.DTServiceHub", "CoreMLPerfService");
    v7 = qword_27EE82098;
    qword_27EE82098 = v6;

    v4 = qword_27EE82098;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = response;
    _os_log_impl(&dword_247F67000, v4, OS_LOG_TYPE_DEBUG, "diagnoseNoXPCResponseReason - DTMLModelRunnerService pid: %d", buf, 8u);
  }

  v8 = qword_27EE82098;
  if (qword_27EE82098 == v5)
  {
    v9 = os_log_create("com.apple.DTServiceHub", "CoreMLPerfService");
    v10 = qword_27EE82098;
    qword_27EE82098 = v9;

    v8 = qword_27EE82098;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = response;
    _os_log_impl(&dword_247F67000, v8, OS_LOG_TYPE_DEBUG, "diagnoseNoXPCResponseReason - DTMLModelRunnerService pid: %d", buf, 8u);
  }

  sleep(1u);
  *buf = 0;
  v55 = 0;
  v56 = 0;
  v11 = _launch_service_stats_copy_impl();
  v12 = qword_27EE82098;
  if (v11)
  {
    if (qword_27EE82098 == v5)
    {
      v13 = os_log_create("com.apple.DTServiceHub", "CoreMLPerfService");
      v14 = qword_27EE82098;
      qword_27EE82098 = v13;

      v12 = qword_27EE82098;
    }

    v15 = v12;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v50 = 67109378;
      *v51 = v11;
      *&v51[4] = 2080;
      *&v51[6] = xpc_strerror();
      _os_log_impl(&dword_247F67000, v15, OS_LOG_TYPE_ERROR, "diagnoseNoXPCResponseReason - Failed to fetch launch_service_stats (%d): %s", v50, 0x12u);
    }

    v16 = 2;
  }

  else
  {
    if (qword_27EE82098 == v5)
    {
      v17 = os_log_create("com.apple.DTServiceHub", "CoreMLPerfService");
      v18 = qword_27EE82098;
      qword_27EE82098 = v17;

      v12 = qword_27EE82098;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *v50 = 67109120;
      *v51 = v56;
      _os_log_impl(&dword_247F67000, v12, OS_LOG_TYPE_DEBUG, "diagnoseNoXPCResponseReason - Returned %u records", v50, 8u);
    }

    if (v56)
    {
      v19 = 0;
      v20 = 0;
      v16 = 2;
      do
      {
        v21 = v55;
        v22 = qword_27EE82098;
        if (qword_27EE82098 == v5)
        {
          v23 = os_log_create("com.apple.DTServiceHub", "CoreMLPerfService");
          v24 = qword_27EE82098;
          qword_27EE82098 = v23;

          v22 = qword_27EE82098;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v25 = *&v21[v19 + 20];
          *v50 = 67109376;
          *v51 = v25;
          *&v51[4] = 1024;
          *&v51[6] = response;
          _os_log_impl(&dword_247F67000, v22, OS_LOG_TYPE_DEBUG, "diagnoseNoXPCResponseReason - record: pid: %d, desired pid: %d", v50, 0xEu);
        }

        v26 = &v21[v19];
        v27 = qword_27EE82098;
        if (*&v21[v19 + 20] == response)
        {
          if (qword_27EE82098 == v5)
          {
            v28 = os_log_create("com.apple.DTServiceHub", "CoreMLPerfService");
            v29 = qword_27EE82098;
            qword_27EE82098 = v28;

            v27 = qword_27EE82098;
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v30 = *&v21[v19 + 29];
            v31 = v21[v19 + 28];
            v32 = *(v26 + 5);
            *v50 = 134218496;
            *v51 = v30;
            *&v51[8] = 1024;
            *&v51[10] = v31;
            v52 = 1024;
            v53 = v32;
            _os_log_impl(&dword_247F67000, v27, OS_LOG_TYPE_DEBUG, "diagnoseNoXPCResponseReason - Found exit code: %llu, namespace: %d, pid: %d", v50, 0x18u);
          }

          v33 = v21[v19 + 28];
          if (v33 == 2)
          {
            v41 = qword_27EE82098;
            if (qword_27EE82098 == v5)
            {
              v42 = os_log_create("com.apple.DTServiceHub", "CoreMLPerfService");
              v43 = qword_27EE82098;
              qword_27EE82098 = v42;

              v41 = qword_27EE82098;
            }

            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              v44 = *(v26 + 5);
              *v50 = 67109120;
              *v51 = v44;
              _os_log_impl(&dword_247F67000, v41, OS_LOG_TYPE_DEBUG, "diagnoseNoXPCResponseReason - Found crash (%d)", v50, 8u);
            }

            v16 = 1;
          }

          else if (v33 == 1)
          {
            v34 = qword_27EE82098;
            if (qword_27EE82098 == v5)
            {
              v35 = os_log_create("com.apple.DTServiceHub", "CoreMLPerfService");
              v36 = qword_27EE82098;
              qword_27EE82098 = v35;

              v34 = qword_27EE82098;
            }

            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              v37 = *(v26 + 5);
              *v50 = 67109120;
              *v51 = v37;
              _os_log_impl(&dword_247F67000, v34, OS_LOG_TYPE_DEBUG, "diagnoseNoXPCResponseReason - Found jetsam (%d)", v50, 8u);
            }

            v16 = 0;
          }
        }

        else
        {
          if (qword_27EE82098 == v5)
          {
            v38 = os_log_create("com.apple.DTServiceHub", "CoreMLPerfService");
            v39 = qword_27EE82098;
            qword_27EE82098 = v38;

            v27 = qword_27EE82098;
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v40 = *(v26 + 5);
            *v50 = 67109120;
            *v51 = v40;
            _os_log_impl(&dword_247F67000, v27, OS_LOG_TYPE_DEBUG, "diagnoseNoXPCResponseReason - Got launch service stats for non-related pid: %d", v50, 8u);
          }
        }

        ++v20;
        v19 += 59;
      }

      while (v20 < v56);
    }

    else
    {
      v16 = 2;
    }

    if (v55)
    {
      free(v55);
    }

    v45 = qword_27EE82098;
    if (qword_27EE82098 == v5)
    {
      v46 = os_log_create("com.apple.DTServiceHub", "CoreMLPerfService");
      v47 = qword_27EE82098;
      qword_27EE82098 = v46;

      v45 = qword_27EE82098;
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      *v50 = 0;
      _os_log_impl(&dword_247F67000, v45, OS_LOG_TYPE_DEBUG, "diagnoseNoXPCResponseReason - Found no supported reason for no response", v50, 2u);
    }
  }

  v48 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (void)enableMonitoring
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = launch_service_stats_enable();
  v3 = qword_27EE82098;
  if (v2)
  {
    if (qword_27EE82098 == MEMORY[0x277D86228])
    {
      v4 = os_log_create("com.apple.DTServiceHub", "CoreMLPerfService");
      v5 = qword_27EE82098;
      qword_27EE82098 = v4;

      v3 = qword_27EE82098;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = v3;
      v10 = 136315138;
      v11 = xpc_strerror();
      _os_log_impl(&dword_247F67000, v6, OS_LOG_TYPE_ERROR, "enableLaunchServiceMonitoring - Enabling launch_service_stats failed: %s", &v10, 0xCu);
    }
  }

  else
  {
    if (qword_27EE82098 == MEMORY[0x277D86228])
    {
      v7 = os_log_create("com.apple.DTServiceHub", "CoreMLPerfService");
      v8 = qword_27EE82098;
      qword_27EE82098 = v7;

      v3 = qword_27EE82098;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_247F67000, v3, OS_LOG_TYPE_DEBUG, "enableLaunchServiceMonitoring - launch_service_stats enabled", &v10, 2u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)disableMonitoring
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = launch_service_stats_disable();
  v3 = qword_27EE82098;
  if (v2)
  {
    if (qword_27EE82098 == MEMORY[0x277D86228])
    {
      v4 = os_log_create("com.apple.DTServiceHub", "CoreMLPerfService");
      v5 = qword_27EE82098;
      qword_27EE82098 = v4;

      v3 = qword_27EE82098;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = v3;
      v10 = 136315138;
      v11 = xpc_strerror();
      _os_log_impl(&dword_247F67000, v6, OS_LOG_TYPE_ERROR, "disableLaunchServiceMonitoring - Disabling launch_service_stats monitoring failed: %s", &v10, 0xCu);
    }
  }

  else
  {
    if (qword_27EE82098 == MEMORY[0x277D86228])
    {
      v7 = os_log_create("com.apple.DTServiceHub", "CoreMLPerfService");
      v8 = qword_27EE82098;
      qword_27EE82098 = v7;

      v3 = qword_27EE82098;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_247F67000, v3, OS_LOG_TYPE_DEBUG, "disableLaunchServiceMonitoring - launch_service_stats monitoring disabled", &v10, 2u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end