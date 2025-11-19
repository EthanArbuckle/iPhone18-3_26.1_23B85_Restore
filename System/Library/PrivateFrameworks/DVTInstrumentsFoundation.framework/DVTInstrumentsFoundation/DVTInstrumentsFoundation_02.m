uint64_t sub_247FD311C(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a4;
  if (!sub_247FD3194(*(a1 + 32), a2, *(a1 + 56), a3))
  {
    goto LABEL_4;
  }

  v8 = 1;
  if (*(a1 + 40) != v7)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_4:
    v8 = 0;
  }

  return v8;
}

uint64_t sub_247FD3194(void *a1, void *a2, int a3, int a4)
{
  v7 = a1;
  v8 = a2;
  if ([v7 length] && objc_msgSend(v8, "length") && !objc_msgSend(v7, "isEqualToString:", v8))
  {
    v11 = 0;
  }

  else
  {
    if (a3)
    {
      v9 = a4 == 0;
    }

    else
    {
      v9 = 1;
    }

    v11 = v9 || a3 == a4;
  }

  return v11;
}

void sub_247FD3220(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_247FD32D8;
  v3[3] = &unk_278EF34B8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  [v2 _matchRemove:v3];
}

uint64_t sub_247FD32D8(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  if (*(a1 + 32) == a4)
  {
    return sub_247FD3194(*(a1 + 40), a2, *(a1 + 48), a3);
  }

  else
  {
    return 0;
  }
}

void sub_247FD3304(uint64_t a1, pid_t pid)
{
  v14 = *MEMORY[0x277D85DE8];
  if (proc_pidpath(pid, buffer, 0x400u) >= 1)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:buffer];
    v5 = [v4 stringByDeletingLastPathComponent];
    v6 = [v5 stringByAppendingPathComponent:@"Info.plist"];

    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:{v6, 0}];
    if (v7)
    {
      v8 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:0 format:&v12 error:0];
    }

    else
    {
      v8 = 0;
    }

    if (*(a1 + 32) && ([v4 isEqualToString:?] & 1) != 0 || *(a1 + 40) && (objc_msgSend(v8, "objectForKeyedSubscript:", @"CFBundleIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", *(a1 + 40)), v9, v10))
    {
      kill(pid, 9);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_247FD3478(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 92) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: xpc attach handler entered", buf, 2u);
  }

  pid = xpc_service_instance_get_pid();
  if (*(a1 + 92) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v41 = pid;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: xpc attach handler, pid = %d", buf, 8u);
    }

    if ((*(a1 + 92) & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      if (xpc_service_instance_is_configurable())
      {
        v5 = "";
      }

      else
      {
        v5 = "non-";
      }

      v6 = [*(a1 + 32) UTF8String];
      *buf = 136315650;
      *v41 = v5;
      *&v41[8] = 2080;
      *&v41[10] = v6;
      v42 = 1024;
      v43 = pid;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "invoked for %sconfigurable service: %s pid: %d\n", buf, 0x1Cu);
    }
  }

  if (pid)
  {
    v7 = [*(a1 + 40) mutableCopy];
    v8 = v7;
    if ((*(a1 + 93) & 1) == 0)
    {
      [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:DTAssertionManagerOptions_DontRemoveMemoryLimitsKey];
    }

    [v8 removeObjectForKey:@"DisableMemoryLimits"];
    v9 = dispatch_source_create(MEMORY[0x277D85D20], pid, 0x80000000uLL, 0);
    if (v9)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = sub_247FD3AEC;
      handler[3] = &unk_278EF3530;
      v37 = *(a1 + 92);
      v36 = pid;
      v34 = *(a1 + 48);
      v10 = v9;
      v35 = v10;
      dispatch_source_set_event_handler(v10, handler);
      dispatch_resume(v10);
    }

    else if (*(a1 + 92) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v41 = pid;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DTXPCServiceController: Failed to start observing process with pid %i", buf, 8u);
    }

    if (xpc_service_instance_is_configurable())
    {
      v11 = [*(a1 + 56) _configureInstance:v3 identifier:*(a1 + 32) servicePid:pid environment:*(a1 + 64) arguments:*(a1 + 72) options:*(a1 + 40)];
      if (*(a1 + 92) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v12 = [*(a1 + 32) UTF8String];
        *buf = 67109378;
        *v41 = pid;
        *&v41[4] = 2080;
        *&v41[6] = v12;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Watching pid %d '%s' for exec", buf, 0x12u);
      }

      v13 = dispatch_source_create(MEMORY[0x277D85D20], pid, 0xA0000000uLL, *(*(a1 + 56) + 24));
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_247FD3BD8;
      v23[3] = &unk_278EF3558;
      v14 = v13;
      v24 = v14;
      v32 = *(a1 + 92);
      v29 = pid;
      v25 = *(a1 + 32);
      v26 = *(a1 + 48);
      v27 = v8;
      v28 = *(a1 + 80);
      v30 = *(a1 + 88);
      v31 = v11;
      dispatch_source_set_event_handler(v14, v23);
      dispatch_activate(v14);
      if (*(a1 + 92) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Calling xpc_service_instance_run", buf, 2u);
      }

      xpc_service_instance_run();
    }

    else
    {
      if (*(a1 + 92) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "xpc_service_instance_is_configurable(): false, existing service", buf, 2u);
      }

      if (*(a1 + 94) == 1 && pid >= 1)
      {
        if (*(a1 + 92) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "killing service because we were instructed to kill existing services", buf, 2u);
        }

        kill(pid, 9);
      }

      else
      {
        v15 = *(a1 + 80);
        v16 = *(a1 + 32);
        v17 = *(a1 + 88);
        v18 = MEMORY[0x277CCA9B8];
        v38 = *MEMORY[0x277CCA450];
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"attempted to attach to an existing process (pid=%d) for XPC service '%@' using DTXPCServiceController - should use generic attach instead", pid, v16];
        v39 = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v21 = [v18 errorWithDomain:@"DTXPCServiceController" code:2 userInfo:v20];
        (*(v15 + 16))(v15, v16, pid, v17, 0xFFFFFFFFLL, v21);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_247FD3AEC(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(a1 + 52) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v2;
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: pid %d died, releasing claims on assertions taken on behalf of client %@", v6, 0x12u);
  }

  v4 = +[DTAssertionManager sharedInstance];
  [v4 removeAssertionsForPid:*(a1 + 48) onBehalfOfClient:*(a1 + 32)];

  dispatch_source_cancel(*(a1 + 40));
  v5 = *MEMORY[0x277D85DE8];
}

void sub_247FD3BD8(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  data = dispatch_source_get_data(v2);
  dispatch_source_cancel(v2);
  if ((data & 0x20000000) != 0)
  {
    if (*(a1 + 84) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 72);
      v16 = [*(a1 + 40) UTF8String];
      *buf = 67109378;
      v26 = v15;
      v27 = 2080;
      v28 = v16;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Service pid %d '%s' exec-ed", buf, 0x12u);
    }

    v17 = +[DTAssertionManager sharedInstance];
    [v17 takeAssertionsForPid:*(a1 + 72) onBehalfOfClient:*(a1 + 48) withOptions:*(a1 + 56)];

    v18 = *(a1 + 40);
    v19 = *(a1 + 72);
    v20 = *(a1 + 76);
    v21 = *(a1 + 80);
    (*(*(a1 + 64) + 16))();
  }

  else if (data < 0)
  {
    if (*(a1 + 84) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 72);
      v5 = [*(a1 + 40) UTF8String];
      *buf = 67109378;
      v26 = v4;
      v27 = 2080;
      v28 = v5;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Service pid %d '%s'  exited before exec", buf, 0x12u);
    }

    v6 = *(a1 + 64);
    v7 = *(a1 + 40);
    v8 = *(a1 + 72);
    v9 = *(a1 + 76);
    v10 = *(a1 + 80);
    v11 = MEMORY[0x277CCA9B8];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Service exited before exec %d '%@'. ", v8, v7, *MEMORY[0x277CCA450]];
    v24 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v14 = [v11 errorWithDomain:@"DTXPCServiceController" code:2 userInfo:v13];
    (*(v6 + 16))(v6, v7, v8, v9, v10, v14);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_247FD3E50(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 count];
  if (!a3 && v6)
  {
    if ([v5 count] >= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) UTF8String];
      v8 = [v5 description];
      *buf = 136315394;
      v22 = v7;
      v23 = 2080;
      v24 = [v8 UTF8String];
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "warning: multiple plugins discovered for identifier '%s': { %s }\n", buf, 0x16u);
    }

    [v5 count];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (*(a1 + 40) == 1)
          {
            v14 = *(*(&v16 + 1) + 8 * i);
            if (([v14 userElection] & 1) == 0)
            {
              [v14 setUserElection:257];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_247FD4020(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 pkHandle];
  v4 = v3;
  v5 = *(a1 + 32);
  if (!v3 || v3 == v5)
  {
    [v6 setPkHandle:v5];
  }
}

void sub_247FD408C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  (*(v8 + 16))(v8, v9, a3, *(a1 + 40), a5, 0);
}

void sub_247FD44B8(uint64_t a1, id a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = [a2 UTF8String];
  v9 = [v7 description];

  v10 = [v9 UTF8String];
  if (v8 && v10)
  {
    v11 = *(a1 + 32);

    xpc_dictionary_set_string(v11, v8, v10);
  }
}

void sub_247FD47E0(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 96) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: daemon launch xpc attach handler entered", buf, 2u);
  }

  if (xpc_service_instance_is_configurable())
  {
    pid = xpc_service_instance_get_pid();
    if (*(a1 + 96) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v28) = pid;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: daemon launch xpc attach handler, pid = %d", buf, 8u);
    }

    v5 = objc_opt_new();
    v6 = [*(a1 + 32) objectForKeyedSubscript:@"EnableMTE"];
    if (v6)
    {
      [v5 setObject:v6 forKeyedSubscript:@"EnableMTE"];
    }

    v7 = [*(a1 + 32) objectForKeyedSubscript:@"CPUType"];
    v25 = v7;
    if (v7)
    {
      [v7 intValue];
    }

    xpc_service_instance_set_binpref();
    v8 = [*(a1 + 32) objectForKeyedSubscript:@"CPUSubType"];
    v9 = v8;
    v26 = v6;
    if (v8)
    {
      v10 = [v8 intValue];
    }

    else
    {
      v10 = 0xFFFFFFFFLL;
    }

    xpc_service_instance_set_archpref_shim(v3, v10);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14 = *(a1 + 56);
    v13 = *(a1 + 64);
    v15 = v5;
    v16 = [v5 copy];
    v17 = [v11 _configureInstance:v3 identifier:v12 servicePid:pid environment:v14 arguments:v13 options:v16];

    if (*(a1 + 96) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v28) = v17;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: daemon launch outputFD = %d", buf, 8u);
    }

    v18 = *(a1 + 48);
    (*(*(a1 + 88) + 16))();
    v19 = [*(a1 + 32) objectForKeyedSubscript:@"SkipSetPath"];
    if ([v19 BOOLValue])
    {
    }

    else
    {
      v20 = [*(a1 + 72) length];

      if (v20)
      {
        if (*(a1 + 96) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v21 = *(a1 + 72);
          *buf = 138412290;
          v28 = v21;
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: daemon launch instance path = %@", buf, 0xCu);
        }

        [*(a1 + 72) UTF8String];
        xpc_service_instance_set_path();
        v22 = v26;
        goto LABEL_28;
      }
    }

    v22 = v26;
    if (*(a1 + 96) == 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCServiceController: daemon launch instance path unchanged", buf, 2u);
    }

LABEL_28:
    xpc_service_instance_run();
    v23 = *(a1 + 80);
    xpc_service_set_attach_handler();
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_247FD4CF8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_247FD4DBC;
  v3[3] = &unk_278EF3670;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 64);
  v6 = *(a1 + 56);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_247FD4DBC(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        if (!*(a1 + 32) || ([*(*(&v17 + 1) + 8 * v10) client], v12 = objc_claimAutoreleasedReturnValue(), v13 = *(a1 + 32), v12, v12 == v13))
        {
          v14 = [v11 serviceIdentifier];
          v15 = sub_247FD3194(v14, *(a1 + 40), [v5 intValue], *(a1 + 56));

          if (v15)
          {
            (*(*(a1 + 48) + 16))();
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_247FD4FD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x277CCAB58];
  v7 = a3;
  v8 = [v6 indexSet];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_247FD50D0;
  v12[3] = &unk_278EF36C0;
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v13 = v5;
  v10 = v8;
  v11 = v5;
  [v7 enumerateObjectsUsingBlock:v12];
  [v7 removeObjectsAtIndexes:v10];
}

void sub_247FD50D0(uint64_t a1, void *a2, uint64_t a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 48);
  v7 = [v5 serviceIdentifier];
  v8 = [*(a1 + 32) intValue];
  v9 = [v5 client];
  LODWORD(v6) = (*(v6 + 16))(v6, v7, v8, v9);

  if (v6)
  {
    [*(a1 + 40) addIndex:a3];
    v10 = [v5 pkHandle];
    if (v10)
    {
      v11 = [MEMORY[0x277D3D348] defaultHost];
      [v11 cancelPlugInDiscovery:v10];
    }

    v12 = [v5 oneshotHandler];
    if (v12)
    {
      v13 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"XPC Service observer canceled or superceded."];
      v19[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v16 = [v13 errorWithDomain:@"DTXPCServiceController" code:1 userInfo:v15];
      (v12)[2](v12, 0, 0, 0, 0xFFFFFFFFLL, v16);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_247FD5374(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_247FD541C;
  v3[3] = &unk_278EF34B8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 _matchRemove:v3];
}

uint64_t sub_247FD541C(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  if (*(a1 + 32) == a4)
  {
    return sub_247FD3194(*(a1 + 40), a2, *(a1 + 48), a3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247FD55F4()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"DTXPCControlServiceLog"];

  return v1;
}

void sub_247FD563C(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (sub_247FD55F4() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "channel for service %p disconnected: releasing claims on assertions", &v5, 0xCu);
  }

  v3 = +[DTXPCServiceController sharedInstance];
  [v3 releaseAssertionsMadeByClient:*(a1 + 32)];

  v4 = *MEMORY[0x277D85DE8];
}

void sub_247FD596C(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a6;
  if (sub_247FD55F4() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = [v12 localizedDescription];
    v17 = 138413314;
    v18 = v11;
    v19 = 1024;
    v20 = a3;
    v21 = 1024;
    v22 = a4;
    v23 = 1024;
    v24 = a5;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTXPCControlService launch process handler called: serviceIdentifier=%@, servicePid=%d, requestingPid=%d, outputFD=%d, error=%@", &v17, 0x28u);
  }

  [*(a1 + 32) watchOutputFileDescriptor:a5 forPid:a3];
  v14 = *(a1 + 40);
  v15 = [MEMORY[0x277CCABB0] numberWithInt:a3];
  [v14 invokeCompletionWithReturnValue:v15 error:v12];

  v16 = *MEMORY[0x277D85DE8];
}

void sub_247FD5D64(uint64_t a1, __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = &stru_285A19CB8;
  if (a2)
  {
    v8 = a2;
  }

  v9 = *(a1 + 32);
  if (!v9)
  {
    v9 = MEMORY[0x277CBEC10];
  }

  v11 = [MEMORY[0x277D03668] messageWithSelector:sel_xpcServiceObserved_withProcessIdentifier_requestedByProcess_options_ typesAndArguments:{11, v8, 3, a3, 3, a4, 11, v9, 0}];
  [*(a1 + 40) watchOutputFileDescriptor:a5 forPid:a3];
  v10 = [*(a1 + 40) channel];
  [v10 sendControlAsync:v11 replyHandler:0];
}

void sub_247FD5FFC(uint64_t a1, __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = &stru_285A19CB8;
  if (a2)
  {
    v8 = a2;
  }

  v10 = [MEMORY[0x277D03668] messageWithSelector:sel_xpcServiceObserved_withProcessIdentifier_requestedByProcess_options_ typesAndArguments:{11, v8, 3, a3, 3, a4, 11, *(a1 + 32), 0}];
  [*(a1 + 40) watchOutputFileDescriptor:a5 forPid:a3];
  v9 = [*(a1 + 40) channel];
  [v9 sendControlAsync:v10 replyHandler:0];
}

void sub_247FD62F4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277D03668] messageWithBuffer:a2 length:a3];
  [v7 sendMessage:v8 replyHandler:0];

  objc_autoreleasePoolPop(v6);
}

uint64_t sub_247FD65A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = MEMORY[0x277CBEC28];
  }

  else
  {
    v3 = MEMORY[0x277CBEC38];
  }

  return [v2 invokeCompletionWithReturnValue:v3 error:a2];
}

void sub_247FD668C(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      Name = sel_getName(*(a1 + 40));
      v8 = [v3 localizedDescription];
      v10 = 138412802;
      v11 = v6;
      v12 = 2080;
      v13 = Name;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[%@ %s]: %{public}@", &v10, 0x20u);
    }

    [*(a1 + 32) stopCollection];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_247FD693C(uint64_t a1, void *a2)
{
  v2 = a2;
  v2[2]();
}

uint64_t sub_247FD6B54()
{
  v0 = objc_opt_new();
  v1 = qword_27EE84420;
  qword_27EE84420 = v0;

  v2 = objc_opt_new();
  v3 = qword_27EE84428;
  qword_27EE84428 = v2;

  v4 = qword_27EE84420;
  v5 = objc_opt_new();
  [v4 addObject:v5];

  [qword_27EE84428 addObject:@"DisableWatchdogAssertion"];
  v6 = qword_27EE84420;
  v7 = objc_opt_new();
  [v6 addObject:v7];

  v8 = qword_27EE84428;
  v9 = DTAssertionManagerOptions_DontRemoveMemoryLimitsKey;

  return [v8 addObject:v9];
}

void sub_247FD6C68()
{
  v0 = objc_opt_new();
  v1 = qword_27EE84438;
  qword_27EE84438 = v0;
}

void sub_247FD6ECC(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  v3 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3)
  {
    [v3 addClaimForClient:*(a1 + 40)];
  }

  else
  {
    v5 = objc_opt_new();
    v6 = *(*(a1 + 32) + 8);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = sub_247FD7028;
    v15 = &unk_278EF37B8;
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v16 = v7;
    v17 = v8;
    v19 = *(a1 + 56);
    v18 = v5;
    v9 = v5;
    [v6 enumerateObjectsUsingBlock:&v12];
    v10 = [DTAssertionPidInfo alloc];
    v11 = [(DTAssertionPidInfo *)v10 initForPid:*(a1 + 56) withRemoveBlocks:v9 onBehalfOfClient:*(a1 + 40), v12, v13, v14, v15];
    [*(*(a1 + 32) + 32) setObject:v11 forKeyedSubscript:v2];
  }
}

void sub_247FD7028(uint64_t a1, void *a2, unint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = *(*(a1 + 40) + 16);
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7;
  v9 = v6;
  if ([v8 count] <= a3)
  {
    goto LABEL_16;
  }

  v10 = [v8 objectAtIndexedSubscript:a3];
  v11 = [v9 objectForKey:v10];
  if (!v11)
  {
LABEL_15:

LABEL_16:
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 BOOLValue];
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v23 = 138412546;
      *&v23[4] = objc_opt_class();
      *&v23[12] = 2112;
      *&v23[14] = v11;
      v17 = *&v23[4];
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DTAssertionManager: options dictionary specified item of class %@ (%@) as disable value, don't know how to interpret so leaving enabled", v23, 0x16u);
    }

    goto LABEL_15;
  }

  v12 = [v11 integerValue] != 0;
