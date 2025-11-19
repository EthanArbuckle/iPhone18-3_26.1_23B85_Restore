@interface CKDFetchUserQuotaOperation
- (CKDFetchUserQuotaOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)activityCreate;
- (void)main;
@end

@implementation CKDFetchUserQuotaOperation

- (CKDFetchUserQuotaOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v5.receiver = self;
  v5.super_class = CKDFetchUserQuotaOperation;
  return [(CKDDatabaseOperation *)&v5 initWithOperationInfo:a3 container:a4];
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-user-quota", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v42 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v15 = v3;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v19 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v18, 1, 0, 0);
    v22 = objc_msgSend_CKPropertiesStyleString(v19, v20, v21);
    v24 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v23, 0, 1, 0);
    v27 = objc_msgSend_CKPropertiesStyleString(v24, v25, v26);
    *location = 138544130;
    *&location[4] = v17;
    v36 = 2048;
    v37 = self;
    v38 = 2114;
    v39 = v22;
    v40 = 2112;
    v41 = v27;
    _os_log_debug_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEBUG, "Fetch user quota operation <%{public}@: %p; %{public}@, %@> is starting", location, 0x2Au);
  }

  v4 = [CKDFetchUserQuotaURLRequest alloc];
  v6 = objc_msgSend_initWithOperation_(v4, v5, self);
  objc_initWeak(location, self);
  objc_initWeak(&from, v6);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22525B14C;
  v31[3] = &unk_27854B1E0;
  objc_copyWeak(&v32, location);
  objc_copyWeak(&v33, &from);
  objc_msgSend_setQuotaFetchedBlock_(v6, v7, v31);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_22525B344;
  v28[3] = &unk_278548748;
  objc_copyWeak(&v29, location);
  objc_copyWeak(&v30, &from);
  objc_msgSend_setCompletionBlock_(v6, v8, v28);
  objc_msgSend_setRequest_(self, v9, v6);
  v12 = objc_msgSend_container(self, v10, v11);
  objc_msgSend_performRequest_(v12, v13, v6);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);

  v14 = *MEMORY[0x277D85DE8];
}

@end