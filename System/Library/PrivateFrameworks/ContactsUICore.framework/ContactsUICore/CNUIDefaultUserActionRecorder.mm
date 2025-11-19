@interface CNUIDefaultUserActionRecorder
- (CNUIDefaultUserActionRecorder)init;
- (CNUIDefaultUserActionRecorder)initWithRecentsLibrary:(id)a3 eventFactory:(id)a4;
- (void)recordUserAction:(id)a3;
@end

@implementation CNUIDefaultUserActionRecorder

- (CNUIDefaultUserActionRecorder)init
{
  v3 = [MEMORY[0x1E6998FC8] defaultInstance];
  v4 = objc_alloc_init(_CNUIDefaultUserActionRecorderEventFactory);
  v5 = [(CNUIDefaultUserActionRecorder *)self initWithRecentsLibrary:v3 eventFactory:v4];

  return v5;
}

- (CNUIDefaultUserActionRecorder)initWithRecentsLibrary:(id)a3 eventFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNUIDefaultUserActionRecorder;
  v9 = [(CNUIDefaultUserActionRecorder *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_library, a3);
    objc_storeStrong(&v10->_eventFactory, a4);
    v11 = v10;
  }

  return v10;
}

- (void)recordUserAction:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v38 = v4;
    _os_log_impl(&dword_1A31E6000, v5, OS_LOG_TYPE_INFO, "[Default Action] Recording default action: %@", buf, 0xCu);
  }

  v6 = [v4 contactProperty];
  v7 = [v6 contact];
  v8 = [v7 hasBeenPersisted];

  if (v8)
  {
    v9 = [v4 associatedRecentContactMetadata];
    if (v9)
    {
      v10 = [v4 associatedRecentContactMetadata];
      v11 = [v10 mutableCopy];
    }

    else
    {
      v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    }

    v12 = [v4 type];
    v13 = [v11 objectForKeyedSubscript:v12];
    if (v13)
    {
      v14 = [v4 type];
      v15 = [v11 objectForKeyedSubscript:v14];
      v16 = [v15 mutableCopy];
    }

    else
    {
      v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    }

    v35[0] = @"date";
    v17 = MEMORY[0x1E696AD98];
    v18 = [MEMORY[0x1E695DF00] date];
    [v18 timeIntervalSinceReferenceDate];
    v19 = [v17 numberWithDouble:?];
    v36[0] = v19;
    v35[1] = @"bundleIdentifier";
    v20 = [v4 bundleIdentifier];
    v21 = v20;
    v22 = &stru_1F162C170;
    if (v20)
    {
      v22 = v20;
    }

    v36[1] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
    v24 = [v4 contactProperty];
    v25 = [v24 identifier];
    [v16 setObject:v23 forKeyedSubscript:v25];

    v26 = [v4 type];
    [v11 setObject:v16 forKeyedSubscript:v26];

    v27 = [v4 contactProperty];
    v28 = CNUIUserActionRecentsAddressKindForContactProperty();

    v29 = [(CNUIDefaultUserActionRecorder *)self eventFactory];
    v30 = [v4 sanitizedTargetHandle];
    v31 = [v29 recentEventForAddress:v30 kind:v28 metadata:v11];

    v32 = [(CNUIDefaultUserActionRecorder *)self library];
    v34 = v31;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    [v32 recordContactEvents:v33 recentsDomain:@"CNUICRRecentsDomainContactDefaultAction" sendingAddress:0 completion:&__block_literal_global_44];
  }

  else
  {
    v11 = +[CNUICoreLogProvider actions_os_log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(CNUIDefaultUserActionRecorder *)v4 recordUserAction:v11];
    }
  }
}

void __50__CNUIDefaultUserActionRecorder_recordUserAction___block_invoke()
{
  v0 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v0 postNotificationName:@"com.apple.contacts.ContactsUICore.CNUIUserActionRecentsChangedNotification" object:0];
}

- (void)recordUserAction:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 contactProperty];
  v4 = [v3 contact];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_DEBUG, "[Default Action] Scratch that, contact has not been persisted %@", &v5, 0xCu);
}

@end