LABEL_9:

  if (v12)
  {
    v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v14 = [v13 BOOLForKey:@"DTAssertionManagerLog"];

    if (v14 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 56);
      v16 = [*(*(a1 + 40) + 16) objectAtIndex:a3];
      *v23 = 67109378;
      *&v23[4] = v15;
      *&v23[8] = 2112;
      *&v23[10] = v16;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "DTAssertionManager: skipping taking of assertion for pid %d due to option %@ being set", v23, 0x12u);
    }

    goto LABEL_20;
  }

LABEL_17:
  v18 = [v5 assertionForPid:{*(a1 + 56), *v23, *&v23[16], v24}];
  v19 = v18;
  if (v18)
  {
    v20 = *(a1 + 48);
    v21 = _Block_copy(v18);
    [v20 addObject:v21];
  }

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_247FD7380(uint64_t a1)
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:?];
  v3 = v2;
  if (v2 && [v2 removeClaimFromClient:*(a1 + 40)] && objc_msgSend(v3, "hasNoMoreClients"))
  {
    [v3 removeAssertions];
    [*(*(a1 + 32) + 32) removeObjectForKey:v4];
  }
}

void sub_247FD74D0(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(*(a1 + 32) + 32);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = sub_247FD75A0;
  v8 = &unk_278EF37E0;
  v9 = *(a1 + 40);
  v10 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:&v5];
  [*(*(a1 + 32) + 32) removeObjectsForKeys:{v4, v5, v6, v7, v8}];
}

void sub_247FD75A0(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 removeClaimFromClient:*(a1 + 32)] && objc_msgSend(v5, "hasNoMoreClients"))
  {
    [v5 removeAssertions];
    [*(a1 + 40) addObject:v6];
  }
}

void sub_247FD77C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247FD77E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stopLocationSimulation];
}

void sub_247FD7C0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FD7CA0;
  block[3] = &unk_278EF1070;
  v4 = v1;
  dispatch_async(v2, block);
}

uint64_t sub_247FD7CA0(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6++) closeFileTransfer];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = [*(*(a1 + 32) + 24) removeAllObjects];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_247FD7F9C(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCA9B8];
  v2 = *MEMORY[0x277CCA450];
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      v22 = *MEMORY[0x277CCA450];
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid input provided"];
      v23[0] = v3;
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v5 = v1;
      v6 = 1;
    }

    else if (a1 == 2)
    {
      v20 = *MEMORY[0x277CCA450];
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to initiate file transfer"];
      v21 = v3;
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v5 = v1;
      v6 = 2;
    }

    else
    {
      v18 = *MEMORY[0x277CCA450];
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error occurred while unarchived file transfer"];
      v19 = v3;
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v5 = v1;
      v6 = 3;
    }
  }

  else if (a1 > 5)
  {
    if (a1 == 6)
    {
      v12 = *MEMORY[0x277CCA450];
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error occurred while moving file into document inbox"];
      v13 = v3;
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v5 = v1;
      v6 = 6;
    }

    else
    {
      v10 = *MEMORY[0x277CCA450];
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid filename provided for opening"];
      v11 = v3;
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      v5 = v1;
      v6 = 7;
    }
  }

  else if (a1 == 4)
  {
    v16 = *MEMORY[0x277CCA450];
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Application could not be found"];
    v17 = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v5 = v1;
    v6 = 4;
  }

  else
  {
    v14 = *MEMORY[0x277CCA450];
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid application provided"];
    v15 = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v5 = v1;
    v6 = 5;
  }

  v7 = [v5 errorWithDomain:@"DTFileTransferService" code:v6 userInfo:v4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void sub_247FD82C8(uint64_t a1)
{
  if ([*(a1 + 32) _unarchivePackageIfNecessary:*(a1 + 40)])
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_247FD7F9C(3);
    [*(a1 + 48) invokeCompletionWithReturnValue:v2 error:v2];
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v10 = v2;
  v6 = [v3 _moveFileTransfer:v4 toDebugInboxOfApplicationWithBundleIdentifier:v5 outError:&v10];
  v7 = v10;

  if (v6)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = v7;
    v9 = v7;
  }

  [*(a1 + 48) invokeCompletionWithReturnValue:v8 error:v9];
}

id sub_247FD87C8(void *a1)
{
  v1 = [a1 dataContainerURL];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 URLByAppendingPathComponent:@"Documents/Inbox/"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_247FD882C(void *a1)
{
  v1 = [a1 path];
  v2 = [v1 fileSystemRepresentation];

  memset(&v5, 0, sizeof(v5));
  return !lstat(v2, &v5) && (v5.st_mode & 0xF000) == 0x4000;
}

id sub_247FD88A8(void *a1)
{
  v1 = a1;
  if ([v1 characterAtIndex:0] == 46)
  {
    v2 = [v1 stringByReplacingCharactersInRange:0 withString:{1, @"_"}];

    v1 = v2;
  }

  v3 = [v1 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  return v3;
}

id sub_247FD8D80()
{
  if (qword_27EE84440 != -1)
  {
    sub_24802F980();
  }

  v1 = qword_27EE84448;

  return v1;
}

passwd *sub_247FD8DC4(const char *a1)
{
  result = getpwnam("mobile");
  if (result)
  {
    return (lchown(a1, result->pw_uid, result->pw_gid) == 0);
  }

  return result;
}

uint64_t sub_247FD8E08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247FD8E20(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v18 = 0;
  v5 = [v2 _moveFileTransfer:v3 inDataContainerOfApplicationBundleIdentifier:v4 withError:&v18];
  v6 = v18;
  v7 = *(a1[8] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *(*(a1[8] + 8) + 40);
  v10 = sub_247FD8D80();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [*(*(a1[8] + 8) + 40) absoluteString];
      v13 = [v12 UTF8String];
      *buf = 136315138;
      v20 = v13;
      _os_log_impl(&dword_247F67000, v11, OS_LOG_TYPE_INFO, "File transfer success: %s", buf, 0xCu);
    }

    v14 = a1[7];
    v15 = *(*(a1[8] + 8) + 40);
    v16 = 0;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_24802F994(v6);
    }

    v14 = a1[7];
    v15 = 0;
    v16 = v6;
  }

  [v14 invokeCompletionWithReturnValue:v15 error:v16];

  v17 = *MEMORY[0x277D85DE8];
}

id sub_247FD93A8(void *a1, uint64_t a2, int a3)
{
  v4 = [a1 URLByAppendingPathComponent:a2 isDirectory:1];
  v5 = [v4 path];
  v6 = lstat([v5 fileSystemRepresentation], &v9);

  if (v6 || a3 && (v9.st_mode & 0xF000) == 0x4000)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL sub_247FD9704(void *a1, int a2)
{
  v3 = [a1 path];
  v4 = [v3 fileSystemRepresentation];

  memset(&v7, 0, sizeof(v7));
  if (lstat(v4, &v7))
  {
    if (!a2)
    {
      return 1;
    }

LABEL_6:
    if (mkdir(v4, 0x1FFu))
    {
      return 0;
    }

    sub_247FD8DC4(v4);
    return 1;
  }

  v5 = v7.st_mode & 0xF000;
  result = v5 == 0x4000;
  if (v5 == 0x4000 && (a2 & 1) != 0)
  {
    goto LABEL_6;
  }

  return result;
}

id sub_247FD97BC(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_247FD8E08;
  v24 = sub_247FD8E18;
  v25 = 0;
  v7 = objc_opt_new();
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = sub_247FDA238;
  v17 = &unk_278EF3868;
  v8 = v5;
  v18 = v8;
  v19 = &v20;
  [v7 coordinateWritingItemAtURL:v6 options:8 error:0 byAccessor:&v14];
  v9 = v21[5];
  if (v9)
  {
    if (!a3)
    {
LABEL_5:
      v12 = v9;
      goto LABEL_7;
    }

    v10 = [v9 path];
    v11 = sub_247FD8DC4([v10 fileSystemRepresentation]);

    if (v11)
    {
      v9 = v21[5];
      goto LABEL_5;
    }
  }

  v12 = 0;
LABEL_7:

  _Block_object_dispose(&v20, 8);

  return v12;
}

void sub_247FD9944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247FDA1F4()
{
  v0 = os_log_create("com.apple.dt.Instruments", "DTFileTransferService");
  v1 = qword_27EE84448;
  qword_27EE84448 = v0;
}

void sub_247FDA238(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a2;
  v5 = [v3 defaultManager];
  v6 = [*(a1 + 32) destinationURL];
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  [v5 replaceItemAtURL:v4 withItemAtURL:v6 backupItemName:0 options:0 resultingItemURL:&obj error:0];

  objc_storeStrong((v7 + 40), obj);
}

void sub_247FDA2E0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_247FDA6A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, id *a5)
{
  v41[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3010000000;
  v36 = 0;
  v37 = 0;
  v35 = &unk_248061803;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_247FDBFF8;
  aBlock[3] = &unk_278EF3998;
  aBlock[4] = &v32;
  aBlock[5] = &v28;
  v8 = _Block_copy(aBlock);
  if (CSIsNull())
  {
    CSSymbolicatorForeachSymbolWithNameAtTime();
  }

  else
  {
    CSSymbolOwnerForeachSymbolWithName();
  }

  v9 = v33[4];
  v10 = v33[5];
  v11 = CSIsNull();
  v12 = *(v29 + 24);
  if (v11)
  {
    if ((v29[3] & 1) == 0)
    {
      v13 = MEMORY[0x277CCA9B8];
      v38 = *MEMORY[0x277CCA450];
      v14 = "<any>";
      if (a4)
      {
        v14 = a4;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to find symbol named '%s' in owner: %s.", a3, v14];
      v39 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v17 = [v13 errorWithDomain:@"RemoteBundleLoaderError" code:2 userInfo:v16];
      goto LABEL_13;
    }
  }

  else if ((v29[3] & 1) == 0)
  {
    goto LABEL_16;
  }

  v18 = MEMORY[0x277CCA9B8];
  v40 = *MEMORY[0x277CCA450];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Found multiple symbols named '%s' specified owner necessary", a3];;
  v41[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v17 = [v18 errorWithDomain:@"RemoteBundleLoaderError" code:2 userInfo:v16];
LABEL_13:
  v19 = v17;

  if (a5)
  {
    objc_storeStrong(a5, v19);
  }

  v20 = v33;
  v33[4] = 0;
  v20[5] = 0;

LABEL_16:
  v21 = v33[4];
  v22 = v33[5];
  if (CSIsNull())
  {
    v23 = 0;
  }

  else
  {
    Range = CSSymbolGetRange();
    v23 = Range + CSSymbolIsThumb();
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  v25 = *MEMORY[0x277D85DE8];
  return v23;
}

void sub_247FDA9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_247FDADE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_247FDAE08(uint64_t a1, int a2, __int128 *a3)
{
  if (a2 != 0x80000000)
  {
    v14 = v3;
    v15 = v4;
    v5 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v6 = a3[1];
    v10 = *a3;
    v8[2] = sub_247FDAEBC;
    v8[3] = &unk_278EF38D8;
    v11 = v6;
    v7 = *(a1 + 48);
    v12 = a2;
    v13 = v7;
    objc_copyWeak(&v9, (a1 + 40));
    dispatch_sync(v5, v8);
    objc_destroyWeak(&v9);
  }
}

void sub_247FDAEBC(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 == 4098)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _lookupFunctionAddresses:{*(a1 + 40), *(a1 + 48), WeakRetained}];
  }

  else
  {
    if (v2 != 4096)
    {
      if (v2 == 16)
      {
        v3 = *(a1 + 40);
        v4 = *(a1 + 48);
        CSSymbolicatorSubscribeToTaskMainNotification();
        v5 = *(a1 + 76);
        if (_dyld_process_info_create())
        {
          _dyld_process_info_get_state();
          _dyld_process_info_release();
        }
      }

      return;
    }

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 _lookupFunctionAddresses:{0, 0, v6}];
  }
}

uint64_t sub_247FDAFCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  return CSRelease();
}

void sub_247FDB940(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 65) == 1)
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      v4 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA450];
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to load library %@ because target process %d appears to have exited", *(a1 + 40), *(v2 + 12)];
      v25[0] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v7 = [v4 errorWithDomain:@"RemoteBundleLoaderError" code:1 userInfo:v6];
      (*(v3 + 16))(v3, v7);

LABEL_8:
    }
  }

  else
  {
    if (!*(v2 + 56))
    {
      v5 = [MEMORY[0x277CBEA90] dataWithBytes:*(v2 + 24) length:136];
      v6 = [MEMORY[0x277D03668] messageWithSelector:sel_injectLibrary_withFunctionPayload_sandboxExtensions_callingFunction_arguments_ objectArguments:{*(a1 + 40), v5, *(a1 + 48), *(a1 + 56), *(a1 + 64), 0}];
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x3032000000;
      v20[3] = sub_247FDBC88;
      v20[4] = sub_247FDBCB4;
      v21 = _Block_copy(*(a1 + 80));
      v11 = *(a1 + 72);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_247FDBCBC;
      v15[3] = &unk_278EF3948;
      v19 = v20;
      v12 = *(a1 + 40);
      v13 = *(a1 + 32);
      v16 = v12;
      v17 = v13;
      v18 = *(a1 + 72);
      [v11 sendControlAsync:v6 replyHandler:v15];

      _Block_object_dispose(v20, 8);
      goto LABEL_8;
    }

    v8 = *(a1 + 80);
    if (v8)
    {
      v9 = MEMORY[0x277CCA9B8];
      v22[0] = *MEMORY[0x277CCA450];
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to load library %@ due to missing bootstrapping symbols", *(a1 + 40)];
      v22[1] = *MEMORY[0x277CCA7E8];
      v23[0] = v5;
      v23[1] = *(*(a1 + 32) + 56);
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
      v10 = [v9 errorWithDomain:@"RemoteBundleLoaderError" code:2 userInfo:v6];
      (*(v8 + 16))(v8, v10);

      goto LABEL_8;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_247FDBC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_247FDBC88(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_247FDBCBC(uint64_t a1, void *a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*MEMORY[0x277D03698] != v3)
  {
    v5 = [v3 object];
    v6 = [v5 BOOLValue];

    v7 = [v4 error];
    v8 = [v7 code];
    if (v8 == -1 || (v6 & 1) != 0)
    {

      if (v8 == -1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = [v4 error];

      if (!v9)
      {
LABEL_5:
        v10 = MEMORY[0x277CCA9B8];
        v26 = *MEMORY[0x277CCA450];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to execute loader thread for %@ in target target process %d likely exited", *(a1 + 32), *(*(a1 + 40) + 12)];;
        v27 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v13 = [v10 errorWithDomain:@"RemoteBundleLoaderError" code:1 userInfo:v12];

        v14 = *(*(*(a1 + 56) + 8) + 40);
        if (v14)
        {
          (*(v14 + 16))(v14, v13);
        }

LABEL_16:
        [*(a1 + 48) cancel];
        goto LABEL_17;
      }
    }

    v20 = [v4 error];

    v21 = *(*(*(a1 + 56) + 8) + 40);
    if (v20)
    {
      if (v21)
      {
        v22 = [v4 error];
        (*(v21 + 16))(v21, v22);
      }
    }

    else if (v21)
    {
      (*(v21 + 16))(v21, 0);
    }

    goto LABEL_16;
  }

  v15 = *(*(*(a1 + 56) + 8) + 40);
  if (v15)
  {
    v16 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"RemoteInjectionAgent terminated unexpectedly"];
    v29[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v19 = [v16 errorWithDomain:@"RemoteBundleLoaderError" code:2 userInfo:v18];
    (*(v15 + 16))(v15, v19);
  }

LABEL_17:
  v23 = *(*(a1 + 56) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = 0;

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t sub_247FDBFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  result = CSIsNull();
  if (result)
  {
    v10 = *(*(a1 + 32) + 8);
    *(v10 + 32) = a2;
    *(v10 + 40) = a3;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_247FDC05C(uint64_t a1, _DWORD *a2, uint64_t a3, unint64_t a4)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = sub_247FDC304;
  v27 = &unk_278EF39C0;
  v7 = *(a1 + 32);
  v28 = *(a1 + 40);
  v29 = *(a1 + 48);
  v8 = v7;
  v9 = &v24;
  if (*a2 == -17958194)
  {
    v10 = 7;
  }

  else
  {
    if (*a2 != -17958193)
    {
      v12 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CCA450];
      [MEMORY[0x277CCACA8] stringWithFormat:@"path does not appear to be a valid mach-o: %@", v8, v22, v23, v24, v25];
      goto LABEL_17;
    }

    v10 = 8;
  }

  v11 = a2[5];
  if (v10 * 4 + v11 > a4)
  {
    v12 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    [MEMORY[0x277CCACA8] stringWithFormat:@"header is not long enough; found %lu but expected %lu: %@", a4, v10 * 4 + v11, v8, v24, v25];
    v19 = LABEL_17:;
    v31[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v18 = [v12 errorWithDomain:@"RemoteBundleLoaderError" code:0 userInfo:v20];

    goto LABEL_18;
  }

  if (a2[4])
  {
    v13 = 0;
    v14 = &a2[v10];
    v15 = &a2[v10] + v11;
    v16 = &a2[v10];
    while (1)
    {
      if (v16 < v14 || v16 >= (v15 - 8) || v16 + *(v16 + 4) > v15)
      {
        v12 = MEMORY[0x277CCA9B8];
        v30 = *MEMORY[0x277CCA450];
        [MEMORY[0x277CCACA8] stringWithFormat:@"malformed load commmand at index %i: %@", v13, v8, v23, v24, v25];
        goto LABEL_17;
      }

      v17 = v26(v9, v16);
      if (v17)
      {
        break;
      }

      v16 += *(v16 + 4);
      v13 = (v13 + 1);
      if (v13 >= a2[4])
      {
        goto LABEL_14;
      }
    }

    v18 = v17;
  }

  else
  {
LABEL_14:
    v18 = 0;
  }

LABEL_18:

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_247FDC304(uint64_t a1, _DWORD *a2)
{
  if (*a2 == -2147483620)
  {
    v17 = v2;
    v18 = v3;
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2 + a2[2]];
    v6 = [v5 pathComponents];
    v7 = [v6 mutableCopy];

    if ([v7 count])
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      v9 = [v8 hasPrefix:@"@"];

      if (v9)
      {
        [v7 replaceObjectAtIndex:0 withObject:*(a1 + 32)];
      }

      v10 = [MEMORY[0x277CCACA8] pathWithComponents:v7];
      v11 = [v10 stringByStandardizingPath];

      v16 = 0;
      v12 = [MEMORY[0x277CCAA00] defaultManager];
      v13 = [v12 fileExistsAtPath:v11 isDirectory:&v16];
      v14 = v16;

      if (v13 && (v14 & 1) != 0)
      {
        [*(a1 + 40) addObject:v11];
      }
    }
  }

  return 0;
}

void sub_247FDE43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(v9) = a7;
  v8 = [*(a1 + 32) _constructMessagePayload:a2 sampleCount:a3 length:a4 dataSource:*(a1 + 40) sampleType:a5 ringBufferIndex:a6 sourceIndex:v9];
  if (v8)
  {
    v10 = v8;
    [*(a1 + 48) addObject:v8];
    v8 = v10;
  }
}

void sub_247FDEA84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    if (v4)
    {
      v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
      v6 = v3[3];
      v3[3] = v5;

      v7 = v3[3];
      v8 = dispatch_time(0, 500000000);
      dispatch_source_set_timer(v7, v8, 0x1DCD6500uLL, 0x12A05F200uLL);
      v9 = v3[3];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_247FDEBBC;
      v10[3] = &unk_278EF3A38;
      objc_copyWeak(&v11, (a1 + 32));
      v13 = *(a1 + 56);
      v12 = *(a1 + 40);
      dispatch_source_set_event_handler(v9, v10);
      dispatch_resume(v3[3]);
      objc_destroyWeak(&v11);
    }
  }
}

void sub_247FDEBBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [(dispatch_source_t *)WeakRetained _findDataSourcesForTargetProcess:*(a1 + 56)];
    v4 = v3;
    if (v3 && [v3 count])
    {
      dispatch_source_cancel(v6[3]);
      v5 = v6[3];
      v6[3] = 0;

      [(dispatch_source_t *)v6 _configureDataSourcesAndSendMessage:v4 counterProfile:*(a1 + 60) interval:*(a1 + 40) windowLimit:*(a1 + 48)];
    }

    WeakRetained = v6;
  }
}

