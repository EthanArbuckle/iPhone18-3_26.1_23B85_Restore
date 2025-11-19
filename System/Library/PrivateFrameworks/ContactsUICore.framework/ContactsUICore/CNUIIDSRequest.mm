@interface CNUIIDSRequest
+ (BOOL)isDestinationAvailable:(id)a3 givenStatusesByDestination:(id)a4;
+ (BOOL)isStatusOfAnyDestinationUnknown:(id)a3;
+ (id)IDSResponseQueue;
+ (id)IDSServiceForService:(int64_t)a3;
+ (id)errorRefreshingHandles:(id)a3 forService:(id)a4;
+ (id)refreshStatusOfDestinations:(id)a3 forService:(id)a4 queryControllerWrapper:(id)a5;
+ (id)refreshStatusOfDestinations:(id)a3 forService:(id)a4 queryControllerWrapper:(id)a5 delay:(double)a6 scheduler:(id)a7;
+ (id)resultsForIDSControllerResult:(id)a3 handlesByDestination:(id)a4;
+ (id)validHandlesFromHandles:(id)a3;
+ (id)validateHandles:(id)a3 forService:(int64_t)a4 scheduler:(id)a5 queryControllerWrapper:(id)a6;
@end

@implementation CNUIIDSRequest

+ (BOOL)isStatusOfAnyDestinationUnknown:(id)a3
{
  v3 = a3;
  if ((*(*MEMORY[0x1E6996548] + 16))())
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 allValues];
    v4 = [v5 _cn_any:&__block_literal_global_7];
  }

  return v4;
}

+ (id)resultsForIDSControllerResult:(id)a3 handlesByDestination:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 allKeys];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__CNUIIDSRequest_resultsForIDSControllerResult_handlesByDestination___block_invoke;
  v13[3] = &unk_1E76E78D0;
  v15 = v6;
  v16 = a1;
  v14 = v7;
  v9 = v6;
  v10 = v7;
  v11 = [v8 _cn_map:v13];

  return v11;
}

_CNUIIDSHandleAvailability *__69__CNUIIDSRequest_resultsForIDSControllerResult_handlesByDestination___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [*(a1 + 48) isDestinationAvailable:v4 givenStatusesByDestination:*(a1 + 40)];

  v7 = [[_CNUIIDSHandleAvailability alloc] initWithHandle:v5 available:v6];

  return v7;
}

