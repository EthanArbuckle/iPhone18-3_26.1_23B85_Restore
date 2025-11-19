@interface CRSystemHealthStatus
- (BOOL)getCurrentSystemHealthStatusForComponents:(unint64_t)a3 WithReply:(id)a4;
@end

@implementation CRSystemHealthStatus

- (BOOL)getCurrentSystemHealthStatusForComponents:(unint64_t)a3 WithReply:(id)a4
{
  v5 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.mobilerepaird" options:0];
  v7 = v31[5];
  v31[5] = v6;

  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285978F58];
  [v31[5] setRemoteObjectInterface:v8];

  [v31[5] resume];
  v9 = v31[5];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__CRSystemHealthStatus_getCurrentSystemHealthStatusForComponents_WithReply___block_invoke;
  v13[3] = &unk_278EB0F18;
  v13[4] = &v24;
  v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__CRSystemHealthStatus_getCurrentSystemHealthStatusForComponents_WithReply___block_invoke_11;
  v12[3] = &unk_278EB0F40;
  v12[4] = &v24;
  v12[5] = &v14;
  v12[6] = &v18;
  v12[7] = &v30;
  [v10 getCurrentSystemHealthStatusForComponentsInternal:a3 WithReply:v12];

  v5[2](v5, *(v15 + 24), v19[5], v25[5]);
  LOBYTE(a3) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return a3;
}

void __76__CRSystemHealthStatus_getCurrentSystemHealthStatusForComponents_WithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = handleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__CRSystemHealthStatus_getCurrentSystemHealthStatusForComponents_WithReply___block_invoke_cold_1(v3, v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __76__CRSystemHealthStatus_getCurrentSystemHealthStatusForComponents_WithReply___block_invoke_11(void *a1, int a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = handleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 67109120;
    LODWORD(v20) = a2;
    _os_log_impl(&dword_24785F000, v9, OS_LOG_TYPE_DEFAULT, "success %d", &v19, 8u);
  }

  v10 = handleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v7;
    _os_log_impl(&dword_24785F000, v10, OS_LOG_TYPE_DEFAULT, "systemhealth %@", &v19, 0xCu);
  }

  v11 = handleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v8;
    _os_log_impl(&dword_24785F000, v11, OS_LOG_TYPE_DEFAULT, "error %@", &v19, 0xCu);
  }

  v12 = *(a1[4] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  *(*(a1[5] + 8) + 24) = a2;
  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v7;
  v17 = v7;

  [*(*(a1[7] + 8) + 40) invalidate];
  v18 = *MEMORY[0x277D85DE8];
}

void __76__CRSystemHealthStatus_getCurrentSystemHealthStatusForComponents_WithReply___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24785F000, a2, OS_LOG_TYPE_ERROR, "getCurrentSystemHealthStatusForComponentsInternal Error:%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end