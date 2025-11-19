@interface PKPaymentOptionsDefaults
+ (id)defaults;
- (BOOL)useHideMyEmail;
- (CNContact)defaultContactEmail;
- (CNContact)defaultContactName;
- (CNContact)defaultContactPhone;
- (CNContact)defaultShippingAddress;
- (NSDictionary)defaultBillingAddresses;
- (PKPaymentOptionsDefaults)init;
- (id)_contactForKeychainKey:(id)a3;
- (id)_keychainDataForKey:(id)a3;
- (id)_lastUpdatedDatesForBillingAddresses;
- (id)_rawDefaultBillingAddresses;
- (id)defaultBillingAddressForBankAccountIdentifier:(id)a3;
- (id)defaultBillingAddressForBankInformation:(id)a3;
- (id)defaultBillingAddressForPaymentPass:(id)a3;
- (id)defaultBillingAddressForPrimaryAccountIdentifier:(id)a3;
- (id)defaultBillingAddressForRemotePaymentInstrument:(id)a3;
- (id)lastUpdatedDateForPrimaryAccountIdentifier:(id)a3;
- (void)_deleteKeychainDataForKey:(id)a3 localOnly:(BOOL)a4;
- (void)_hardDeleteDefaultBillingAddress;
- (void)_registerForChangeNotifications;
- (void)_setContact:(id)a3 forKeychainKey:(id)a4;
- (void)_setContact:(id)a3 property:(id)a4 forKeychainKey:(id)a5;
- (void)_setKeychainData:(id)a3 forKey:(id)a4;
- (void)_setRawDefaultBillingAddresses:(id)a3;
- (void)_unregisterForChangeNotifications;
- (void)dealloc;
- (void)deleteAllDefaults;
- (void)deleteAllLocalDefaults;
- (void)deleteDefaultBillingAddress:(id)a3;
- (void)deleteDefaultBillingAddressForPrimaryAccountIdentifier:(id)a3;
- (void)deleteDefaultContactEmail;
- (void)deleteDefaultContactName;
- (void)deleteDefaultContactPhone;
- (void)deleteDefaultForContactKey:(id)a3;
- (void)deleteDefaultShippingAddress;
- (void)deleteUseHideMyEmail;
- (void)migrateToSyncable;
- (void)optionsSynchronizationDidChangeTo:(BOOL)a3;
- (void)setDefaultBillingAddress:(id)a3 forBankInformation:(id)a4;
- (void)setDefaultBillingAddress:(id)a3 forPaymentPass:(id)a4;
- (void)setDefaultBillingAddress:(id)a3 forPrimaryAccountIdentifier:(id)a4;
- (void)setDefaultBillingAddress:(id)a3 forRemotePaymentInstrument:(id)a4;
- (void)setDefaultContactEmail:(id)a3;
- (void)setDefaultContactName:(id)a3;
- (void)setDefaultContactPhone:(id)a3;
- (void)setDefaultShippingAddress:(id)a3;
- (void)setUseHideMyEmail:(BOOL)a3;
- (void)updateLastUpdatedDate:(id)a3 forPrimaryAccountIdentifier:(id)a4;
@end

@implementation PKPaymentOptionsDefaults

+ (id)defaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__PKPaymentOptionsDefaults_defaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED6D1FA8 != -1)
  {
    dispatch_once(&qword_1ED6D1FA8, block);
  }

  v2 = _MergedGlobals_256;

  return v2;
}

void __36__PKPaymentOptionsDefaults_defaults__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = _MergedGlobals_256;
  _MergedGlobals_256 = v0;
}