void sub_247FDED24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    if (v4)
    {
      v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
      v6 = v3[4];
      v3[4] = v5;

      v7 = v3[4];
      v8 = dispatch_time(0, 100000000);
      dispatch_source_set_timer(v7, v8, 0x5F5E100uLL, 0x3B9ACA00uLL);
      v9 = v3[4];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_247FDEE50;
      v10[3] = &unk_278EF3A60;
      objc_copyWeak(&v11, (a1 + 40));
      v10[4] = *(a1 + 32);
      dispatch_source_set_event_handler(v9, v10);
      dispatch_resume(v3[4]);
      objc_destroyWeak(&v11);
    }
  }
}

void sub_247FDEE50(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6[0] = &unk_285A36D68;
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
    v6[1] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

    [*(a1 + 32) _sendMessage:v4];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_247FDEF9C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }
}

void sub_247FE0128()
{
  v0 = objc_opt_new();
  v1 = qword_27EE84450;
  qword_27EE84450 = v0;
}

void sub_247FE0290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247FE02A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247FE02C0(uint64_t a1)
{
  v5 = [*(a1 + 32) activeHandlers];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_247FE0584(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) activeHandlers];
  v4 = [*(a1 + 40) identifier];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v7 = [*(a1 + 32) activeHandlers];
  v5 = [v7 allKeys];
  v6 = [v5 description];
  syslog(7, "Registered new request handler. Current requests: %s", [v6 UTF8String]);
}

void sub_247FE0700(uint64_t a1)
{
  v2 = [*(a1 + 32) activeHandlers];
  v3 = [*(a1 + 40) identifier];
  [v2 removeObjectForKey:v3];

  v6 = [*(a1 + 32) activeHandlers];
  v4 = [v6 allKeys];
  v5 = [v4 description];
  syslog(7, "Unregistered a request handler. Current requests: %s", [v5 UTF8String]);
}

BOOL DTProcessShouldCaptureOutputWithOptions(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"CaptureOutput"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 objectForKeyedSubscript:@"iODestinationKey"];
    v6 = [v5 intValue];

    v4 = v6 == 0;
  }

  return v4;
}

void DTProcessAddLegacyLaunchOptions(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"CaptureOutput"];
  v3 = [v2 BOOLValue];

  v4 = [MEMORY[0x277CCABB0] numberWithInt:v3 ^ 1u];
  [v1 setObject:v4 forKeyedSubscript:@"iODestinationKey"];
}

id DVTIFAttachToProcess(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [DTInstrumentServer taskForPid:a1];
  v16 = v9;
  if ((v9 - 1) >= 0xFFFFFFFE)
  {
    if (a4)
    {
      sub_247FE14A8(0, @"Failed to get task for pid %d: %x", v10, v11, v12, v13, v14, v15, a1);
      *a4 = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = DVTIFAttachToTask(v9, v7, v8, a4);
    mach_port_deallocate(*MEMORY[0x277D85F48], v16);
  }

  return v17;
}

id sub_247FE14A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCACA8];
  v11 = a2;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  v13 = &stru_285A19CB8;
  if (v12)
  {
    v13 = v12;
  }

  v14 = v13;

  v15 = MEMORY[0x277CCA9B8];
  v20 = *MEMORY[0x277CCA450];
  v21[0] = v14;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v17 = [v15 errorWithDomain:@"com.apple.dt.ProcessAttachUtilities" code:a1 userInfo:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

id DVTIFAttachToTask(uint64_t a1, void *a2, void *a3, void *a4)
{
  v74 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v14 = a3;
  x = 0;
  if ((a1 - 1) > 0xFFFFFFFD || pid_for_task(a1, &x))
  {
    if (a4)
    {
      sub_247FE14A8(1, @"Invalid task port provided: %x", v8, v9, v10, v11, v12, v13, a1);
      *a4 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_28;
  }

  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_247FE1AF0;
  v65 = sub_247FE1B00;
  v66 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_247FE1AF0;
  v59 = sub_247FE1B00;
  v60 = 0;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v47 = sub_247FE1B08;
  v48 = &unk_278EF3C60;
  v51 = &v61;
  v53 = a1;
  v54 = x;
  v49 = v7;
  v50 = v14;
  v52 = &v55;
  v16 = v46;
  name[0] = 0;
  v17 = MEMORY[0x277D85F48];
  v18 = mach_port_allocate(*MEMORY[0x277D85F48], 1u, name);
  if (v18)
  {
    v19 = MEMORY[0x277D86220];
    v20 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = getprogname();
      v22 = getpid();
      v23 = mach_error_string(v18);
      *buf = 136315906;
      *&buf[4] = v21;
      *&buf[12] = 1024;
      *&buf[14] = v22;
      *&buf[18] = 2080;
      *&buf[20] = v23;
      *&buf[28] = 1024;
      *&buf[30] = v18;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_port_allocate' failed: %s (%d)\n", buf, 0x22u);
    }
  }

  inserted = mach_port_insert_right(*v17, name[0], name[0], 0x14u);
  if (inserted)
  {
    v25 = MEMORY[0x277D86220];
    v26 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v27 = getprogname();
      v28 = getpid();
      v29 = mach_error_string(inserted);
      *buf = 136315906;
      *&buf[4] = v27;
      *&buf[12] = 1024;
      *&buf[14] = v28;
      *&buf[18] = 2080;
      *&buf[20] = v29;
      *&buf[28] = 1024;
      *&buf[30] = inserted;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_port_insert_right' failed: %s (%d)\n", buf, 0x22u);
    }
  }

  v30 = name[0];
  *name = 0;
  v69 = name;
  v70 = 0x2020000000;
  v71 = 0;
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_247FE1EF8;
  *&buf[24] = &unk_278EF29B0;
  *&buf[32] = name;
  v73 = v30;
  v31 = _Block_copy(buf);
  v47(v16, v30, v31);
  v31[2](v31);

  _Block_object_dispose(name, 8);
  if (!v56[5] && !v62[5])
  {
    if (x)
    {
      if (kill(x, 0) != -1 || *__error() != 3)
      {
        v38 = @"Attach to %d failed; an unknown error occurred";
        v39 = x;
        v40 = 3;
LABEL_23:
        v41 = sub_247FE14A8(v40, v38, v32, v33, v34, v35, v36, v37, v39);
        v42 = v62[5];
        v62[5] = v41;

        goto LABEL_24;
      }

      v38 = @"Attach to %d failed to create transport; target likely exited";
      v39 = x;
    }

    else
    {
      v39 = 0;
      v38 = @"Attach to %d failed to create transport; target likely exited";
    }

    v40 = 2;
    goto LABEL_23;
  }

LABEL_24:
  if (a4)
  {
    v43 = v62[5];
    if (v43)
    {
      *a4 = v43;
    }
  }

  v15 = v56[5];

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v61, 8);

LABEL_28:
  v44 = *MEMORY[0x277D85DE8];

  return v15;
}

void sub_247FE1AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247FE1AF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247FE1B08(uint64_t a1, uint64_t a2, void *a3)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MEMORY[0x277D85F48];
  v7 = *MEMORY[0x277D85F48];
  v8 = *(a1 + 64);
  *poly = 0;
  is_self = mach_task_is_self(v7);
  if (is_self)
  {
    poly[1] = a2;
    v10 = 19;
  }

  else
  {
    v15 = MEMORY[0x24C1C3A90](v7, a2, 19, &poly[1], poly);
    if (v15)
    {
      goto LABEL_27;
    }

    v10 = poly[0];
  }

  if (mach_task_is_self(v8))
  {
    v11 = poly[1];
    name = poly[1];
    if (v10 - 19 > 0xFFFFFFFC)
    {
      goto LABEL_19;
    }

    v12 = v8;
    v13 = poly[1];
    v14 = poly[1];
  }

  else
  {
    if (v7 != v8)
    {
      while (1)
      {
        name = 0;
        v17 = mach_port_allocate(v8, 4u, &name);
        if (v17)
        {
          break;
        }

        v17 = mach_port_deallocate(v8, name);
        if (v17)
        {
          break;
        }

        inserted = mach_port_insert_right(v8, name, poly[1], v10);
        if ((inserted & 0xFFFFFFF7) != 5)
        {
          goto LABEL_11;
        }
      }

      v15 = v17;
      if (is_self)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    name = a2;
    v14 = poly[1];
    v12 = v7;
    v13 = a2;
  }

  inserted = mach_port_insert_right(v12, v13, v14, v10);
LABEL_11:
  v15 = inserted;
  if (inserted)
  {
    if (!is_self)
    {
LABEL_26:
      mach_port_mod_refs(*v6, poly[1], poly[0], -1);
    }

LABEL_27:
    v33 = *(a1 + 68);
    mach_error_string(v15);
    v40 = sub_247FE14A8(1, @"Attach to %d: Failed to transfer mach rights: %s (%d).", v34, v35, v36, v37, v38, v39, v33);
    v41 = *(*(a1 + 48) + 8);
    v24 = *(v41 + 40);
    *(v41 + 40) = v40;
    goto LABEL_30;
  }

  v11 = name;
LABEL_19:
  if ((v11 - 1) >= 0xFFFFFFFE)
  {
    v15 = 5;
    goto LABEL_27;
  }

  v24 = [[RemoteBundleLoader alloc] initWithTask:*(a1 + 64)];
  if (v24)
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%x", v11];
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v51[0] = v25;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_247FE1E48;
    v46[3] = &unk_278EF3C38;
    v48 = *(a1 + 48);
    v47 = v5;
    [(RemoteBundleLoader *)v24 scheduleLibraryLoad:v26 calling:v27 arguments:v28 callback:v46];

    v29 = [MEMORY[0x277D03660] fileDescriptorHandshakeWithReceivePort:a2];
    if (v29)
    {
      v30 = [objc_alloc(MEMORY[0x277D03650]) initWithTransport:v29];
      v31 = *(*(a1 + 56) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;
    }
  }

  else
  {
    v42 = sub_247FE14A8(1, @"Unable to create a RemoteBundleLoader target is already invalid", v18, v19, v20, v21, v22, v23, v45);;
    v43 = *(*(a1 + 48) + 8);
    v25 = *(v43 + 40);
    *(v43 + 40) = v42;
  }

LABEL_30:
  v44 = *MEMORY[0x277D85DE8];
}

uint64_t sub_247FE1E48(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = result;
    v3 = a2;
    if ([v3 code] == 1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    v5 = [v3 localizedDescription];

    v12 = sub_247FE14A8(v4, @"%@", v6, v7, v8, v9, v10, v11, v5);
    v13 = *(*(v2 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = *(*(v2 + 32) + 16);

    return v15();
  }

  return result;
}

void sub_247FE1EF8(uint64_t a1)
{
  v1 = 0;
  v21 = *MEMORY[0x277D85DE8];
  atomic_compare_exchange_strong((*(*(a1 + 32) + 8) + 24), &v1, 1u);
  if (!v1)
  {
    v3 = *(a1 + 40);
    if (v3 + 1 >= 2)
    {
      v5 = MEMORY[0x277D85F48];
      v6 = mach_port_mod_refs(*MEMORY[0x277D85F48], v3, 1u, -1);
      if (v6)
      {
        v7 = v6;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v13 = 136315906;
          v14 = getprogname();
          v15 = 1024;
          v16 = getpid();
          v17 = 2080;
          v18 = mach_error_string(v7);
          v19 = 1024;
          v20 = v7;
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_port_mod_refs' failed: %s (%d)\n", &v13, 0x22u);
        }
      }

      v8 = mach_port_deallocate(*v5, *(a1 + 40));
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v10 = getprogname();
          v11 = getpid();
          v12 = mach_error_string(v9);
          v13 = 136315906;
          v14 = v10;
          v15 = 1024;
          v16 = v11;
          v17 = 2080;
          v18 = v12;
          v19 = 1024;
          v20 = v9;
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_port_deallocate' failed: %s (%d)\n", &v13, 0x22u);
        }
      }
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_247FE24B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247FE24D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[2] disconnectServiceConnection];
    WeakRetained = v2;
  }
}

void sub_247FE2828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247FE2874(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277D03668] messageWithError:v5];
LABEL_5:
    v7 = v6;
    v8 = [*(a1 + 32) newReplyWithMessage:v6];

    goto LABEL_6;
  }

  if (v11)
  {
    v6 = [MEMORY[0x277D03668] messageWithData:?];
    goto LABEL_5;
  }

  v8 = [*(a1 + 32) newReply];
LABEL_6:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = [WeakRetained channel];
  [v10 sendMessage:v8 replyHandler:0];
}

void sub_247FE295C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277D03668] messageWithError:?];
    v5 = [*(a1 + 40) newReplyWithMessage:v2];
  }

  else
  {
    v5 = [*(a1 + 40) newReply];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained channel];
  [v4 sendMessage:v5 replyHandler:0];
}

void sub_247FE2C2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_opt_new();
  [v6 setKind:7];
  [v6 setSessionMetadata:v3];

  v4 = *(*(a1 + 32) + 8);
  v5 = [MEMORY[0x277D03668] messageWithObject:v6];
  [v4 sendMessage:v5];
}

void sub_247FE2D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247FE2D9C(uint64_t a1, void *a2)
{
  result = [a2 isAllProcesses];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_247FE3764(uint64_t a1, void *a2)
{
  result = [a2 errorStatus];
  if (result)
  {
    *(*(a1 + 32) + 16) = 0;
  }

  return result;
}

void sub_247FE4010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247FE4034(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247FE404C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [v12 eventName];
  v8 = [*(a1 + 32) name];
  if ([v7 isEqualToString:v8])
  {
  }

  else
  {
    v9 = [v12 eventOrAliasName];
    v10 = [*(a1 + 32) aliasOrName];
    v11 = [v9 isEqualToString:v10];

    if (!v11)
    {
      goto LABEL_5;
    }
  }

  *a4 = 1;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
LABEL_5:
}

void sub_247FE46C4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 hwIdx];
  if (v3 > [*(a1 + 32) hwIdx])
  {
    [v5 setHwIdx:{objc_msgSend(v5, "hwIdx") - 1}];
    v4 = [*(a1 + 40) _counterNameForEvent:v5 error:*(a1 + 48)];
    [v5 setCounterName:v4];
  }
}

void sub_247FE4CC8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  v11 = 0;
  v6 = [v5 _counterIndexForEvent:a2 absolute:0 error:&v11];
  v7 = v11;
  v8 = a1[6];
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 24);
  *(v9 + 24) = v10 + 1;
  *(v8 + 8 * v10) = v6;
  if (v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_24802FE4C(v7, a3);
  }
}

void sub_247FE56F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247FE571C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247FE5734(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = xpc_shmem_create([*(a1 + 32) sharedMemory], objc_msgSend(*(a1 + 32), "totalSharedMemorySize"));
  xpc_dictionary_set_value(v4, "dtx_shared_memory", v5);
  v6 = xpc_connection_send_message_with_reply_sync(v3, v4);

  if (MEMORY[0x24C1C4CD0](v6) == MEMORY[0x277D86480])
  {
    v7 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"XPC error contacting DTServiceHub: '%s'", xpc_dictionary_get_string(v6, *MEMORY[0x277D86400])];
    v20[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v10 = [v7 errorWithDomain:@"DTServiceHubClient" code:1 userInfo:v9];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_247FE5BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247FE5BC8(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 24) == 1)
  {
    *(v3 + 24) = 1;
  }

  else
  {
    v5 = [a2 kdebugFilter];
    *(*(*(a1 + 32) + 8) + 24) = [v5 containsClass:43 subclassID:101];
  }
}

void sub_247FE5ED0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [MEMORY[0x277CCAC38] processInfo];
    v3 = [v2 thermalState];

    [v4 _emitThermalState:v3 currentState:v3];
    WeakRetained = v4;
  }
}

void sub_247FE60D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247FE60E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  if (*(v4 + 24) == 1)
  {
    *(v4 + 24) = 1;
  }

  else
  {
    v7 = v3;
    v5 = [v3 kdebugFilter];
    if ([v5 containsClass:133 subclassID:2])
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }

    else
    {
      v6 = [v7 kdebugFilter];
      *(*(*(a1 + 32) + 8) + 24) = [v6 containsClass:133 subclassID:9];
    }

    v3 = v7;
  }
}

uint64_t sub_247FE6350(uint64_t a1)
{
  notify_set_state(*(*(a1 + 32) + 24), 1uLL);

  return notify_post("com.apple.Metal.AGXEnableOSSignposts");
}

void sub_247FE64A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_247FE64C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) _notifyShaderBinaryInfo];
    WeakRetained = v3;
  }
}

id DTKTraceTapLocalEventProducersForConfig(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  if ([DTKTraceTapLocalTimerBasedEventProducer supportsConfig:v1])
  {
    v3 = objc_opt_new();
    [v2 addObject:v3];
  }

  if ([DTKTraceTapLocalShaderTimelineEventProducer supportsConfig:v1])
  {
    v4 = objc_opt_new();
    [v2 addObject:v4];
  }

  if ([DTKTraceTapLocalVFSTracePathsProducer supportsConfig:v1])
  {
    v5 = objc_opt_new();
    [v2 addObject:v5];
  }

  return v2;
}

void sub_247FE6874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_247FE6894(uint64_t a1, void *a2)
{
  if ([a2 errorStatus] == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _helperConnectionError];
  }
}

void sub_247FE8220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a71, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247FE827C(uint64_t a1)
{
  v1 = MEMORY[0x277D46F48];
  v2 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:a1];
  v3 = [v1 handleForPredicate:v2 error:0];

  v4 = [v3 pid];
  v5 = v4 & ~(v4 >> 31);

  return v5;
}

uint64_t sub_247FE82E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_247FE8300(uint64_t result)
{
  if (!*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    result = sub_247FE827C(*(result + 32));
    *(*(*(v1 + 48) + 8) + 24) = result;
  }

  return result;
}

void sub_247FE834C(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  [*(a1 + 32) start];
}

void sub_247FE9134(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Background Fetch failure for '%@'. Options: %@. FBSOpenApplicationOptions: %@.", a1[4], a1[5], a1[6]];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = [v5 UTF8String];
      v7 = [v4 description];
      *buf = 136315394;
      v18 = v6;
      v19 = 2080;
      v20 = [v7 UTF8String];
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s.\nError: %s", buf, 0x16u);
    }

    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA7E8];
    v15[0] = *MEMORY[0x277CCA450];
    v15[1] = v9;
    v16[0] = v5;
    v16[1] = v4;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v11 = [v8 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:v10];
    v12 = *(a1[7] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_247FE92D8(uint64_t a1, void *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_24802FF78(v3);
    }

    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Clip Request error for bundleID:'%@' url:'%@'", *(a1 + 32), *(a1 + 40)];
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277CCA7E8];
    v12[0] = *MEMORY[0x277CCA450];
    v12[1] = v6;
    v13[0] = v4;
    v13[1] = v3;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v8 = [v5 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:v7];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  dispatch_semaphore_signal(*(a1 + 48));

  v11 = *MEMORY[0x277D85DE8];
}

