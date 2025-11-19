@interface DTServiceHubClient
+ (id)localDeviceConnectionWithError:(id *)a3;
+ (id)localDeviceConnectionWithXPCConnection:(id)a3;
@end

@implementation DTServiceHubClient

+ (id)localDeviceConnectionWithError:(id *)a3
{
  v4 = [objc_alloc(MEMORY[0x277D03678]) initWithLocalName:0 size:0x400000];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_247FE571C;
  v26 = sub_247FE572C;
  v27 = [objc_alloc(MEMORY[0x277D03650]) initWithTransport:v4];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_247FE571C;
  v20 = sub_247FE572C;
  v21 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v11 = sub_247FE5734;
  v12 = &unk_278EF3D88;
  v5 = v4;
  v13 = v5;
  v14 = &v16;
  v15 = &v22;
  v6 = v10;
  mach_service = xpc_connection_create_mach_service("com.apple.instruments.deviceservice.xpc", 0, 0);
  xpc_connection_set_event_handler(mach_service, &unk_285A18CE0);
  xpc_connection_resume(mach_service);
  v11(v6, mach_service);

  if (a3)
  {
    *a3 = v17[5];
  }

  v8 = v23[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v8;
}

+ (id)localDeviceConnectionWithXPCConnection:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = MEMORY[0x277D03678];
    v4 = a3;
    v5 = [[v3 alloc] initWithLocalName:0 size:0x400000];
    v6 = [objc_alloc(MEMORY[0x277D03650]) initWithTransport:v5];
    v7 = xpc_dictionary_create(0, 0, 0);
    v8 = xpc_shmem_create([v5 sharedMemory], objc_msgSend(v5, "totalSharedMemorySize"));
    xpc_dictionary_set_value(v7, "dtx_shared_memory", v8);
    v9 = xpc_connection_send_message_with_reply_sync(v4, v7);

    if (MEMORY[0x24C1C4CD0](v9) == MEMORY[0x277D86480])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        string = xpc_dictionary_get_string(v9, *MEMORY[0x277D86400]);
        v13 = 136315138;
        v14 = string;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "xpc error: %s", &v13, 0xCu);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

@end