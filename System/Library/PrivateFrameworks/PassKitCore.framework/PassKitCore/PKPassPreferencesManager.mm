@interface PKPassPreferencesManager
+ (id)sharedInstance;
- (BOOL)hasDoneExpressUpgrade;
- (double)_doubleForKey:(id)key passUniqueID:(id)d;
- (id)_decimalNumberForKey:(id)key passUniqueID:(id)d;
- (id)_stringForKey:(id)key passUniqueID:(id)d;
- (void)_removeValueForKey:(id)key passUniqueID:(id)d;
- (void)_setDecimalNumber:(id)number forKey:(id)key passUniqueID:(id)d;
- (void)_setDouble:(double)double forKey:(id)key passUniqueID:(id)d;
- (void)_setString:(id)string forKey:(id)key passUniqueID:(id)d;
- (void)_synchronize;
- (void)removeAllPreferences;
- (void)removeAllPreferencesForPassWithUniqueID:(id)d;
- (void)setHasDoneExpressUpgrade:(BOOL)upgrade;
@end

@implementation PKPassPreferencesManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PKPassPreferencesManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_232 != -1)
  {
    dispatch_once(&_MergedGlobals_232, block);
  }

  v2 = qword_1ED6D1B60;

  return v2;
}

void __42__PKPassPreferencesManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED6D1B60;
  qword_1ED6D1B60 = v1;
}

- (void)removeAllPreferencesForPassWithUniqueID:(id)d
{
  dCopy = d;
  [(PKPassPreferencesManager *)self _removeValueForKey:@"LowBalanceReminderAmount" passUniqueID:dCopy];
  [(PKPassPreferencesManager *)self _removeValueForKey:@"LowBalanceReminderCurrency" passUniqueID:dCopy];
  [(PKPassPreferencesManager *)self _removeValueForKey:@"CommutePlanRenewalReminderInterval" passUniqueID:dCopy];

  [(PKPassPreferencesManager *)self _synchronize];
}

- (void)removeAllPreferences
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E898];
  v5 = CFPreferencesCopyKeyList(@"com.apple.PassKit.passes", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [(__CFArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        CFPreferencesSetValue(*(*(&v11 + 1) + 8 * v10++), 0, @"com.apple.PassKit.passes", v3, v4);
      }

      while (v8 != v10);
      v8 = [(__CFArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(PKPassPreferencesManager *)self _synchronize];
}

- (void)setHasDoneExpressUpgrade:(BOOL)upgrade
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:upgrade];
  v4 = *MEMORY[0x1E695E8B8];
  v5 = *MEMORY[0x1E695E898];

  CFPreferencesSetValue(@"PassExpressUpgrade", v3, @"com.apple.PassKit.passes", v4, v5);
}

- (BOOL)hasDoneExpressUpgrade
{
  v2 = CFPreferencesCopyValue(@"PassExpressUpgrade", @"com.apple.PassKit.passes", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)_synchronize
{
  v2 = CFPreferencesSynchronize(@"com.apple.PassKit.passes", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  _CFPreferencesSetBackupDisabled();
  if (!v2)
  {
    v3 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_1AD337000, v3, OS_LOG_TYPE_ERROR, "Pass preferences failed to synchronize", v4, 2u);
    }
  }
}

- (void)_setDouble:(double)double forKey:(id)key passUniqueID:(id)d
{
  v6 = [(PKPassPreferencesManager *)self _cfPreferencesKeyForConstant:key passUniqueID:d];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:double];
  v8 = *MEMORY[0x1E695E8B8];
  v9 = *MEMORY[0x1E695E898];

  CFPreferencesSetValue(v6, v7, @"com.apple.PassKit.passes", v8, v9);
}

- (double)_doubleForKey:(id)key passUniqueID:(id)d
{
  v4 = [(PKPassPreferencesManager *)self _cfPreferencesKeyForConstant:key passUniqueID:d];
  v5 = CFPreferencesCopyValue(v4, @"com.apple.PassKit.passes", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)_setDecimalNumber:(id)number forKey:(id)key passUniqueID:(id)d
{
  numberCopy = number;
  v9 = [(PKPassPreferencesManager *)self _cfPreferencesKeyForConstant:key passUniqueID:d];
  v10 = MEMORY[0x1E696AD98];
  v11 = PKCurrencyDecimalToLegacyStorageInteger(numberCopy, 0);

  v12 = [v10 numberWithLongLong:v11];
  CFPreferencesSetValue(v9, v12, @"com.apple.PassKit.passes", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
}

- (id)_decimalNumberForKey:(id)key passUniqueID:(id)d
{
  v4 = [(PKPassPreferencesManager *)self _cfPreferencesKeyForConstant:key passUniqueID:d];
  v5 = CFPreferencesCopyValue(v4, @"com.apple.PassKit.passes", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v6 = PKLegacyCurrencyStorageIntegerToDecimal([v5 unsignedLongLongValue], 0);

  return v6;
}

- (void)_setString:(id)string forKey:(id)key passUniqueID:(id)d
{
  value = string;
  v8 = [(PKPassPreferencesManager *)self _cfPreferencesKeyForConstant:key passUniqueID:d];
  CFPreferencesSetValue(v8, value, @"com.apple.PassKit.passes", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
}

- (id)_stringForKey:(id)key passUniqueID:(id)d
{
  v4 = [(PKPassPreferencesManager *)self _cfPreferencesKeyForConstant:key passUniqueID:d];
  v5 = CFPreferencesCopyValue(v4, @"com.apple.PassKit.passes", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);

  return v5;
}

- (void)_removeValueForKey:(id)key passUniqueID:(id)d
{
  v4 = [(PKPassPreferencesManager *)self _cfPreferencesKeyForConstant:key passUniqueID:d];
  v5 = *MEMORY[0x1E695E8B8];
  v6 = *MEMORY[0x1E695E898];

  CFPreferencesSetValue(v4, 0, @"com.apple.PassKit.passes", v5, v6);
}

@end