- (PKPaymentOptionsDefaults)init
{
  v7.receiver = self;
  v7.super_class = PKPaymentOptionsDefaults;
  v2 = [(PKPaymentOptionsDefaults *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_defaultsChangedNotifyToken = -1;
    [(PKPaymentOptionsDefaults *)v2 _registerForChangeNotifications];
    v4 = objc_alloc_init(PKPaymentOptionsSynchronization);
    optionsSynchronization = v3->_optionsSynchronization;
    v3->_optionsSynchronization = v4;

    [(PKPaymentOptionsSynchronization *)v3->_optionsSynchronization setDelegate:v3];
  }

  return v3;
}

- (void)dealloc
{
  [(PKPaymentOptionsDefaults *)self _unregisterForChangeNotifications];
  v3.receiver = self;
  v3.super_class = PKPaymentOptionsDefaults;
  [(PKPaymentOptionsDefaults *)&v3 dealloc];
}

- (void)_registerForChangeNotifications
{
  objc_initWeak(&location, self);
  v3 = [@"com.apple.passkit.paymentoptionsdefaultschanged" UTF8String];
  v4 = MEMORY[0x1E69E96A0];
  v5 = MEMORY[0x1E69E96A0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PKPaymentOptionsDefaults__registerForChangeNotifications__block_invoke;
  v6[3] = &unk_1E79D08F0;
  objc_copyWeak(&v7, &location);
  notify_register_dispatch(v3, &self->_defaultsChangedNotifyToken, v4, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __59__PKPaymentOptionsDefaults__registerForChangeNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[2];
    if (v2)
    {
      WeakRetained[2] = v2 - 1;
    }

    else
    {
      v3 = WeakRetained[5];
      WeakRetained[5] = 0;
      v10 = WeakRetained;

      v4 = v10[6];
      v10[6] = 0;

      v5 = v10[7];
      v10[7] = 0;

      v6 = v10[9];
      v10[9] = 0;

      v7 = v10[8];
      v10[8] = 0;

      v8 = v10[4];
      v10[4] = 0;

      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 postNotificationName:@"com.apple.passkit.paymentoptionsdefaultschanged" object:v10];

      WeakRetained = v10;
    }
  }
}

- (void)optionsSynchronizationDidChangeTo:(BOOL)a3
{
  v3 = [@"com.apple.passkit.paymentoptionsdefaultschanged" UTF8String];

  notify_post(v3);
}

- (void)_unregisterForChangeNotifications
{
  defaultsChangedNotifyToken = self->_defaultsChangedNotifyToken;
  if (defaultsChangedNotifyToken != -1)
  {
    notify_cancel(defaultsChangedNotifyToken);
    self->_defaultsChangedNotifyToken = -1;
  }
}

- (id)_keychainDataForKey:(id)a3
{
  optionsSynchronization = self->_optionsSynchronization;
  v4 = a3;
  v5 = [(PKPaymentOptionsSynchronization *)optionsSynchronization shouldSyncToCloud];
  v6 = [PKKeychainItemWrapper alloc];
  v7 = v6;
  if (v5)
  {
    v8 = [(PKKeychainItemWrapper *)v6 initWithIdentifier:v4 accessGroup:@"com.apple.PassbookUIService" serviceName:@"com.apple.passkit" type:2 invisible:0];
  }

  else
  {
    v9 = [v4 stringByAppendingString:@"Local"];

    v8 = [(PKKeychainItemWrapper *)v7 initWithIdentifier:v9 accessGroup:@"com.apple.PassbookUIService" serviceName:@"com.apple.passkit" type:0 invisible:0];
    v4 = v9;
  }

  v10 = [(PKKeychainItemWrapper *)v8 objectForKey:*MEMORY[0x1E697B3C0]];

  return v10;
}

- (void)_setKeychainData:(id)a3 forKey:(id)a4
{
  optionsSynchronization = self->_optionsSynchronization;
  v7 = a4;
  v8 = a3;
  v9 = [(PKPaymentOptionsSynchronization *)optionsSynchronization shouldSyncToCloud];
  v10 = [PKKeychainItemWrapper alloc];
  v11 = v10;
  if (v9)
  {
    v13 = [(PKKeychainItemWrapper *)v10 initWithIdentifier:v7 accessGroup:@"com.apple.PassbookUIService" serviceName:@"com.apple.passkit" type:1 invisible:0];
  }

  else
  {
    v12 = [v7 stringByAppendingString:@"Local"];

    v13 = [(PKKeychainItemWrapper *)v11 initWithIdentifier:v12 accessGroup:@"com.apple.PassbookUIService" serviceName:@"com.apple.passkit" type:0 invisible:0];
    v7 = v12;
  }

  [(PKKeychainItemWrapper *)v13 setObject:v8 forKey:*MEMORY[0x1E697B3C0]];
  ++self->_postedNotificationCount;
  notify_post([@"com.apple.passkit.paymentoptionsdefaultschanged" UTF8String]);
}

- (void)_deleteKeychainDataForKey:(id)a3 localOnly:(BOOL)a4
{
  v4 = a4;
  optionsSynchronization = self->_optionsSynchronization;
  v7 = a3;
  v8 = [(PKPaymentOptionsSynchronization *)optionsSynchronization shouldSyncToCloud];
  v9 = [PKKeychainItemWrapper alloc];
  v10 = v9;
  if (v8)
  {
    v12 = [(PKKeychainItemWrapper *)v9 initWithIdentifier:v7 accessGroup:@"com.apple.PassbookUIService" serviceName:@"com.apple.passkit" type:1 invisible:0];
  }

  else
  {
    v11 = [v7 stringByAppendingString:@"Local"];

    v12 = [(PKKeychainItemWrapper *)v10 initWithIdentifier:v11 accessGroup:@"com.apple.PassbookUIService" serviceName:@"com.apple.passkit" type:0 invisible:0];
    v7 = v11;
  }

  if (v4)
  {
    [(PKKeychainItemWrapper *)v12 resetLocalKeychainItem];
  }

  else
  {
    [(PKKeychainItemWrapper *)v12 resetKeychainItem];
  }

  ++self->_postedNotificationCount;
  notify_post([@"com.apple.passkit.paymentoptionsdefaultschanged" UTF8String]);
}

- (void)_setContact:(id)a3 property:(id)a4 forKeychainKey:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if ([v13 contactSource] != 1)
  {
    [v13 setContactSource:2];
  }

  v10 = MEMORY[0x1E696ACC8];
  v11 = [v13 pkDictionaryForProperty:v8];
  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];

  [(PKPaymentOptionsDefaults *)self _setKeychainData:v12 forKey:v9];
}

