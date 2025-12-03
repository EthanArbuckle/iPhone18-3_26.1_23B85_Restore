@interface SUUISignInSettingsGroupController
- (id)_keyForSettingDescription:(id)description;
- (id)_settingDescriptionForKey:(id)key;
- (id)_submitSettingDescription;
- (id)valueForSettingDescription:(id)description;
- (void)_attemptSignInWithAccountName:(id)name password:(id)password;
- (void)_becomeFirstResponderWithKey:(id)key;
- (void)_resignFirstResponder;
- (void)_signInFailed:(id)failed error:(id)error;
- (void)_signInSuccess:(id)success;
- (void)_updateFieldsAuthenticating:(BOOL)authenticating;
- (void)_updateValidation;
- (void)returnInSettingDescription:(id)description;
- (void)setValue:(id)value forSettingDescription:(id)description;
- (void)submitSettingDescription:(id)description;
@end

@implementation SUUISignInSettingsGroupController

- (void)returnInSettingDescription:(id)description
{
  v4 = [(SUUISignInSettingsGroupController *)self _keyForSettingDescription:description];
  if ([v4 isEqualToString:@"accountName"])
  {
    [(SUUISignInSettingsGroupController *)self _becomeFirstResponderWithKey:@"password"];
  }

  else
  {
    [(SUUISignInSettingsGroupController *)self _resignFirstResponder];
    if (self->_valid)
    {
      [(SUUISignInSettingsGroupController *)self _attemptSignInWithAccountName:self->_accountName password:self->_password];
    }
  }
}

- (void)setValue:(id)value forSettingDescription:(id)description
{
  valueCopy = value;
  v6 = [(SUUISignInSettingsGroupController *)self _keyForSettingDescription:description];
  if (v6)
  {
    [(SUUISignInSettingsGroupController *)self setValue:valueCopy forKey:v6];
  }

  [(SUUISignInSettingsGroupController *)self _updateValidation];
}

- (void)submitSettingDescription:(id)description
{
  descriptionCopy = description;
  [(SUUISignInSettingsGroupController *)self _resignFirstResponder];
  if ([descriptionCopy isMemberOfClass:objc_opt_class()] && self->_valid && objc_msgSend(descriptionCopy, "fieldType") == 1)
  {
    [(SUUISignInSettingsGroupController *)self _attemptSignInWithAccountName:self->_accountName password:self->_password];
  }
}

- (id)valueForSettingDescription:(id)description
{
  v4 = [(SUUISignInSettingsGroupController *)self _keyForSettingDescription:description];
  if (v4)
  {
    v5 = [(SUUISignInSettingsGroupController *)self valueForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_attemptSignInWithAccountName:(id)name password:(id)password
{
  nameCopy = name;
  passwordCopy = password;
  [(SUUISignInSettingsGroupController *)self _updateFieldsAuthenticating:1];
  v8 = objc_alloc_init(MEMORY[0x277CF0178]);
  v9 = objc_alloc_init(MEMORY[0x277CF0380]);
  [v9 setServiceType:2];
  [v9 setUsername:nameCopy];
  [v9 _setPassword:passwordCopy];
  [v9 setIsUsernameEditable:0];
  [v9 setShouldAllowAppleIDCreation:0];
  delegate = [(SUUISettingsGroupController *)self delegate];
  v11 = [delegate owningViewControllerForSettingsGroupController:self];
  [v9 setPresentingViewController:v11];

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__SUUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke;
  v13[3] = &unk_2798F6558;
  objc_copyWeak(&v15, &location);
  v12 = nameCopy;
  v14 = v12;
  [v8 authenticateWithContext:v9 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __76__SUUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __76__SUUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke_5;
    v7[3] = &unk_2798F6530;
    objc_copyWeak(&v10, (a1 + 40));
    v8 = *(a1 + 32);
    v9 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v7);

    objc_destroyWeak(&v10);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__SUUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke_2;
    block[3] = &unk_2798F6508;
    v12 = v5;
    objc_copyWeak(&v14, (a1 + 40));
    v13 = *(a1 + 32);
    dispatch_sync(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v14);
  }
}

void __76__SUUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke_2(id *a1)
{
  v2 = [MEMORY[0x277D69BC8] contextForSignIn];
  v3 = [a1[4] objectForKey:*MEMORY[0x277CEFFD8]];
  [v2 setAccountName:v3];

  v4 = [a1[4] objectForKey:*MEMORY[0x277CEFFC8]];
  [v2 setInitialPassword:v4];

  v5 = [a1[4] objectForKey:*MEMORY[0x277CEFF78]];
  [v2 setAltDSID:v5];

  [v2 setAllowsRetry:0];
  [v2 setCanSetActiveAccount:1];
  [v2 setPromptStyle:0];
  v6 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:v2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__SUUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke_3;
  v7[3] = &unk_2798F64E0;
  objc_copyWeak(&v9, a1 + 6);
  v8 = a1[5];
  [v6 startWithAuthenticateResponseBlock:v7];

  objc_destroyWeak(&v9);
}

void __76__SUUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__SUUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke_4;
  v9[3] = &unk_2798F64B8;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  objc_copyWeak(&v13, (a1 + 40));
  v12 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __76__SUUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!*(a1 + 32))
  {
    if (!v2)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v2)
  {
LABEL_5:
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _signInFailed:*(a1 + 48) error:*(a1 + 40)];
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [*(a1 + 32) authenticatedAccount];
  [WeakRetained _signInSuccess:v4];

LABEL_6:
LABEL_7:
  v5 = objc_loadWeakRetained((a1 + 56));
  [v5 _updateFieldsAuthenticating:0];
}

