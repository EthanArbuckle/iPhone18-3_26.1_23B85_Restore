@interface HDWatchSettingKeys
- (BOOL)isEqual:(id)equal;
- (HDWatchSettingKeys)initWithFeatureIdentifier:(id)identifier defaultsEnabledKey:(id)key;
- (HDWatchSettingKeys)initWithFeatureIdentifier:(id)identifier featureSettingEnabledKey:(id)key defaultsEnabledKey:(id)enabledKey lastReconciledEnabledKey:(id)reconciledEnabledKey;
- (unint64_t)hash;
@end

@implementation HDWatchSettingKeys

- (HDWatchSettingKeys)initWithFeatureIdentifier:(id)identifier defaultsEnabledKey:(id)key
{
  v6 = *MEMORY[0x277CCC120];
  v7 = MEMORY[0x277CCACA8];
  keyCopy = key;
  identifierCopy = identifier;
  keyCopy = [v7 stringWithFormat:@"%@_lastReconciledValue", keyCopy];
  v11 = [(HDWatchSettingKeys *)self initWithFeatureIdentifier:identifierCopy featureSettingEnabledKey:v6 defaultsEnabledKey:keyCopy lastReconciledEnabledKey:keyCopy];

  return v11;
}

- (HDWatchSettingKeys)initWithFeatureIdentifier:(id)identifier featureSettingEnabledKey:(id)key defaultsEnabledKey:(id)enabledKey lastReconciledEnabledKey:(id)reconciledEnabledKey
{
  identifierCopy = identifier;
  keyCopy = key;
  enabledKeyCopy = enabledKey;
  reconciledEnabledKeyCopy = reconciledEnabledKey;
  v24.receiver = self;
  v24.super_class = HDWatchSettingKeys;
  v14 = [(HDWatchSettingKeys *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    featureIdentifier = v14->_featureIdentifier;
    v14->_featureIdentifier = v15;

    v17 = [keyCopy copy];
    featureSettingEnabledKey = v14->_featureSettingEnabledKey;
    v14->_featureSettingEnabledKey = v17;

    v19 = [enabledKeyCopy copy];
    defaultsEnabledKey = v14->_defaultsEnabledKey;
    v14->_defaultsEnabledKey = v19;

    v21 = [reconciledEnabledKeyCopy copy];
    lastReconciledEnabledKey = v14->_lastReconciledEnabledKey;
    v14->_lastReconciledEnabledKey = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      featureIdentifier = self->_featureIdentifier;
      v7 = v5->_featureIdentifier;
      if (featureIdentifier != v7 && (!v7 || ![(NSString *)featureIdentifier isEqual:?]))
      {
        goto LABEL_17;
      }

      featureSettingEnabledKey = self->_featureSettingEnabledKey;
      v9 = v5->_featureSettingEnabledKey;
      if (featureSettingEnabledKey != v9 && (!v9 || ![(NSString *)featureSettingEnabledKey isEqual:?]))
      {
        goto LABEL_17;
      }

      defaultsEnabledKey = self->_defaultsEnabledKey;
      v11 = v5->_defaultsEnabledKey;
      if (defaultsEnabledKey != v11 && (!v11 || ![(NSString *)defaultsEnabledKey isEqual:?]))
      {
        goto LABEL_17;
      }

      lastReconciledEnabledKey = self->_lastReconciledEnabledKey;
      v13 = v5->_lastReconciledEnabledKey;
      if (lastReconciledEnabledKey == v13)
      {
        v14 = 1;
        goto LABEL_18;
      }

      if (v13)
      {
        v14 = [(NSString *)lastReconciledEnabledKey isEqual:?];
      }

      else
      {
LABEL_17:
        v14 = 0;
      }

LABEL_18:

      goto LABEL_19;
    }

    v14 = 0;
  }

LABEL_19:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_featureIdentifier hash];
  v4 = [(NSString *)self->_featureSettingEnabledKey hash]^ v3;
  v5 = [(NSString *)self->_defaultsEnabledKey hash];
  return v4 ^ v5 ^ [(NSString *)self->_lastReconciledEnabledKey hash];
}

@end