- (void)_setContact:(id)a3 forKeychainKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([v8 contactSource] != 1)
  {
    [v8 setContactSource:2];
  }

  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
  [(PKPaymentOptionsDefaults *)self _setKeychainData:v7 forKey:v6];
}

- (id)_contactForKeychainKey:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(PKPaymentOptionsDefaults *)self _keychainDataForKey:a3];
  if (!v3)
  {
    v13 = 0;
    goto LABEL_14;
  }

  v4 = MEMORY[0x1E696ACD0];
  v5 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 initWithObjects:{v6, v7, objc_opt_class(), 0}];
  v15 = 0;
  v9 = [v4 unarchivedObjectOfClasses:v8 fromData:v3 error:&v15];
  v10 = v15;

  if (v10)
  {
    v11 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v10;
      _os_log_error_impl(&dword_1AD337000, v11, OS_LOG_TYPE_ERROR, "Error trying to read contact data from keychain. %{public}@", buf, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [MEMORY[0x1E695CD58] contactWithPkDictionary:v9];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
      goto LABEL_13;
    }

    v12 = v9;
  }

  v13 = v12;
LABEL_13:

LABEL_14:

  return v13;
}

- (CNContact)defaultShippingAddress
{
  defaultShippingAddress = self->_defaultShippingAddress;
  if (!defaultShippingAddress)
  {
    v4 = [(PKPaymentOptionsDefaults *)self _contactForKeychainKey:@"PKShippingAddressKeychainKey"];
    v5 = self->_defaultShippingAddress;
    self->_defaultShippingAddress = v4;

    defaultShippingAddress = self->_defaultShippingAddress;
    if (defaultShippingAddress)
    {
      [(CNContact *)defaultShippingAddress setContactSource:2];
      defaultShippingAddress = self->_defaultShippingAddress;
    }
  }

  return defaultShippingAddress;
}

- (void)setDefaultShippingAddress:(id)a3
{
  v5 = a3;
  AnalyticsSendEvent();
  if (v5)
  {
    objc_storeStrong(&self->_defaultShippingAddress, a3);
    [(PKPaymentOptionsDefaults *)self _setContact:v5 property:*MEMORY[0x1E695C360] forKeychainKey:@"PKShippingAddressKeychainKey"];
  }

  else
  {
    [(PKPaymentOptionsDefaults *)self deleteDefaultShippingAddress];
  }
}

- (void)deleteDefaultShippingAddress
{
  defaultShippingAddress = self->_defaultShippingAddress;
  if (defaultShippingAddress)
  {
    self->_defaultShippingAddress = 0;
  }

  [(PKPaymentOptionsDefaults *)self _deleteKeychainDataForKey:@"PKShippingAddressKeychainKey"];
}

- (NSDictionary)defaultBillingAddresses
{
  defaultBillingAddresses = self->_defaultBillingAddresses;
  if (!defaultBillingAddresses)
  {
    v4 = [(PKPaymentOptionsDefaults *)self _rawDefaultBillingAddresses];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__PKPaymentOptionsDefaults_defaultBillingAddresses__block_invoke;
    v11[3] = &unk_1E79DE040;
    v12 = v5;
    v6 = v5;
    [v4 enumerateKeysAndObjectsUsingBlock:v11];
    v7 = [v6 allKeys];
    [v7 enumerateObjectsUsingBlock:&__block_literal_global_178];

    v8 = [v6 copy];
    v9 = self->_defaultBillingAddresses;
    self->_defaultBillingAddresses = v8;

    defaultBillingAddresses = self->_defaultBillingAddresses;
  }

  return defaultBillingAddresses;
}

