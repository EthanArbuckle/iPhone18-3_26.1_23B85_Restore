@interface IMSimulatedAccountController
- (IMSimulatedAccountController)init;
- (id)activeAccounts;
- (id)activeIMessageAccount;
- (id)activeSMSAccount;
@end

@implementation IMSimulatedAccountController

- (id)activeAccounts
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_simulatedAccountsPerService;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = objc_msgSend_objectForKey_(self->_simulatedAccountsPerService, v7, *(*(&v15 + 1) + 8 * i), v15);
        objc_msgSend_addObjectsFromArray_(v3, v12, v11);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v15, v19, 16);
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)activeIMessageAccount
{
  v2 = objc_msgSend_objectForKey_(self->_simulatedAccountsPerService, a2, *MEMORY[0x1E69A7AF0]);
  v5 = objc_msgSend_firstObject(v2, v3, v4);

  return v5;
}

- (id)activeSMSAccount
{
  v2 = objc_msgSend_objectForKey_(self->_simulatedAccountsPerService, a2, *MEMORY[0x1E69A7AE0]);
  v5 = objc_msgSend_firstObject(v2, v3, v4);

  return v5;
}

- (IMSimulatedAccountController)init
{
  v6.receiver = self;
  v6.super_class = IMSimulatedAccountController;
  v2 = [(IMAccountController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    simulatedAccountsPerService = v2->_simulatedAccountsPerService;
    v2->_simulatedAccountsPerService = v3;
  }

  return v2;
}

@end