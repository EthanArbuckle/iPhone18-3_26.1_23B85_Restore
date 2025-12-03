@interface _HFHomeKitSettingsVendorSettingsWriteValueTransaction
- (_HFHomeKitSettingsVendorSettingsWriteValueTransaction)init;
- (_HFHomeKitSettingsVendorSettingsWriteValueTransaction)initWithSetting:(id)setting previousValue:(id)value value:(id)a5 changeType:(unint64_t)type;
- (id)description;
- (id)descriptionBuilder;
- (void)setStarted:(BOOL)started;
@end

@implementation _HFHomeKitSettingsVendorSettingsWriteValueTransaction

- (_HFHomeKitSettingsVendorSettingsWriteValueTransaction)initWithSetting:(id)setting previousValue:(id)value value:(id)a5 changeType:(unint64_t)type
{
  settingCopy = setting;
  valueCopy = value;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = _HFHomeKitSettingsVendorSettingsWriteValueTransaction;
  v14 = [(_HFHomeKitSettingsVendorSettingsWriteValueTransaction *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_setting, setting);
    objc_storeStrong(&v15->_previousValue, value);
    objc_storeStrong(&v15->_value, a5);
    ++initWithSetting_previousValue_value_changeType__i;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    transactionNumber = v15->_transactionNumber;
    v15->_transactionNumber = v16;

    v18 = objc_alloc_init(MEMORY[0x277D2C900]);
    settingWriteFuture = v15->_settingWriteFuture;
    v15->_settingWriteFuture = v18;

    v15->_changeType = type;
  }

  return v15;
}

- (_HFHomeKitSettingsVendorSettingsWriteValueTransaction)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithSetting_previousValue_value_changeType_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFHomeKitSettingsValueManager.m" lineNumber:69 description:{@"%s is unavailable; use %@ instead", "-[_HFHomeKitSettingsVendorSettingsWriteValueTransaction init]", v5}];

  return 0;
}

- (void)setStarted:(BOOL)started
{
  self->_started = started;
  if (started && !self->_transactionStartDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    transactionStartDate = self->_transactionStartDate;
    self->_transactionStartDate = date;
  }
}

- (id)descriptionBuilder
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  transactionNumber = [(_HFHomeKitSettingsVendorSettingsWriteValueTransaction *)self transactionNumber];
  v5 = [v3 appendObject:transactionNumber withName:@"transactionNumber"];

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
  setting = [(_HFHomeKitSettingsVendorSettingsWriteValueTransaction *)self setting];
  keyPath = [setting keyPath];
  v12 = [v3 appendObject:keyPath withName:@"setting"];

  v13 = MEMORY[0x277CD1DA0];
  previousValue = [(_HFHomeKitSettingsVendorSettingsWriteValueTransaction *)self previousValue];
  setting2 = [(_HFHomeKitSettingsVendorSettingsWriteValueTransaction *)self setting];
  keyPath2 = [setting2 keyPath];
  v17 = [v13 hf_debugDescriptionForValue:previousValue keyPath:keyPath2];
  v18 = [v3 appendObject:v17 withName:@"previousValue"];

  v19 = MEMORY[0x277CD1DA0];
  value = [(_HFHomeKitSettingsVendorSettingsWriteValueTransaction *)self value];
  setting3 = [(_HFHomeKitSettingsVendorSettingsWriteValueTransaction *)self setting];
  keyPath3 = [setting3 keyPath];
  v23 = [v19 hf_debugDescriptionForValue:value keyPath:keyPath3];
  v24 = [v3 appendObject:v23 withName:@"value"];

  return v3;
}

- (id)description
{
  descriptionBuilder = [(_HFHomeKitSettingsVendorSettingsWriteValueTransaction *)self descriptionBuilder];
  build = [descriptionBuilder build];

  return build;
}

@end