void __51__PKPaymentOptionsDefaults_defaultBillingAddresses__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [MEMORY[0x1E695CD58] contactWithPkDictionary:a2];
  if (v5)
  {
    [*(a1 + 32) setObject:v6 forKey:v5];
  }
}

- (id)_rawDefaultBillingAddresses
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = [(PKPaymentOptionsDefaults *)self _keychainDataForKey:@"PKBillingAddressesKeychainKey"];
  if (v2)
  {
    v3 = MEMORY[0x1E696ACD0];
    v4 = objc_alloc(MEMORY[0x1E695DFD8]);
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = [v4 initWithObjects:{v5, v6, objc_opt_class(), 0}];
    v37 = 0;
    v8 = [v3 unarchivedObjectOfClasses:v7 fromData:v2 error:&v37];
    v9 = v37;

    if (v9)
    {
      v10 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v41 = v9;
        _os_log_error_impl(&dword_1AD337000, v10, OS_LOG_TYPE_ERROR, "Error trying to read contact data from keychain. %{public}@", buf, 0xCu);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v12)
      {
        v13 = *v34;
        v27 = v8;
        v28 = v9;
        v25 = *v34;
        while (2)
        {
          v14 = 0;
          v26 = v12;
          do
          {
            if (*v34 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v33 + 1) + 8 * v14);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_29;
            }

            v16 = [v11 objectForKey:v15];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
LABEL_28:

LABEL_29:
              v23 = 0;
              v8 = v27;
              v9 = v28;
              goto LABEL_30;
            }

            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v17 = v16;
            v18 = [v17 countByEnumeratingWithState:&v29 objects:v38 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v30;
              while (2)
              {
                v21 = v11;
                for (i = 0; i != v19; ++i)
                {
                  if (*v30 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {

                    v11 = v21;
                    goto LABEL_28;
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v29 objects:v38 count:16];
                v11 = v21;
                if (v19)
                {
                  continue;
                }

                break;
              }
            }

            ++v14;
            v13 = v25;
          }

          while (v14 != v26);
          v12 = [v11 countByEnumeratingWithState:&v33 objects:v39 count:16];
          v8 = v27;
          v9 = v28;
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v23 = v11;
    }

    else
    {
      v23 = 0;
    }

LABEL_30:
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)_setRawDefaultBillingAddresses:(id)a3
{
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  [(PKPaymentOptionsDefaults *)self _setKeychainData:v4 forKey:@"PKBillingAddressesKeychainKey"];

  defaultBillingAddresses = self->_defaultBillingAddresses;
  if (defaultBillingAddresses)
  {
    self->_defaultBillingAddresses = 0;
  }
}

- (id)defaultBillingAddressForPaymentPass:(id)a3
{
  v4 = [a3 primaryAccountIdentifier];
  v5 = [(PKPaymentOptionsDefaults *)self defaultBillingAddressForPrimaryAccountIdentifier:v4];

  return v5;
}

- (id)defaultBillingAddressForBankInformation:(id)a3
{
  v4 = [a3 identifier];
  v5 = [(PKPaymentOptionsDefaults *)self defaultBillingAddressForBankAccountIdentifier:v4];

  return v5;
}

- (id)defaultBillingAddressForRemotePaymentInstrument:(id)a3
{
  v4 = [a3 primaryAccountIdentifier];
  v5 = [(PKPaymentOptionsDefaults *)self defaultBillingAddressForPrimaryAccountIdentifier:v4];

  return v5;
}

