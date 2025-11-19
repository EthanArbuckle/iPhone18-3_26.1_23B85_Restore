@interface CNUIUserActivityRestorer
+ (OS_os_log)log;
- (BOOL)restoreCreateContactIntent:(id)a3;
- (BOOL)restoreEditingContact:(id)a3;
- (BOOL)restoreSpotlightQueryContinuation:(id)a3;
- (BOOL)restoreSpotlightSearchableItem:(id)a3;
- (BOOL)restoreUserActivity:(id)a3;
- (BOOL)restoreViewingContact:(id)a3;
- (BOOL)restoreViewingGroups:(id)a3;
- (BOOL)restoreViewingList:(id)a3;
- (BOOL)shouldEnableActivityIndicatorWhenRestoringUserActivityWithType:(id)a3;
- (CNUIUserActivityRestorer)initWithContactStore:(id)a3;
- (CNUIUserActivityRestorerDelegate)delegate;
@end

@implementation CNUIUserActivityRestorer

+ (OS_os_log)log
{
  if (log_cn_once_token_1 != -1)
  {
    +[CNUIUserActivityRestorer log];
  }

  v3 = log_cn_once_object_1;

  return v3;
}

uint64_t __31__CNUIUserActivityRestorer_log__block_invoke()
{
  log_cn_once_object_1 = os_log_create("contactsui", "activity");

  return MEMORY[0x1EEE66BB8]();
}

- (CNUIUserActivityRestorer)initWithContactStore:(id)a3
{
  v36[7] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v26.receiver = self;
  v26.super_class = CNUIUserActivityRestorer;
  v6 = [(CNUIUserActivityRestorer *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    activityTypeCreateContactIntent = v7->_activityTypeCreateContactIntent;
    v7->_activityTypeCreateContactIntent = v9;

    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v11 = getCSQueryContinuationActionTypeSymbolLoc_ptr;
    v35 = getCSQueryContinuationActionTypeSymbolLoc_ptr;
    if (!getCSQueryContinuationActionTypeSymbolLoc_ptr)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __getCSQueryContinuationActionTypeSymbolLoc_block_invoke;
      v30 = &unk_1E76E79E0;
      v31 = &v32;
      v12 = CoreSpotlightLibrary();
      v13 = dlsym(v12, "CSQueryContinuationActionType");
      *(v31[1] + 24) = v13;
      getCSQueryContinuationActionTypeSymbolLoc_ptr = *(v31[1] + 24);
      v11 = v33[3];
    }

    _Block_object_dispose(&v32, 8);
    if (!v11)
    {
      goto LABEL_10;
    }

    objc_storeStrong(&v7->_activityTypeSpotlightQueryContinuation, *v11);
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v14 = getCSSearchableItemActionTypeSymbolLoc_ptr;
    v35 = getCSSearchableItemActionTypeSymbolLoc_ptr;
    if (!getCSSearchableItemActionTypeSymbolLoc_ptr)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __getCSSearchableItemActionTypeSymbolLoc_block_invoke;
      v30 = &unk_1E76E79E0;
      v31 = &v32;
      v15 = CoreSpotlightLibrary();
      v16 = dlsym(v15, "CSSearchableItemActionType");
      *(v31[1] + 24) = v16;
      getCSSearchableItemActionTypeSymbolLoc_ptr = *(v31[1] + 24);
      v14 = v33[3];
    }

    _Block_object_dispose(&v32, 8);
    if (!v14)
    {
LABEL_10:
      +[CNUIIDSRequest IDSServiceForService:];
      __break(1u);
    }

    objc_storeStrong(&v7->_activityTypeSpotlightSearchableItem, *v14);
    v17 = MEMORY[0x1E695DFD8];
    v36[0] = CNUIActivityTypeViewingContact;
    v36[1] = CNUIActivityTypeEditingContact;
    v36[2] = CNUIActivityTypeViewingList;
    v36[3] = CNUIActivityTypeViewingGroups;
    v18 = [(CNUIUserActivityRestorer *)v7 activityTypeSpotlightQueryContinuation];
    v36[4] = v18;
    v19 = [(CNUIUserActivityRestorer *)v7 activityTypeSpotlightSearchableItem];
    v36[5] = v19;
    v20 = [(CNUIUserActivityRestorer *)v7 activityTypeCreateContactIntent];
    v36[6] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:7];
    v22 = [v17 setWithArray:v21];
    restorableActivityTypes = v7->_restorableActivityTypes;
    v7->_restorableActivityTypes = v22;

    v24 = v7;
  }

  return v7;
}