void sub_247FE95E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247FE9604(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void sub_247FE9CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247FE9D30(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to show Widget '%@' error: %@.", *(a1 + 32), v4];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = [v5 UTF8String];
      _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    }

    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CCA7E8];
    v13[0] = *MEMORY[0x277CCA450];
    v13[1] = v7;
    v14[0] = v5;
    v14[1] = v4;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v9 = [v6 errorWithDomain:@"com.apple.dt.deviceprocesscontrolservice" code:8 userInfo:v8];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v12 = *MEMORY[0x277D85DE8];
}

void sub_247FEA070()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = IOHIDEventSystemClientCreate();
  IOHIDEventSystemClientDispatchEvent();

  CFRelease(v1);
}

void xpc_service_instance_set_archpref_shim(void *a1, uint64_t a2)
{
  v6 = a1;
  v3 = dlopen("/usr/lib/system/libxpc.dylib", 1);
  if (v3)
  {
    v4 = v3;
    v5 = dlsym(v3, "xpc_service_instance_set_archpref");
    if (v5)
    {
      v5(v6, a2);
    }

    dlclose(v4);
  }
}

void sub_247FEA33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_247FEA354(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247FEA36C(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntValue];
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3 | 0xFFFCu];
  [v4 addObject:v5];
}

void sub_247FEA4A0(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntValue];
  v4 = HIBYTE(v3);
  if (v4 == 255)
  {
    v5 = @"*";
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v4];
  }

  v8 = v5;
  if (BYTE2(v3) == 255)
  {
    v6 = @"*";
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", BYTE2(v3)];
  }

  if (v3 >> 2 == 0x3FFF)
  {
    v7 = @"*";
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v3 >> 2];
  }

  [*(a1 + 32) appendFormat:@"{%@, %@, %@}", v8, v6, v7];
}

uint64_t sub_247FEAA48(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntValue];
  [*(a1 + 32) appendString:@"<event type=KDebug "];
  if (HIBYTE(v3) == 255)
  {
    v4 = @"class=* ";
  }

  else
  {
    v8 = HIBYTE(v3);
    v4 = @"class=%d ";
  }

  [*(a1 + 32) appendFormat:v4, v8];
  if (BYTE2(v3) == 255)
  {
    v5 = @"subclass=* ";
  }

  else
  {
    v9 = BYTE2(v3);
    v5 = @"subclass=%d ";
  }

  [*(a1 + 32) appendFormat:v5, v9];
  v6 = *(a1 + 32);
  if (v3 >> 2 != 0x3FFF)
  {
    return [v6 appendFormat:@"code=%d/>", v3 >> 2];
  }

  return [v6 appendFormat:@"code=*/>"];
}

uint64_t sub_247FEABF8(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntValue];
  if (HIBYTE(v3) == 255)
  {
    for (i = 0; i != 255; ++i)
    {
      v5 = *(a1 + 32);
      result = kperf_typefilter_enable_class();
    }
  }

  else if ((~v3 & 0xFF0000) != 0)
  {
    v8 = *(a1 + 32);

    return MEMORY[0x2821ECD30](v8);
  }

  else
  {
    v7 = *(a1 + 32);

    return kperf_typefilter_enable_class();
  }

  return result;
}

uint64_t sub_247FEAD34(uint64_t a1, void *a2)
{
  v3 = [a2 unsignedIntValue];
  if (HIBYTE(v3) == 255)
  {
    v4 = 0;
    v5 = 255;
    do
    {
      v6 = *(a1 + 32);
      result = kperf_kdebug_filter_add_class();
      v4 += 0x1000000;
      --v5;
    }

    while (v5);
  }

  else if (BYTE2(v3) == 255)
  {
    v8 = *(a1 + 32);

    return kperf_kdebug_filter_add_class();
  }

  else
  {
    v9 = *(a1 + 32);
    if (v3 >> 2 == 0x3FFF)
    {
      v10 = *(a1 + 32);

      return kperf_kdebug_filter_add_class_subclass();
    }

    else
    {
      v11 = *(a1 + 32);

      return kperf_kdebug_filter_add_debugid();
    }
  }

  return result;
}

void sub_247FEB218(void *a1)
{
  objc_begin_catch(a1);
  dispatch_semaphore_signal(*(v1 + 1120));
  objc_exception_rethrow();
}

id sub_247FEB244(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v14 = objc_opt_new();
  v4 = [v3 path];
  v5 = fopen([v4 UTF8String], "re");
  if (v5)
  {
    v6 = v5;
    __linecapp = 0;
    __linep = 0;
    if (getline(&__linep, &__linecapp, v5) >= 1)
    {
      do
      {
        v7 = __linep;
        if (sscanf(__linep, "%31s %255s\n", v18, v17) == 2)
        {
          v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v17];
          v9 = strtoll_l(v18, 0, 0, 0);
          if (v9)
          {
            v10 = [[DTKPKDebugCodeWithName alloc] initWithValue:v9 name:v8];

            if (v10)
            {
              [v14 addObject:v10];
            }

            continue;
          }

          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not convert kdebug code string '%s' into a number.", v18];
          DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPKDebugCode", a2, 4294967286, v11);
        }

        else
        {
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not parse a kdebug code line: %s", v7];
          DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPKDebugCode", a2, 4294967286, v8);
        }
      }

      while (getline(&__linep, &__linecapp, v6) > 0);
    }

    free(__linep);
    fclose(v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v14;
}

void sub_247FEB5F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[DTKPKDebugCodeWithName alloc] initWithValue:a3 name:v5];

  [*(*(a1 + 32) + 8) setObject:v6 forIntegerKey:a3];
  [*(a1 + 40) addObject:v6];
}

void sub_247FEB770(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = a2;
  [v2 setObject:v3 forIntegerKey:{objc_msgSend(v3, "kdebugCode")}];
}

void sub_247FEB9C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = DTAllocationsRecorder;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_247FEC428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_247FEC9A4(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA450];
  v8[0] = v1;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"XRObjectAllocDomain" code:-42 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

void sub_247FECA9C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))(v3, v4);
    }
  }
}

void sub_247FECB10(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  CSSymbolOwnerGetSymbolWithName();
  *(*(*(a1 + 40) + 8) + 24) = CSSymbolGetRange();
  v2 = *(a1 + 40);
  v3 = *(*(v2 + 8) + 24);
  if (v3)
  {
    v4 = *(a1 + 56);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v17 = sub_247FECE50;
    v18 = &unk_278EF3F40;
    v5 = *(a1 + 48);
    v19 = v2;
    v20 = v5;
    v6 = v16;
    if (mach_task_is_self(v4))
    {
      v17(v6, v3);
    }

    else
    {
      v9 = MEMORY[0x277D85F48];
      v10 = *MEMORY[0x277D85F48];
      *cur_protection = 0;
      target_address = 0;
      v11 = mach_vm_remap(v10, &target_address, 8uLL, 0, 1048577, v4, v3, 0, &cur_protection[1], cur_protection, 2u);
      if (v11)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          v24 = v3;
          v25 = 1024;
          v26 = v4;
          v27 = 1024;
          v28 = v11;
          _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to map memory for address: %#llx in task: 0x%x (%d)\n", buf, 0x18u);
        }

        v12 = 0;
      }

      else
      {
        if ((~cur_protection[1] & 3) != 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 134218496;
            v24 = v3;
            v25 = 1024;
            v26 = v4;
            v27 = 1024;
            v28 = cur_protection[1];
            _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to map memory r/w for address: %#llx in task: 0x%x (%d)\n", buf, 0x18u);
          }

          mach_vm_deallocate(v10, target_address, 8uLL);
        }

        v12 = target_address;
      }

      v17(v6, v12);
      mach_vm_deallocate(*v9, v12, 8uLL);
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      (*(v13 + 16))(v13, 0);
    }

    goto LABEL_20;
  }

  v7 = *(a1 + 32);
  if (!v7)
  {
LABEL_20:
    v14 = *MEMORY[0x277D85DE8];
    return;
  }

  v15 = sub_247FEC9A4(@"Failed to acquire memory location for pushing shared memory into target.");
  (*(v7 + 16))(v7);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t sub_247FECE50(uint64_t result, void *a2)
{
  if (a2)
  {
    *a2 = *(result + 40);
  }

  else
  {
    *(*(*(result + 32) + 8) + 24) = 0;
  }

  return result;
}

void sub_247FED034(uint64_t a1, _DWORD *__src, unsigned int a3)
{
  if (__src)
  {
    v4 = a3;
    if (a3)
    {
      v5 = __src;
      *(*(a1 + 32) + 80) += a3;
      while (1)
      {
        v6 = *(a1 + 32);
        if (*(v6 + 100) > 1)
        {
          return;
        }

        v7 = *(v6 + 68);
        if (v4 >= 0x30 && !v7)
        {
          v8 = v5[2];
          v9 = v5[3];
          if ((v8 & 0x800000) != 0)
          {
            v9 = HIWORD(v5[3]);
          }

          v10 = 8 * v9 + 56;
          if (v4 >= v10)
          {
            if (v9 >= 0x200)
            {
              v32 = [MEMORY[0x277CCA890] currentHandler];
              [v32 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"DTAllocationsRecorder.mm" lineNumber:348 description:{@"Fatal: whole event too large (%d), stream malformed.", v10}];

              v8 = v5[2];
              if ((v8 & 0x400000) == 0)
              {
                goto LABEL_31;
              }
            }

            else if ((v8 & 0x400000) == 0)
            {
LABEL_31:
              if ((v8 & 0x800000) != 0)
              {
                [*(a1 + 32) createFullEventFromDelta:v5 withEvent:*(*(a1 + 32) + 56)];
                v24 = *(*(a1 + 32) + 56);
              }

              goto LABEL_39;
            }

            [*(a1 + 32) addKeyFrame:v5];
LABEL_39:
            (*(*(a1 + 40) + 16))();
            ++*(*(a1 + 32) + 72);
            v5 = (v5 + v10);
            goto LABEL_40;
          }
        }

        v11 = *(v6 + 64);
        v12 = *(v6 + 48);
        if (!v11)
        {
          if (48 - v7 >= v4)
          {
            v10 = v4;
          }

          else
          {
            v10 = (48 - v7);
          }

          memcpy((v12 + v7), v5, v10);
          *(*(a1 + 32) + 68) += v10;
          v18 = *(a1 + 32);
          v19 = *(v18 + 68);
          if (v19 >= 0x31)
          {
            sub_24803003C();
          }

          if (v19 == 48)
          {
            v20 = *(v18 + 48);
            v21 = *(v20 + 8);
            v23 = *(v20 + 12);
            v22 = HIWORD(v23);
            v23 = v23;
            if ((v21 & 0x800000) != 0)
            {
              v23 = v22;
            }

            *(v18 + 64) = 8 * v23 + 56;
            v18 = *(a1 + 32);
          }

          v5 = (v5 + v10);
          if (*(v18 + 64) >= 0x1031u)
          {
            v31 = [MEMORY[0x277CCA890] currentHandler];
            [v31 handleFailureInMethod:*(a1 + 48) object:*(*(a1 + 32) + 64) file:? lineNumber:? description:?];
          }

          goto LABEL_40;
        }

        v13 = v11 - v7;
        v10 = v13 >= v4 ? v4 : v13;
        memcpy((v12 + v7), v5, v10);
        *(*(a1 + 32) + 68) += v10;
        v14 = *(a1 + 32);
        v15 = *(v14 + 68);
        if (v15 >= 0x1031)
        {
          sub_248030010();
        }

        v5 = (v5 + v10);
        if (v15 == *(v14 + 64))
        {
          break;
        }

LABEL_40:
        v4 -= v10;
        if (!v4)
        {
          return;
        }
      }

      v16 = *(*(v14 + 48) + 8);
      if ((v16 & 0x400000) != 0)
      {
        [v14 addKeyFrame:?];
        v25 = *(a1 + 40);
        v26 = *(*(a1 + 32) + 48);
      }

      else
      {
        if ((v16 & 0x800000) == 0)
        {
          v17 = *(*(a1 + 40) + 16);
LABEL_36:
          v17();
          ++*(*(a1 + 32) + 72);
          *(*(a1 + 32) + 64) = 0;
          *(*(a1 + 32) + 68) = 0;
          goto LABEL_40;
        }

        v27 = *(v14 + 56);
        [v14 createFullEventFromDelta:? withEvent:?];
        v25 = *(a1 + 40);
        v28 = *(*(a1 + 32) + 56);
      }

      v17 = *(v25 + 16);
      goto LABEL_36;
    }
  }

  v29 = *(a1 + 40);
  v30 = *(*(a1 + 40) + 16);

  v30();
}

void sub_247FED538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, char a14, void *a15)
{
  sub_247FEE84C(v15 + 8, a12);
  sub_247FEE84C(&a14, a15);
  _Unwind_Resume(a1);
}

void sub_247FED71C(uint64_t a1)
{
  v5 = 0;
  v2 = [*(a1 + 32) getBufferWithReturnedLength:&v5];
  v3 = [*(a1 + 40) bufferHandler];

  if (v3)
  {
    v4 = [*(a1 + 40) bufferHandler];
    v4[2](v4, v2, v5);
  }
}

uint64_t sub_247FED848(uint64_t a1)
{
  dispatch_sync(*(*(a1 + 32) + 40), &unk_285A18D20);
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (v3)
  {
    atomic_store(1u, (v3 + 48));
    if (*(v3 + 16))
    {
      if (!atomic_load((v3 + 44)))
      {
        shm_unlink((v3 + *(v3 + 16)));
      }
    }

    mach_vm_deallocate(*MEMORY[0x277D85F48], v3, *v3);
    v2 = *(a1 + 32);
  }

  *(v2 + 8) = 0;
  [*(a1 + 32) setEventHandler:0];
  [*(a1 + 32) setBufferHandler:0];
  v5 = *(a1 + 32);
  v6 = *(v5 + 48);
  if (v6)
  {
    free(v6);
    *(*(a1 + 32) + 48) = 0;
    v5 = *(a1 + 32);
  }

  *(v5 + 64) = 0;
  *(*(a1 + 32) + 68) = 0;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  result = CSRelease();
  v11 = *(a1 + 32);
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  return result;
}

