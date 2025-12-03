@interface FAFollowupPushHandler
- (BOOL)shouldProcess:(id)process;
- (FAFollowupPushHandler)init;
- (id)removeFamilyInvites:(id)invites;
- (void)process:(id)process;
@end

@implementation FAFollowupPushHandler

- (FAFollowupPushHandler)init
{
  v7.receiver = self;
  v7.super_class = FAFollowupPushHandler;
  v2 = [(FAFollowupPushHandler *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("family_followup_request", v3);
    networkingQueue = v2->_networkingQueue;
    v2->_networkingQueue = v4;
  }

  return v2;
}

- (BOOL)shouldProcess:(id)process
{
  event = [process event];
  v4 = [event isEqualToString:@"family_followups"];

  return v4;
}

- (void)process:(id)process
{
  processCopy = process;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    payload = [processCopy payload];
    *buf = 138412290;
    v21 = payload;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Processing family followup push with user info: %@.", buf, 0xCu);
  }

  payload2 = [processCopy payload];
  v8 = [payload2 objectForKeyedSubscript:AKFollowUpPushPayloadKey];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 mutableCopy];
    v10 = [(FAFollowupPushHandler *)self removeFamilyInvites:v9];

    altDSID = [processCopy altDSID];
    [FAFollowupManager synchronizeFollowupWithPayload:v10 altDSID:altDSID];
  }

  else
  {
    v12 = _FALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No cfudata found. Fetching it directly.", buf, 2u);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000C2E8;
    v19[3] = &unk_1000A6690;
    v19[4] = self;
    v13 = objc_retainBlock(v19);
    networkingQueue = self->_networkingQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C45C;
    block[3] = &unk_1000A66B8;
    v17 = processCopy;
    v18 = v13;
    v15 = v13;
    dispatch_async(networkingQueue, block);
  }
}

- (id)removeFamilyInvites:(id)invites
{
  invitesCopy = invites;
  if (_os_feature_enabled_impl())
  {
    v19 = cfuItemsField;
    v20 = invitesCopy;
    v4 = [invitesCopy objectForKeyedSubscript:?];
    v5 = [v4 mutableCopy];

    v6 = _FALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CFUItems before removing familyInvite %@", buf, 0xCu);
    }

    v7 = [v5 count];
    if (v7 >= 1)
    {
      v8 = cfuType;
      v9 = familyInvite;
      v10 = (v7 & 0x7FFFFFFF) - 1;
      do
      {
        v11 = _FALogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v22) = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Checking CFU Item %d", buf, 8u);
        }

        v12 = [v5 objectAtIndexedSubscript:v10];
        v13 = [v12 objectForKeyedSubscript:v8];
        v14 = [v13 isEqualToString:v9];

        if (v14)
        {
          v15 = _FALogSystem();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "CFU Item cfuType matches familyInvite so removing it from the set", buf, 2u);
          }

          [v5 removeObjectAtIndex:v10];
        }

        v16 = v10-- + 1;
      }

      while (v16 > 1);
    }

    invitesCopy = v20;
    [v20 setObject:v5 forKeyedSubscript:v19];
    v17 = _FALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "CFUItems after removing family invites %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = _FALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BPI feature flag not enabled in removeFamilyInvites", buf, 2u);
    }
  }

  return invitesCopy;
}

@end