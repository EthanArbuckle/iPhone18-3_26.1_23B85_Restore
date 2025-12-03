@interface AMSKeybag
+ (id)bl_keybagSyncDataForAccount:(id)account withTransactionType:(unsigned int)type;
+ (void)bl_importKeybagData:(id)data;
@end

@implementation AMSKeybag

+ (void)bl_importKeybagData:(id)data
{
  dataCopy = data;
  v4 = +[AMSKeybag sharedInstance];
  v8 = 0;
  v5 = [v4 importKeybagWithData:dataCopy error:&v8];

  v6 = v8;
  if ((v5 & 1) == 0)
  {
    v7 = BLServiceLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to import keybag data for account error:  %@", buf, 0xCu);
    }
  }
}

+ (id)bl_keybagSyncDataForAccount:(id)account withTransactionType:(unsigned int)type
{
  v4 = *&type;
  accountCopy = account;
  v6 = +[AMSKeybag sharedInstance];
  ams_DSID = [accountCopy ams_DSID];

  if (ams_DSID)
  {
    v8 = ams_DSID;
  }

  else
  {
    v8 = &off_100129AD0;
  }

  v13 = 0;
  v9 = [v6 keybagSyncDataWithAccountID:v8 transactionType:v4 error:&v13];
  v10 = v13;

  if (!v9)
  {
    v11 = BLServiceLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to obtain keybay data for account error:  %@", buf, 0xCu);
    }
  }

  return v9;
}

@end