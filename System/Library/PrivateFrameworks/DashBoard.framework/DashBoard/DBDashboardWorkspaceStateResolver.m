@interface DBDashboardWorkspaceStateResolver
- (DBAppPolicyProviding)policyProvider;
- (DBDashboardWorkspaceStateResolver)initWithPolicyProvider:(id)a3;
- (id)computeNewStateFromState:(id)a3 andRequest:(id)a4;
@end

@implementation DBDashboardWorkspaceStateResolver

- (DBAppPolicyProviding)policyProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_policyProvider);

  return WeakRetained;
}

- (DBDashboardWorkspaceStateResolver)initWithPolicyProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DBDashboardWorkspaceStateResolver;
  v5 = [(DBDashboardWorkspaceStateResolver *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_policyProvider, v4);
  }

  return v6;
}

- (id)computeNewStateFromState:(id)a3 andRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 mutableCopy];
  v34 = objc_alloc_init(DBDashboardWorkspaceStateResolution);
  [(DBDashboardWorkspaceStateResolution *)v34 setState:v8];
  v9 = [v6 baseEntity];
  v10 = [v6 stackedEntity];
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__1;
  v71 = __Block_byref_object_dispose__1;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__1;
  v65 = __Block_byref_object_dispose__1;
  v66 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__1;
  v59 = __Block_byref_object_dispose__1;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__1;
  v53 = __Block_byref_object_dispose__1;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__1;
  v47 = __Block_byref_object_dispose__1;
  v48 = 0;
  v33 = v7;
  v11 = [v7 changeItems];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __73__DBDashboardWorkspaceStateResolver_computeNewStateFromState_andRequest___block_invoke;
  v35[3] = &unk_278F029B8;
  v35[4] = self;
  v38 = &v43;
  v39 = &v67;
  v40 = &v55;
  v12 = v9;
  v36 = v12;
  v41 = &v61;
  v13 = v10;
  v37 = v13;
  v42 = &v49;
  [v11 enumerateObjectsUsingBlock:v35];

  v14 = v68[5];
  if (v14)
  {
    if (v62[5])
    {
      v15 = [v14 identifier];
      v16 = [v62[5] identifier];
      v17 = [v15 isEqualToString:v16];

      if (v17)
      {
        v18 = v68[5];
        v68[5] = 0;

        v19 = v62[5];
        v62[5] = 0;
      }
    }
  }

  v20 = v56[5];
  if (v20)
  {
    if (v50[5])
    {
      v21 = [v20 identifier];
      v22 = [v50[5] identifier];
      v23 = [v21 isEqualToString:v22];

      if (v23)
      {
        v24 = v56[5];
        v56[5] = 0;

        v25 = v50[5];
        v50[5] = 0;
      }
    }
  }

  if (v62[5])
  {
    v26 = +[DBDashboardHomescreenEntity entity];

    v27 = [v62[5] _sr_associatedChangeItem];
    [v26 _setSR_associatedChangeItem:v27];
  }

  else
  {
    v26 = v12;
  }

  v28 = v68[5];
  if (v28)
  {
    v29 = v28;

    v13 = 0;
    v26 = v29;
  }

  if (v50[5])
  {

    v13 = 0;
  }

  v30 = v56[5];
  if (v30)
  {
    v31 = v30;

    v13 = v31;
  }

  [v8 setBaseEntity:v26];
  [v8 setStackedEntity:v13];
  [(DBDashboardWorkspaceStateResolution *)v34 setActivateSuspendedEntity:v44[5]];

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(&v67, 8);

  return v34;
}

void __73__DBDashboardWorkspaceStateResolver_computeNewStateFromState_andRequest___block_invoke(id *a1, void *a2)
{
  v16 = a2;
  v3 = [v16 changeType];
  if (!([v16 presentationPreference] | v3))
  {
    [v16 setPresentationPreference:1];
  }

  v4 = [a1[4] policyProvider];
  v5 = [v16 _newEntityFromChangeItemWithPolicyProvider:v4];

  [v5 _setSR_associatedChangeItem:v16];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v16 activationSettings], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isSuspended"), v6, (v7))
  {
    v8 = 7;
  }

  else if (v3)
  {
    v9 = [v5 identifier];
    v10 = [a1[5] identifier];
    v11 = BSEqualObjects();

    if (v11)
    {
      v8 = 10;
    }

    else
    {
      v13 = [v5 identifier];
      v14 = [a1[6] identifier];
      v15 = BSEqualObjects();

      if (!v15)
      {
        goto LABEL_15;
      }

      v8 = 11;
    }
  }

  else
  {
    v12 = [v16 presentationPreference];
    v8 = 9;
    if (v12 == 1)
    {
      v8 = 8;
    }
  }

  objc_storeStrong((*(a1[v8] + 1) + 40), v5);
LABEL_15:
}

@end