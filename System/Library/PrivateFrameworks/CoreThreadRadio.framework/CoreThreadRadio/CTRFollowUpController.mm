@interface CTRFollowUpController
- (BOOL)ctrUtilPostFollowUpItem:(id)item;
- (CTRFollowUpController)init;
- (id)createFolloUpItem:(id)item;
- (void)ctrUtilClearFollowUpItem:(id)item;
@end

@implementation CTRFollowUpController

- (CTRFollowUpController)init
{
  v6.receiver = self;
  v6.super_class = CTRFollowUpController;
  v2 = [(CTRFollowUpController *)&v6 init];
  if (v2)
  {
    v3 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.fillmore.hw.fault"];
    ctrFollowUpController = v2->_ctrFollowUpController;
    v2->_ctrFollowUpController = v3;
  }

  return v2;
}

- (id)createFolloUpItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(FLFollowUpItem);
  v5 = v4;
  if (v4)
  {
    [v4 setUniqueIdentifier:itemCopy];
    v6 = objc_alloc_init(FLFollowUpNotification);
    if (v6)
    {
      v7 = +[NSMutableSet set];
      [v7 addObject:FLNotificationOptionNotificationCenter];
      [v6 setOptions:v7];
      [v5 setNotification:v6];
      v8 = v5;

      goto LABEL_10;
    }

    v9 = log_get_logging_obg("com.apple.wpantund", "default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CTRFollowUpController createFolloUpItem:v9];
    }
  }

  else
  {
    v6 = log_get_logging_obg("com.apple.wpantund", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CTRFollowUpController createFolloUpItem:v6];
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (void)ctrUtilClearFollowUpItem:(id)item
{
  itemCopy = item;
  ctrFollowUpController = self->_ctrFollowUpController;
  v15 = itemCopy;
  v6 = [NSArray arrayWithObjects:&v15 count:1];
  v7 = [(FLFollowUpController *)ctrFollowUpController clearPendingFollowUpItemsWithUniqueIdentifiers:v6 error:0];

  v8 = log_get_logging_obg("com.apple.wpantund", "default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[CTRFollowUpController ctrUtilClearFollowUpItem:]";
    v11 = 2112;
    v12 = itemCopy;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: Cleared followup item, Unique Identifier : %@, ret : %d", &v9, 0x1Cu);
  }
}

- (BOOL)ctrUtilPostFollowUpItem:(id)item
{
  itemCopy = item;
  if (!self->_ctrFollowUpController)
  {
    v5 = log_get_logging_obg("com.apple.wpantund", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[CTRFollowUpController ctrUtilPostFollowUpItem:]";
      v11 = 2112;
      v12 = itemCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: Unique Identifier : %@, Followup controller instance is nil, returning false", &v9, 0x16u);
    }

    goto LABEL_10;
  }

  v5 = [(CTRFollowUpController *)self createFolloUpItem:itemCopy];
  if (!v5)
  {
    v5 = log_get_logging_obg("com.apple.wpantund", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CTRFollowUpController *)itemCopy ctrUtilPostFollowUpItem:v5];
    }

LABEL_10:
    LOBYTE(v6) = 0;
    goto LABEL_11;
  }

  v6 = [(FLFollowUpController *)self->_ctrFollowUpController postFollowUpItem:v5 error:0];
  v7 = log_get_logging_obg("com.apple.wpantund", "default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "[CTRFollowUpController ctrUtilPostFollowUpItem:]";
    v11 = 2112;
    v12 = itemCopy;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: Unique Identifier : %@, Followup item post return val is : %d", &v9, 0x1Cu);
  }

LABEL_11:
  return v6;
}

- (void)createFolloUpItem:(os_log_t)log .cold.1(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CTRFollowUpController createFolloUpItem:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed to allocate Followup notification", &v1, 0xCu);
}

- (void)createFolloUpItem:(os_log_t)log .cold.2(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CTRFollowUpController createFolloUpItem:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed to allocate Followup item", &v1, 0xCu);
}

- (void)ctrUtilPostFollowUpItem:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[CTRFollowUpController ctrUtilPostFollowUpItem:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Unique Identifier : %@, Failed to allocate Followup item, returning false", &v2, 0x16u);
}

@end