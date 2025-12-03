@interface CNUIUserActivityRestorer
+ (OS_os_log)log;
- (BOOL)restoreCreateContactIntent:(id)intent;
- (BOOL)restoreEditingContact:(id)contact;
- (BOOL)restoreSpotlightQueryContinuation:(id)continuation;
- (BOOL)restoreSpotlightSearchableItem:(id)item;
- (BOOL)restoreUserActivity:(id)activity;
- (BOOL)restoreViewingContact:(id)contact;
- (BOOL)restoreViewingGroups:(id)groups;
- (BOOL)restoreViewingList:(id)list;
- (BOOL)shouldEnableActivityIndicatorWhenRestoringUserActivityWithType:(id)type;
- (CNUIUserActivityRestorer)initWithContactStore:(id)store;
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

- (CNUIUserActivityRestorer)initWithContactStore:(id)store
{
  v36[7] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v26.receiver = self;
  v26.super_class = CNUIUserActivityRestorer;
  v6 = [(CNUIUserActivityRestorer *)&v26 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
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
    activityTypeSpotlightQueryContinuation = [(CNUIUserActivityRestorer *)v7 activityTypeSpotlightQueryContinuation];
    v36[4] = activityTypeSpotlightQueryContinuation;
    activityTypeSpotlightSearchableItem = [(CNUIUserActivityRestorer *)v7 activityTypeSpotlightSearchableItem];
    v36[5] = activityTypeSpotlightSearchableItem;
    activityTypeCreateContactIntent = [(CNUIUserActivityRestorer *)v7 activityTypeCreateContactIntent];
    v36[6] = activityTypeCreateContactIntent;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:7];
    v22 = [v17 setWithArray:v21];
    restorableActivityTypes = v7->_restorableActivityTypes;
    v7->_restorableActivityTypes = v22;

    v24 = v7;
  }

  return v7;
}

- (BOOL)shouldEnableActivityIndicatorWhenRestoringUserActivityWithType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:CNUIActivityTypeViewingContact] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", CNUIActivityTypeEditingContact) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", CNUIActivityTypeViewingList) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", CNUIActivityTypeViewingGroups))
  {
    v5 = 1;
  }

  else
  {
    activityTypeSpotlightSearchableItem = [(CNUIUserActivityRestorer *)self activityTypeSpotlightSearchableItem];
    v5 = [typeCopy isEqualToString:activityTypeSpotlightSearchableItem];
  }

  return v5;
}