- (BOOL)shouldEnableActivityIndicatorWhenRestoringUserActivityWithType:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:CNUIActivityTypeViewingContact] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", CNUIActivityTypeEditingContact) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", CNUIActivityTypeViewingList) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", CNUIActivityTypeViewingGroups))
  {
    v5 = 1;
  }

  else
  {
    v7 = [(CNUIUserActivityRestorer *)self activityTypeSpotlightSearchableItem];
    v5 = [v4 isEqualToString:v7];
  }

  return v5;
}

- (BOOL)restoreUserActivity:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 activityType];
    v27 = 138412290;
    v28 = v6;
    _os_log_impl(&dword_1A31E6000, v5, OS_LOG_TYPE_INFO, "did receive activity of type %@", &v27, 0xCu);
  }

  v7 = [v4 activityType];
  v8 = [v7 isEqualToString:CNUIActivityTypeViewingContact];

  if (v8)
  {
    v9 = [(CNUIUserActivityRestorer *)self restoreViewingContact:v4];
  }

  else
  {
    v10 = [v4 activityType];
    v11 = [v10 isEqualToString:CNUIActivityTypeEditingContact];

    if (v11)
    {
      v9 = [(CNUIUserActivityRestorer *)self restoreEditingContact:v4];
    }

    else
    {
      v12 = [v4 activityType];
      v13 = [v12 isEqualToString:CNUIActivityTypeViewingList];

      if (v13)
      {
        v9 = [(CNUIUserActivityRestorer *)self restoreViewingList:v4];
      }

      else
      {
        v14 = [v4 activityType];
        v15 = [v14 isEqualToString:CNUIActivityTypeViewingGroups];

        if (v15)
        {
          v9 = [(CNUIUserActivityRestorer *)self restoreViewingGroups:v4];
        }

        else
        {
          v16 = [v4 activityType];
          v17 = [(CNUIUserActivityRestorer *)self activityTypeSpotlightQueryContinuation];
          v18 = [v16 isEqualToString:v17];

          if (v18)
          {
            v9 = [(CNUIUserActivityRestorer *)self restoreSpotlightQueryContinuation:v4];
          }

          else
          {
            v19 = [v4 activityType];
            v20 = [(CNUIUserActivityRestorer *)self activityTypeSpotlightSearchableItem];
            v21 = [v19 isEqualToString:v20];

            if (v21)
            {
              v9 = [(CNUIUserActivityRestorer *)self restoreSpotlightSearchableItem:v4];
            }

            else
            {
              v22 = [v4 activityType];
              v23 = [(CNUIUserActivityRestorer *)self activityTypeCreateContactIntent];
              v24 = [v22 isEqualToString:v23];

              if (!v24)
              {
                v25 = 0;
                goto LABEL_18;
              }

              v9 = [(CNUIUserActivityRestorer *)self restoreCreateContactIntent:v4];
            }
          }
        }
      }
    }
  }

  v25 = v9;
LABEL_18:

  return v25;
}