- (id)defaultBillingAddressForPrimaryAccountIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentOptionsDefaults *)self defaultBillingAddresses];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__63;
  v16 = __Block_byref_object_dispose__63;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__PKPaymentOptionsDefaults_defaultBillingAddressForPrimaryAccountIdentifier___block_invoke;
  v9[3] = &unk_1E79CDB98;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __77__PKPaymentOptionsDefaults_defaultBillingAddressForPrimaryAccountIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if ([a3 containsObject:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (id)defaultBillingAddressForBankAccountIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentOptionsDefaults *)self defaultBillingAddresses];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__63;
  v16 = __Block_byref_object_dispose__63;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__PKPaymentOptionsDefaults_defaultBillingAddressForBankAccountIdentifier___block_invoke;
  v9[3] = &unk_1E79CDB98;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __74__PKPaymentOptionsDefaults_defaultBillingAddressForBankAccountIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if ([a3 containsObject:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)setDefaultBillingAddress:(id)a3 forPaymentPass:(id)a4
{
  if (a3 && a4)
  {
    v6 = a3;
    v7 = [a4 primaryAccountIdentifier];
    [(PKPaymentOptionsDefaults *)self setDefaultBillingAddress:v6 forPrimaryAccountIdentifier:v7];
  }
}

- (void)setDefaultBillingAddress:(id)a3 forRemotePaymentInstrument:(id)a4
{
  if (a3 && a4)
  {
    v6 = a3;
    v7 = [a4 primaryAccountIdentifier];
    [(PKPaymentOptionsDefaults *)self setDefaultBillingAddress:v6 forPrimaryAccountIdentifier:v7];
  }
}

- (void)setDefaultBillingAddress:(id)a3 forBankInformation:(id)a4
{
  if (a3 && a4)
  {
    v6 = a3;
    v7 = [a4 identifier];
    [(PKPaymentOptionsDefaults *)self setDefaultBillingAddress:v6 forPrimaryAccountIdentifier:v7];
  }
}

- (void)setDefaultBillingAddress:(id)a3 forPrimaryAccountIdentifier:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v34 = v6;
    v33 = [v6 pkDictionaryForProperty:*MEMORY[0x1E695C360]];
    v8 = objc_alloc(MEMORY[0x1E695DF90]);
    v9 = [(PKPaymentOptionsDefaults *)self _rawDefaultBillingAddresses];
    v10 = [v8 initWithDictionary:v9];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v11 = [v10 copy];
    v12 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v40;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v39 + 1) + 8 * i);
          v17 = objc_alloc(MEMORY[0x1E695DFA8]);
          v18 = [v10 objectForKeyedSubscript:v16];
          v19 = [v17 initWithSet:v18];

          if ([v19 containsObject:v7])
          {
            [v19 removeObject:v7];
            if ([v19 count])
            {
              [v10 setObject:v19 forKey:v16];
            }

            else
            {
              [v10 removeObjectForKey:v16];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v13);
    }

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __81__PKPaymentOptionsDefaults_setDefaultBillingAddress_forPrimaryAccountIdentifier___block_invoke;
    v36[3] = &unk_1E79DE088;
    v20 = v33;
    v37 = v20;
    v6 = v34;
    v38 = v34;
    v21 = [v10 keysOfEntriesPassingTest:v36];
    v22 = [v21 anyObject];
    v23 = [v10 objectForKeyedSubscript:v22];

    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x1E695DFA8]);
      v25 = [v10 objectForKeyedSubscript:v22];
      v26 = [v24 initWithSet:v25];

      [v26 addObject:v7];
      v27 = v10;
      v28 = v26;
      v29 = v22;
    }

    else
    {
      v26 = [MEMORY[0x1E695DFD8] setWithObject:v7];
      v27 = v10;
      v28 = v26;
      v29 = v20;
    }

    [v27 setObject:v28 forKey:v29];

    v30 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
    [(PKPaymentOptionsDefaults *)self _setKeychainData:v30 forKey:@"PKBillingAddressesKeychainKey"];

    v31 = [MEMORY[0x1E695DF00] date];
    [(PKPaymentOptionsDefaults *)self updateLastUpdatedDate:v31 forPrimaryAccountIdentifier:v7];

    defaultBillingAddresses = self->_defaultBillingAddresses;
    if (defaultBillingAddresses)
    {
      self->_defaultBillingAddresses = 0;
    }
  }

  else
  {
    v20 = PKLogFacilityTypeGetObject(8uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, v20, OS_LOG_TYPE_ERROR, "Attempted to set a default billing address but didn't supply a primary account identifier. This is an error", buf, 2u);
    }
  }
}

uint64_t __81__PKPaymentOptionsDefaults_setDefaultBillingAddress_forPrimaryAccountIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (!v3 || !v5)
  {
    if (v5 == v3)
    {
      goto LABEL_4;
    }

LABEL_6:
    v7 = [MEMORY[0x1E695CD58] contactWithPkDictionary:v4];
    v6 = [v7 isEqualIgnoringIdentifiers:*(a1 + 40)];

    goto LABEL_7;
  }

  if (([v3 isEqual:?] & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = 1;
LABEL_7:

  return v6;
}

- (void)deleteDefaultBillingAddress:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v6 = [(PKPaymentOptionsDefaults *)self _rawDefaultBillingAddresses];
  v7 = [v5 initWithDictionary:v6];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__PKPaymentOptionsDefaults_deleteDefaultBillingAddress___block_invoke;
  v13[3] = &unk_1E79C9A40;
  v8 = v4;
  v14 = v8;
  v9 = [v7 keysOfEntriesPassingTest:v13];
  v10 = [v9 allObjects];
  [v7 removeObjectsForKeys:v10];

  v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
  [(PKPaymentOptionsDefaults *)self _setKeychainData:v11 forKey:@"PKBillingAddressesKeychainKey"];

  defaultBillingAddresses = self->_defaultBillingAddresses;
  if (defaultBillingAddresses)
  {
    self->_defaultBillingAddresses = 0;
  }
}

