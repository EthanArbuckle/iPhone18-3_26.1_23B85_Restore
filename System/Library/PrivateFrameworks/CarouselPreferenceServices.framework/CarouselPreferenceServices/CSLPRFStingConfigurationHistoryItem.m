@interface CSLPRFStingConfigurationHistoryItem
- (BOOL)isEqual:(id)a3;
- (CSLPRFStingConfigurationHistoryItem)initWithBundleID:(id)a3 actionType:(unint64_t)a4 identifier:(id)a5;
- (CSLPRFStingConfigurationHistoryItem)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSLPRFStingConfigurationHistoryItem

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_bundleID withName:@"bundleID" skipIfEmpty:1];
  [v3 appendString:self->_identifier withName:@"identifier" skipIfEmpty:1];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(NSNumber *)self->_actionType integerValue];
  if ((v5 - 1) > 0x29)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_278744510[v5 - 1];
  }

  v7 = v6;
  v8 = [v4 stringWithFormat:@"%@ (%@)", v7, self->_actionType];

  [v3 appendString:v8 withName:@"actionType"];
  v9 = [v3 build];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  bundleID = self->_bundleID;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__CSLPRFStingConfigurationHistoryItem_isEqual___block_invoke;
  v20[3] = &unk_278744E18;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendString:bundleID counterpart:v20];
  identifier = self->_identifier;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__CSLPRFStingConfigurationHistoryItem_isEqual___block_invoke_2;
  v18[3] = &unk_278744E18;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendString:identifier counterpart:v18];
  actionType = self->_actionType;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__CSLPRFStingConfigurationHistoryItem_isEqual___block_invoke_3;
  v16[3] = &unk_278745500;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendObject:actionType counterpart:v16];
  LOBYTE(actionType) = [v5 isEqual];

  return actionType;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendString:self->_bundleID];
  v5 = [v3 appendString:self->_identifier];
  v6 = [v3 appendObject:self->_actionType];
  v7 = [v3 hash];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CSLPRFStingConfigurationHistoryItem);
  [(CSLPRFStingConfigurationHistoryItem *)v4 setBundleID:self->_bundleID];
  [(CSLPRFStingConfigurationHistoryItem *)v4 setIdentifier:self->_identifier];
  [(CSLPRFStingConfigurationHistoryItem *)v4 setActionType:self->_actionType];
  return v4;
}

- (CSLPRFStingConfigurationHistoryItem)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CSLPRFStingConfigurationHistoryItem;
  v5 = [(CSLPRFStingConfigurationHistoryItem *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [v4 decodeObjectForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 decodeObjectForKey:@"actionType"];
    actionType = v5->_actionType;
    v5->_actionType = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bundleID = self->_bundleID;
  v5 = a3;
  [v5 encodeObject:bundleID forKey:@"bundleID"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_actionType forKey:@"actionType"];
}

- (CSLPRFStingConfigurationHistoryItem)initWithBundleID:(id)a3 actionType:(unint64_t)a4 identifier:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CSLPRFStingConfigurationHistoryItem;
  v11 = [(CSLPRFStingConfigurationHistoryItem *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_bundleID, a3);
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    actionType = v12->_actionType;
    v12->_actionType = v13;

    objc_storeStrong(&v12->_identifier, a5);
  }

  return v12;
}

@end