double sub_247FEDF98(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if ((a2 & 2) != 0)
  {
    v7 = *(a1 + 40);
    v8 = 16;
  }

  else
  {
    if ((a2 & 0xFFFFFD) == 0 || (a2 & 4) != 0)
    {
      v7 = *(a1 + 40);
      *(v7 + 8) = 19;
      goto LABEL_11;
    }

    if ((a2 & 0x10) != 0)
    {
      v7 = *(a1 + 40);
      *(v7 + 8) = a2 & 0xFF000000 | 0x17;
      goto LABEL_9;
    }

    if ((a2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    v7 = *(a1 + 40);
    v8 = 26;
  }

  *(v7 + 8) = v8;
LABEL_9:
  *(v7 + 40) = a4;
LABEL_11:
  *(v7 + 16) = a3 ^ 0x5555;
LABEL_12:
  v9 = [a6 getFramesForStackID:msl_payload_get_uniquing_table_index() stackFramesBuffer:*(a1 + 40) + 48];
  v10 = *(a1 + 40);
  *(v10 + 12) = v9;
  if (v9)
  {
    v11 = mach_absolute_time();
    v12 = *(a1 + 40);
    *v12 = v11;
    v13 = *(v12 + 12);
    if (v13)
    {
      v14 = v13 - 1;
      do
      {
        if (*(v12 + 48 + 8 * v14) > 0xFFFuLL)
        {
          break;
        }

        --v14;
        *(v12 + 12) = --v13;
      }

      while (v13);
    }

    *(v12 + 8);
    (*(*(a1 + 32) + 16))();
    v10 = *(a1 + 40);
  }

  result = 0.0;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *v10 = 0u;
  return result;
}

void sub_247FEE0C8(uint64_t a1, const void *a2, size_t size, _BYTE *a4)
{
  v5 = size;
  v8 = size;
  v9 = atomic_load((*(a1 + 32) + 88));
  if (v9 + size >= 0x2000001)
  {
    do
    {
      dispatch_semaphore_wait(*(a1 + 40), 0xFFFFFFFFFFFFFFFFLL);
      v10 = atomic_load((*(a1 + 32) + 88));
    }

    while (v10 + v8 > 0x2000000);
  }

  if (v5)
  {
    v11 = malloc_type_malloc(v8, 0xD5C79FD1uLL);
    memcpy(v11, a2, v8);
  }

  else
  {
    v11 = 0;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_247FEE248;
  aBlock[3] = &unk_278EF4008;
  v16 = *(a1 + 48);
  v17 = v11;
  v18 = v5;
  v12 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v15 = v12;
  v13 = _Block_copy(aBlock);
  atomic_fetch_add((*(a1 + 32) + 88), v8);
  dispatch_async(*(*(a1 + 32) + 40), v13);
  *(*(*(a1 + 56) + 8) + 24) = 1;
  if (*(*(a1 + 32) + 100) == 2)
  {
    *a4 = 1;
  }
}

intptr_t sub_247FEE248(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  (*(*(a1 + 48) + 16))();
  free(*(a1 + 56));
  atomic_fetch_add((*(a1 + 32) + 88), -*(a1 + 64));
  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

uint64_t sub_247FEE2B0(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return result;
}

uint64_t sub_247FEE3B0(uint64_t result, void *a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = *a2;
  }

  return result;
}

void *sub_247FEE3C8(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_247FEE3FC(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

uint64_t sub_247FEE44C(uint64_t result, int a2, uint64_t *a3)
{
  if (*(*(*(result + 32) + 8) + 40))
  {
    v4 = result;
    if (a2 == 256)
    {
      v9 = *(result + 40);
      v10 = a3[2];
      v11 = a3[3];
      Name = CSSymbolOwnerGetName();
      result = strcmp(v9, Name);
      if (result)
      {
        return result;
      }

      v13 = a3[2];
      v14 = a3[3];
      v8 = *(*(*(*(v4 + 32) + 8) + 40) + 16);
    }

    else
    {
      if (a2 != 16)
      {
        return result;
      }

      v5 = *a3;
      v6 = a3[1];
      v7 = *(v4 + 40);
      CSSymbolicatorGetSymbolOwnerWithNameAtTime();
      result = CSIsNull();
      if (result)
      {
        return result;
      }

      v8 = *(*(*(*(v4 + 32) + 8) + 40) + 16);
    }

    return v8();
  }

  return result;
}

void *sub_247FEE52C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_247FEE584(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_247FEE584(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_247FEE60C(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_247FEE60C(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *sub_247FEE6A4(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_247FEE6A4(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_247FEE84C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_247FEE84C(a1, *a2);
    sub_247FEE84C(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *sub_247FEE8B4(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_247FEE988(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_247FEEA3C();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_247FEEACC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_247FEEACC(a1, *a2);
    sub_247FEEACC(a1, a2[1]);
    sub_247FEE84C((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

id sub_247FEF170(void *a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sub_247FF0B44(a1, a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = [v2 localizedDescription];
    sub_2480300A4(v3, v6);
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_247FEF9F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_247FC6AC0(va);
  std::recursive_mutex::unlock((v2 + 104));
  _Unwind_Resume(a1);
}

id sub_247FEFB00(void *a1, int a2)
{
  v2 = sub_247FF0B44(a1, a2);

  return v2;
}

uint64_t sub_247FEFB94(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (result != a2)
  {
    v3 = result;
    do
    {
      sub_247FC6A28(v5, v3 + 16);
      if (!v6)
      {
        sub_247F93BE0();
      }

      (*(*v6 + 48))(v6);
      result = sub_247FC6B34(v5);
      v3 = *(v3 + 8);
    }

    while (v3 != a2);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_247FF019C(uint64_t a1)
{
  [*(a1 + 32) _kernelCallbackNotifyCallblock:4];
  v2 = *(a1 + 32);

  return [v2 _kernelCallbackStop];
}

void sub_247FF04C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v7 + 40));
  _Unwind_Resume(a1);
}

uint64_t sub_247FF04FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  v2 = [WeakRetained _kernelCallbackImpl];

  return v2;
}

void sub_247FF0B00()
{
  v0 = os_log_create("com.apple.dt.Instruments", "dtkpkperfaggregator");
  v1 = qword_27EE84480;
  qword_27EE84480 = v0;
}

id sub_247FF0B44(void *a1, int a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"DTKPKperfAgregator" code:a2 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t sub_247FF0CB0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285A18D70;
  a2[1] = v2;
  return result;
}

uint64_t sub_247FF0CDC(uint64_t a1)
{
  v2 = *(**(a1 + 8) + 40);
  result = kperf_buffer_free();
  *(**(a1 + 8) + 40) = 0;
  return result;
}

uint64_t sub_247FF0D18(uint64_t a1, uint64_t a2)
{
  if (sub_247F93E50(a2, &unk_285A18DD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247FF0DD4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285A18DF0;
  a2[1] = v2;
  return result;
}

uint64_t sub_247FF0E00(uint64_t a1)
{
  result = kperf_sample_off();
  *(**(a1 + 8) + 48) = 0;
  return result;
}

uint64_t sub_247FF0E30(uint64_t a1, uint64_t a2)
{
  if (sub_247F93E50(a2, &unk_285A18E50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247FF0F08(uint64_t a1, uint64_t a2)
{
  if (sub_247F93E50(a2, &unk_285A18ED0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247FF0FC4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285A18EF0;
  a2[1] = v2;
  return result;
}

uint64_t sub_247FF0FF0(uint64_t a1)
{
  result = [**(a1 + 8) _kernelCallbackStop];
  *(**(a1 + 8) + 32) = 0;
  return result;
}

uint64_t sub_247FF1028(uint64_t a1, uint64_t a2)
{
  if (sub_247F93E50(a2, &unk_285A18F50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_247FF11CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = DTGPUAPSCounterSource;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_247FF15E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained pullAndDrainCounters];
  }
}

void sub_247FF1950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_247FCDB30(&a12);

  _Unwind_Resume(a1);
}

void sub_247FF1A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_247FCDB30(&a12);

  _Unwind_Resume(a1);
}

id DVTLaunchHelperProcess(void *a1, int a2, pid_t *a3, int a4, void *a5)
{
  v88 = *MEMORY[0x277D85DE8];
  v9 = a1;
  if (a3)
  {
    *a3 = -1;
  }

  v51 = *MEMORY[0x277D03628];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:DTArchitectureOfProcess(a2)];
  v52 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v12 = [v11 mutableCopy];

  *v85 = 0xE00000001;
  v86 = 1;
  v87 = getpid();
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v50 = 648;
  if (sysctl(v85, 4u, &v53, &v50, 0, 0) || !v50 || (v55 & 0x800) == 0)
  {
    [v12 setObject:&unk_285A36D80 forKeyedSubscript:*MEMORY[0x277D03648]];
  }

  if ((a4 - 1) <= 0xFFFFFFFD)
  {
    if (_dyld_process_info_create())
    {
      platform = _dyld_process_info_get_platform();
      _dyld_process_info_release();
      if (platform == 6)
      {
        [v12 setObject:&unk_285A36D98 forKeyedSubscript:*MEMORY[0x277D03630]];
      }
    }
  }

  *&v53 = 0;
  *(&v53 + 1) = &v53;
  *&v54 = 0x3032000000;
  *(&v54 + 1) = sub_247FF27B8;
  *&v55 = sub_247FF27C8;
  *(&v55 + 1) = 0;
  v49 = 0;
  v43 = MEMORY[0x277D85DD0];
  v44 = 3221225472;
  v45 = sub_247FF27D0;
  v46 = &unk_278EF41C8;
  v48 = a4;
  v47 = &v53;
  v14 = DTXSpawnSubtaskWithError();
  v15 = 0;
  if (!v14)
  {
    if (a5)
    {
      v17 = [v9 lastPathComponent];
      v27 = sub_247FF292C(0, v15, @"Failed to launch %@", v22, v23, v24, v25, v26, v17);
LABEL_23:
      v20 = 0;
      *a5 = v27;
      goto LABEL_28;
    }

LABEL_24:
    v20 = 0;
    goto LABEL_29;
  }

  if (!*(*(&v53 + 1) + 40))
  {
    if (v14 >= 1)
    {
      kill(v14, 9);
    }

    if (a5)
    {
      v17 = [v9 lastPathComponent];
      v27 = sub_247FF292C(1, v15, @"Failed to handshake with %@ (pid: %d)", v28, v29, v30, v31, v32, v17);
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v16 = dispatch_get_global_queue(0, 0);
  v17 = dispatch_source_create(MEMORY[0x277D85D20], v14, 0x80000000uLL, v16);

  if (v17)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_247FF2AB0;
    handler[3] = &unk_278EF2738;
    v42 = &v53;
    v18 = v17;
    v41 = v18;
    dispatch_source_set_event_handler(v18, handler);
    dispatch_activate(v18);
    if (a3)
    {
      *a3 = v14;
    }

    v19 = objc_alloc(MEMORY[0x277D03650]);
    v20 = [v19 initWithTransport:*(*(&v53 + 1) + 40)];
    v21 = v41;
  }

  else
  {
    [*(*(&v53 + 1) + 40) disconnect];
    if (!a5)
    {
      v20 = 0;
      goto LABEL_28;
    }

    v21 = [v9 lastPathComponent];
    sub_247FF292C(2, 0, @"Failed to start observing %@ (pid: %d)", v33, v34, v35, v36, v37, v21);
    *a5 = v20 = 0;
  }

LABEL_28:
LABEL_29:
  _Block_object_dispose(&v53, 8);

  v38 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t sub_247FF27B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_247FF27D0(uint64_t a1, uint64_t a2, int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((a2 - 1) <= 0xFFFFFFFD && (a3 - 1) <= 0xFFFFFFFD)
  {
    v6 = *(a1 + 40);
    *&v16.msgh_voucher_port = 0;
    v17 = 1;
    v19 = 0x13000000000000;
    v16.msgh_remote_port = a2;
    v16.msgh_local_port = 0;
    *&v16.msgh_bits = 0x2880001413;
    v18 = v6;
    v7 = mach_msg_send(&v16);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v9 = getprogname();
        v10 = getpid();
        v11 = mach_error_string(v8);
        *buf = 136315906;
        v21 = v9;
        v22 = 1024;
        v23 = v10;
        v24 = 2080;
        v25 = v11;
        v26 = 1024;
        v27 = v8;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s[%d]: [error] 'mach_msg_send' failed: %s (%d)\n", buf, 0x22u);
      }
    }

    else
    {
      v12 = [MEMORY[0x277D03660] fileDescriptorHandshakeWithSendPort:a2];
      v13 = *(*(a1 + 32) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

id sub_247FF292C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  if (a2)
  {
    v30 = *MEMORY[0x277CCA450];
    v13 = MEMORY[0x277CCACA8];
    v14 = a3;
    v15 = a2;
    v16 = [[v13 alloc] initWithFormat:v14 arguments:&a9];

    v31 = *MEMORY[0x277CCA7E8];
    v32 = v16;
    v33 = v15;
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v32;
    v19 = &v30;
    v20 = 2;
  }

  else
  {
    v28 = *MEMORY[0x277CCA450];
    v21 = MEMORY[0x277CCACA8];
    v22 = a3;
    v23 = 0;
    v16 = [[v21 alloc] initWithFormat:v22 arguments:&a9];

    v29 = v16;
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v29;
    v19 = &v28;
    v20 = 1;
  }

  v24 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:{v20, &a9, v28, v29, v30, v31, v32, v33, v34}];
  v25 = [v11 errorWithDomain:@"DVTLaunchHelperProcess" code:a1 userInfo:v24];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

void sub_247FF2AB0(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) disconnect];
  v2 = *(a1 + 32);

  dispatch_source_cancel(v2);
}

void sub_247FF6574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  sub_247FF8450(&a53);

  _Unwind_Resume(a1);
}

uint64_t sub_247FF687C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 counterIdx];
  if (v6 < [v5 counterIdx])
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void sub_247FF68F4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 name];
  v8 = [v7 isEqualToString:@"GpuTime"];

  if (v8)
  {
    *(*(a1 + 32) + 160) = a3;
    *a4 = 1;
  }
}

uint64_t sub_247FF7118(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v38 = v12;
    v39 = v11;
    v40 = v10;
    v41 = v9;
    v42 = v8;
    v43 = v7;
    v44 = v6;
    v45 = v5;
    v46 = v4;
    v47 = v3;
    v48 = v13;
    v49 = v14;
    v15 = a2;
    v16 = result;
    v17 = &OBJC_IVAR___DTKTraceTapMemo__isSession;
    v18 = &OBJC_IVAR___DTKTraceTapMemo__isSession;
    v19 = &a2[a3];
    do
    {
      do
      {
        v20 = v15;
        v22 = *v15++;
        v21 = v22;
        result = [*(*(v16 + 32) + 96) sampleMarker];
      }

      while (v20 < v19 && v21 != result);
      if (v15 >= v19)
      {
        break;
      }

      v23 = -8;
      v24 = v15;
      do
      {
        v25 = v24;
        v27 = *v24++;
        v26 = v27;
        v28 = [*(*(v16 + 32) + 96) sampleMarker];
        v23 += 8;
      }

      while (v25 < v19 && v26 != v28);
      v29 = v17[557];
      result = [*(*(v16 + 32) + v29) count];
      if (result == v23 >> 3)
      {
        v30 = *(v16 + 32);
        if (*(v30 + v18[551]))
        {
          result = (*(*(v16 + 40) + 16))(*(v16 + 40), v15, [*(v30 + v29) count], v15[*(*(v16 + 32) + 160)], 0, 0, 0);
        }

        else
        {
          v31 = *(v30 + 144);
          v32 = v15[*(v30 + 160)];
          if (v31)
          {
            v33 = v18;
            v34 = (v32 - v31 + 1500000) * *(v30 + 156) / *(v30 + 152);
            v35 = *(v16 + 40);
            v36 = [*(v30 + v29) count];
            v37 = *(*(v16 + 32) + 136) + v34;
            v18 = v33;
            v17 = &OBJC_IVAR___DTKTraceTapMemo__isSession;
            result = (*(v35 + 16))(v35, v15, v36, v37, 0, 0, 0);
          }

          else
          {
            *(v30 + 144) = v32;
          }
        }
      }

      v15 = v24 - 1;
    }

    while (v25 < v19);
  }

  return result;
}

uint64_t sub_247FF83DC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_247FBEFB8(result, a4);
  }

  return result;
}

void sub_247FF8434(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_247FF8450(uint64_t a1)
{
  sub_247FF848C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_247FF848C(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **sub_247FF84D8(void *a1, const void **a2)
{
  v4 = sub_247FF875C(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_247FF8C08(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

unint64_t sub_247FF875C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_247FF879C(&v5, a2, v3);
}

unint64_t sub_247FF879C(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_247FF8B48(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_247FF8A9C(a2, a3);
  }

  else
  {
    return sub_247FF89A4(a2, a3);
  }
}

unint64_t sub_247FF89A4(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_247FF8A9C(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_247FF8B48(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL sub_247FF8C08(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void sub_247FF8C80(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

const void **sub_247FF8CE4(void *a1, const void **a2)
{
  v4 = sub_247FF875C(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_247FF8C08(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_247FFA024(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:CSSymbolOwnerGetPath()];
  v3 = [v2 stringByResolvingSymlinksInPath];

  CSSymbolOwnerGetFlags();
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5 = *(a1 + 32);
  v4 = v3;
  CSSymbolOwnerForeachSegment();
}

void sub_247FFA134(uint64_t a1)
{
  Range = CSRegionGetRange();
  v4 = v3;
  Name = CSRegionGetName();
  v6 = Name;
  if (*(a1 + 64) == 1 && !strncmp(Name, "__LINKEDIT", *(a1 + 56)))
  {
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 32) _annotateRange:Range withPath:v4 type:{@"dyld_shared_cache", @"__LINKEDIT"}];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  else
  {
    v7 = strchr(v6, 32);
    if (v7)
    {
      v8 = v7 - v6;
    }

    else
    {
      v8 = strlen(v6);
    }

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v6 length:v8 encoding:4];
    [*(a1 + 32) _annotateRange:Range withPath:v4 type:{*(a1 + 40), v9}];
  }
}

void sub_247FFB6E0(uint64_t a1)
{
  v2 = +[DTApplicationWorkspaceObserver sharedInstance];
  [v2 unregisterNotificationToken:*(a1 + 32) observer:*(a1 + 40)];
}

void sub_247FFBE28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && [v3 isEqualToString:@"pid"])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_247FFBEBC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void sub_247FFBF1C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && [v3 isEqualToString:@"cid"])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_247FFC06C(void *a1)
{
  objc_begin_catch(a1);
  dispatch_semaphore_signal(*(v1 + 88));
  objc_exception_rethrow();
}

void sub_247FFC7A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -1;
  v4 = objc_opt_new();
  v5 = sysmon_row_get_value();
  value = xpc_uint64_get_value(v5);
  *(v17 + 6) = value;

  v7 = *(*(a1 + 32) + 152);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_247FFC934;
  v12[3] = &unk_278EF4358;
  v8 = v3;
  v13 = v8;
  v9 = v4;
  v14 = v9;
  v15 = &v16;
  [v7 enumerateObjectsUsingBlock:v12];
  if (*(v17 + 6) != -1)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:?];
    v11 = *(*(a1 + 32) + 24);
    if (!v11 || [v11 containsObject:v10])
    {
      [*(a1 + 40) setObject:v9 forKeyedSubscript:v10];
    }
  }

  _Block_object_dispose(&v16, 8);
}

void sub_247FFC914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247FFC934(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 integerValue] & 0x8000000000000000) == 0)
  {
    v4 = a1[4];
    [v3 unsignedIntValue];
    v5 = sysmon_row_get_value();
    v6 = a1[5];
    v7 = sub_247FFCC18(v5);
    [v6 addObject:v7];

LABEL_25:
    goto LABEL_26;
  }

  if (*(*(a1[6] + 8) + 24) == -1)
  {
    goto LABEL_15;
  }

  v8 = [v3 integerValue];
  if (v8 <= -41999)
  {
    if (v8 != -42000)
    {
      if (v8 == -41999)
      {
        v9 = a1[5];
        v10 = *(*(a1[6] + 8) + 24);
        flags[0] = 0;
        v11 = v9;
        if (csops() == -1)
        {
          v12 = 0;
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_20;
      }

LABEL_15:
      v17 = a1[5];
      v5 = [MEMORY[0x277CBEB68] null];
      [v17 addObject:v5];
      goto LABEL_25;
    }

    v18 = a1[5];
    v19 = *(*(a1[6] + 8) + 24);
    v20 = 0xFFFFFFFFLL;
    v28 = -1;
    v27 = 12;
    v15 = v18;
    if (sysctlnametomib("sysctl.proc_cputype", flags, &v27) != -1)
    {
      v21 = v27;
      flags[v27] = v19;
      v26 = 4;
      v27 = v21 + 1;
      if (sysctl(flags, v21 + 1, &v28, &v26, 0, 0) == -1)
      {
        v28 = -1;
      }

      else
      {
        v20 = v28;
      }
    }

    v16 = [MEMORY[0x277CCABB0] numberWithInt:v20];
LABEL_24:
    v5 = v16;
    [v15 addObject:v16];

    goto LABEL_25;
  }

  if (v8 != -41998)
  {
    if (v8 != -41997)
    {
      goto LABEL_15;
    }

    v13 = a1[5];
    v14 = *(*(a1[6] + 8) + 24);
    flags[0] = 0;
    v15 = v13;
    if (proc_get_dirty(v14, flags))
    {
      [MEMORY[0x277CBEB68] null];
    }

    else
    {
      [MEMORY[0x277CCABB0] numberWithBool:(flags[0] & 7) == 3];
    }
    v16 = ;
    goto LABEL_24;
  }

  v22 = a1[5];
  v23 = *(*(a1[6] + 8) + 24);
  v11 = v22;
  v12 = sandbox_check() != 0;
LABEL_20:
  v24 = [MEMORY[0x277CCABB0] numberWithBool:v12];
  [v11 addObject:v24];

LABEL_26:
  v25 = *MEMORY[0x277D85DE8];
}

id sub_247FFCC18(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x24C1C4CD0]();
  if (v2 == MEMORY[0x277D86460])
  {
    v4 = MEMORY[0x277CCABB0];
    value = xpc_date_get_value(v1);
LABEL_15:
    v3 = [v4 numberWithLongLong:value];
    goto LABEL_16;
  }

  if (v2 == MEMORY[0x277D864C8])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:xpc_uint64_get_value(v1)];
    goto LABEL_16;
  }

  if (v2 == MEMORY[0x277D86498])
  {
    v4 = MEMORY[0x277CCABB0];
    value = xpc_int64_get_value(v1);
    goto LABEL_15;
  }

  if (v2 == MEMORY[0x277D864C0])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v1)];
    goto LABEL_16;
  }

  if (v2 == MEMORY[0x277D86448])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithBool:xpc_BOOL_get_value(v1)];
    goto LABEL_16;
  }

  if (v2 == MEMORY[0x277D86470])
  {
    v3 = [MEMORY[0x277CCABB0] numberWithDouble:xpc_double_get_value(v1)];
    goto LABEL_16;
  }

  if (v2 == MEMORY[0x277D864B0])
  {
    goto LABEL_11;
  }

  if (v2 == MEMORY[0x277D86440])
  {
    v8 = objc_opt_new();
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = sub_247FFF238;
    applier[3] = &unk_278EF44B8;
    v6 = v8;
    v14 = v6;
    xpc_array_apply(v1, applier);
    v9 = v14;
  }

  else
  {
    if (v2 != MEMORY[0x277D86468])
    {
      if (v2 == MEMORY[0x277D864D0])
      {
        v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:xpc_uuid_get_bytes(v1)];
        goto LABEL_16;
      }

LABEL_11:
      v3 = [MEMORY[0x277CBEB68] null];
LABEL_16:
      v6 = v3;
      goto LABEL_17;
    }

    v10 = objc_opt_new();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_247FFF27C;
    v11[3] = &unk_278EF44E0;
    v6 = v10;
    v12 = v6;
    xpc_dictionary_apply(v1, v11);
    v9 = v12;
  }

LABEL_17:

  return v6;
}

void sub_247FFCEE0(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) removeObject:v6];
  v3 = [*(a1 + 40) objectForKeyedSubscript:v6];
  v4 = [*(*(a1 + 48) + 112) objectForKeyedSubscript:v6];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    [*(a1 + 40) removeObjectForKey:v6];
  }
}

void sub_247FFD190(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 160);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247FFD24C;
  v6[3] = &unk_278EF43D0;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void sub_247FFD24C(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 integerValue] & 0x8000000000000000) == 0)
  {
    v4 = *(a1 + 32);
    [v3 unsignedIntValue];

    v5 = sysmon_row_get_value();
    v6 = *(a1 + 40);
    v15 = v5;
    v7 = sub_247FFCC18(v5);
    [v6 addObject:v7];

LABEL_9:
    v14 = *MEMORY[0x277D85DE8];

    return;
  }

  v8 = [v3 integerValue];

  v9 = *(a1 + 40);
  if (v8 != -42000)
  {
    v15 = [MEMORY[0x277CBEB68] null];
    [v9 addObject:?];
    goto LABEL_9;
  }

  *v19 = 0x500000002;
  v17 = 0u;
  v18 = 0u;
  v16 = 32;
  v10 = v9;
  if (sysctl(v19, 2u, &v17, &v16, 0, 0))
  {
    v11 = 0;
  }

  else
  {
    v11 = v18;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
  [v10 addObject:v12];

  v13 = *MEMORY[0x277D85DE8];
}

void sub_247FFD6E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -1;
  v4 = objc_opt_new();
  v5 = sysmon_row_get_value();
  value = xpc_uint64_get_value(v5);
  v17[3] = value;

  v7 = *(*(a1 + 32) + 168);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_247FFD858;
  v12[3] = &unk_278EF4358;
  v8 = v3;
  v13 = v8;
  v9 = v4;
  v14 = v9;
  v15 = &v16;
  [v7 enumerateObjectsUsingBlock:v12];
  if (v17[3] != -1)
  {
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    [v10 setObject:v9 forKeyedSubscript:v11];
  }

  _Block_object_dispose(&v16, 8);
}

void sub_247FFD83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247FFD858(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 integerValue] < 0)
  {
    v7 = *(a1 + 40);
    v4 = [MEMORY[0x277CBEB68] null];
    [v7 addObject:v4];
  }

  else
  {
    v3 = *(a1 + 32);
    [v8 unsignedIntValue];
    v4 = sysmon_row_get_value();
    v5 = *(a1 + 40);
    v6 = sub_247FFCC18(v4);
    [v5 addObject:v6];
  }
}