uint64_t __56__PKPaymentOptionsDefaults_deleteDefaultBillingAddress___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695CD58] contactWithPkDictionary:a2];
  v4 = [v3 isEqualIgnoringIdentifiers:*(a1 + 32)];

  return v4;
}

- (void)deleteDefaultBillingAddressForPrimaryAccountIdentifier:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(PKPaymentOptionsDefaults *)self defaultBillingAddressForPrimaryAccountIdentifier:v4];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E695DF90]);
      v20 = self;
      v7 = [(PKPaymentOptionsDefaults *)self _rawDefaultBillingAddresses];
      v8 = [v6 initWithDictionary:v7];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = [v8 copy];
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v21 + 1) + 8 * i);
            v15 = objc_alloc(MEMORY[0x1E695DFA8]);
            v16 = [v8 objectForKeyedSubscript:v14];
            v17 = [v15 initWithSet:v16];

            if ([v17 containsObject:v4])
            {
              [v17 removeObject:v4];
              if ([v17 count])
              {
                [v8 setObject:v17 forKey:v14];
              }

              else
              {
                [v8 removeObjectForKey:v14];
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v11);
      }

      v18 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
      [(PKPaymentOptionsDefaults *)v20 _setKeychainData:v18 forKey:@"PKBillingAddressesKeychainKey"];

      defaultBillingAddresses = v20->_defaultBillingAddresses;
      if (defaultBillingAddresses)
      {
        v20->_defaultBillingAddresses = 0;
      }
    }
  }
}

- (void)_hardDeleteDefaultBillingAddress
{
  defaultBillingAddresses = self->_defaultBillingAddresses;
  if (defaultBillingAddresses)
  {
    self->_defaultBillingAddresses = 0;
  }

  [(PKPaymentOptionsDefaults *)self _deleteKeychainDataForKey:@"PKBillingAddressesKeychainKey"];

  [(PKPaymentOptionsDefaults *)self _deleteKeychainDataForKey:@"PKBillingAddressesUpdatesKeychainKey"];
}

- (id)lastUpdatedDateForPrimaryAccountIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentOptionsDefaults *)self _lastUpdatedDatesForBillingAddresses];
  v6 = [v5 objectForKey:v4];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateLastUpdatedDate:(id)a3 forPrimaryAccountIdentifier:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(PKPaymentOptionsDefaults *)self _lastUpdatedDatesForBillingAddresses];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v8 setObject:v12 forKey:v6];
  v9 = MEMORY[0x1E696ACC8];
  v10 = [v8 copy];
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
  [(PKPaymentOptionsDefaults *)self _setKeychainData:v11 forKey:@"PKBillingAddressesUpdatesKeychainKey"];
}

- (id)_lastUpdatedDatesForBillingAddresses
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(PKPaymentOptionsDefaults *)self _keychainDataForKey:@"PKBillingAddressesUpdatesKeychainKey"];
  if (!v2)
  {
    v12 = 0;
    goto LABEL_11;
  }

  v3 = MEMORY[0x1E696ACD0];
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 initWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  v14 = 0;
  v9 = [v3 unarchivedObjectOfClasses:v8 fromData:v2 error:&v14];
  v10 = v14;

  if (v10)
  {
    v11 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v10;
      _os_log_error_impl(&dword_1AD337000, v11, OS_LOG_TYPE_ERROR, "Error trying to read update dates from keychain. %{public}@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v12 = v9;
LABEL_10:

LABEL_11:

  return v12;
}

- (CNContact)defaultContactEmail
{
  defaultContactEmail = self->_defaultContactEmail;
  if (!defaultContactEmail)
  {
    v4 = [(PKPaymentOptionsDefaults *)self _contactForKeychainKey:@"PKContactEmailKeychainKey"];
    v5 = self->_defaultContactEmail;
    self->_defaultContactEmail = v4;

    defaultContactEmail = self->_defaultContactEmail;
    if (defaultContactEmail)
    {
      [(CNContact *)defaultContactEmail setContactSource:2];
      defaultContactEmail = self->_defaultContactEmail;
    }
  }

  return defaultContactEmail;
}

- (void)setDefaultContactEmail:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&self->_defaultContactEmail, a3);
    [(PKPaymentOptionsDefaults *)self _setContact:v5 property:*MEMORY[0x1E695C208] forKeychainKey:@"PKContactEmailKeychainKey"];
  }

  else
  {
    [(PKPaymentOptionsDefaults *)self deleteDefaultContactEmail];
  }
}

