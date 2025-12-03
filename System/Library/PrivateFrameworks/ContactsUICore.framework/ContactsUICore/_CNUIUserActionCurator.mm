@interface _CNUIUserActionCurator
- (CNContactStore)contactStore;
- (CNLSApplicationWorkspace)applicationWorkspace;
- (_CNUIUserActionCurator)initWithContactStore:(id)store applicationWorkspace:(id)workspace;
- (id)curateUserAction:(id)action withKeysToFetch:(id)fetch;
@end

@implementation _CNUIUserActionCurator

- (_CNUIUserActionCurator)initWithContactStore:(id)store applicationWorkspace:(id)workspace
{
  storeCopy = store;
  workspaceCopy = workspace;
  v13.receiver = self;
  v13.super_class = _CNUIUserActionCurator;
  v9 = [(_CNUIUserActionCurator *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, store);
    objc_storeStrong(&v10->_applicationWorkspace, workspace);
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

- (id)curateUserAction:(id)action withKeysToFetch:(id)fetch
{
  v103[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  fetchCopy = fetch;
  contactProperty = [actionCopy contactProperty];
  contact = [contactProperty contact];
  hasBeenPersisted = [contact hasBeenPersisted];

  if ((hasBeenPersisted & 1) == 0)
  {
    v22 = +[CNUICoreLogProvider actions_os_log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [_CNUIUserActionCurator curateUserAction:actionCopy withKeysToFetch:?];
    }

    goto LABEL_23;
  }

  if ([actionCopy isSuggested])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695CFA8]);
    contactProperty2 = [actionCopy contactProperty];
    labeledValue = [contactProperty2 labeledValue];
    [v10 confirmSuggestion:labeledValue];

    contactStore = [(_CNUIUserActionCurator *)self contactStore];
    v93 = 0;
    v14 = [contactStore executeSaveRequest:v10 error:&v93];
    v15 = v93;

    if ((v14 & 1) == 0)
    {
      v16 = +[CNUICoreLogProvider actions_os_log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(_CNUIUserActionCurator *)v15 curateUserAction:actionCopy withKeysToFetch:v16];
      }
    }
  }

  contact2 = [contactProperty contact];
  v18 = *MEMORY[0x1E695C3D0];
  v19 = [contact2 isKeyAvailable:*MEMORY[0x1E695C3D0]];

  contact3 = [contactProperty contact];
  contactStore2 = contact3;
  if (v19)
  {
    v22 = [contact3 mutableCopy];
  }

  else
  {
    identifier = [contact3 identifier];

    if (!identifier)
    {
      goto LABEL_21;
    }

    contactStore2 = [(_CNUIUserActionCurator *)self contactStore];
    contact4 = [contactProperty contact];
    [contact4 identifier];
    v25 = v86 = fetchCopy;
    v103[0] = v18;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:1];
    [contactStore2 unifiedContactWithIdentifier:v25 keysToFetch:v26 error:0];
    v27 = v18;
    v29 = v28 = contactProperty;
    v22 = [v29 mutableCopy];

    contactProperty = v28;
    v18 = v27;

    fetchCopy = v86;
  }

  if (!v22)
  {
LABEL_21:
    v22 = +[CNUICoreLogProvider actions_os_log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [_CNUIUserActionCurator curateUserAction:actionCopy withKeysToFetch:?];
    }

LABEL_23:
    v37 = 0;
    goto LABEL_44;
  }

  v87 = fetchCopy;
  if ([actionCopy isSuggested])
  {
    objc_opt_class();
    contactProperty3 = [actionCopy contactProperty];
    labeledValue2 = [contactProperty3 labeledValue];
    value = [labeledValue2 value];
    if (objc_opt_isKindOfClass())
    {
      v33 = value;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;

    if (v34)
    {
      userIdentifier = [v34 userIdentifier];
      service = [v34 service];
      displayname = [v34 displayname];
    }

    else
    {
      displayname = 0;
      service = 0;
      userIdentifier = 0;
    }
  }

  else
  {
    displayname = 0;
    service = 0;
    userIdentifier = 0;
  }

  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v38 = *MEMORY[0x1E6996570];
    bundleIdentifier = [actionCopy bundleIdentifier];
    LODWORD(v38) = (*(v38 + 16))(v38, bundleIdentifier);

    if (v38)
    {
      applicationWorkspace = [(_CNUIUserActionCurator *)self applicationWorkspace];
      bundleIdentifier2 = [actionCopy bundleIdentifier];
      v42 = [applicationWorkspace applicationForBundleIdentifier:bundleIdentifier2];
      localizedName = [v42 localizedName];
      v44 = service;
      service = localizedName;
    }
  }

  bundleIdentifier3 = [actionCopy bundleIdentifier];
  v83 = v18;
  v84 = contactProperty;
  if (bundleIdentifier3)
  {
    bundleIdentifier4 = [actionCopy bundleIdentifier];
    v102 = bundleIdentifier4;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
  }

  else
  {
    v47 = MEMORY[0x1E695E0F0];
  }

  v48 = objc_alloc(MEMORY[0x1E695CF38]);
  targetHandle = [actionCopy targetHandle];
  v50 = MEMORY[0x1E6996580];
  v82 = userIdentifier;
  v51 = (*(*MEMORY[0x1E6996580] + 16))();
  (*(*v50 + 16))();
  v53 = v52 = service;
  v54 = (*(*v50 + 16))();
  teamIdentifier = [actionCopy teamIdentifier];
  v56 = [v48 initWithUrlString:0 username:targetHandle userIdentifier:v51 service:v53 displayname:v54 teamIdentifier:teamIdentifier bundleIdentifiers:v47];

  v81 = v52;
  v57 = v52;
  v58 = v56;
  v59 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:v57 value:v56];
  socialProfiles = [v22 socialProfiles];
  v61 = [socialProfiles arrayByAddingObject:v59];
  [v22 setSocialProfiles:v61];

  v62 = objc_alloc_init(MEMORY[0x1E695CF88]);
  [v62 updateContact:v22];
  contactStore3 = [(_CNUIUserActionCurator *)self contactStore];
  v92 = 0;
  LOBYTE(v61) = [contactStore3 executeSaveRequest:v62 error:&v92];
  v64 = v92;

  if ((v61 & 1) == 0)
  {
    v65 = +[CNUICoreLogProvider actions_os_log];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      type = [actionCopy type];
      *buf = 138544130;
      v95 = v64;
      v96 = 2112;
      v97 = v22;
      v98 = 2114;
      v99 = type;
      v100 = 2112;
      v101 = actionCopy;
      _os_log_debug_impl(&dword_1A31E6000, v65, OS_LOG_TYPE_DEBUG, "[User Action Curator] cannot save mutable contact with curated action, error = %{public}@\n mutable contact = %@\n user action = %{public}@: %@", buf, 0x2Au);
    }
  }

  v79 = v64;
  v80 = v47;
  v66 = [MEMORY[0x1E695DF70] arrayWithObjects:{v83, 0}];
  [v66 addObjectsFromArray:v87];
  contactStore4 = [(_CNUIUserActionCurator *)self contactStore];
  identifier2 = [v22 identifier];
  v69 = [contactStore4 unifiedContactWithIdentifier:identifier2 keysToFetch:v66 error:0];

  socialProfiles2 = [v69 socialProfiles];
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __59___CNUIUserActionCurator_curateUserAction_withKeysToFetch___block_invoke;
  v89[3] = &unk_1E76EA418;
  v90 = v59;
  v71 = v58;
  v91 = v71;
  v72 = [socialProfiles2 _cn_firstObjectPassingTest:v89];

  if (v72)
  {
    v73 = MEMORY[0x1E695CE08];
    identifier3 = [v72 identifier];
    v75 = [v73 contactPropertyWithContactNoCopy:v69 propertyKey:v83 identifier:identifier3];

    v37 = [[CNUIUserActionItem alloc] initWithItem:actionCopy contactProperty:v75];
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

  fetchCopy = v87;
  contactProperty = v75;
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