void sub_247FFD918(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) removeObject:v6];
  v3 = [*(*(a1 + 40) + 120) objectForKeyedSubscript:v6];
  v4 = [*(a1 + 48) objectForKeyedSubscript:v6];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    [*(a1 + 48) removeObjectForKey:v6];
  }
}

void sub_247FFE674(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (!v3)
  {
    sub_248030280();
  }

  v4 = v3;
  [*(a1 + 40) addObject:v3];
}

void sub_247FFE6E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = mach_absolute_time();
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FFE78C;
  block[3] = &unk_278EF2A50;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t sub_247FFE78C(uint64_t a1)
{
  result = [*(a1 + 32) _handleSysmonProcessTable:*(a1 + 40) startTime:*(*(a1 + 32) + 200) endTime:*(a1 + 48)];
  *(*(a1 + 32) + 200) = *(a1 + 48) + 1;
  return result;
}

void sub_247FFE7CC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 integerValue] & 0x8000000000000000) == 0)
  {
    v3 = *(*(a1 + 32) + 176);
    [v4 unsignedIntValue];
    sysmon_request_add_attribute();
  }
}

void sub_247FFE834(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (!v3)
  {
    sub_2480302AC();
  }

  v4 = v3;
  [*(a1 + 40) addObject:v3];
}

void sub_247FFE8A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = mach_absolute_time();
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FFE94C;
  block[3] = &unk_278EF2A50;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t sub_247FFE94C(uint64_t a1)
{
  result = [*(a1 + 32) _handleSysmonSystemTable:*(a1 + 40) startTime:*(*(a1 + 32) + 208) endTime:*(a1 + 48)];
  *(*(a1 + 32) + 208) = *(a1 + 48) + 1;
  return result;
}

void sub_247FFE98C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 integerValue] & 0x8000000000000000) == 0)
  {
    v3 = *(*(a1 + 32) + 184);
    [v4 unsignedIntValue];
    sysmon_request_add_attribute();
  }
}

void sub_247FFE9F4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (!v3)
  {
    sub_2480302D8();
  }

  v4 = v3;
  [*(a1 + 40) addObject:v3];
}

void sub_247FFEA64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = mach_absolute_time();
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FFEB0C;
  block[3] = &unk_278EF2A50;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t sub_247FFEB0C(uint64_t a1)
{
  result = [*(a1 + 32) _handleSysmonCoalitionTable:*(a1 + 40) startTime:*(*(a1 + 32) + 216) endTime:*(a1 + 48)];
  *(*(a1 + 32) + 216) = *(a1 + 48) + 1;
  return result;
}

void sub_247FFEB4C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 integerValue] & 0x8000000000000000) == 0)
  {
    v3 = *(*(a1 + 32) + 192);
    [v4 unsignedIntValue];
    sysmon_request_add_attribute();
  }
}

void sub_247FFEBB4(uint64_t a1)
{
  v2 = mach_absolute_time();
  v6 = objc_opt_new();
  [v6 setObject:&unk_285A36EA0 forKeyedSubscript:@"Type"];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(a1 + 32) + 208)];
  [v6 setObject:v3 forKeyedSubscript:@"StartMachAbsTime"];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v2];
  [v6 setObject:v4 forKeyedSubscript:@"EndMachAbsTime"];

  *(*(a1 + 32) + 208) = v2 + 1;
  [*(a1 + 32) _addCPUUsageToSample:v6];
  [*(a1 + 32) _addSample:v6];
  v5 = *(a1 + 32);
  if (*(v5 + 32) == 1 && *(v5 + 48) + *(v5 + 40) < v2)
  {
    [v5 _purgeOldSamplesForCurrentTime:v2];
  }
}

void sub_247FFF040(void *a1)
{
  objc_begin_catch(a1);
  dispatch_semaphore_signal(*(v1 + 88));
  objc_exception_rethrow();
}

uint64_t sub_247FFF088(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"EndMachAbsTime"];
  v6 = [v5 unsignedLongLongValue];

  v7 = [v4 objectForKeyedSubscript:@"EndMachAbsTime"];

  v8 = [v7 unsignedLongLongValue];
  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return v6 < v8;
  }
}

uint64_t sub_247FFF238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = sub_247FFCC18(a3);
  [v3 addObject:v4];

  return 1;
}

uint64_t sub_247FFF27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_247FFCC18(a3);
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  [v6 setObject:v5 forKeyedSubscript:v7];

  return 1;
}

id DTUVPreviewServiceLog()
{
  if (qword_27EE84498 != -1)
  {
    sub_248030304();
  }

  v1 = qword_27EE84490;

  return v1;
}

void sub_247FFF334()
{
  v0 = os_log_create("com.apple.dt.Previews", "Service");
  v1 = qword_27EE84490;
  qword_27EE84490 = v0;
}

id sub_247FFF4F0(void *a1)
{
  v107 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v71 = v1;
  CFProperty = IORegistryEntryCreateCFProperty([v1 acceleratorPort], @"MetalPluginName", 0, 0);
  v77 = IORegistryEntryCreateCFProperty([v1 acceleratorPort], @"MetalStatisticsName", 0, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v77;
    if ([v2 count])
    {
      v81 = [v2 objectAtIndexedSubscript:0];
    }

    else
    {
      v81 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_9:
      v81 = @"MetalStatistics";
      goto LABEL_10;
    }

    v81 = v77;
  }

  if (!v81)
  {
    goto LABEL_9;
  }

LABEL_10:
  v72 = GRCCopyAllCounterSourceGroup();
  if (![v72 count])
  {
    goto LABEL_14;
  }

  v3 = [v72 firstObject];
  v4 = MEMORY[0x277CBEB38];
  v5 = [v3 features];
  v6 = [v5 objectForKeyedSubscript:@"ConstantAGX_CoreConfig"];
  v7 = [v4 dictionaryWithDictionary:v6];

  if (v7)
  {
    v78 = v7;
    if ([v7 count])
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_14:
    v78 = 0;
  }

  v8 = MEMORY[0x277CBEB38];
  v9 = IORegistryEntryCreateCFProperty([v1 acceleratorPort], @"GPUConfigurationVariable", 0, 0);
  v10 = [v8 dictionaryWithDictionary:v9];

  v78 = v10;
LABEL_16:
  GRCReleaseAllCounterSourceGroup();
  if (v78)
  {
    v11 = [v78 objectForKeyedSubscript:@"core_mask_list"];
    v12 = objc_opt_new();
    if (v11 && [v11 count])
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v13 = v11;
      v14 = 0;
      v15 = [v13 countByEnumeratingWithState:&v96 objects:v106 count:16];
      if (v15)
      {
        v16 = *v97;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v97 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18.i32[0] = [*(*(&v96 + 1) + 8 * i) unsignedIntValue];
            v19 = vcnt_s8(v18);
            v19.i16[0] = vaddlv_u8(v19);
            v20 = v19.i32[0];
            v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19.u32[0]];
            [v12 addObject:v21];

            v14 = (v20 + v14);
          }

          v15 = [v13 countByEnumeratingWithState:&v96 objects:v106 count:16];
        }

        while (v15);
      }

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v14];
      [v78 setObject:v22 forKeyedSubscript:@"num_cores"];

      [v78 setObject:v12 forKeyedSubscript:@"num_cores_per_ringbuffer"];
    }

    v1 = v71;
  }

  v23 = IORegistryEntryCreateCFProperty([v1 acceleratorPort], @"AGXInternalPerfCounterResourcesPath", 0, 0);
  v24 = v23;
  v25 = @"/AppleInternal/Library/AGX/Performance";
  if (v23)
  {
    v25 = v23;
  }

  v73 = v25;
  v69 = v24;
  v26 = [(__CFString *)v73 stringByAppendingPathComponent:CFProperty];
  v105[0] = v26;
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Extensions/%@.bundle", CFProperty];
  v105[1] = v27;
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Extensions/%@.bundle/Contents/Resources", CFProperty];
  v105[2] = v28;
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:3];

  v83 = [MEMORY[0x277CCAA00] defaultManager];
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = v70;
  v29 = 0;
  v30 = 0;
  v31 = [obj countByEnumeratingWithState:&v92 objects:v104 count:16];
  if (v31)
  {
    v32 = *v93;
    while (2)
    {
      v33 = 0;
      v34 = v29;
      v35 = v30;
      do
      {
        if (*v93 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v36 = [*(*(&v92 + 1) + 8 * v33) stringByAppendingPathComponent:v81];
        v37 = [v36 stringByAppendingString:@"-counters.plist"];

        v38 = v37;
        v39 = [v36 stringByAppendingString:@"-derived.js"];

        v40 = v39;
        if ([v83 fileExistsAtPath:v38] && (objc_msgSend(v83, "fileExistsAtPath:", v39) & 1) != 0)
        {
          v29 = v39;
          v30 = v38;
LABEL_43:

          goto LABEL_44;
        }

        v30 = [v38 stringByReplacingOccurrencesOfString:@"AGXMetalStatistics" withString:@"AGXMetalStatisticsExternal"];

        v29 = [v40 stringByReplacingOccurrencesOfString:@"AGXMetalStatistics" withString:@"AGXMetalStatisticsExternal"];

        if ([v83 fileExistsAtPath:v30] && objc_msgSend(v83, "fileExistsAtPath:", v29))
        {
          goto LABEL_43;
        }

        ++v33;
        v34 = v29;
        v35 = v30;
      }

      while (v31 != v33);
      v31 = [obj countByEnumeratingWithState:&v92 objects:v104 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

LABEL_44:
  v74 = v29;
  v76 = v30;

  v41 = objc_opt_new();
  v42 = 50000;
  if (v30 && v29)
  {
    if ([v83 fileExistsAtPath:v30] && objc_msgSend(v83, "fileExistsAtPath:", v29))
    {
      v66 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v30];
      v68 = [v66 objectForKeyedSubscript:@"Instruments"];
      v43 = [v68 objectForKeyedSubscript:@"DefaultSamplingInterval"];
      v44 = [v43 unsignedIntegerValue];

      v45 = 50;
      if (v44 > 0x32)
      {
        v45 = v44;
      }

      v65 = v45;
      [v68 objectForKeyedSubscript:@"Profiles"];
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v67 = v89 = 0u;
      v46 = [v67 allValues];
      v80 = v46;
      v47 = [v46 countByEnumeratingWithState:&v88 objects:v103 count:16];
      if (v47)
      {
        v82 = *v89;
        do
        {
          for (j = 0; j != v47; ++j)
          {
            if (*v89 != v82)
            {
              objc_enumerationMutation(v80);
            }

            v49 = [*(*(&v88 + 1) + 8 * j) objectForKeyedSubscript:@"RawCounterWidth"];
            v50 = v49;
            if (v49)
            {
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v51 = [v49 allKeys];
              v52 = [v51 countByEnumeratingWithState:&v84 objects:v102 count:16];
              if (v52)
              {
                v53 = *v85;
                do
                {
                  for (k = 0; k != v52; ++k)
                  {
                    if (*v85 != v53)
                    {
                      objc_enumerationMutation(v51);
                    }

                    v55 = *(*(&v84 + 1) + 8 * k);
                    v56 = [v50 objectForKeyedSubscript:v55];
                    [v41 setObject:v56 forKeyedSubscript:v55];
                  }

                  v52 = [v51 countByEnumeratingWithState:&v84 objects:v102 count:16];
                }

                while (v52);
              }
            }
          }

          v46 = v80;
          v47 = [v80 countByEnumeratingWithState:&v88 objects:v103 count:16];
        }

        while (v47);
      }

      v42 = 1000 * v65;
    }

    else
    {
      v42 = 50000;
    }
  }

  v57 = [(__CFString *)v73 stringByAppendingPathComponent:@"../AGXRawCounterMapping.csv"];
  if (v57)
  {
    v58 = &stru_285A19CB8;
    v59 = [MEMORY[0x277CCAA00] defaultManager];
    v60 = [v59 fileExistsAtPath:v57];

    if (v60)
    {
      v58 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v57 encoding:4 error:0];
    }
  }

  else
  {
    v58 = &stru_285A19CB8;
  }

  v100[0] = @"GPUConfigurationVariables";
  v100[1] = @"RawCounterWidth";
  v101[0] = v78;
  v101[1] = v41;
  v100[2] = @"RDESampleInterval";
  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v42];
  v100[3] = @"CounterMapping";
  v101[2] = v61;
  v101[3] = v58;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:4];

  v63 = *MEMORY[0x277D85DE8];

  return v62;
}

void sub_2480007C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  sub_24800277C(&a42);
  sub_24800277C(&a51);
  sub_247FF8450(&a60);

  _Unwind_Resume(a1);
}

