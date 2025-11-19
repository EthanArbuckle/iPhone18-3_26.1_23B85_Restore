@interface stolenUSBLocalStorageClient
- (id)loadVolumes:(id)a3 ofType:(id)a4 withError:(id *)a5;
@end

@implementation stolenUSBLocalStorageClient

- (id)loadVolumes:(id)a3 ofType:(id)a4 withError:(id *)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__5;
  v30 = __Block_byref_object_dispose__5;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5;
  v24 = __Block_byref_object_dispose__5;
  v25 = 0;
  v10 = fskit_std_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [stolenUSBLocalStorageClient loadVolumes:ofType:withError:];
  }

  v11 = *(&self->super.super.isa + *MEMORY[0x277D23DC8]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__stolenUSBLocalStorageClient_loadVolumes_ofType_withError___block_invoke;
  v19[3] = &unk_278FECF30;
  v19[4] = &v26;
  v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__stolenUSBLocalStorageClient_loadVolumes_ofType_withError___block_invoke_2;
  v18[3] = &unk_278FEDFE8;
  v18[4] = &v26;
  v18[5] = &v20;
  [v12 addDisk:v8 fileSystemType:v9 reply:v18];
  if (v27[5] || ![v21[5] count])
  {
    if (a5)
    {
      *a5 = v27[5];
    }
  }

  else
  {
    v13 = fskit_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v17 = v21[5];
      *buf = 136315906;
      v33 = "[stolenUSBLocalStorageClient loadVolumes:ofType:withError:]";
      v34 = 2112;
      v35 = v8;
      v36 = 2112;
      v37 = v9;
      v38 = 2112;
      v39 = v17;
      _os_log_debug_impl(&dword_24A929000, v13, OS_LOG_TYPE_DEBUG, "%s:finish:%@:%@:%@", buf, 0x2Au);
    }
  }

  v14 = v21[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)loadVolumes:ofType:withError:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v5 = v0;
  v6 = v1;
  _os_log_debug_impl(&dword_24A929000, v2, OS_LOG_TYPE_DEBUG, "%s:start:%@:%@", v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

@end