void __76__SUUISignInSettingsGroupController__attemptSignInWithAccountName_password___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _signInFailed:*(a1 + 32) error:*(a1 + 40)];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 _updateFieldsAuthenticating:0];
}

- (void)_updateFieldsAuthenticating:(BOOL)authenticating
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_authenticating != authenticating)
  {
    authenticatingCopy = authenticating;
    self->_authenticating = authenticating;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    settingDescriptions = [(SUUISettingsGroupController *)self settingDescriptions];
    v6 = [settingDescriptions countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(settingDescriptions);
          }

          v10 = [(SUUISettingsGroupController *)self _viewForSettingDescription:*(*(&v11 + 1) + 8 * i)];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v10 setEnabled:!authenticatingCopy];
          }
        }

        v7 = [settingDescriptions countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_becomeFirstResponderWithKey:(id)key
{
  v5 = [(SUUISignInSettingsGroupController *)self _settingDescriptionForKey:key];
  v4 = [(SUUISettingsGroupController *)self _viewForSettingDescription:?];
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    [v4 beginEdits];
  }
}

- (id)_keyForSettingDescription:(id)description
{
  descriptionCopy = description;
  v5 = [(NSMapTable *)self->_keyMapping objectForKey:descriptionCopy];
  if (!v5)
  {
    if (!self->_keyMapping)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:0 capacity:0];
      keyMapping = self->_keyMapping;
      self->_keyMapping = v6;
    }

    if ([descriptionCopy isMemberOfClass:objc_opt_class()])
    {
      v8 = descriptionCopy;
      fieldType = [v8 fieldType];
      if (fieldType)
      {
        if (fieldType == 1)
        {
          v5 = @"valid";
LABEL_13:

          [(NSMapTable *)self->_keyMapping setObject:v5 forKey:v8];
          goto LABEL_17;
        }
      }

      else
      {
        viewElement = [v8 viewElement];
        textInputViewElement = [viewElement textInputViewElement];
        v12 = textInputViewElement;
        if (textInputViewElement)
        {
          if ([textInputViewElement isSecure])
          {
            v5 = @"password";
          }

          else
          {
            v5 = @"accountName";
          }

          goto LABEL_13;
        }
      }
    }

    v5 = 0;
  }

LABEL_17:

  return v5;
}

