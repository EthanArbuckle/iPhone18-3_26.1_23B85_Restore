@interface CHManagedConfigurations
+ (id)managedConfigurations;
- (CHManagedConfigurations)init;
- (void)_profileSettingsChanged:(id)changed;
- (void)_updateSettings;
@end

@implementation CHManagedConfigurations

+ (id)managedConfigurations
{
  v2 = objc_alloc_init(CHManagedConfigurations);

  return v2;
}

- (CHManagedConfigurations)init
{
  v16.receiver = self;
  v16.super_class = CHManagedConfigurations;
  v7 = [(CHManagedConfigurations *)&v16 init];
  if (v7)
  {
    v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v2, v3, v4, v5, v6);
    objc_msgSend_addObserver_selector_name_object_(v8, v9, v7, sel__profileSettingsChanged_, *MEMORY[0x1E69ADD68], 0);

    objc_msgSend__updateSettings(v7, v10, v11, v12, v13, v14);
  }

  return v7;
}

- (void)_updateSettings
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_sharedConnection(MEMORY[0x1E69ADFB8], a2, v2, v3, v4, v5);
  self->_isPersonalizedHandwritingResultsAllowed = objc_msgSend_isPersonalizedHandwritingResultsAllowed(v7, v8, v9, v10, v11, v12);

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    if (self->_isPersonalizedHandwritingResultsAllowed)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v15 = 138412290;
    v16 = v14;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEBUG, "CHManagedConfigurations updated value for _isPersonalizedHandwritingResultsAllowed: %@", &v15, 0xCu);
  }
}

- (void)_profileSettingsChanged:(id)changed
{
  v9 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v5 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v8 = changedCopy;
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEBUG, "CHManagedConfigurations received notification: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1837DB054;
  block[3] = &unk_1E6DDC1D0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end