+ (BOOL)isDestinationAvailable:(id)a3 givenStatusesByDestination:(id)a4
{
  v4 = [a4 objectForKeyedSubscript:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)IDSServiceForService:(int64_t)a3
{
  if (a3 == 2)
  {
LABEL_12:
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v3 = getIDSServiceNameFaceTimeMultiwaySymbolLoc_ptr;
    v12 = getIDSServiceNameFaceTimeMultiwaySymbolLoc_ptr;
    if (!getIDSServiceNameFaceTimeMultiwaySymbolLoc_ptr)
    {
      v6 = IDSLibrary();
      v10[3] = dlsym(v6, "IDSServiceNameFaceTimeMultiway");
      getIDSServiceNameFaceTimeMultiwaySymbolLoc_ptr = v10[3];
      v3 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (!v3)
    {
      v8 = +[CNUIIDSRequest IDSServiceForService:];
      _Block_object_dispose(&v9, 8);
      _Unwind_Resume(v8);
    }

    goto LABEL_15;
  }

  if (a3 == 1)
  {
LABEL_8:
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v3 = getIDSServiceNameiMessageSymbolLoc_ptr;
    v12 = getIDSServiceNameiMessageSymbolLoc_ptr;
    if (!getIDSServiceNameiMessageSymbolLoc_ptr)
    {
      v5 = IDSLibrary();
      v10[3] = dlsym(v5, "IDSServiceNameiMessage");
      getIDSServiceNameiMessageSymbolLoc_ptr = v10[3];
      v3 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (v3)
    {
      goto LABEL_15;
    }

    +[CNUIIDSRequest IDSServiceForService:];
    goto LABEL_12;
  }

  if (a3)
  {
    goto LABEL_16;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = getIDSServiceNameFaceTimeSymbolLoc_ptr;
  v12 = getIDSServiceNameFaceTimeSymbolLoc_ptr;
  if (!getIDSServiceNameFaceTimeSymbolLoc_ptr)
  {
    v4 = IDSLibrary();
    v10[3] = dlsym(v4, "IDSServiceNameFaceTime");
    getIDSServiceNameFaceTimeSymbolLoc_ptr = v10[3];
    v3 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v3)
  {
    +[CNUIIDSRequest IDSServiceForService:];
    goto LABEL_8;
  }

LABEL_15:
  a1 = *v3;
LABEL_16:

  return a1;
}

+ (id)IDSResponseQueue
{
  if (IDSResponseQueue_cn_once_token_1 != -1)
  {
    +[CNUIIDSRequest IDSResponseQueue];
  }

  v3 = IDSResponseQueue_cn_once_object_1;

  return v3;
}

uint64_t __34__CNUIIDSRequest_IDSResponseQueue__block_invoke()
{
  IDSResponseQueue_cn_once_object_1 = dispatch_queue_create("com.apple.contacts.ContactsUICore.IDSResponseQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)validateHandles:(id)a3 forService:(int64_t)a4 scheduler:(id)a5 queryControllerWrapper:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = [a1 IDSServiceForService:a4];
  v14 = objc_alloc_init(MEMORY[0x1E69967D0]);
  v15 = [a1 validHandlesFromHandles:v12];

  v16 = [v15 _cn_indexBy:&__block_literal_global_0];

  v17 = [a1 errorRefreshingHandles:v16 forService:v13];
  if (v16)
  {
    v25 = [a1 refreshStatusOfDestinations:v16 forService:v13 queryControllerWrapper:v11];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __78__CNUIIDSRequest_validateHandles_forService_scheduler_queryControllerWrapper___block_invoke;
    v34[3] = &unk_1E76E78F8;
    v39 = a1;
    v18 = v16;
    v35 = v18;
    v36 = v13;
    v37 = v11;
    v19 = v10;
    v38 = v19;
    v20 = [v25 flatMap:v34];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __78__CNUIIDSRequest_validateHandles_forService_scheduler_queryControllerWrapper___block_invoke_2;
    v28[3] = &unk_1E76E7948;
    v29 = v19;
    v33 = a1;
    v30 = v18;
    v21 = v14;
    v31 = v21;
    v32 = v17;
    [v20 addSuccessBlock:v28];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __78__CNUIIDSRequest_validateHandles_forService_scheduler_queryControllerWrapper___block_invoke_4;
    v26[3] = &unk_1E76E7970;
    v22 = v21;
    v27 = v22;
    [v20 addFailureBlock:v26];
    v23 = [v22 future];
  }

  else
  {
    [v14 finishWithError:v17];
    v23 = [v14 future];
  }

  return v23;
}

id __78__CNUIIDSRequest_validateHandles_forService_scheduler_queryControllerWrapper___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 64) shouldRetryRefreshingIDSStatusOfDesinationsGivenResult:v3])
  {
    [*(a1 + 64) afterDelayRetryRefreshingStatusOfDestinations:*(a1 + 32) forService:*(a1 + 40) queryControllerWrapper:*(a1 + 48) scheduler:*(a1 + 56)];
  }

  else
  {
    [MEMORY[0x1E6996720] futureWithResult:v3];
  }
  v4 = ;

  return v4;
}

void __78__CNUIIDSRequest_validateHandles_forService_scheduler_queryControllerWrapper___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__CNUIIDSRequest_validateHandles_forService_scheduler_queryControllerWrapper___block_invoke_3;
  v11[3] = &unk_1E76E7920;
  v12 = v3;
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *&v8 = *(a1 + 56);
  *(&v8 + 1) = v4;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v13 = v9;
  v14 = v8;
  v10 = v3;
  [v5 performBlock:v11];
}

void __78__CNUIIDSRequest_validateHandles_forService_scheduler_queryControllerWrapper___block_invoke_3(void *a1)
{
  v2 = [objc_opt_class() resultsForIDSControllerResult:a1[4] handlesByDestination:a1[5]];
  v3 = a1[6];
  v4 = v2;
  if (v2)
  {
    [v3 finishWithResult:v2];
  }

  else
  {
    [v3 finishWithError:a1[7]];
  }
}

