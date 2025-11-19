@interface _CNUIUserActionCurator
- (CNContactStore)contactStore;
- (CNLSApplicationWorkspace)applicationWorkspace;
- (_CNUIUserActionCurator)initWithContactStore:(id)a3 applicationWorkspace:(id)a4;
- (id)curateUserAction:(id)a3 withKeysToFetch:(id)a4;
@end

@implementation _CNUIUserActionCurator

- (_CNUIUserActionCurator)initWithContactStore:(id)a3 applicationWorkspace:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _CNUIUserActionCurator;
  v9 = [(_CNUIUserActionCurator *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, a3);
    objc_storeStrong(&v10->_applicationWorkspace, a4);
    v11 = v10;
  }

  return v10;
}

- (CNContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695CE28]);
    [v4 setIncludeLocalContacts:1];
    [v4 setIncludeSuggestedContacts:1];
    v5 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v4];
    v6 = self->_contactStore;
    self->_contactStore = v5;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (CNLSApplicationWorkspace)applicationWorkspace
{
  applicationWorkspace = self->_applicationWorkspace;
  if (!applicationWorkspace)
  {
    v4 = objc_alloc_init(CNLSApplicationWorkspace);
    v5 = self->_applicationWorkspace;
    self->_applicationWorkspace = v4;

    applicationWorkspace = self->_applicationWorkspace;
  }

  return applicationWorkspace;
}

- (id)curateUserAction:(id)a3 withKeysToFetch:(id)a4
{
  v103[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 contactProperty];
  v8 = [v7 contact];
  v9 = [v8 hasBeenPersisted];

  if ((v9 & 1) == 0)
  {
    v22 = +[CNUICoreLogProvider actions_os_log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [_CNUIUserActionCurator curateUserAction:v5 withKeysToFetch:?];
    }

    goto LABEL_23;
  }

  if ([v5 isSuggested])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695CFA8]);
    v11 = [v5 contactProperty];
    v12 = [v11 labeledValue];
    [v10 confirmSuggestion:v12];

    v13 = [(_CNUIUserActionCurator *)self contactStore];
    v93 = 0;
    v14 = [v13 executeSaveRequest:v10 error:&v93];
    v15 = v93;

    if ((v14 & 1) == 0)
    {
      v16 = +[CNUICoreLogProvider actions_os_log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(_CNUIUserActionCurator *)v15 curateUserAction:v5 withKeysToFetch:v16];
      }
    }
  }

  v17 = [v7 contact];
  v18 = *MEMORY[0x1E695C3D0];
  v19 = [v17 isKeyAvailable:*MEMORY[0x1E695C3D0]];

  v20 = [v7 contact];
  v21 = v20;
  if (v19)
  {
    v22 = [v20 mutableCopy];
  }

  else
  {
    v23 = [v20 identifier];

    if (!v23)
    {
      goto LABEL_21;
    }

    v21 = [(_CNUIUserActionCurator *)self contactStore];
    v24 = [v7 contact];
    [v24 identifier];
    v25 = v86 = v6;
    v103[0] = v18;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:1];
    [v21 unifiedContactWithIdentifier:v25 keysToFetch:v26 error:0];
    v27 = v18;
    v29 = v28 = v7;
    v22 = [v29 mutableCopy];

    v7 = v28;
    v18 = v27;

    v6 = v86;
  }

  if (!v22)
  {
LABEL_21:
    v22 = +[CNUICoreLogProvider actions_os_log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [_CNUIUserActionCurator curateUserAction:v5 withKeysToFetch:?];
    }

LABEL_23:
    v37 = 0;
    goto LABEL_44;
  }

  v87 = v6;
  if ([v5 isSuggested])
  {
    objc_opt_class();
    v30 = [v5 contactProperty];
    v31 = [v30 labeledValue];
    v32 = [v31 value];
    if (objc_opt_isKindOfClass())
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;

    if (v34)
    {
      v35 = [v34 userIdentifier];
      v36 = [v34 service];
      v85 = [v34 displayname];
    }

    else
    {
      v85 = 0;
      v36 = 0;
      v35 = 0;
    }
  }

  else
  {
    v85 = 0;
    v36 = 0;
    v35 = 0;
  }

  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v38 = *MEMORY[0x1E6996570];
    v39 = [v5 bundleIdentifier];
    LODWORD(v38) = (*(v38 + 16))(v38, v39);

    if (v38)
    {
      v40 = [(_CNUIUserActionCurator *)self applicationWorkspace];
      v41 = [v5 bundleIdentifier];
      v42 = [v40 applicationForBundleIdentifier:v41];
      v43 = [v42 localizedName];
      v44 = v36;
      v36 = v43;
    }
  }

  v45 = [v5 bundleIdentifier];
  v83 = v18;
  v84 = v7;
  if (v45)
  {
    v46 = [v5 bundleIdentifier];
    v102 = v46;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
  }

  else
  {
    v47 = MEMORY[0x1E695E0F0];
  }

  v48 = objc_alloc(MEMORY[0x1E695CF38]);
  v49 = [v5 targetHandle];
  v50 = MEMORY[0x1E6996580];
  v82 = v35;
  v51 = (*(*MEMORY[0x1E6996580] + 16))();
  (*(*v50 + 16))();
  v53 = v52 = v36;
  v54 = (*(*v50 + 16))();
  v55 = [v5 teamIdentifier];
  v56 = [v48 initWithUrlString:0 username:v49 userIdentifier:v51 service:v53 displayname:v54 teamIdentifier:v55 bundleIdentifiers:v47];

  v81 = v52;
  v57 = v52;
  v58 = v56;
  v59 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v57 value:v56];
  v60 = [v22 socialProfiles];
  v61 = [v60 arrayByAddingObject:v59];
  [v22 setSocialProfiles:v61];

  v62 = objc_alloc_init(MEMORY[0x1E695CF88]);
  [v62 updateContact:v22];
  v63 = [(_CNUIUserActionCurator *)self contactStore];
  v92 = 0;
  LOBYTE(v61) = [v63 executeSaveRequest:v62 error:&v92];
  v64 = v92;

  if ((v61 & 1) == 0)
  {
    v65 = +[CNUICoreLogProvider actions_os_log];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      v78 = [v5 type];
      *buf = 138544130;
      v95 = v64;
      v96 = 2112;
      v97 = v22;
      v98 = 2114;
      v99 = v78;
      v100 = 2112;
      v101 = v5;
      _os_log_debug_impl(&dword_1A31E6000, v65, OS_LOG_TYPE_DEBUG, "[User Action Curator] cannot save mutable contact with curated action, error = %{public}@\n mutable contact = %@\n user action = %{public}@: %@", buf, 0x2Au);
    }
  }

  v79 = v64;
  v80 = v47;
  v66 = [MEMORY[0x1E695DF70] arrayWithObjects:{v83, 0}];
  [v66 addObjectsFromArray:v87];
  v67 = [(_CNUIUserActionCurator *)self contactStore];
  v68 = [v22 identifier];
  v69 = [v67 unifiedContactWithIdentifier:v68 keysToFetch:v66 error:0];

  v70 = [v69 socialProfiles];
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __59___CNUIUserActionCurator_curateUserAction_withKeysToFetch___block_invoke;
  v89[3] = &unk_1E76EA418;
  v90 = v59;
  v71 = v58;
  v91 = v71;
  v72 = [v70 _cn_firstObjectPassingTest:v89];

  if (v72)
  {
    v73 = MEMORY[0x1E695CE08];
    v74 = [v72 identifier];
    v75 = [v73 contactPropertyWithContactNoCopy:v69 propertyKey:v83 identifier:v74];

    v37 = [[CNUIUserActionItem alloc] initWithItem:v5 contactProperty:v75];
    v76 = +[CNUICoreLogProvider actions_os_log];
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      [_CNUIUserActionCurator curateUserAction:v37 withKeysToFetch:?];
    }
  }

  else
  {
    v75 = v84;
    v76 = +[CNUICoreLogProvider actions_os_log];
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      [_CNUIUserActionCurator curateUserAction:v69 withKeysToFetch:?];
    }

    v37 = 0;
  }

  v6 = v87;
  v7 = v75;
