@interface CBSUIAlert
+ (id)alertWithTitle:(id)title message:(id)message preferredStyle:(int64_t)style;
- (CBSUIAlert)initWithCoder:(id)coder;
- (CBSUIAlert)initWithTitle:(id)title message:(id)message preferredStyle:(int64_t)style;
- (id)alertController;
- (void)_receiveResponse;
- (void)_sendCreate;
- (void)activate;
- (void)deactivate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CBSUIAlert

- (CBSUIAlert)initWithTitle:(id)title message:(id)message preferredStyle:(int64_t)style
{
  titleCopy = title;
  messageCopy = message;
  v19.receiver = self;
  v19.super_class = CBSUIAlert;
  v11 = [(CBSUIAlert *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, title);
    objc_storeStrong(&v12->_message, message);
    v12->_preferredStyle = style;
    array = [MEMORY[0x277CBEB18] array];
    actions = v12->_actions;
    v12->_actions = array;

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v12->_identifier;
    v12->_identifier = uUIDString;
  }

  return v12;
}

+ (id)alertWithTitle:(id)title message:(id)message preferredStyle:(int64_t)style
{
  messageCopy = message;
  titleCopy = title;
  v10 = [[self alloc] initWithTitle:titleCopy message:messageCopy preferredStyle:style];

  return v10;
}

- (void)activate
{
  if (![(CBSUIAlert *)self isActive])
  {
    [(CBSUIAlert *)self setIsActive:1];

    [(CBSUIAlert *)self _sendCreate];
  }
}

- (void)deactivate
{
  if ([(CBSUIAlert *)self isActive])
  {
    [(CBSUIAlert *)self _sendDismiss];

    [(CBSUIAlert *)self setIsActive:0];
  }
}

- (id)alertController
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D75110];
  title = [(CBSUIAlert *)self title];
  message = [(CBSUIAlert *)self message];
  v6 = [v3 alertControllerWithTitle:title message:message preferredStyle:{-[CBSUIAlert preferredStyle](self, "preferredStyle")}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(CBSUIAlert *)self actions];
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = MEMORY[0x277D750F8];
        title2 = [v11 title];
        style = [v11 style];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __29__CBSUIAlert_alertController__block_invoke;
        v19[3] = &unk_278DB2E78;
        v19[4] = v11;
        v15 = [v12 actionWithTitle:title2 style:style handler:v19];

        [v6 addAction:v15];
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

void __29__CBSUIAlert_alertController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];

  if (v2)
  {
    v3 = [*(a1 + 32) handler];
    v3[2]();
  }
}

- (void)_sendCreate
{
  v3 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  v4 = +[CBSClient defaultClient];
  remoteAlertServer = [v4 remoteAlertServer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__CBSUIAlert__sendCreate__block_invoke;
  v7[3] = &unk_278DB2EA0;
  objc_copyWeak(&v9, &location);
  v6 = v3;
  v8 = v6;
  [remoteAlertServer createAlert:self timeout:0 completion:v7];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  [(CBSUIAlert *)self _receiveResponse];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __25__CBSUIAlert__sendCreate__block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = CheckerBoardLogHandleForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained identifier];
    v8 = 138412546;
    v9 = v6;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&dword_2433DB000, v5, OS_LOG_TYPE_DEFAULT, "Alert creation request for [%@] succeeded: %d", &v8, 0x12u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_receiveResponse
{
  v3 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  v4 = +[CBSClient defaultClient];
  remoteAlertServer = [v4 remoteAlertServer];
  identifier = [(CBSUIAlert *)self identifier];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __30__CBSUIAlert__receiveResponse__block_invoke;
  v8[3] = &unk_278DB2EC8;
  objc_copyWeak(&v10, &location);
  v7 = v3;
  v9 = v7;
  [remoteAlertServer receiveResponseFromAlertWithIdentifier:identifier timeout:v8 completion:0.0];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __30__CBSUIAlert__receiveResponse__block_invoke(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = CheckerBoardLogHandleForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained identifier];
    v7 = [WeakRetained actions];
    v16 = 138412802;
    v17 = v6;
    v18 = 2048;
    v19 = a2;
    v20 = 2048;
    v21 = [v7 count];
    _os_log_impl(&dword_2433DB000, v5, OS_LOG_TYPE_DEFAULT, "Alert [%@] received response: %lu/%lu", &v16, 0x20u);
  }

  v8 = [WeakRetained actions];
  v9 = [v8 count];

  if (v9 > a2)
  {
    v10 = [WeakRetained actions];
    v11 = [v10 objectAtIndex:a2];

    v12 = CheckerBoardLogHandleForCategory(5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v11;
      _os_log_impl(&dword_2433DB000, v12, OS_LOG_TYPE_DEFAULT, "Invoking action: %@", &v16, 0xCu);
    }

    v13 = [v11 handler];

    if (v13)
    {
      v14 = [v11 handler];
      v14[2]();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v15 = *MEMORY[0x277D85DE8];
}

- (CBSUIAlert)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CBSUIAlert;
  v5 = [(CBSUIAlert *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v8;

    v5->_preferredStyle = [coderCopy decodeIntegerForKey:@"preferredStyle"];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(CBSUIAlert *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  message = [(CBSUIAlert *)self message];
  [coderCopy encodeObject:message forKey:@"message"];

  [coderCopy encodeInteger:-[CBSUIAlert preferredStyle](self forKey:{"preferredStyle"), @"preferredStyle"}];
  actions = [(CBSUIAlert *)self actions];
  [coderCopy encodeObject:actions forKey:@"actions"];

  identifier = [(CBSUIAlert *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

@end