- (BOOL)restoreUserActivity:(id)activity
{
  v29 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    activityType = [activityCopy activityType];
    v27 = 138412290;
    v28 = activityType;
    _os_log_impl(&dword_1A31E6000, v5, OS_LOG_TYPE_INFO, "did receive activity of type %@", &v27, 0xCu);
  }

  activityType2 = [activityCopy activityType];
  v8 = [activityType2 isEqualToString:CNUIActivityTypeViewingContact];

  if (v8)
  {
    v9 = [(CNUIUserActivityRestorer *)self restoreViewingContact:activityCopy];
  }

  else
  {
    activityType3 = [activityCopy activityType];
    v11 = [activityType3 isEqualToString:CNUIActivityTypeEditingContact];

    if (v11)
    {
      v9 = [(CNUIUserActivityRestorer *)self restoreEditingContact:activityCopy];
    }

    else
    {
      activityType4 = [activityCopy activityType];
      v13 = [activityType4 isEqualToString:CNUIActivityTypeViewingList];

      if (v13)
      {
        v9 = [(CNUIUserActivityRestorer *)self restoreViewingList:activityCopy];
      }

      else
      {
        activityType5 = [activityCopy activityType];
        v15 = [activityType5 isEqualToString:CNUIActivityTypeViewingGroups];

        if (v15)
        {
          v9 = [(CNUIUserActivityRestorer *)self restoreViewingGroups:activityCopy];
        }

        else
        {
          activityType6 = [activityCopy activityType];
          activityTypeSpotlightQueryContinuation = [(CNUIUserActivityRestorer *)self activityTypeSpotlightQueryContinuation];
          v18 = [activityType6 isEqualToString:activityTypeSpotlightQueryContinuation];

          if (v18)
          {
            v9 = [(CNUIUserActivityRestorer *)self restoreSpotlightQueryContinuation:activityCopy];
          }

          else
          {
            activityType7 = [activityCopy activityType];
            activityTypeSpotlightSearchableItem = [(CNUIUserActivityRestorer *)self activityTypeSpotlightSearchableItem];
            v21 = [activityType7 isEqualToString:activityTypeSpotlightSearchableItem];

            if (v21)
            {
              v9 = [(CNUIUserActivityRestorer *)self restoreSpotlightSearchableItem:activityCopy];
            }

            else
            {
              activityType8 = [activityCopy activityType];
              activityTypeCreateContactIntent = [(CNUIUserActivityRestorer *)self activityTypeCreateContactIntent];
              v24 = [activityType8 isEqualToString:activityTypeCreateContactIntent];

              if (!v24)
              {
                v25 = 0;
                goto LABEL_18;
              }

              v9 = [(CNUIUserActivityRestorer *)self restoreCreateContactIntent:activityCopy];
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

- (BOOL)restoreViewingContact:(id)contact
{
  v22[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v22[0] = *MEMORY[0x1E695C258];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  delegate = [(CNUIUserActivityRestorer *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CNUIUserActivityRestorer *)self delegate];
    v9 = [delegate2 userActivityRestorer:self keysToFetchWhenRestoringViewContactActivity:contactCopy];

    v5 = v9;
  }

  contactStore = [(CNUIUserActivityRestorer *)self contactStore];
  userInfo = [contactCopy userInfo];
  v12 = [contactStore contactWithUserActivityUserInfo:userInfo keysToFetch:v5];

  v13 = [objc_opt_class() log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    identifier = [v12 identifier];
    v18 = 138412546;
    v19 = v12;
    v20 = 2112;
    v21 = identifier;
    _os_log_impl(&dword_1A31E6000, v13, OS_LOG_TYPE_INFO, "activity continuity - continuing with viewing contact %@ (%@)", &v18, 0x16u);
  }

  delegate3 = [(CNUIUserActivityRestorer *)self delegate];
  v16 = [delegate3 userActivityRestorer:self restoreViewContact:v12 activity:contactCopy];

  return v16;
}

- (BOOL)restoreEditingContact:(id)contact
{
  v22[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v22[0] = *MEMORY[0x1E695C258];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  delegate = [(CNUIUserActivityRestorer *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(CNUIUserActivityRestorer *)self delegate];
    v9 = [delegate2 userActivityRestorer:self keysToFetchWhenRestoringEditContactContactActivity:contactCopy];

    v5 = v9;
  }

  contactStore = [(CNUIUserActivityRestorer *)self contactStore];
  userInfo = [contactCopy userInfo];
  v12 = [contactStore contactWithUserActivityUserInfo:userInfo keysToFetch:v5];

  v13 = [objc_opt_class() log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    identifier = [v12 identifier];
    v18 = 138412546;
    v19 = v12;
    v20 = 2112;
    v21 = identifier;
    _os_log_impl(&dword_1A31E6000, v13, OS_LOG_TYPE_INFO, "activity continuity - continuing with editing contact %@ (%@)", &v18, 0x16u);
  }

  delegate3 = [(CNUIUserActivityRestorer *)self delegate];
  v16 = [delegate3 userActivityRestorer:self restoreEditContact:v12 activity:contactCopy];

  return v16;
}

- (BOOL)restoreViewingList:(id)list
{
  v40[1] = *MEMORY[0x1E69E9840];
  listCopy = list;
  userInfo = [listCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:CNUIActivityUserInformationListTopContactKey];

  userInfo2 = [listCopy userInfo];
  v29 = [userInfo2 objectForKeyedSubscript:CNUIActivityUserInformationDisplayedContactKey];

  userInfo3 = [listCopy userInfo];
  v9 = [userInfo3 objectForKeyedSubscript:CNUIActivityUserInformationSearchStringKey];

  userInfo4 = [listCopy userInfo];
  v11 = [userInfo4 objectForKeyedSubscript:CNUIActivityUserInformationIsShowingGroupsKey];
  bOOLValue = [v11 BOOLValue];

  v40[0] = *MEMORY[0x1E695C258];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  delegate = [(CNUIUserActivityRestorer *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    delegate2 = [(CNUIUserActivityRestorer *)self delegate];
    v17 = [delegate2 userActivityRestorer:self keysToFetchWhenRestoringViewContactActivity:listCopy];

    v13 = v17;
  }

  contactStore = [(CNUIUserActivityRestorer *)self contactStore];
  v28 = v6;
  v19 = [contactStore contactWithUserActivityUserInfo:v6 keysToFetch:v13];

  contactStore2 = [(CNUIUserActivityRestorer *)self contactStore];
  v21 = [contactStore2 contactWithUserActivityUserInfo:v29 keysToFetch:v13];

  v22 = [objc_opt_class() log];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    identifier = [v19 identifier];
    identifier2 = [v21 identifier];
    *buf = 138413314;
    v31 = v19;
    v32 = 2112;
    v33 = identifier;
    v34 = 2112;
    v35 = v21;
    v36 = 2112;
    v37 = identifier2;
    v38 = 2112;
    v39 = v9;
    _os_log_impl(&dword_1A31E6000, v22, OS_LOG_TYPE_INFO, "activity continuity - continuing with top of list contact %@ (%@) viewing contact %@ (%@) with search String %@", buf, 0x34u);
  }

  delegate3 = [(CNUIUserActivityRestorer *)self delegate];
  v26 = [delegate3 userActivityRestorer:self restoreViewListAtContact:v19 displayedContact:v21 searchString:v9 isShowingGroups:bOOLValue activity:listCopy];

  return v26;
}

- (BOOL)restoreViewingGroups:(id)groups
{
  groupsCopy = groups;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_1A31E6000, v5, OS_LOG_TYPE_INFO, "activity continuity - continuing viewing groups", v9, 2u);
  }

  delegate = [(CNUIUserActivityRestorer *)self delegate];
  v7 = [delegate userActivityRestorer:self restoreViewGroupsWithActivity:groupsCopy];

  return v7;
}

- (BOOL)restoreSpotlightQueryContinuation:(id)continuation
{
  v23 = *MEMORY[0x1E69E9840];
  continuationCopy = continuation;
  userInfo = [continuationCopy userInfo];
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
  v10 = [userInfo objectForKeyedSubscript:{v9, v15}];

  v11 = [objc_opt_class() log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1A31E6000, v11, OS_LOG_TYPE_INFO, "activity continuity - continuing with spotlight query: %@", &buf, 0xCu);
  }

  delegate = [(CNUIUserActivityRestorer *)self delegate];
  v13 = [delegate userActivityRestorer:self restoreSearch:v10 activity:continuationCopy];

  return v13;
}

- (BOOL)restoreSpotlightSearchableItem:(id)item
{
  v32 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  userInfo = [itemCopy userInfo];
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
  v10 = [userInfo objectForKeyedSubscript:v9];

  v28 = *MEMORY[0x1E695C258];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  delegate = [(CNUIUserActivityRestorer *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(CNUIUserActivityRestorer *)self delegate];
    v15 = [delegate2 userActivityRestorer:self keysToFetchWhenRestoringViewContactActivity:itemCopy];

    v11 = v15;
  }

  contactStore = [(CNUIUserActivityRestorer *)self contactStore];
  v23 = 0;
  v17 = [contactStore unifiedContactWithIdentifier:v10 keysToFetch:v11 error:&v23];
  v18 = v23;

  v19 = [objc_opt_class() log];
  delegate3 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(CNUIUserActivityRestorer *)v10 restoreSpotlightSearchableItem:v18, delegate3];
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
      _os_log_impl(&dword_1A31E6000, delegate3, OS_LOG_TYPE_INFO, "activity continuity - continuing with spotlight searchable contact %@ (%@)", buf, 0x16u);
    }

    delegate3 = [(CNUIUserActivityRestorer *)self delegate];
    v21 = [delegate3 userActivityRestorer:self restoreViewContact:v17 activity:itemCopy];
  }

  return v21;
}

- (BOOL)restoreCreateContactIntent:(id)intent
{
  intentCopy = intent;
  objc_opt_class();
  interaction = [intentCopy interaction];
  intent = [interaction intent];
  if (objc_opt_isKindOfClass())
  {
    v7 = intent;
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

    delegate = [(CNUIUserActivityRestorer *)self delegate];
    v10 = [delegate userActivityRestorer:self restoreCreateContact:0 activity:intentCopy];
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