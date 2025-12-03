@interface CNUIDefaultUserActionRecorder
- (CNUIDefaultUserActionRecorder)init;
- (CNUIDefaultUserActionRecorder)initWithRecentsLibrary:(id)library eventFactory:(id)factory;
- (void)recordUserAction:(id)action;
@end

@implementation CNUIDefaultUserActionRecorder

- (CNUIDefaultUserActionRecorder)init
{
  defaultInstance = [MEMORY[0x1E6998FC8] defaultInstance];
  v4 = objc_alloc_init(_CNUIDefaultUserActionRecorderEventFactory);
  v5 = [(CNUIDefaultUserActionRecorder *)self initWithRecentsLibrary:defaultInstance eventFactory:v4];

  return v5;
}

- (CNUIDefaultUserActionRecorder)initWithRecentsLibrary:(id)library eventFactory:(id)factory
{
  libraryCopy = library;
  factoryCopy = factory;
  v13.receiver = self;
  v13.super_class = CNUIDefaultUserActionRecorder;
  v9 = [(CNUIDefaultUserActionRecorder *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_library, library);
    objc_storeStrong(&v10->_eventFactory, factory);
    v11 = v10;
  }

  return v10;
}

- (void)recordUserAction:(id)action
{
  v39 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v5 = +[CNUICoreLogProvider actions_os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v38 = actionCopy;
    _os_log_impl(&dword_1A31E6000, v5, OS_LOG_TYPE_INFO, "[Default Action] Recording default action: %@", buf, 0xCu);
  }

  contactProperty = [actionCopy contactProperty];
  contact = [contactProperty contact];
  hasBeenPersisted = [contact hasBeenPersisted];

  if (hasBeenPersisted)
  {
    associatedRecentContactMetadata = [actionCopy associatedRecentContactMetadata];
    if (associatedRecentContactMetadata)
    {
      associatedRecentContactMetadata2 = [actionCopy associatedRecentContactMetadata];
      v11 = [associatedRecentContactMetadata2 mutableCopy];
    }

    else
    {
      v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    }

    type = [actionCopy type];
    v13 = [v11 objectForKeyedSubscript:type];
    if (v13)
    {
      type2 = [actionCopy type];
      v15 = [v11 objectForKeyedSubscript:type2];
      v16 = [v15 mutableCopy];
    }

    else
    {
      v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    }

    v35[0] = @"date";
    v17 = MEMORY[0x1E696AD98];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    v19 = [v17 numberWithDouble:?];
    v36[0] = v19;
    v35[1] = @"bundleIdentifier";
    bundleIdentifier = [actionCopy bundleIdentifier];
    v21 = bundleIdentifier;
    v22 = &stru_1F162C170;
    if (bundleIdentifier)
    {
      v22 = bundleIdentifier;
    }

    v36[1] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
    contactProperty2 = [actionCopy contactProperty];
    identifier = [contactProperty2 identifier];
    [v16 setObject:v23 forKeyedSubscript:identifier];

    type3 = [actionCopy type];
    [v11 setObject:v16 forKeyedSubscript:type3];

    contactProperty3 = [actionCopy contactProperty];
    v28 = CNUIUserActionRecentsAddressKindForContactProperty();

    eventFactory = [(CNUIDefaultUserActionRecorder *)self eventFactory];
    sanitizedTargetHandle = [actionCopy sanitizedTargetHandle];
    v31 = [eventFactory recentEventForAddress:sanitizedTargetHandle kind:v28 metadata:v11];

    library = [(CNUIDefaultUserActionRecorder *)self library];
    v34 = v31;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    [library recordContactEvents:v33 recentsDomain:@"CNUICRRecentsDomainContactDefaultAction" sendingAddress:0 completion:&__block_literal_global_44];
  }

  else
  {
    v11 = +[CNUICoreLogProvider actions_os_log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(CNUIDefaultUserActionRecorder *)actionCopy recordUserAction:v11];
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