- (BOOL)restoreViewingContact:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22[0] = *MEMORY[0x1E695C258];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v6 = [(CNUIUserActivityRestorer *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNUIUserActivityRestorer *)self delegate];
    v9 = [v8 userActivityRestorer:self keysToFetchWhenRestoringViewContactActivity:v4];

    v5 = v9;
  }

  v10 = [(CNUIUserActivityRestorer *)self contactStore];
  v11 = [v4 userInfo];
  v12 = [v10 contactWithUserActivityUserInfo:v11 keysToFetch:v5];

  v13 = [objc_opt_class() log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v12 identifier];
    v18 = 138412546;
    v19 = v12;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_1A31E6000, v13, OS_LOG_TYPE_INFO, "activity continuity - continuing with viewing contact %@ (%@)", &v18, 0x16u);
  }

  v15 = [(CNUIUserActivityRestorer *)self delegate];
  v16 = [v15 userActivityRestorer:self restoreViewContact:v12 activity:v4];

  return v16;
}

- (BOOL)restoreEditingContact:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22[0] = *MEMORY[0x1E695C258];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v6 = [(CNUIUserActivityRestorer *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNUIUserActivityRestorer *)self delegate];
    v9 = [v8 userActivityRestorer:self keysToFetchWhenRestoringEditContactContactActivity:v4];

    v5 = v9;
  }

  v10 = [(CNUIUserActivityRestorer *)self contactStore];
  v11 = [v4 userInfo];
  v12 = [v10 contactWithUserActivityUserInfo:v11 keysToFetch:v5];

  v13 = [objc_opt_class() log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v12 identifier];
    v18 = 138412546;
    v19 = v12;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_1A31E6000, v13, OS_LOG_TYPE_INFO, "activity continuity - continuing with editing contact %@ (%@)", &v18, 0x16u);
  }

  v15 = [(CNUIUserActivityRestorer *)self delegate];
  v16 = [v15 userActivityRestorer:self restoreEditContact:v12 activity:v4];

  return v16;
}

- (BOOL)restoreViewingList:(id)a3
{
  v40[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:CNUIActivityUserInformationListTopContactKey];

  v7 = [v4 userInfo];
  v29 = [v7 objectForKeyedSubscript:CNUIActivityUserInformationDisplayedContactKey];

  v8 = [v4 userInfo];
  v9 = [v8 objectForKeyedSubscript:CNUIActivityUserInformationSearchStringKey];

  v10 = [v4 userInfo];
  v11 = [v10 objectForKeyedSubscript:CNUIActivityUserInformationIsShowingGroupsKey];
  v12 = [v11 BOOLValue];

  v40[0] = *MEMORY[0x1E695C258];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v14 = [(CNUIUserActivityRestorer *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(CNUIUserActivityRestorer *)self delegate];
    v17 = [v16 userActivityRestorer:self keysToFetchWhenRestoringViewContactActivity:v4];

    v13 = v17;
  }

  v18 = [(CNUIUserActivityRestorer *)self contactStore];
  v28 = v6;
  v19 = [v18 contactWithUserActivityUserInfo:v6 keysToFetch:v13];

  v20 = [(CNUIUserActivityRestorer *)self contactStore];
  v21 = [v20 contactWithUserActivityUserInfo:v29 keysToFetch:v13];

  v22 = [objc_opt_class() log];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = [v19 identifier];
    v24 = [v21 identifier];
    *buf = 138413314;
    v31 = v19;
    v32 = 2112;
    v33 = v23;
    v34 = 2112;
    v35 = v21;
    v36 = 2112;
    v37 = v24;
    v38 = 2112;
    v39 = v9;
    _os_log_impl(&dword_1A31E6000, v22, OS_LOG_TYPE_INFO, "activity continuity - continuing with top of list contact %@ (%@) viewing contact %@ (%@) with search String %@", buf, 0x34u);
  }

  v25 = [(CNUIUserActivityRestorer *)self delegate];
  v26 = [v25 userActivityRestorer:self restoreViewListAtContact:v19 displayedContact:v21 searchString:v9 isShowingGroups:v12 activity:v4];

  return v26;
}

- (BOOL)restoreViewingGroups:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_1A31E6000, v5, OS_LOG_TYPE_INFO, "activity continuity - continuing viewing groups", v9, 2u);
  }

  v6 = [(CNUIUserActivityRestorer *)self delegate];
  v7 = [v6 userActivityRestorer:self restoreViewGroupsWithActivity:v4];

  return v7;
}

