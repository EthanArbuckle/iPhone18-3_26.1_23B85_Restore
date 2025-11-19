@interface HDWatchSettingKeys
- (BOOL)isEqual:(id)a3;
- (HDWatchSettingKeys)initWithFeatureIdentifier:(id)a3 defaultsEnabledKey:(id)a4;
- (HDWatchSettingKeys)initWithFeatureIdentifier:(id)a3 featureSettingEnabledKey:(id)a4 defaultsEnabledKey:(id)a5 lastReconciledEnabledKey:(id)a6;
- (unint64_t)hash;
@end

@implementation HDWatchSettingKeys

- (HDWatchSettingKeys)initWithFeatureIdentifier:(id)a3 defaultsEnabledKey:(id)a4
{
  v6 = *MEMORY[0x277CCC120];
  v7 = MEMORY[0x277CCACA8];
  v8 = a4;
  v9 = a3;
  v10 = [v7 stringWithFormat:@"%@_lastReconciledValue", v8];
  v11 = [(HDWatchSettingKeys *)self initWithFeatureIdentifier:v9 featureSettingEnabledKey:v6 defaultsEnabledKey:v8 lastReconciledEnabledKey:v10];

  return v11;
}

- (HDWatchSettingKeys)initWithFeatureIdentifier:(id)a3 featureSettingEnabledKey:(id)a4 defaultsEnabledKey:(id)a5 lastReconciledEnabledKey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HDWatchSettingKeys;
  v14 = [(HDWatchSettingKeys *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    featureIdentifier = v14->_featureIdentifier;
    v14->_featureIdentifier = v15;

    v17 = [v11 copy];
    featureSettingEnabledKey = v14->_featureSettingEnabledKey;
    v14->_featureSettingEnabledKey = v17;

    v19 = [v12 copy];
    defaultsEnabledKey = v14->_defaultsEnabledKey;
    v14->_defaultsEnabledKey = v19;

    v21 = [v13 copy];
    lastReconciledEnabledKey = v14->_lastReconciledEnabledKey;
    v14->_lastReconciledEnabledKey = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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