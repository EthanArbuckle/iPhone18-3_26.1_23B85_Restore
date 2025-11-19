@interface NPKPassUserNotificationFactory
- (NPKPassUserNotificationFactory)initWithDataSource:(id)a3;
- (NPKPassUserNotificationFactoryDataSource)dataSource;
- (id)passNotificationWithType:(unint64_t)a3 passUniqueID:(id)a4;
@end

@implementation NPKPassUserNotificationFactory

- (NPKPassUserNotificationFactory)initWithDataSource:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NPKPassUserNotificationFactory;
  v5 = [(NPKPassUserNotificationFactory *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
  }

  return v6;
}

- (id)passNotificationWithType:(unint64_t)a3 passUniqueID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(NPKPassUserNotificationFactory *)self dataSource];
  v8 = [(NPKUserNotificationExpressModeEnabled *)v7 passWithUniqueID:v6];

  if (v8)
  {
    if (a3 < 2)
    {
      v9 = [NPKUserNotificationExpressModeEnabled alloc];
      v10 = v8;
      v11 = 0;
    }

    else if (a3 == 2)
    {
      v9 = [NPKUserNotificationExpressModeEnabled alloc];
      v10 = v8;
      v11 = 1;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_14;
      }

      v9 = [NPKUserNotificationExpressModeEnabled alloc];
      v10 = v8;
      v11 = 2;
    }

    v7 = [(NPKUserNotificationExpressModeEnabled *)v9 initWithPass:v10 expressNotificationType:v11];
  }

  else
  {
    v12 = pk_General_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = pk_General_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v6;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Warning: Fail to find pass for notification with uniqueID:%@", &v17, 0xCu);
      }
    }

    v7 = 0;
  }

LABEL_14:

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NPKPassUserNotificationFactoryDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
  }

  else
  {
    v4 = [MEMORY[0x277D37FC0] sharedInstance];
  }

  v5 = v4;

  return v5;
}

@end