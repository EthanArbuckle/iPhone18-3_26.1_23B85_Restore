@interface HDNanoHealthNotification
+ (id)category;
- (HDNanoHealthNotification)initWithNotificationManager:(id)manager;
- (id)body;
- (id)title;
- (void)triggerNotification;
@end

@implementation HDNanoHealthNotification

- (HDNanoHealthNotification)initWithNotificationManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = HDNanoHealthNotification;
  v6 = [(HDNanoHealthNotification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationManager, manager);
  }

  return v7;
}

+ (id)category
{
  objc_opt_class();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return @"<INVALID>";
}

- (id)title
{
  objc_opt_class();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_283BF39C8;
}

- (id)body
{
  objc_opt_class();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_283BF39C8;
}

- (void)triggerNotification
{
  title = [(HDNanoHealthNotification *)self title];
  body = [(HDNanoHealthNotification *)self body];
  v5 = body;
  if (self)
  {
    v6 = MEMORY[0x277CE1F60];
    v7 = body;
    v8 = title;
    v9 = objc_alloc_init(v6);
    [v9 setTitle:v8];

    [v9 setBody:v7];
    category = [objc_opt_class() category];
    [v9 setCategoryIdentifier:category];

    v11 = [MEMORY[0x277CE1FE0] soundWithAlertType:25];
    [v9 setSound:v11];

    [v9 setShouldIgnoreDoNotDisturb:1];
  }

  else
  {
    v9 = 0;
  }

  category2 = [objc_opt_class() category];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v15 = [category2 stringByAppendingString:uUIDString];

  v16 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v15 content:v9 trigger:0];
  [v16 setDestinations:{-[HDNanoHealthNotification destinations](self, "destinations")}];
  notificationManager = self->_notificationManager;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__HDNanoHealthNotification_triggerNotification__block_invoke;
  v18[3] = &unk_2786130B0;
  v18[4] = self;
  [(HDNotificationManager *)notificationManager postNotificationWithRequest:v16 completion:v18];
}

void __47__HDNanoHealthNotification_triggerNotification__block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC300];
  if (os_log_type_enabled(*MEMORY[0x277CCC300], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = @"NO";
    v13 = 138412802;
    v14 = v10;
    v15 = 2112;
    if (a2)
    {
      v11 = @"YES";
    }

    v16 = v11;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "Posted %@ with success %@, error: %@", &v13, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end