- (void)deleteDefaultContactEmail
{
  defaultContactEmail = self->_defaultContactEmail;
  if (defaultContactEmail)
  {
    self->_defaultContactEmail = 0;
  }

  [(PKPaymentOptionsDefaults *)self _deleteKeychainDataForKey:@"PKContactEmailKeychainKey"];
}

- (BOOL)useHideMyEmail
{
  v13 = *MEMORY[0x1E69E9840];
  useHideMyEmailNumber = self->_useHideMyEmailNumber;
  if (!useHideMyEmailNumber)
  {
    v4 = [(PKPaymentOptionsDefaults *)self _keychainDataForKey:@"PKUseHideMyEmailKeychainKey"];
    if (v4)
    {
      v10 = 0;
      v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v10];
      v6 = v10;
      if (v6)
      {
        p_super = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v12 = v6;
          _os_log_error_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_ERROR, "Error trying to read number data from keychain. %{public}@", buf, 0xCu);
        }
      }

      else
      {
        v8 = v5;
        p_super = &self->_useHideMyEmailNumber->super.super;
        self->_useHideMyEmailNumber = v8;
      }
    }

    useHideMyEmailNumber = self->_useHideMyEmailNumber;
  }

  return [(NSNumber *)useHideMyEmailNumber BOOLValue];
}

- (void)setUseHideMyEmail:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  useHideMyEmailNumber = self->_useHideMyEmailNumber;
  self->_useHideMyEmailNumber = v4;

  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self->_useHideMyEmailNumber requiringSecureCoding:1 error:0];
  [(PKPaymentOptionsDefaults *)self _setKeychainData:v6 forKey:@"PKUseHideMyEmailKeychainKey"];
}

- (void)deleteUseHideMyEmail
{
  useHideMyEmailNumber = self->_useHideMyEmailNumber;
  self->_useHideMyEmailNumber = 0;

  [(PKPaymentOptionsDefaults *)self _deleteKeychainDataForKey:@"PKUseHideMyEmailKeychainKey"];
}

- (CNContact)defaultContactPhone
{
  defaultContactPhone = self->_defaultContactPhone;
  if (!defaultContactPhone)
  {
    v4 = [(PKPaymentOptionsDefaults *)self _contactForKeychainKey:@"PKContactPhoneKeychainKey"];
    v5 = self->_defaultContactPhone;
    self->_defaultContactPhone = v4;

    defaultContactPhone = self->_defaultContactPhone;
    if (defaultContactPhone)
    {
      [(CNContact *)defaultContactPhone setContactSource:2];
      defaultContactPhone = self->_defaultContactPhone;
    }
  }

  return defaultContactPhone;
}

- (void)setDefaultContactPhone:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&self->_defaultContactPhone, a3);
    [(PKPaymentOptionsDefaults *)self _setContact:v5 property:*MEMORY[0x1E695C330] forKeychainKey:@"PKContactPhoneKeychainKey"];
  }

  else
  {
    [(PKPaymentOptionsDefaults *)self deleteDefaultContactPhone];
  }
}

- (void)deleteDefaultContactPhone
{
  defaultContactPhone = self->_defaultContactPhone;
  if (defaultContactPhone)
  {
    self->_defaultContactPhone = 0;
  }

  [(PKPaymentOptionsDefaults *)self _deleteKeychainDataForKey:@"PKContactPhoneKeychainKey"];
}

- (CNContact)defaultContactName
{
  defaultContactName = self->_defaultContactName;
  if (!defaultContactName)
  {
    v4 = [(PKPaymentOptionsDefaults *)self _contactForKeychainKey:@"PKContactNameKeychainKey"];
    v5 = self->_defaultContactName;
    self->_defaultContactName = v4;

    defaultContactName = self->_defaultContactName;
  }

  return defaultContactName;
}

- (void)setDefaultContactName:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&self->_defaultContactName, a3);
    [(PKPaymentOptionsDefaults *)self _setContact:v5 forKeychainKey:@"PKContactNameKeychainKey"];
  }

  else
  {
    [(PKPaymentOptionsDefaults *)self deleteDefaultContactName];
  }
}

- (void)deleteDefaultContactName
{
  defaultContactName = self->_defaultContactName;
  if (defaultContactName)
  {
    self->_defaultContactName = 0;
  }

  [(PKPaymentOptionsDefaults *)self _deleteKeychainDataForKey:@"PKContactNameKeychainKey"];
}