- (void)_resignFirstResponder
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  settingDescriptions = [(SUUISettingsGroupController *)self settingDescriptions];
  v4 = [settingDescriptions countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(settingDescriptions);
        }

        v8 = [(SUUISettingsGroupController *)self _viewForSettingDescription:*(*(&v9 + 1) + 8 * v7)];
        if ([v8 isMemberOfClass:objc_opt_class()])
        {
          [v8 commitEdits];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [settingDescriptions countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)_settingDescriptionForKey:(id)key
{
  v30 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  keyMapping = self->_keyMapping;
  if (keyMapping)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    keyEnumerator = [(NSMapTable *)keyMapping keyEnumerator];
    v7 = [keyEnumerator countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = [(NSMapTable *)self->_keyMapping objectForKey:v11];
        if ([keyCopy isEqualToString:v12])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [keyEnumerator countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v13 = v11;

      if (v13)
      {
        goto LABEL_23;
      }
    }

    else
    {
LABEL_10:
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  settingDescriptions = [(SUUISettingsGroupController *)self settingDescriptions];
  v13 = [settingDescriptions countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v15 = *v21;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(settingDescriptions);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        v18 = [(SUUISignInSettingsGroupController *)self _keyForSettingDescription:0];
        if ([keyCopy isEqualToString:v18])
        {
          v13 = v17;

          goto LABEL_22;
        }
      }

      v13 = [settingDescriptions countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

LABEL_23:

  return v13;
}

- (void)_signInFailed:(id)failed error:(id)error
{
  failedCopy = failed;
  errorCopy = error;
  delegate = [(SUUISettingsGroupController *)self delegate];
  v8 = [delegate owningViewControllerForSettingsGroupController:self];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    clientContext = [v9 clientContext];
    v11 = clientContext;
    v12 = MEMORY[0x277D75110];
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"CANNOT_LOGIN_TITLE"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"CANNOT_LOGIN_TITLE" inBundles:0];
    }
    v13 = ;
    localizedDescription = [errorCopy localizedDescription];
    v15 = [v12 alertControllerWithTitle:v13 message:localizedDescription preferredStyle:1];

    v16 = MEMORY[0x277D750F8];
    if (v11)
    {
      [v11 localizedStringForKey:@"OK"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"OK" inBundles:0];
    }
    v17 = ;
    v18 = [v16 actionWithTitle:v17 style:0 handler:0];
    [v15 addAction:v18];

    [v9 presentViewController:v15 animated:1 completion:0];
  }

  settingsGroupDescription = [(SUUISettingsGroupController *)self settingsGroupDescription];
  if (settingsGroupDescription)
  {
    v20 = [errorCopy description];
    viewElement = [settingsGroupDescription viewElement];
    v22 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"failed", @"result", failedCopy, @"accountName", v20, @"reason", 0}];
    [viewElement dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v22 completionBlock:0];
  }
}

- (void)_signInSuccess:(id)success
{
  successCopy = success;
  settingsGroupDescription = [(SUUISettingsGroupController *)self settingsGroupDescription];
  v5 = settingsGroupDescription;
  if (settingsGroupDescription)
  {
    viewElement = [settingsGroupDescription viewElement];
    v7 = objc_alloc(MEMORY[0x277CBEAC0]);
    accountName = [successCopy accountName];
    v9 = [v7 initWithObjectsAndKeys:{@"success", @"result", accountName, @"accountName", 0}];

    [viewElement dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v9 completionBlock:0];
  }
}

- (id)_submitSettingDescription
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  settingDescriptions = [(SUUISettingsGroupController *)self settingDescriptions];
  v3 = [settingDescriptions countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(settingDescriptions);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isMemberOfClass:objc_opt_class()])
        {
          v8 = v7;
          if ([v8 fieldType] == 1)
          {
            goto LABEL_12;
          }
        }
      }

      v4 = [settingDescriptions countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (void)_updateValidation
{
  if ([(NSString *)self->_accountName length])
  {
    v3 = [(NSString *)self->_password length]!= 0;
  }

  else
  {
    v3 = 0;
  }

  self->_valid = v3;
  _submitSettingDescription = [(SUUISignInSettingsGroupController *)self _submitSettingDescription];
  [(SUUISettingsGroupController *)self _reloadSettingDescription:_submitSettingDescription];
}

@end