char *sub_24800158C(void *a1, char *__src, void *a3, void *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if (a5 <= (v10 - v9) >> 3)
  {
    v16 = (v9 - __src) >> 3;
    if (v16 >= a5)
    {
      v21 = &__src[8 * a5];
      v22 = &v9[-8 * a5];
      v23 = a1[1];
      while (v22 < v9)
      {
        v24 = *v22;
        v22 += 8;
        *v23++ = v24;
      }

      a1[1] = v23;
      if (v9 != v21)
      {
        memmove(&__src[8 * a5], __src, v9 - v21);
      }

      *__src = v7[2];
      if (a5 != 1)
      {
        v25 = __src + 8;
        v26 = a5 + 1;
        do
        {
          v7 = *v7;
          *v25++ = v7[2];
          --v26;
        }

        while (v26 > 2);
      }
    }

    else
    {
      v17 = a3;
      if (v16 >= 1)
      {
        v18 = v16 + 1;
        v17 = a3;
        do
        {
          v17 = *v17;
          --v18;
        }

        while (v18 > 1);
      }

      v19 = a1[1];
      if (v17 == a4)
      {
        v20 = a1[1];
      }

      else
      {
        v35 = v17;
        v20 = a1[1];
        do
        {
          *v20 = v35[2];
          v20 += 8;
          v35 = *v35;
          ++v19;
        }

        while (v35 != a4);
      }

      a1[1] = v19;
      if (v16 >= 1)
      {
        v36 = &__src[8 * a5];
        v37 = &v19[-a5];
        v38 = v19;
        while (v37 < v9)
        {
          v39 = *v37;
          v37 += 8;
          *v38++ = v39;
        }

        a1[1] = v38;
        if (v20 != v36)
        {
          memmove(&__src[8 * a5], __src, v19 - v36);
        }

        if (v17 != v7)
        {
          v40 = __src;
          do
          {
            *v40++ = v7[2];
            v7 = *v7;
          }

          while (v7 != v17);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + (&v9[-*a1] >> 3);
  if (v12 >> 61)
  {
    sub_247F85814();
  }

  v13 = __src - v11;
  v14 = v10 - v11;
  if (v14 >> 2 > v12)
  {
    v12 = v14 >> 2;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    v15 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    sub_247FBEC9C(a1, v15);
  }

  v27 = 8 * (v13 >> 3);
  v28 = 8 * a5;
  v29 = v27;
  do
  {
    *v29++ = v7[2];
    v7 = *v7;
    v28 -= 8;
  }

  while (v28);
  memcpy((v27 + 8 * a5), __src, a1[1] - __src);
  v30 = *a1;
  v31 = v27 + 8 * a5 + a1[1] - __src;
  a1[1] = __src;
  v32 = (__src - v30);
  v33 = (v27 - (__src - v30));
  memcpy(v33, v30, v32);
  v34 = *a1;
  *a1 = v33;
  a1[1] = v31;
  a1[2] = 0;
  if (v34)
  {
    operator delete(v34);
  }

  return v27;
}

unint64_t sub_2480017F0(unint64_t result, unint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v70 = *(a2 - 1);
        v71 = *v8;
        if (v70 < *v8)
        {
          *v8 = v70;
          *(a2 - 1) = v71;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v75 = v8 + 1;
      v76 = v8[1];
      v77 = v8 + 2;
      v78 = v8[2];
      v79 = *v8;
      if (v76 >= *v8)
      {
        if (v78 >= v76)
        {
          goto LABEL_185;
        }

        *v75 = v78;
        *v77 = v76;
        v80 = v8;
        v81 = v8 + 1;
        result = v76;
        if (v78 < v79)
        {
          goto LABEL_178;
        }
      }

      else
      {
        v80 = v8;
        v81 = v8 + 2;
        result = *v8;
        if (v78 >= v76)
        {
          *v8 = v76;
          v8[1] = v79;
          v80 = v8 + 1;
          v81 = v8 + 2;
          result = v79;
          if (v78 >= v79)
          {
LABEL_185:
            v76 = v78;
            goto LABEL_186;
          }
        }

LABEL_178:
        *v80 = v78;
        *v81 = v79;
        v76 = result;
      }

LABEL_186:
      v126 = *(a2 - 1);
      if (v126 < v76)
      {
        *v77 = v126;
        *(a2 - 1) = v76;
        v127 = *v77;
        v128 = *v75;
        if (v127 < v128)
        {
          v8[1] = v127;
          v8[2] = v128;
          v129 = *v8;
          if (v127 < *v8)
          {
            *v8 = v127;
            v8[1] = v129;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {
      v61 = v8 + 1;
      v62 = v8[1];
      v64 = v8 + 2;
      v63 = v8[2];
      v65 = *v8;
      if (v62 >= *v8)
      {
        if (v63 >= v62)
        {
          v68 = *v8;
          v65 = v8[1];
        }

        else
        {
          v66 = v8;
          v67 = v8 + 1;
          *v61 = v63;
          *v64 = v62;
          v68 = v63;
          result = v65;
          v69 = v62;
          if (v63 < v65)
          {
            goto LABEL_191;
          }

          v68 = v65;
          v65 = v63;
          v63 = v62;
        }
      }

      else
      {
        if (v63 < v62)
        {
          v66 = v8;
          v67 = v8 + 2;
          v68 = v8[2];
          result = v8[1];
          v69 = *v8;
          goto LABEL_191;
        }

        v66 = v8 + 1;
        v67 = v8 + 2;
        *v8 = v62;
        v8[1] = v65;
        v68 = v62;
        result = v63;
        v69 = v65;
        if (v63 >= v65)
        {
          v68 = v62;
        }

        else
        {
LABEL_191:
          *v66 = v63;
          *v67 = v65;
          v65 = result;
          v63 = v69;
        }
      }

      v131 = v8[3];
      if (v131 >= v63)
      {
        v63 = v8[3];
      }

      else
      {
        v8[2] = v131;
        v8[3] = v63;
        if (v131 < v65)
        {
          *v61 = v131;
          *v64 = v65;
          if (v131 < v68)
          {
            *v8 = v131;
            v8[1] = v68;
          }
        }
      }

      v132 = *(a2 - 1);
      if (v132 >= v63)
      {
        return result;
      }

      v8[3] = v132;
      *(a2 - 1) = v63;
      v133 = v8[2];
      v123 = v8[3];
      if (v123 >= v133)
      {
        return result;
      }

      v8[2] = v123;
      v8[3] = v133;
      v134 = v8[1];
      if (v123 >= v134)
      {
        return result;
      }

      v8[1] = v123;
      v8[2] = v134;
LABEL_206:
      v135 = *v8;
      if (v123 < *v8)
      {
        *v8 = v123;
        v8[1] = v135;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v82 = v8 + 1;
      v84 = v8 == a2 || v82 == a2;
      if (a4)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v8;
          do
          {
            v88 = *v86;
            v87 = v86[1];
            v86 = v82;
            if (v87 < v88)
            {
              v89 = v85;
              while (1)
              {
                *(v8 + v89 + 8) = v88;
                if (!v89)
                {
                  break;
                }

                v88 = *(v8 + v89 - 8);
                v89 -= 8;
                if (v87 >= v88)
                {
                  v90 = (v8 + v89 + 8);
                  goto LABEL_129;
                }
              }

              v90 = v8;
LABEL_129:
              *v90 = v87;
            }

            v82 = v86 + 1;
            v85 += 8;
          }

          while (v86 + 1 != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v125 = *v7;
          v124 = v7[1];
          v7 = v82;
          if (v124 < v125)
          {
            do
            {
              *v82 = v125;
              v125 = *(v82 - 2);
              --v82;
            }

            while (v124 < v125);
            *v82 = v124;
          }

          v82 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v91 = (v9 - 2) >> 1;
        v92 = v91;
        do
        {
          v93 = v92;
          if (v91 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = &v8[v94];
            v96 = *v95;
            if (2 * v93 + 2 < v9)
            {
              v97 = v95[1];
              v98 = v96 >= v97;
              if (v96 <= v97)
              {
                v96 = v95[1];
              }

              if (!v98)
              {
                ++v95;
                v94 = 2 * v93 + 2;
              }
            }

            v99 = &v8[v93];
            v100 = *v99;
            if (v96 >= *v99)
            {
              do
              {
                v101 = v95;
                *v99 = v96;
                if (v91 < v94)
                {
                  break;
                }

                v102 = (2 * v94) | 1;
                v95 = &v8[v102];
                v94 = 2 * v94 + 2;
                v96 = *v95;
                if (v94 >= v9)
                {
                  v94 = v102;
                }

                else
                {
                  result = v95[1];
                  v103 = v96 >= result;
                  if (v96 <= result)
                  {
                    v96 = v95[1];
                  }

                  if (v103)
                  {
                    v94 = v102;
                  }

                  else
                  {
                    ++v95;
                  }
                }

                v99 = v101;
              }

              while (v96 >= v100);
              *v101 = v100;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        do
        {
          v104 = 0;
          v105 = *v8;
          v106 = v8;
          do
          {
            v107 = &v106[v104];
            v108 = v107 + 1;
            v109 = v107[1];
            v110 = (2 * v104) | 1;
            v104 = 2 * v104 + 2;
            if (v104 >= v9)
            {
              v104 = v110;
            }

            else
            {
              v113 = v107[2];
              v111 = v107 + 2;
              v112 = v113;
              v114 = v109 >= v113;
              if (v109 <= v113)
              {
                v109 = v112;
              }

              if (v114)
              {
                v104 = v110;
              }

              else
              {
                v108 = v111;
              }
            }

            *v106 = v109;
            v106 = v108;
          }

          while (v104 <= ((v9 - 2) >> 1));
          if (v108 == --a2)
          {
            *v108 = v105;
          }

          else
          {
            *v108 = *a2;
            *a2 = v105;
            v115 = (v108 - v8 + 8) >> 3;
            v116 = v115 < 2;
            v117 = v115 - 2;
            if (!v116)
            {
              v118 = v117 >> 1;
              v119 = &v8[v118];
              v120 = *v119;
              v121 = *v108;
              if (*v119 < *v108)
              {
                do
                {
                  v122 = v119;
                  *v108 = v120;
                  if (!v118)
                  {
                    break;
                  }

                  v118 = (v118 - 1) >> 1;
                  v119 = &v8[v118];
                  v120 = *v119;
                  v108 = v122;
                }

                while (*v119 < v121);
                *v122 = v121;
              }
            }
          }

          v116 = v9-- <= 2;
        }

        while (!v116);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      v14 = *v8;
      if (*v10 >= *v8)
      {
        if (v12 < v13)
        {
          *v10 = v12;
          *(a2 - 1) = v13;
          v17 = *v8;
          if (*v10 < *v8)
          {
            *v8 = *v10;
            *v10 = v17;
          }
        }
      }

      else
      {
        if (v12 < v13)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v13;
        *v10 = v14;
        v19 = *(a2 - 1);
        if (v19 < v14)
        {
          *v10 = v19;
LABEL_27:
          *(a2 - 1) = v14;
        }
      }

      v20 = v10 - 1;
      v21 = *(v10 - 1);
      v22 = v8[1];
      v23 = *(a2 - 2);
      if (v21 >= v22)
      {
        if (v23 < v21)
        {
          *v20 = v23;
          *(a2 - 2) = v21;
          v24 = v8[1];
          if (*v20 < v24)
          {
            v8[1] = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v23 < v21)
        {
          v8[1] = v23;
          goto LABEL_39;
        }

        v8[1] = v21;
        *v20 = v22;
        v26 = *(a2 - 2);
        if (v26 < v22)
        {
          *v20 = v26;
LABEL_39:
          *(a2 - 2) = v22;
        }
      }

      v29 = v10[1];
      v27 = v10 + 1;
      v28 = v29;
      v30 = v8[2];
      v31 = *(a2 - 3);
      if (v29 >= v30)
      {
        if (v31 < v28)
        {
          *v27 = v31;
          *(a2 - 3) = v28;
          v32 = v8[2];
          if (*v27 < v32)
          {
            v8[2] = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[2] = v31;
          goto LABEL_48;
        }

        v8[2] = v28;
        *v27 = v30;
        v33 = *(a2 - 3);
        if (v33 < v30)
        {
          *v27 = v33;
LABEL_48:
          *(a2 - 3) = v30;
        }
      }

      v34 = *v11;
      v35 = *v20;
      v36 = *v27;
      if (*v11 >= *v20)
      {
        if (v36 >= v34)
        {
          goto LABEL_56;
        }

        *v11 = v36;
        *v27 = v34;
        v27 = v11;
        v34 = v35;
        if (v36 >= v35)
        {
          v34 = v36;
          goto LABEL_56;
        }
      }

      else if (v36 >= v34)
      {
        *v20 = v34;
        *v11 = v35;
        v20 = v11;
        v34 = v36;
        if (v36 >= v35)
        {
          v34 = v35;
LABEL_56:
          v37 = *v8;
          *v8 = v34;
          *v11 = v37;
          goto LABEL_57;
        }
      }

      *v20 = v36;
      *v27 = v35;
      goto LABEL_56;
    }

    v15 = *v8;
    v16 = *v11;
    if (*v8 >= *v11)
    {
      if (v12 < v15)
      {
        *v8 = v12;
        *(a2 - 1) = v15;
        v18 = *v11;
        if (*v8 < *v11)
        {
          *v11 = *v8;
          *v8 = v18;
        }
      }

      goto LABEL_57;
    }

    if (v12 >= v15)
    {
      *v11 = v15;
      *v8 = v16;
      v25 = *(a2 - 1);
      if (v25 >= v16)
      {
        goto LABEL_57;
      }

      *v8 = v25;
    }

    else
    {
      *v11 = v12;
    }

    *(a2 - 1) = v16;
LABEL_57:
    --a3;
    v38 = *v8;
    if ((a4 & 1) != 0 || *(v8 - 1) < v38)
    {
      v39 = 0;
      do
      {
        v40 = v8[++v39];
      }

      while (v40 < v38);
      v41 = &v8[v39];
      v42 = a2;
      if (v39 == 1)
      {
        v42 = a2;
        do
        {
          if (v41 >= v42)
          {
            break;
          }

          v44 = *--v42;
        }

        while (v44 >= v38);
      }

      else
      {
        do
        {
          v43 = *--v42;
        }

        while (v43 >= v38);
      }

      if (v41 >= v42)
      {
        v50 = v41 - 1;
      }

      else
      {
        v45 = *v42;
        v46 = &v8[v39];
        v47 = v42;
        do
        {
          *v46 = v45;
          *v47 = v40;
          do
          {
            v48 = v46[1];
            ++v46;
            v40 = v48;
          }

          while (v48 < v38);
          do
          {
            v49 = *--v47;
            v45 = v49;
          }

          while (v49 >= v38);
        }

        while (v46 < v47);
        v50 = v46 - 1;
      }

      if (v50 != v8)
      {
        *v8 = *v50;
      }

      *v50 = v38;
      if (v41 < v42)
      {
        goto LABEL_80;
      }

      v51 = sub_24800216C(v8, v50);
      v8 = v50 + 1;
      result = sub_24800216C(v50 + 1, a2);
      if (result)
      {
        a2 = v50;
        if (!v51)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v51)
      {
LABEL_80:
        result = sub_2480017F0(v7, v50, a3, a4 & 1);
        a4 = 0;
        v8 = v50 + 1;
      }
    }

    else
    {
      if (v38 >= *(a2 - 1))
      {
        v53 = v8 + 1;
        do
        {
          v8 = v53;
          if (v53 >= a2)
          {
            break;
          }

          ++v53;
        }

        while (v38 >= *v8);
      }

      else
      {
        do
        {
          v52 = v8[1];
          ++v8;
        }

        while (v38 >= v52);
      }

      v54 = a2;
      if (v8 < a2)
      {
        v54 = a2;
        do
        {
          v55 = *--v54;
        }

        while (v38 < v55);
      }

      if (v8 < v54)
      {
        v56 = *v8;
        v57 = *v54;
        do
        {
          *v8 = v57;
          *v54 = v56;
          do
          {
            v58 = v8[1];
            ++v8;
            v56 = v58;
          }

          while (v38 >= v58);
          do
          {
            v59 = *--v54;
            v57 = v59;
          }

          while (v38 < v59);
        }

        while (v8 < v54);
      }

      v60 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v60;
      }

      a4 = 0;
      *v60 = v38;
    }
  }

  v72 = *v8;
  v73 = v8[1];
  v74 = *(a2 - 1);
  if (v73 >= *v8)
  {
    if (v74 >= v73)
    {
      return result;
    }

    v8[1] = v74;
    *(a2 - 1) = v73;
    v123 = v8[1];
    goto LABEL_206;
  }

  if (v74 >= v73)
  {
    *v8 = v73;
    v8[1] = v72;
    v130 = *(a2 - 1);
    if (v130 >= v72)
    {
      return result;
    }

    v8[1] = v130;
  }

  else
  {
    *v8 = v74;
  }

  *(a2 - 1) = v72;
  return result;
}

BOOL sub_24800216C(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v46 = *(a2 - 1);
          if (v46 >= v16)
          {
            return 1;
          }

          a1[1] = v46;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_68:
      v51 = *a1;
      if (v33 < *a1)
      {
        *a1 = v33;
        a1[1] = v51;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v47 = a1[3];
          if (v47 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v47;
            a1[3] = v6;
            if (v47 < v8)
            {
              *v4 = v47;
              *v7 = v8;
              if (v47 < v11)
              {
                *a1 = v47;
                a1[1] = v11;
              }
            }
          }

          v48 = *(a2 - 1);
          if (v48 >= v6)
          {
            return 1;
          }

          a1[3] = v48;
          *(a2 - 1) = v6;
          v49 = a1[2];
          v33 = a1[3];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v49;
          v50 = a1[1];
          if (v33 >= v50)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v50;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 < v26)
        {
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 < v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v45 = *a1;
            if (v43 < *a1)
            {
              *a1 = v43;
              a1[1] = v45;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 24; ; i += 8)
  {
    v37 = *v34;
    v38 = *v20;
    if (*v34 < v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v38 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v37 >= v38)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v20 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

const void **sub_248002504(void *a1, const void **a2)
{
  v4 = sub_247FF875C(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_247FF8C08(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_24800277C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_2480027C8(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

id DTUVMakeServiceMessage(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (qword_27EE844B0 == -1)
  {
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_248030318();
  if (a4)
  {
LABEL_3:
    *a4 = qword_27EE844A8;
  }

LABEL_4:
  v10 = [[qword_27EE844A0 alloc] initWithMessageType:v7 payload:v8 replyHandler:v9];

  return v10;
}

void sub_248002AAC()
{
  v15 = 0;
  v0 = sub_248002B64(&v15);
  v1 = v15;
  v2 = v1;
  if ((v0 & 1) == 0)
  {
    v13 = v1;
    v12 = qword_27EE844A8;
    qword_27EE844A8 = v13;
LABEL_6:

    goto LABEL_7;
  }

  qword_27EE844A0 = NSClassFromString(&cfstr_Uvservicehubme.isa);
  if (!qword_27EE844A0)
  {
    v10 = DTUVServiceError(@"No class named 'UVServiceHubMessage' after loading PreviewsOSSupport.", v3, v4, v5, v6, v7, v8, v9, v14);
    v11 = qword_27EE844A8;
    qword_27EE844A8 = v10;

    v12 = DTUVPreviewServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_24803032C();
    }

    goto LABEL_6;
  }

LABEL_7:
}

uint64_t sub_248002B64(void *a1)
{
  if (qword_27EE844F0 != -1)
  {
    sub_2480303BC();
    if (!a1)
    {
      return byte_27EE844E0;
    }

    goto LABEL_3;
  }

  if (a1)
  {
LABEL_3:
    *a1 = qword_27EE844E8;
  }

  return byte_27EE844E0;
}

id DTUVSharedServiceFactory(void *a1)
{
  if (qword_27EE844C8 == -1)
  {
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_2480303D0();
  if (a1)
  {
LABEL_3:
    *a1 = qword_27EE844C0;
  }

LABEL_4:
  v2 = qword_27EE844B8;

  return v2;
}

void sub_248002C24()
{
  v17 = 0;
  v0 = sub_248002B64(&v17);
  v1 = v17;
  v2 = v1;
  if (v0)
  {
    v3 = NSClassFromString(&cfstr_Uvservicehubse.isa);
    if (v3)
    {
      v11 = objc_alloc_init(v3);
      v12 = qword_27EE844B8;
      qword_27EE844B8 = v11;
    }

    else
    {
      v14 = DTUVServiceError(@"No class named 'UVServiceHubServiceFactory' after loading PreviewsOSSupport.", v4, v5, v6, v7, v8, v9, v10, v16);
      v15 = qword_27EE844C0;
      qword_27EE844C0 = v14;

      v12 = DTUVPreviewServiceLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_2480303E4();
      }
    }
  }

  else
  {
    v13 = v1;
    v12 = qword_27EE844C0;
    qword_27EE844C0 = v13;
  }
}

void DTUVLaunchPreviewShell(void *a1)
{
  v1 = qword_27EE844D8;
  v2 = a1;
  v4 = v2;
  if (v1 == -1)
  {
    v3 = v2;
  }

  else
  {
    sub_248030474();
    v3 = v4;
  }

  [qword_27EE844D0 launchWithCompletion:v3];
}

void sub_248002D5C()
{
  v0 = objc_alloc_init(_ShellLauncher);
  v1 = qword_27EE844D0;
  qword_27EE844D0 = v0;
}

void sub_2480031A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = DTUVPreviewServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_248030488(a1, v3, v4);
  }

  if (*(a1 + 40) < 1)
  {
    v15 = DTUVServiceError(@"failed to launch preview shell: %@", v5, v6, v7, v8, v9, v10, v11, v3);
    [*(a1 + 32) _queue_completeWithPid:0 error:v15];
  }

  else
  {
    v12 = dispatch_time(0, 1000000000);
    v13 = *(a1 + 32);
    v14 = *(v13 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2480032C0;
    block[3] = &unk_278EF1260;
    block[4] = v13;
    v17 = *(a1 + 40);
    dispatch_after(v12, v14, block);
  }
}

void sub_2480032D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2480033B0;
  v12[3] = &unk_278EF4530;
  v13 = v5;
  v14 = v6;
  v15 = v8;
  v16 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

uint64_t sub_2480033B0(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5] == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v6 = a1[6];
    v7 = [v2 pid];

    return [v6 _queue_completeWithPid:v7 error:0];
  }

  else
  {
    v4 = *(a1[7] + 16);

    return v4();
  }
}

void sub_248003588()
{
  if (qword_27EE84500 != -1)
  {
    sub_248030514();
  }

  v0 = [qword_27EE844F8 UTF8String];
  if (dlopen_preflight(v0))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_248003694;
    block[3] = &unk_278EF2AE8;
    block[4] = v0;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    byte_27EE844E0 = 1;
  }

  else
  {
    v8 = DTUVServiceError(@"Unable to dlopen PreviewsOSSupport at path %s", v1, v2, v3, v4, v5, v6, v7, v0);
    v9 = qword_27EE844E8;
    qword_27EE844E8 = v8;

    v10 = DTUVPreviewServiceLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_248030528();
    }
  }
}

void sub_2480036A0()
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = getenv("DYLD_ROOT_PATH");
  if (v0)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithCString:v0 encoding:1];
  }

  else
  {
    v1 = 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [&unk_285A36A68 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v16;
LABEL_6:
    v6 = 0;
    v7 = v4;
    while (1)
    {
      if (*v16 != v5)
      {
        objc_enumerationMutation(&unk_285A36A68);
      }

      v8 = *(*(&v15 + 1) + 8 * v6);
      if (v1)
      {
        v9 = [v1 stringByAppendingPathComponent:v8];
      }

      else
      {
        v9 = v8;
      }

      v4 = v9;

      v10 = [MEMORY[0x277CCAA00] defaultManager];
      v11 = [v10 fileExistsAtPath:v4];

      if (v11)
      {
        break;
      }

      ++v6;
      v7 = v4;
      if (v3 == v6)
      {
        v3 = [&unk_285A36A68 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v3)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v12 = [v4 stringByAppendingPathComponent:@"PreviewsOSSupport"];
  v13 = qword_27EE844F8;
  qword_27EE844F8 = v12;

  v14 = *MEMORY[0x277D85DE8];
}

void sub_248003B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_248003B24(uint64_t a1)
{
  result = CSSymbolicatorGetSharedCacheUUID();
  if (result)
  {
    v3 = *(a1 + 40);
    v5 = *v3;
    v4 = v3[1];
    if (*result == v5 && result[1] == v4)
    {
      result = CSRetain();
      v7 = *(*(a1 + 32) + 8);
      *(v7 + 32) = result;
      *(v7 + 40) = v8;
    }
  }

  return result;
}

void sub_248003CE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v23 = DTUVServiceErrorWithUnderlying(a3, @"Error launching PreviewShell", a3, a4, a5, a6, a7, a8, v22);
    [*(a1 + 32) _replyToQueuedMessages:v23];
    [*(a1 + 40) cancel];
  }

  else
  {
    v9 = *(a1 + 32);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_248003E4C;
    v25[3] = &unk_278EF4580;
    v26 = v9;
    v24 = 0;
    v10 = [v26 createExternalService:v25 error:&v24];
    v11 = v24;
    v12 = *(a1 + 32);
    v13 = *(v12 + 24);
    *(v12 + 24) = v10;

    v20 = *(a1 + 32);
    if (v20[3])
    {
      [v20 _bindServiceCancelationToChannelCancelation];
      [*(a1 + 32) _activateService];
    }

    else
    {
      v21 = DTUVServiceErrorWithUnderlying(v11, @"Error connecting to PreviewShell", v14, v15, v16, v17, v18, v19, v22);
      [*(a1 + 32) _replyToQueuedMessages:v21];
      [*(a1 + 40) cancel];
    }
  }
}

void sub_248003F40(uint64_t a1)
{
  v1 = [*(a1 + 32) channel];
  [v1 cancel];
}

void sub_248004014(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2480040B8;
  v7[3] = &unk_278EF4508;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_sync(v5, v7);
}

uint64_t sub_2480040B8(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(*(a1 + 32) + 32);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        (*(*(*(a1 + 32) + 40) + 16))(*(*(a1 + 32) + 40));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  result = [*(*(a1 + 32) + 32) removeAllObjects];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_248004298(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 replyHandler];

        if (v8)
        {
          v9 = [v7 replyHandler];
          v9[2](v9, 0, *(a1 + 40));
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  result = [*(*(a1 + 32) + 32) removeAllObjects];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_248004524(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (v2)
  {
    return (*(v2 + 16))(*(v1 + 40), *(a1 + 40));
  }

  else
  {
    return [*(v1 + 32) addObject:*(a1 + 40)];
  }
}

void sub_248004778(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [*(a1 + 32) newReplyWithObject:v10];
  }

  else
  {
    v7 = *(a1 + 32);
    if (v5)
    {
      v6 = [v7 newReplyWithError:v5];
    }

    else
    {
      v6 = [v7 newReply];
    }
  }

  v8 = v6;
  v9 = [*(a1 + 40) channel];
  [v9 sendControlAsync:v8 replyHandler:0];
}

void sub_2480049EC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 replyHandler];
  v4 = [v3 object];
  v5 = [v3 error];

  v6[2](v6, v4, v5);
}

id ProcessorTraceTapLocalDelegate.__allocating_init(config:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_2480065D8(a1);

  return v4;
}

id ProcessorTraceTapLocalDelegate.init(config:)(void *a1)
{
  v2 = sub_2480065D8(a1);

  return v2;
}

id sub_248005470()
{
  v1 = *(v0 + OBJC_IVAR___DTProcessorTraceTapLocalDelegate_config);
  if ([v1 target] == 1 && !objc_msgSend(v1, sel_targetPid))
  {
    v5 = &DTProcessorTraceTapConfigMissingProcessID;
    goto LABEL_11;
  }

  if ([v1 recordingMode] == 4)
  {
    sub_2480067C4();
    v2 = [v1 ringBufferSize];
    v3 = sub_248030D08();
    v4 = sub_248030D18();

    if (v4)
    {
      v5 = &DTProcessorTraceTapConfigMissingRingBufferSize;
LABEL_11:
      v13 = *v5;
      v14 = objc_allocWithZone(DTTapStatusMemo);
      v15 = sub_248030B28();
      v12 = [v14 initWithStatus:v13 notice:v15];

      return v12;
    }
  }

  v6 = [v1 targetSystems];
  v7 = sub_248030C38();

  v8 = *(v7 + 16);

  if (!v8)
  {
    v5 = &DTProcessorTraceTapConfigMissingTargetSystems;
    goto LABEL_11;
  }

  sub_2480067C4();
  v9 = [v1 fetchChunkSize];
  v10 = sub_248030D08();
  v11 = sub_248030D18();

  v12 = 0;
  if (v11)
  {
    v5 = &DTProcessorTraceTapConfigMissingFetchChunkSize;
    goto LABEL_11;
  }

  return v12;
}

void sub_2480056FC()
{
  v1 = *(v0 + OBJC_IVAR___DTProcessorTraceTapLocalDelegate_recorder);
  ProcessorTraceRecorder.startRecording()();
  if (v2)
  {
    sub_248030DE8();

    swift_getErrorValue();
    v3 = sub_248030F18();
    MEMORY[0x24C1C17F0](v3);

    v4 = objc_allocWithZone(DTTapStatusMemo);
    v5 = sub_248030B28();

    v6 = [v4 initWithStatus:DTProcessorTraceTapStartStatusCode notice:v5];

    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = [Strong _handleStatusMemo_];

    [v8 waitUntilFinished];
  }
}

void sub_2480058A8()
{
  v1 = *(v0 + OBJC_IVAR___DTProcessorTraceTapLocalDelegate_recorder);
  ProcessorTraceRecorder.stopRecording()();
  if (v2)
  {
    sub_248030DE8();

    swift_getErrorValue();
    v3 = sub_248030F18();
    MEMORY[0x24C1C17F0](v3);

    v4 = objc_allocWithZone(DTTapStatusMemo);
    v5 = sub_248030B28();

    v6 = [v4 initWithStatus:DTProcessorTraceTapStopStatusCode notice:v5];

    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = [Strong _handleStatusMemo_];

    [v8 waitUntilFinished];
  }
}

void sub_248005A54()
{
  v1 = *(v0 + OBJC_IVAR___DTProcessorTraceTapLocalDelegate_recorder);
  ProcessorTraceRecorder.pauseRecording()();
  if (v2)
  {
    sub_248030DE8();

    swift_getErrorValue();
    v3 = sub_248030F18();
    MEMORY[0x24C1C17F0](v3);

    v4 = objc_allocWithZone(DTTapStatusMemo);
    v5 = sub_248030B28();

    v6 = [v4 initWithStatus:DTProcessorTraceTapPauseStatusCode notice:v5];

    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = [Strong _handleStatusMemo_];

    [v8 waitUntilFinished];
  }
}

void sub_248005C00()
{
  v1 = *(v0 + OBJC_IVAR___DTProcessorTraceTapLocalDelegate_recorder);
  ProcessorTraceRecorder.unpauseRecording()();
  if (v2)
  {
    sub_248030DE8();

    swift_getErrorValue();
    v3 = sub_248030F18();
    MEMORY[0x24C1C17F0](v3);

    v4 = objc_allocWithZone(DTTapStatusMemo);
    v5 = sub_248030B28();

    v6 = [v4 initWithStatus:DTProcessorTraceTapUnpauseStatusCode notice:v5];

    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = [Strong _handleStatusMemo_];

    [v8 waitUntilFinished];
  }
}

void sub_248005DBC(uint64_t a1, void (*a2)(id, uint64_t))
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = sub_248030778();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  if (a1 == 1)
  {
    v32 = -1;
    v13 = [objc_opt_self() getDefaultedRemotePath_];
    sub_248030728();

    if (v32 < 1)
    {
      v21 = objc_allocWithZone(DTTapStatusMemo);
      v22 = sub_248030B28();
      v23 = [v21 initWithStatus:DTProcessorTraceTapFetchDataNowStatusCode notice:v22];

      a2(v23, 1);
    }

    else
    {
      v14 = *(v2 + OBJC_IVAR___DTProcessorTraceTapLocalDelegate_recorder);
      ProcessorTraceRecorder.saveRecording(fd:)(v32);
      if (!v15)
      {
        v24 = v6[2];
        v24(v10, v12, v5);
        v25 = type metadata accessor for ProcessorTraceTapMemo();
        v26 = objc_allocWithZone(v25);
        v24(&v26[OBJC_IVAR___DTProcessorTraceTapMemo_traceURL], v10, v5);
        v31.receiver = v26;
        v31.super_class = v25;
        v27 = objc_msgSendSuper2(&v31, sel_init);
        v28 = v6[1];
        v28(v10, v5);
        a2(v27, 1);

        close(v32);
        v28(v12, v5);
        goto LABEL_11;
      }

      v16 = objc_allocWithZone(DTTapStatusMemo);
      v17 = sub_248030B28();
      v18 = [v16 initWithStatus:DTProcessorTraceTapFetchDataNowStatusCode notice:v17];

      a2(v18, 1);
      close(v32);
    }

    (v6[1])(v12, v5);
LABEL_11:
    v29 = *MEMORY[0x277D85DE8];
    return;
  }

  v30 = [objc_allocWithZone(DTTapHeartbeatMemo) initWithTimestamp_];
  a2(v30, 1);
  v19 = *MEMORY[0x277D85DE8];
  v20 = v30;
}

id ProcessorTraceTapLocalDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProcessorTraceTapLocalDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessorTraceTapLocalDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_24800633C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

id sub_248006358(void *a1)
{
  v2 = [a1 recordingMode];
  if (v2 == 4)
  {
    v6 = [a1 ringBufferSize];
    v3 = [v6 unsignedLongLongValue];

    v4 = 1;
  }

  else if (v2 == 3)
  {
    v5 = [a1 ringBufferSize];
    v3 = [v5 unsignedLongLongValue];

    v4 = 0;
  }

  else
  {
    v3 = 0;
    if (v2 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = -1;
    }
  }

  v7 = [a1 target];
  if (v7 == 1)
  {
    v8 = [a1 targetPid];
    v9 = 0;
  }

  else
  {
    v8 = v7 == 2;
    v9 = 1;
  }

  v10 = [a1 enableProductionMode];
  v11 = [a1 enableThrottlingMode];
  v12 = [a1 targetSystems];
  v13 = sub_248030C38();

  v14 = [a1 copyImagesMode];
  if (v14 >= 3)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v16 = [a1 decodeOnSave];
  v17 = type metadata accessor for ProcessorTraceRecorderConfiguration();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isDriverEnabled] = 1;
  v19 = &v18[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_target];
  *v19 = v8;
  v19[4] = v9;
  v18[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isProductionModeEnabled] = v10;
  v18[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_isThrottlingEnabled] = v11;
  v20 = &v18[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_recordingMode];
  *v20 = v3;
  v20[8] = v4;
  *&v18[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_systems] = v13;
  v18[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_copyImagesOnSave] = v15;
  v18[OBJC_IVAR___DVTProcessorTraceRecorderConfiguration_decodeOnSave] = v16;
  v22.receiver = v18;
  v22.super_class = v17;
  return objc_msgSendSuper2(&v22, sel_init);
}

id sub_2480065D8(void *a1)
{
  v3 = sub_2480309A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___DTProcessorTraceTapLocalDelegate_config] = a1;
  v8 = sub_248006358(a1);
  v9 = type metadata accessor for ProcessorTraceRecorder();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___DTProcessorTraceRecorder_currentLiveRecording] = 0;
  v10[OBJC_IVAR___DTProcessorTraceRecorder_state] = 0;
  v11 = OBJC_IVAR___DTProcessorTraceRecorder_logger;
  if (qword_27EE83A18 != -1)
  {
    swift_once();
  }

  v12 = sub_248006DF0(v3, qword_27EE85A60);
  v13 = *(v4 + 16);
  v13(&v10[v11], v12, v3);
  v13(v7, v12, v3);
  sub_248030908();
  *&v10[OBJC_IVAR___DTProcessorTraceRecorder_configuration] = v8;
  v17.receiver = v10;
  v17.super_class = v9;
  *&v1[OBJC_IVAR___DTProcessorTraceTapLocalDelegate_recorder] = objc_msgSendSuper2(&v17, sel_init);
  v14 = type metadata accessor for ProcessorTraceTapLocalDelegate();
  v16.receiver = v1;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, sel_init);
}

unint64_t sub_2480067C4()
{
  result = qword_27EE83A40;
  if (!qword_27EE83A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE83A40);
  }

  return result;
}

void sub_248006A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = sub_248030778();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == 1)
  {
    v35 = -1;
    v14 = [objc_opt_self() getDefaultedRemotePath_];
    sub_248030728();

    if (v35 <= 0)
    {
      v24 = objc_allocWithZone(DTTapStatusMemo);
      v25 = sub_248030B28();
      v26 = [v24 initWithStatus:DTProcessorTraceTapFetchDataNowStatusCode notice:v25];

      (*(a3 + 16))(a3, v26, 1);
    }

    else
    {
      v15 = *(a2 + OBJC_IVAR___DTProcessorTraceTapLocalDelegate_recorder);
      ProcessorTraceRecorder.saveRecording(fd:)(v35);
      if (!v16)
      {
        v27 = v7[2];
        v27(v11, v13, v6);
        v28 = type metadata accessor for ProcessorTraceTapMemo();
        v29 = objc_allocWithZone(v28);
        v27(&v29[OBJC_IVAR___DTProcessorTraceTapMemo_traceURL], v11, v6);
        v34.receiver = v29;
        v34.super_class = v28;
        v30 = objc_msgSendSuper2(&v34, sel_init);
        v31 = v7[1];
        v31(v11, v6);
        (*(a3 + 16))(a3, v30, 1);

        close(v35);
        v31(v13, v6);
        goto LABEL_11;
      }

      v17 = objc_allocWithZone(DTTapStatusMemo);
      v18 = sub_248030B28();
      v19 = [v17 initWithStatus:DTProcessorTraceTapFetchDataNowStatusCode notice:v18];

      (*(a3 + 16))(a3, v19, 1);
      close(v35);
    }

    (v7[1])(v13, v6);
LABEL_11:
    v32 = *MEMORY[0x277D85DE8];
    return;
  }

  v20 = [objc_allocWithZone(DTTapHeartbeatMemo) initWithTimestamp_];
  v21 = *(a3 + 16);
  v33 = v20;
  v21(a3);
  v22 = *MEMORY[0x277D85DE8];
  v23 = v33;
}

uint64_t sub_248006DF0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_248006E38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248006E58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_248006E94(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t ProcessorTraceTapMemo.traceURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___DTProcessorTraceTapMemo_traceURL;
  v4 = sub_248030778();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id ProcessorTraceTapMemo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProcessorTraceTapMemo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProcessorTraceTapMemo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ProcessorTraceTapMemo()
{
  result = qword_27EE83B90;
  if (!qword_27EE83B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2480070E4()
{
  result = sub_248030778();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *sub_24800718C(void *a1)
{
  v77 = *MEMORY[0x277D85DE8];
  v3 = sub_2480078E4(&unk_27EE83FE0, &qword_24803DE60);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v65 - v8;
  v10 = sub_248030778();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v65 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v65 - v19;
  v21 = type metadata accessor for ProcessorTraceTapMessage.FileSharingType(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ProcessorTraceTapMessageHandler();
  v74.receiver = v1;
  v74.super_class = v25;
  result = objc_msgSendSuper2(&v74, sel_messageReceived_, a1);
  if (result)
  {
    goto LABEL_20;
  }

  v66 = v20;
  v69 = v1;
  v67 = v11;
  v68 = v10;
  sub_2480078E4(&qword_27EE83BA0, &qword_24803DE68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24803DE50;
  type metadata accessor for ProcessorTraceTapMessage(0);
  objc_opt_self();
  v75 = swift_dynamicCastObjCClassUnconditional();
  sub_248007978();
  sub_2480079C4();
  sub_248030DB8();
  sub_248007DFC(inited);
  swift_setDeallocating();
  sub_248007F5C(inited + 32);
  v28 = sub_248030C28();

  v29 = [a1 objectWithAllowedClasses_];

  if (v29)
  {
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      sub_248008230(v30 + OBJC_IVAR___DTProcessorTraceTapMessage_sharingType, v24);
      v31 = v67;
      v32 = *(v67 + 48);
      v33 = v68;
      if (v32(v24, 1, v68) == 1)
      {
        v34 = v69;
        v35 = *&v69[OBJC_IVAR___DTProcessorTraceTapMessageHandler_transferringFile];
        *&v69[OBJC_IVAR___DTProcessorTraceTapMessageHandler_transferringFile] = 0;

        v36 = OBJC_IVAR___DTProcessorTraceTapMessageHandler_transferringFileURL;
        swift_beginAccess();
        v37 = &v34[v36];
        v38 = v68;
        sub_248008294(v37, v9);
        if (v32(v9, 1, v38) == 1)
        {
          swift_unknownObjectRelease();
          sub_248008304(v9);
LABEL_16:
          result = 0;
LABEL_20:
          v64 = *MEMORY[0x277D85DE8];
          return result;
        }

        v58 = v67;
        (*(v67 + 32))(v15, v9, v38);
        v59 = *(v58 + 16);
        v60 = v66;
        v59(v66, v15, v38);
        v61 = type metadata accessor for ProcessorTraceTapMemo();
        v62 = objc_allocWithZone(v61);
        v59(&v62[OBJC_IVAR___DTProcessorTraceTapMemo_traceURL], v60, v38);
        v71.receiver = v62;
        v71.super_class = v61;
        v56 = objc_msgSendSuper2(&v71, sel_init);
        swift_unknownObjectRelease();
        v63 = *(v58 + 8);
        v63(v60, v38);
        v63(v15, v38);
      }

      else
      {
        v52 = v66;
        (*(v31 + 32))(v66, v24, v33);
        v53 = *(v31 + 16);
        v53(v18, v52, v33);
        v54 = type metadata accessor for ProcessorTraceTapMemo();
        v55 = objc_allocWithZone(v54);
        v53(&v55[OBJC_IVAR___DTProcessorTraceTapMemo_traceURL], v18, v33);
        v70.receiver = v55;
        v70.super_class = v54;
        v56 = objc_msgSendSuper2(&v70, sel_init);
        swift_unknownObjectRelease();
        v57 = *(v31 + 8);
        v57(v18, v33);
        v57(v52, v33);
      }

      result = v56;
      goto LABEL_20;
    }
  }

  v73 = 0;
  result = [a1 getBufferWithReturnedLength_];
  if (!v73)
  {
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v39 = OBJC_IVAR___DTProcessorTraceTapMessageHandler_transferringFile;
  v40 = v69;
  if (!*&v69[OBJC_IVAR___DTProcessorTraceTapMessageHandler_transferringFile])
  {
    v72 = 0;
    v41 = result;
    v42 = [objc_opt_self() getDefaultedRemotePath_];
    sub_248030728();

    (*(v67 + 56))(v7, 0, 1, v68);
    v43 = OBJC_IVAR___DTProcessorTraceTapMessageHandler_transferringFileURL;
    swift_beginAccess();
    sub_248007FB0(v7, &v40[v43]);
    swift_endAccess();
    v44 = [objc_allocWithZone(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v72 closeOnDealloc:1];
    v45 = *&v40[v39];
    *&v40[v39] = v44;

    result = v41;
  }

  if (result)
  {
    if (v73 < 0)
    {
      __break(1u);
    }

    v46 = sub_2480080D8(result, v73);
    v48 = v46;
    v49 = v47;
    v50 = *&v69[v39];
    if (v50)
    {
      v75 = v46;
      v76 = v47;
      sub_248008188();
      v51 = v50;
      sub_248030C58();
    }

    swift_unknownObjectRelease();
    sub_2480081DC(v48, v49);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}