LABEL_44:

  return v37;
}

- (void)curateUserAction:(void *)a1 withKeysToFetch:.cold.1(void *a1)
{
  v1 = [a1 type];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_1A31E6000, v2, v3, "[User Action Curator] cannot curate action to a contact not in database %@: %@", v4, v5, v6, v7, v8);
}

- (void)curateUserAction:(NSObject *)a3 withKeysToFetch:.cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = [a2 type];
  v7 = 138543874;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  v11 = 2112;
  v12 = a2;
  _os_log_error_impl(&dword_1A31E6000, a3, OS_LOG_TYPE_ERROR, "[User Action Curator] cannot confirm suggestion, error = %{public}@\n user action = %{public}@: %@", &v7, 0x20u);
}

- (void)curateUserAction:(void *)a1 withKeysToFetch:.cold.3(void *a1)
{
  v1 = [a1 type];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_1A31E6000, v2, v3, "[User Action Curator] curated action %{public}@: %@", v4, v5, v6, v7, v8);
}

- (void)curateUserAction:(void *)a1 withKeysToFetch:.cold.4(void *a1)
{
  v7 = [a1 socialProfiles];
  OUTLINED_FUNCTION_2_0(&dword_1A31E6000, v1, v2, "[User Action Curator] could not find curated labeled value %@ saved in %@", v3, v4, v5, v6, 2u);
}

- (void)curateUserAction:(void *)a1 withKeysToFetch:.cold.5(void *a1)
{
  v1 = [a1 type];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_0(&dword_1A31E6000, v2, v3, "[User Action Curator] cannot get mutable contact to curate action %{public}@: %@", v4, v5, v6, v7, v8);
}

@end