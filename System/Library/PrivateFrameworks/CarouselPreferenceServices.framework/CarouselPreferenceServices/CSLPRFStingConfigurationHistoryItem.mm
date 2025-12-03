@interface CSLPRFStingConfigurationHistoryItem
- (BOOL)isEqual:(id)equal;
- (CSLPRFStingConfigurationHistoryItem)initWithBundleID:(id)d actionType:(unint64_t)type identifier:(id)identifier;
- (CSLPRFStingConfigurationHistoryItem)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSLPRFStingConfigurationHistoryItem

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_bundleID withName:@"bundleID" skipIfEmpty:1];
  [v3 appendString:self->_identifier withName:@"identifier" skipIfEmpty:1];
  v4 = MEMORY[0x277CCACA8];
  integerValue = [(NSNumber *)self->_actionType integerValue];
  if ((integerValue - 1) > 0x29)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_278744510[integerValue - 1];
  }

  v7 = v6;
  v8 = [v4 stringWithFormat:@"%@ (%@)", v7, self->_actionType];

  [v3 appendString:v8 withName:@"actionType"];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  bundleID = self->_bundleID;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__CSLPRFStingConfigurationHistoryItem_isEqual___block_invoke;
  v20[3] = &unk_278744E18;
  v7 = equalCopy;
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
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendString:self->_bundleID];
  v5 = [builder appendString:self->_identifier];
  v6 = [builder appendObject:self->_actionType];
  v7 = [builder hash];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CSLPRFStingConfigurationHistoryItem);
  [(CSLPRFStingConfigurationHistoryItem *)v4 setBundleID:self->_bundleID];
  [(CSLPRFStingConfigurationHistoryItem *)v4 setIdentifier:self->_identifier];
  [(CSLPRFStingConfigurationHistoryItem *)v4 setActionType:self->_actionType];
  return v4;
}

- (CSLPRFStingConfigurationHistoryItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CSLPRFStingConfigurationHistoryItem;
  v5 = [(CSLPRFStingConfigurationHistoryItem *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [coderCopy decodeObjectForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [coderCopy decodeObjectForKey:@"actionType"];
    actionType = v5->_actionType;
    v5->_actionType = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bundleID = self->_bundleID;
  coderCopy = coder;
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_actionType forKey:@"actionType"];
}

- (CSLPRFStingConfigurationHistoryItem)initWithBundleID:(id)d actionType:(unint64_t)type identifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = CSLPRFStingConfigurationHistoryItem;
  v11 = [(CSLPRFStingConfigurationHistoryItem *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_bundleID, d);
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    actionType = v12->_actionType;
    v12->_actionType = v13;

    objc_storeStrong(&v12->_identifier, identifier);
  }

  return v12;
}

@end