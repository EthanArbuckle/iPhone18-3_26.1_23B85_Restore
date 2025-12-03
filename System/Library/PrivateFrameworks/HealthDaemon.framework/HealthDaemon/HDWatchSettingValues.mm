@interface HDWatchSettingValues
- (BOOL)isEqual:(id)equal;
- (HDWatchSettingValues)initWithFeatureSettingEnabledValue:(id)value defaultsEnabledValue:(id)enabledValue lastReconciledEnabledValue:(id)reconciledEnabledValue;
- (id)reconciledEnabledValue;
- (unint64_t)hash;
@end

@implementation HDWatchSettingValues

- (HDWatchSettingValues)initWithFeatureSettingEnabledValue:(id)value defaultsEnabledValue:(id)enabledValue lastReconciledEnabledValue:(id)reconciledEnabledValue
{
  valueCopy = value;
  enabledValueCopy = enabledValue;
  reconciledEnabledValueCopy = reconciledEnabledValue;
  v19.receiver = self;
  v19.super_class = HDWatchSettingValues;
  v11 = [(HDWatchSettingValues *)&v19 init];
  if (v11)
  {
    v12 = [valueCopy copy];
    featureSettingEnabledValue = v11->_featureSettingEnabledValue;
    v11->_featureSettingEnabledValue = v12;

    v14 = [enabledValueCopy copy];
    defaultsEnabledValue = v11->_defaultsEnabledValue;
    v11->_defaultsEnabledValue = v14;

    v16 = [reconciledEnabledValueCopy copy];
    lastReconciledEnabledValue = v11->_lastReconciledEnabledValue;
    v11->_lastReconciledEnabledValue = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      featureSettingEnabledValue = self->_featureSettingEnabledValue;
      v7 = v5->_featureSettingEnabledValue;
      if (featureSettingEnabledValue != v7 && (!v7 || ![(NSNumber *)featureSettingEnabledValue isEqual:?]))
      {
        goto LABEL_14;
      }

      defaultsEnabledValue = self->_defaultsEnabledValue;
      v9 = v5->_defaultsEnabledValue;
      if (defaultsEnabledValue != v9 && (!v9 || ![(NSNumber *)defaultsEnabledValue isEqual:?]))
      {
        goto LABEL_14;
      }

      lastReconciledEnabledValue = self->_lastReconciledEnabledValue;
      v11 = v5->_lastReconciledEnabledValue;
      if (lastReconciledEnabledValue == v11)
      {
        v12 = 1;
        goto LABEL_15;
      }

      if (v11)
      {
        v12 = [(NSNumber *)lastReconciledEnabledValue isEqual:?];
      }

      else
      {
LABEL_14:
        v12 = 0;
      }

LABEL_15:

      goto LABEL_16;
    }

    v12 = 0;
  }

LABEL_16:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_featureSettingEnabledValue hash];
  v4 = [(NSNumber *)self->_defaultsEnabledValue hash]^ v3;
  return v4 ^ [(NSNumber *)self->_lastReconciledEnabledValue hash];
}

- (id)reconciledEnabledValue
{
  v17 = *MEMORY[0x277D85DE8];
  featureSettingEnabledValue = self->_featureSettingEnabledValue;
  defaultsEnabledValue = self->_defaultsEnabledValue;
  if (featureSettingEnabledValue)
  {
    if (!defaultsEnabledValue)
    {
      goto LABEL_10;
    }

    if ([(NSNumber *)featureSettingEnabledValue isEqual:?])
    {
      v5 = self->_defaultsEnabledValue;
LABEL_5:
      v6 = v5;
      goto LABEL_16;
    }

    featureSettingEnabledValue = self->_featureSettingEnabledValue;
    if (!self->_lastReconciledEnabledValue || (v7 = [(NSNumber *)featureSettingEnabledValue isEqual:?], featureSettingEnabledValue = self->_defaultsEnabledValue, v7))
    {
LABEL_10:
      v6 = featureSettingEnabledValue;
      goto LABEL_16;
    }

    if ([(NSNumber *)featureSettingEnabledValue isEqual:self->_lastReconciledEnabledValue])
    {
      v5 = self->_featureSettingEnabledValue;
      goto LABEL_5;
    }

    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_FAULT))
    {
      v11 = v8;
      v13 = 138543618;
      v14 = objc_opt_class();
      v15 = 2114;
      selfCopy = self;
      v12 = v14;
      _os_log_fault_impl(&dword_228986000, v11, OS_LOG_TYPE_FAULT, "[%{public}@] Unexpected settings evaluation: %{public}@", &v13, 0x16u);
    }
  }

  else if (defaultsEnabledValue)
  {
    v6 = defaultsEnabledValue;
    goto LABEL_16;
  }

  v6 = 0;
LABEL_16:
  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

@end