+ (id)refreshStatusOfDestinations:(id)a3 forService:(id)a4 queryControllerWrapper:(id)a5
{
  v8 = MEMORY[0x1E6996818];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 immediateScheduler];
  v13 = [a1 refreshStatusOfDestinations:v11 forService:v10 queryControllerWrapper:v9 delay:v12 scheduler:0.0];

  return v13;
}

+ (id)refreshStatusOfDestinations:(id)a3 forService:(id)a4 queryControllerWrapper:(id)a5 delay:(double)a6 scheduler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = objc_alloc_init(MEMORY[0x1E69967D0]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__CNUIIDSRequest_refreshStatusOfDestinations_forService_queryControllerWrapper_delay_scheduler___block_invoke;
  aBlock[3] = &unk_1E76E7920;
  v27 = v14;
  v28 = v12;
  v30 = v16;
  v31 = a1;
  v29 = v13;
  v17 = v16;
  v18 = v13;
  v19 = v12;
  v20 = v14;
  v21 = _Block_copy(aBlock);
  v22 = v21;
  if (a6 <= 0.0)
  {
    (*(v21 + 2))(v21);
  }

  else
  {
    v23 = [v15 afterDelay:v21 performBlock:a6];
  }

  v24 = [v17 future];

  return v24;
}

void __96__CNUIIDSRequest_refreshStatusOfDestinations_forService_queryControllerWrapper_delay_scheduler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allKeys];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 64) IDSResponseQueue];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __96__CNUIIDSRequest_refreshStatusOfDestinations_forService_queryControllerWrapper_delay_scheduler___block_invoke_2;
  v16 = &unk_1E76E7998;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 40);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = v7;
  *&v10 = v6;
  *(&v10 + 1) = v8;
  v17 = v10;
  v18 = v9;
  LOBYTE(v2) = [v2 refreshIDStatusForDestinations:v3 service:v4 listenerID:@"com.apple.contacts.ContactsUICore" queue:v5 completionBlock:&v13];

  if ((v2 & 1) == 0)
  {
    v11 = *(a1 + 56);
    v12 = [*(a1 + 64) errorRefreshingHandles:*(a1 + 40) forService:{*(a1 + 48), v13, v14, v15, v16}];
    [v11 finishWithError:v12];
  }
}

void __96__CNUIIDSRequest_refreshStatusOfDestinations_forService_queryControllerWrapper_delay_scheduler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 finishWithResult:a2];
  }

  else
  {
    v4 = [*(a1 + 56) errorRefreshingHandles:*(a1 + 40) forService:*(a1 + 48)];
    [v2 finishWithError:v4];
  }
}

+ (id)errorRefreshingHandles:(id)a3 forService:(id)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (a3)
  {
    v6 = [a3 allValues];
    v7 = [v6 _cn_map:&__block_literal_global_0];
  }

  else
  {
    v7 = @"No handles provided";
  }

  v11[0] = @"handles";
  v11[1] = @"service";
  v12[0] = v7;
  v12[1] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [CNContactsUIError errorWithCode:205 userInfo:v8];

  return v9;
}

+ (id)validHandlesFromHandles:(id)a3
{
  v3 = a3;
  v4 = [v3 _cn_filter:&__block_literal_global_4];
  v5 = [v3 count];
  if (v5 != [v4 count])
  {
    [v3 _cn_each:&__block_literal_global_35];
  }

  return v4;
}

void __42__CNUIIDSRequest_validHandlesFromHandles___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 _cnui_IDSIDRepresentation];

  if (!v3)
  {
    v4 = +[CNUICoreLogProvider actions_os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __42__CNUIIDSRequest_validHandlesFromHandles___block_invoke_cold_1(v2, v4);
    }
  }
}

+ (uint64_t)IDSServiceForService:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return +[(CNUIIDSRequest *)v0];
}

void __42__CNUIIDSRequest_validHandlesFromHandles___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_DEBUG, "No IDS representation for handle %@", &v2, 0xCu);
}

@end