- (void)deleteAllDefaults
{
  [(PKPaymentOptionsDefaults *)self deleteDefaultContactName];
  [(PKPaymentOptionsDefaults *)self deleteDefaultContactEmail];
  [(PKPaymentOptionsDefaults *)self deleteUseHideMyEmail];
  [(PKPaymentOptionsDefaults *)self deleteDefaultShippingAddress];
  [(PKPaymentOptionsDefaults *)self deleteDefaultContactPhone];

  [(PKPaymentOptionsDefaults *)self _hardDeleteDefaultBillingAddress];
}

- (void)deleteAllLocalDefaults
{
  defaultContactName = self->_defaultContactName;
  self->_defaultContactName = 0;

  [(PKPaymentOptionsDefaults *)self _deleteKeychainDataForKey:@"PKContactNameKeychainKey" localOnly:1];
  defaultContactEmail = self->_defaultContactEmail;
  self->_defaultContactEmail = 0;

  [(PKPaymentOptionsDefaults *)self _deleteKeychainDataForKey:@"PKContactEmailKeychainKey" localOnly:1];
  useHideMyEmailNumber = self->_useHideMyEmailNumber;
  self->_useHideMyEmailNumber = 0;

  [(PKPaymentOptionsDefaults *)self _deleteKeychainDataForKey:@"PKUseHideMyEmailKeychainKey" localOnly:1];
  defaultShippingAddress = self->_defaultShippingAddress;
  self->_defaultShippingAddress = 0;

  [(PKPaymentOptionsDefaults *)self _deleteKeychainDataForKey:@"PKShippingAddressKeychainKey" localOnly:1];
  defaultContactPhone = self->_defaultContactPhone;
  self->_defaultContactPhone = 0;

  [(PKPaymentOptionsDefaults *)self _deleteKeychainDataForKey:@"PKContactPhoneKeychainKey" localOnly:1];
  defaultBillingAddresses = self->_defaultBillingAddresses;
  self->_defaultBillingAddresses = 0;

  [(PKPaymentOptionsDefaults *)self _deleteKeychainDataForKey:@"PKBillingAddressesKeychainKey" localOnly:1];

  [(PKPaymentOptionsDefaults *)self _deleteKeychainDataForKey:@"PKBillingAddressesUpdatesKeychainKey" localOnly:1];
}

- (void)deleteDefaultForContactKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x1E695C360]])
  {
    [(PKPaymentOptionsDefaults *)self deleteDefaultShippingAddress];
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E695C208]])
  {
    [(PKPaymentOptionsDefaults *)self deleteDefaultContactEmail];
  }

  else if ([v4 isEqualToString:*MEMORY[0x1E695C330]])
  {
    [(PKPaymentOptionsDefaults *)self deleteDefaultContactPhone];
  }

  else if (([v4 isEqualToString:*MEMORY[0x1E695C230]] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x1E695C240]))
  {
    [(PKPaymentOptionsDefaults *)self deleteDefaultContactName];
  }
}

- (void)migrateToSyncable
{
  v3 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Migrating keychain to syncable items", buf, 2u);
  }

  v4 = [(PKPaymentOptionsDefaults *)self defaultContactEmail];
  if (v4)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Migrating email to syncable items", v14, 2u);
    }

    [(PKPaymentOptionsDefaults *)self deleteDefaultContactEmail];
    [(PKPaymentOptionsDefaults *)self setDefaultContactEmail:v4];
  }

  v5 = [(PKPaymentOptionsDefaults *)self defaultContactName];
  if (v5)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Migrating name to syncable items", v13, 2u);
    }

    [(PKPaymentOptionsDefaults *)self deleteDefaultContactName];
    [(PKPaymentOptionsDefaults *)self setDefaultContactName:v5];
  }

  v6 = [(PKPaymentOptionsDefaults *)self defaultContactPhone];
  if (v6)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Migrating phone to syncable items", v12, 2u);
    }

    [(PKPaymentOptionsDefaults *)self deleteDefaultContactPhone];
    [(PKPaymentOptionsDefaults *)self setDefaultContactPhone:v6];
  }

  v7 = [(PKPaymentOptionsDefaults *)self defaultShippingAddress];
  if (v7)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Migrating shipping to syncable items", v11, 2u);
    }

    [(PKPaymentOptionsDefaults *)self deleteDefaultShippingAddress];
    [(PKPaymentOptionsDefaults *)self setDefaultShippingAddress:v7];
  }

  v8 = [(PKPaymentOptionsDefaults *)self _rawDefaultBillingAddresses];
  if (v8)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Migrating billing to syncable items", v10, 2u);
    }

    [(PKPaymentOptionsDefaults *)self _hardDeleteDefaultBillingAddress];
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];
    [(PKPaymentOptionsDefaults *)self _setKeychainData:v9 forKey:@"PKBillingAddressesKeychainKey"];
  }
}

@end