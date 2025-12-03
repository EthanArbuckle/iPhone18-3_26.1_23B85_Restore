@interface FAFollowupActionViewController
- (void)handleAKAction:(id)action completion:(id)completion;
- (void)handleActionWithURL:(id)l;
- (void)handleActionWithURLKey:(id)key completion:(id)completion;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
@end

@implementation FAFollowupActionViewController

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  actionCopy = action;
  v12 = _FALogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [itemCopy userInfo];
    v30 = 138412290;
    v31 = userInfo;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Processing followup item with info: %@", &v30, 0xCu);
  }

  objc_storeStrong(&self->_followupItem, item);
  userInfo2 = [actionCopy userInfo];
  v15 = [userInfo2 objectForKeyedSubscript:AKActionKey];

  userInfo3 = [actionCopy userInfo];
  v17 = [userInfo3 objectForKeyedSubscript:AKFollowUpSafariURLKey];

  userInfo4 = [actionCopy userInfo];

  v19 = [userInfo4 objectForKeyedSubscript:AKFollowUpURLKey];

  if (v19)
  {
    v20 = _FALogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138412290;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Received URL key: %@", &v30, 0xCu);
    }

    [(FAFollowupActionViewController *)self handleActionWithURLKey:v19 completion:completionCopy];
    goto LABEL_22;
  }

  if (v17)
  {
    v21 = [NSURL URLWithString:v17];
    if (v21)
    {
      v22 = _FALogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 138412290;
        v31 = v17;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Received URL: %@", &v30, 0xCu);
      }

      [(FAFollowupActionViewController *)self handleActionWithURL:v21];
    }

    completionCopy[2](completionCopy, 1);
LABEL_21:

    goto LABEL_22;
  }

  v23 = _FALogSystem();
  v24 = v23;
  if (v15)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138412290;
      v31 = v15;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Received AKAction %@", &v30, 0xCu);
    }

    v21 = objc_opt_new();
    uniqueIdentifier = [(FLFollowUpItem *)self->_followupItem uniqueIdentifier];
    [v21 setItemIdentifier:uniqueIdentifier];

    [v21 setAkAction:v15];
    userInfo5 = [itemCopy userInfo];
    v27 = [userInfo5 objectForKeyedSubscript:AKFollowUpIDMSDataKey];

    userInfo6 = [itemCopy userInfo];
    v29 = [userInfo6 objectForKeyedSubscript:AKFollowUpAltDSIDKey];

    if (v27)
    {
      [v21 setIdmsData:v27];
    }

    if (v29)
    {
      [v21 setAltDSID:v29];
    }

    [(FAFollowupActionViewController *)self handleAKAction:v21 completion:completionCopy];

    goto LABEL_21;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_100001B6C(v24);
  }

  completionCopy[2](completionCopy, 1);
LABEL_22:
}

- (void)handleActionWithURLKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Subclasses must override this method.", v6, 2u);
  }

  completionCopy[2](completionCopy, 1);
}

- (void)handleAKAction:(id)action completion:(id)completion
{
  completionCopy = completion;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Subclasses must override this method.", v6, 2u);
  }

  completionCopy[2](completionCopy, 1);
}

- (void)handleActionWithURL:(id)l
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Subclasses must override this method.", v4, 2u);
  }
}

@end