- (BOOL)restoreSpotlightQueryContinuation:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v6 = getCSSearchQueryStringSymbolLoc_ptr;
  v18 = getCSSearchQueryStringSymbolLoc_ptr;
  if (!getCSSearchQueryStringSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v20 = __getCSSearchQueryStringSymbolLoc_block_invoke;
    v21 = &unk_1E76E79E0;
    v22 = &v15;
    v7 = CoreSpotlightLibrary();
    v8 = dlsym(v7, "CSSearchQueryString");
    *(v22[1] + 24) = v8;
    getCSSearchQueryStringSymbolLoc_ptr = *(v22[1] + 24);
    v6 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v6)
  {
    +[CNUIIDSRequest IDSServiceForService:];
    __break(1u);
  }

  v9 = *v6;
  v10 = [v5 objectForKeyedSubscript:{v9, v15}];

  v11 = [objc_opt_class() log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1A31E6000, v11, OS_LOG_TYPE_INFO, "activity continuity - continuing with spotlight query: %@", &buf, 0xCu);
  }

  v12 = [(CNUIUserActivityRestorer *)self delegate];
  v13 = [v12 userActivityRestorer:self restoreSearch:v10 activity:v4];

  return v13;
}

- (BOOL)restoreSpotlightSearchableItem:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v6 = getCSSearchableItemActivityIdentifierSymbolLoc_ptr;
  v27 = getCSSearchableItemActivityIdentifierSymbolLoc_ptr;
  if (!getCSSearchableItemActivityIdentifierSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCSSearchableItemActivityIdentifierSymbolLoc_block_invoke;
    v30 = &unk_1E76E79E0;
    v31 = &v24;
    v7 = CoreSpotlightLibrary();
    v8 = dlsym(v7, "CSSearchableItemActivityIdentifier");
    *(v31[1] + 24) = v8;
    getCSSearchableItemActivityIdentifierSymbolLoc_ptr = *(v31[1] + 24);
    v6 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v6)
  {
    +[CNUIIDSRequest IDSServiceForService:];
    __break(1u);
  }

  v9 = *v6;
  v10 = [v5 objectForKeyedSubscript:v9];

  v28 = *MEMORY[0x1E695C258];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  v12 = [(CNUIUserActivityRestorer *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(CNUIUserActivityRestorer *)self delegate];
    v15 = [v14 userActivityRestorer:self keysToFetchWhenRestoringViewContactActivity:v4];

    v11 = v15;
  }

  v16 = [(CNUIUserActivityRestorer *)self contactStore];
  v23 = 0;
  v17 = [v16 unifiedContactWithIdentifier:v10 keysToFetch:v11 error:&v23];
  v18 = v23;

  v19 = [objc_opt_class() log];
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(CNUIUserActivityRestorer *)v10 restoreSpotlightSearchableItem:v18, v20];
    }

    v21 = 0;
  }

  else
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_1A31E6000, v20, OS_LOG_TYPE_INFO, "activity continuity - continuing with spotlight searchable contact %@ (%@)", buf, 0x16u);
    }

    v20 = [(CNUIUserActivityRestorer *)self delegate];
    v21 = [v20 userActivityRestorer:self restoreViewContact:v17 activity:v4];
  }

  return v21;
}

- (BOOL)restoreCreateContactIntent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 interaction];
  v6 = [v5 intent];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A31E6000, v8, OS_LOG_TYPE_INFO, "activity continuity - continuing with create contact", v12, 2u);
    }

    v9 = [(CNUIUserActivityRestorer *)self delegate];
    v10 = [v9 userActivityRestorer:self restoreCreateContact:0 activity:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CNUIUserActivityRestorerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)restoreSpotlightSearchableItem:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1A31E6000, log, OS_LOG_TYPE_ERROR, "activity continuity - failed to continue with spotlight searchable contact (%@), error: %@", &v3, 0x16u);
}

@end