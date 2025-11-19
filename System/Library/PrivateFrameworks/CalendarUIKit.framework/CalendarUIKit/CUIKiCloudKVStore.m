@interface CUIKiCloudKVStore
+ (id)sharediCloudKVStore;
- (BOOL)_canAccessiCloudKVStore;
- (CUIKiCloudKVStore)init;
- (void)_identityChanged:(id)a3;
- (void)_storeDidChange:(id)a3;
- (void)dealloc;
- (void)setHasConnectedToCarBluetooth:(BOOL)a3;
- (void)setLastCarConnectionDate:(id)a3;
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
      v4 = [MEMORY[0x1E696AFB8] defaultStore];
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 addObserver:v3 selector:sel__storeDidChange_ name:*MEMORY[0x1E696A9E8] object:v4];

      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      [v6 addObserver:v3 selector:sel__identityChanged_ name:*MEMORY[0x1E696A9F0] object:0];

      v7 = [MEMORY[0x1E696AFB8] defaultStore];
      [v7 synchronize];

      v8 = [MEMORY[0x1E696AC08] defaultManager];
      v9 = [v8 ubiquityIdentityToken];
      [(CUIKiCloudKVStore *)v3 setUbiquityIdentityToken:v9];

      [(CUIKiCloudKVStore *)v3 _storeDidChange:0];
    }
  }

  return v3;
}

- (void)dealloc
{
  if ([objc_opt_class() _haveiCloudKVStoreEntitlement])
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = CUIKiCloudKVStore;
  [(CUIKiCloudKVStore *)&v4 dealloc];
}

- (void)setHasConnectedToCarBluetooth:(BOOL)a3
{
  v3 = a3;
  if ([(CUIKiCloudKVStore *)self _canAccessiCloudKVStore])
  {
    self->_hasConnectedToCarBluetooth = v3;
    v5 = [MEMORY[0x1E696AFB8] defaultStore];
    [v5 setBool:v3 forKey:@"HasConnectedToCarBluetoothKey"];
    [v5 synchronize];
  }
}

- (void)setLastCarConnectionDate:(id)a3
{
  v5 = a3;
  lastCarConnectionDate = self->_lastCarConnectionDate;
  v10 = v5;
  if (lastCarConnectionDate)
  {
    v7 = [(NSDate *)lastCarConnectionDate isEqualToDate:v5];
  }

  else
  {
    v7 = v5 == 0;
  }

  if ([(CUIKiCloudKVStore *)self _canAccessiCloudKVStore]&& !v7)
  {
    objc_storeStrong(&self->_lastCarConnectionDate, a3);
    v8 = [MEMORY[0x1E696AFB8] defaultStore];
    v9 = v8;
    if (v10)
    {
      [v8 setObject:v10 forKey:@"LastCarConnectionDate"];
    }

    else
    {
      [v8 removeObjectForKey:@"LastCarConnectionDate"];
    }

    [v9 synchronize];
  }
}

- (void)_identityChanged:(id)a3
{
  v4 = [(CUIKiCloudKVStore *)self ubiquityIdentityToken];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 ubiquityIdentityToken];
  v7 = [v4 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v8 ubiquityIdentityToken];
    [(CUIKiCloudKVStore *)self setUbiquityIdentityToken:v9];

    self->_hasConnectedToCarBluetooth = 0;
    lastCarConnectionDate = self->_lastCarConnectionDate;
    self->_lastCarConnectionDate = 0;

    v11 = [(CUIKiCloudKVStore *)self ubiquityIdentityToken];

    if (v11)
    {

      [(CUIKiCloudKVStore *)self _storeDidChange:0];
    }
  }
}

- (void)_storeDidChange:(id)a3
{
  v39[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v28 = 0;
    v10 = *MEMORY[0x1E696A9E0];
    v37[0] = @"HasConnectedToCarBluetoothKey";
    v37[1] = @"LastCarConnectionDate";
    v38 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    v39[0] = v11;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];

    goto LABEL_6;
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:*MEMORY[0x1E696A9D8]];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 integerValue];

    if (v9 <= 1)
    {
      v28 = v5;
      v10 = *MEMORY[0x1E696A9E0];
LABEL_6:
      v27 = v6;
      v12 = [v6 objectForKey:v10];
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
            v20 = [*(v16 + 4024) defaultStore];
            self->_hasConnectedToCarBluetooth = [v20 BOOLForKey:@"HasConnectedToCarBluetoothKey"];
          }

          else
          {
            if (![v19 isEqualToString:v17])
            {
              continue;
            }

            v20 = [*(v16 + 4024) defaultStore];
            v21 = [v20 objectForKey:v17];
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

          v6 = v27;
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