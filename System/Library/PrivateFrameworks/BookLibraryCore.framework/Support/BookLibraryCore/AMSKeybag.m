@interface AMSKeybag
+ (id)bl_keybagSyncDataForAccount:(id)a3 withTransactionType:(unsigned int)a4;
+ (void)bl_importKeybagData:(id)a3;
@end

@implementation AMSKeybag

+ (void)bl_importKeybagData:(id)a3
{
  v3 = a3;
  v4 = +[AMSKeybag sharedInstance];
  v8 = 0;
  v5 = [v4 importKeybagWithData:v3 error:&v8];

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

+ (id)bl_keybagSyncDataForAccount:(id)a3 withTransactionType:(unsigned int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = +[AMSKeybag sharedInstance];
  v7 = [v5 ams_DSID];

  if (v7)
  {
    v8 = v7;
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