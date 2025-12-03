@interface CUIKiCloudKVStore
+ (id)sharediCloudKVStore;
- (BOOL)_canAccessiCloudKVStore;
- (CUIKiCloudKVStore)init;
- (void)_identityChanged:(id)changed;
- (void)_storeDidChange:(id)change;
- (void)dealloc;
- (void)setHasConnectedToCarBluetooth:(BOOL)bluetooth;
- (void)setLastCarConnectionDate:(id)date;
@end

@implementation CUIKiCloudKVStore

+ (id)sharediCloudKVStore
{
  if (sharediCloudKVStore_onceToken != -1)
  {
    +[CUIKiCloudKVStore sharediCloudKVStore];
  }

  v3 = sharediCloudKVStore_iCloudKVStore;

  return v3;
}

uint64_t __40__CUIKiCloudKVStore_sharediCloudKVStore__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharediCloudKVStore_iCloudKVStore;
  sharediCloudKVStore_iCloudKVStore = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)_canAccessiCloudKVStore
{
  v2 = objc_opt_class();

  return [v2 _haveiCloudKVStoreEntitlement];
}

- (CUIKiCloudKVStore)init
{
  v11.receiver = self;
  v11.super_class = CUIKiCloudKVStore;
  v3 = [(CUIKiCloudKVStore *)&v11 self];

  if (v3)
  {
    v3->_hasConnectedToCarBluetooth = 0;
    if ([objc_opt_class() _haveiCloudKVStoreEntitlement])
    {
      defaultStore = [MEMORY[0x1E696AFB8] defaultStore];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v3 selector:sel__storeDidChange_ name:*MEMORY[0x1E696A9E8] object:defaultStore];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:v3 selector:sel__identityChanged_ name:*MEMORY[0x1E696A9F0] object:0];

      defaultStore2 = [MEMORY[0x1E696AFB8] defaultStore];
      [defaultStore2 synchronize];

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      ubiquityIdentityToken = [defaultManager ubiquityIdentityToken];
      [(CUIKiCloudKVStore *)v3 setUbiquityIdentityToken:ubiquityIdentityToken];

      [(CUIKiCloudKVStore *)v3 _storeDidChange:0];
    }
  }

  return v3;
}

- (void)dealloc
{
  if ([objc_opt_class() _haveiCloudKVStoreEntitlement])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = CUIKiCloudKVStore;
  [(CUIKiCloudKVStore *)&v4 dealloc];
}

- (void)setHasConnectedToCarBluetooth:(BOOL)bluetooth
{
  bluetoothCopy = bluetooth;
  if ([(CUIKiCloudKVStore *)self _canAccessiCloudKVStore])
  {
    self->_hasConnectedToCarBluetooth = bluetoothCopy;
    defaultStore = [MEMORY[0x1E696AFB8] defaultStore];
    [defaultStore setBool:bluetoothCopy forKey:@"HasConnectedToCarBluetoothKey"];
    [defaultStore synchronize];
  }
}

- (void)setLastCarConnectionDate:(id)date
{
  dateCopy = date;
  lastCarConnectionDate = self->_lastCarConnectionDate;
  v10 = dateCopy;
  if (lastCarConnectionDate)
  {
    v7 = [(NSDate *)lastCarConnectionDate isEqualToDate:dateCopy];
  }

  else
  {
    v7 = dateCopy == 0;
  }

  if ([(CUIKiCloudKVStore *)self _canAccessiCloudKVStore]&& !v7)
  {
    objc_storeStrong(&self->_lastCarConnectionDate, date);
    defaultStore = [MEMORY[0x1E696AFB8] defaultStore];
    v9 = defaultStore;
    if (v10)
    {
      [defaultStore setObject:v10 forKey:@"LastCarConnectionDate"];
    }

    else
    {
      [defaultStore removeObjectForKey:@"LastCarConnectionDate"];
    }

    [v9 synchronize];
  }
}

- (void)_identityChanged:(id)changed
{
  ubiquityIdentityToken = [(CUIKiCloudKVStore *)self ubiquityIdentityToken];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  ubiquityIdentityToken2 = [defaultManager ubiquityIdentityToken];
  v7 = [ubiquityIdentityToken isEqual:ubiquityIdentityToken2];

  if ((v7 & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    ubiquityIdentityToken3 = [defaultManager2 ubiquityIdentityToken];
    [(CUIKiCloudKVStore *)self setUbiquityIdentityToken:ubiquityIdentityToken3];

    self->_hasConnectedToCarBluetooth = 0;
    lastCarConnectionDate = self->_lastCarConnectionDate;
    self->_lastCarConnectionDate = 0;

    ubiquityIdentityToken4 = [(CUIKiCloudKVStore *)self ubiquityIdentityToken];

    if (ubiquityIdentityToken4)
    {

      [(CUIKiCloudKVStore *)self _storeDidChange:0];
    }
  }
}

- (void)_storeDidChange:(id)change
{
  v39[1] = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = changeCopy;
  if (!changeCopy)
  {
    v28 = 0;
    v10 = *MEMORY[0x1E696A9E0];
    v37[0] = @"HasConnectedToCarBluetoothKey";
    v37[1] = @"LastCarConnectionDate";
    v38 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    v39[0] = v11;
    userInfo = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];

    goto LABEL_6;
  }

  userInfo = [changeCopy userInfo];
  v7 = [userInfo objectForKey:*MEMORY[0x1E696A9D8]];
  if (v7)
  {
    v8 = v7;
    integerValue = [v7 integerValue];

    if (integerValue <= 1)
    {
      v28 = v5;
      v10 = *MEMORY[0x1E696A9E0];
LABEL_6:
      v27 = userInfo;
      v12 = [userInfo objectForKey:v10];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (!v13)
      {
        goto LABEL_25;
      }

      v14 = v13;
      v15 = *v31;
      v16 = 0x1E696A000uLL;
      v17 = @"LastCarConnectionDate";
      v29 = v12;
      while (1)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          if ([v19 isEqualToString:@"HasConnectedToCarBluetoothKey"])
          {
            defaultStore = [*(v16 + 4024) defaultStore];
            self->_hasConnectedToCarBluetooth = [defaultStore BOOLForKey:@"HasConnectedToCarBluetoothKey"];
          }

          else
          {
            if (![v19 isEqualToString:v17])
            {
              continue;
            }

            defaultStore = [*(v16 + 4024) defaultStore];
            v21 = [defaultStore objectForKey:v17];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = v21;
            }

            else if (v21)
            {
              v23 = v17;
              v24 = v16;
              v25 = +[CUIKLogSubsystem defaultCategory];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                [(CUIKiCloudKVStore *)v34 _storeDidChange:v21, &v35, v25];
              }

              v22 = 0;
              v16 = v24;
              v17 = v23;
              v12 = v29;
            }

            else
            {
              v22 = 0;
            }

            lastCarConnectionDate = self->_lastCarConnectionDate;
            self->_lastCarConnectionDate = v22;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v30 objects:v36 count:16];
        if (!v14)
        {
LABEL_25:

          userInfo = v27;
          v5 = v28;
          break;
        }
      }
    }
  }
}

- (void)_storeDidChange:(void *)a3 .cold.1(uint8_t *a1, uint64_t a2, void *a3, NSObject *a4)
{
  v7 = objc_opt_class();
  *a1 = 138412290;
  *a3 = v7;
  v8 = v7;
  _os_log_error_impl(&dword_1CAB19000, a4, OS_LOG_TYPE_ERROR, "Got unexpected object for last car connection date. Expected NSDate, got %@", a1, 0xCu);
}

@end