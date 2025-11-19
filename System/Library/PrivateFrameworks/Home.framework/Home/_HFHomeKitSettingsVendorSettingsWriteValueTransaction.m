@interface _HFHomeKitSettingsVendorSettingsWriteValueTransaction
- (_HFHomeKitSettingsVendorSettingsWriteValueTransaction)init;
- (_HFHomeKitSettingsVendorSettingsWriteValueTransaction)initWithSetting:(id)a3 previousValue:(id)a4 value:(id)a5 changeType:(unint64_t)a6;
- (id)description;
- (id)descriptionBuilder;
- (void)setStarted:(BOOL)a3;
@end

@implementation _HFHomeKitSettingsVendorSettingsWriteValueTransaction

- (_HFHomeKitSettingsVendorSettingsWriteValueTransaction)initWithSetting:(id)a3 previousValue:(id)a4 value:(id)a5 changeType:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = _HFHomeKitSettingsVendorSettingsWriteValueTransaction;
  v14 = [(_HFHomeKitSettingsVendorSettingsWriteValueTransaction *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_setting, a3);
    objc_storeStrong(&v15->_previousValue, a4);
    objc_storeStrong(&v15->_value, a5);
    ++initWithSetting_previousValue_value_changeType__i;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    transactionNumber = v15->_transactionNumber;
    v15->_transactionNumber = v16;

    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    settingWriteFuture = v15->_settingWriteFuture;
    v15->_settingWriteFuture = v18;

    v15->_changeType = a6;
  }

  return v15;
}

- (_HFHomeKitSettingsVendorSettingsWriteValueTransaction)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithSetting_previousValue_value_changeType_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFHomeKitSettingsValueManager.m" lineNumber:69 description:{@"%s is unavailable; use %@ instead", "-[_HFHomeKitSettingsVendorSettingsWriteValueTransaction init]", v5}];

  return 0;
}

- (void)setStarted:(BOOL)a3
{
  self->_started = a3;
  if (a3 && !self->_transactionStartDate)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    transactionStartDate = self->_transactionStartDate;
    self->_transactionStartDate = v4;
  }
}

- (id)descriptionBuilder
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(_HFHomeKitSettingsVendorSettingsWriteValueTransaction *)self transactionNumber];
  v5 = [v3 appendObject:v4 withName:@"transactionNumber"];

  if ([(_HFHomeKitSettingsVendorSettingsWriteValueTransaction *)self changeType]== 1)
  {
    v6 = @"Atomic";
  }

  else
  {
    v6 = @"FullReplace";
  }

  v7 = [v3 appendObject:v6 withName:@"changeType"];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __75___HFHomeKitSettingsVendorSettingsWriteValueTransaction_descriptionBuilder__block_invoke;
  v26[3] = &unk_277DF3568;
  v26[4] = self;
  v8 = __75___HFHomeKitSettingsVendorSettingsWriteValueTransaction_descriptionBuilder__block_invoke(v26);
  v9 = [v3 appendObject:v8 withName:@"status"];
  v10 = [(_HFHomeKitSettingsVendorSettingsWriteValueTransaction *)self setting];
  v11 = [v10 keyPath];
  v12 = [v3 appendObject:v11 withName:@"setting"];

  v13 = MEMORY[0x277CD1DA0];
  v14 = [(_HFHomeKitSettingsVendorSettingsWriteValueTransaction *)self previousValue];
  v15 = [(_HFHomeKitSettingsVendorSettingsWriteValueTransaction *)self setting];
  v16 = [v15 keyPath];
  v17 = [v13 hf_debugDescriptionForValue:v14 keyPath:v16];
  v18 = [v3 appendObject:v17 withName:@"previousValue"];

  v19 = MEMORY[0x277CD1DA0];
  v20 = [(_HFHomeKitSettingsVendorSettingsWriteValueTransaction *)self value];
  v21 = [(_HFHomeKitSettingsVendorSettingsWriteValueTransaction *)self setting];
  v22 = [v21 keyPath];
  v23 = [v19 hf_debugDescriptionForValue:v20 keyPath:v22];
  v24 = [v3 appendObject:v23 withName:@"value"];

  return v3;
}

- (id)description
{
  v2 = [(_HFHomeKitSettingsVendorSettingsWriteValueTransaction *)self descriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end