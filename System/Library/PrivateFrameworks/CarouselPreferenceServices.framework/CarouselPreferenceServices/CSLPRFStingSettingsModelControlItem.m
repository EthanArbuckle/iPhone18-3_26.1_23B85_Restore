@interface CSLPRFStingSettingsModelControlItem
- (BOOL)isEqual:(id)a3;
- (CSLPRFStingSettingsModelControlItem)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSLPRFStingSettingsModelControlItem

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_identifier withName:@"identifier" skipIfEmpty:1];
  [v3 appendString:self->_title withName:@"title" skipIfEmpty:1];
  v4 = [v3 appendObject:self->_defaultConfigurationIntent withName:@"defaultConfigurationIntent" skipIfNil:1];
  v5 = [v3 build];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  identifier = self->_identifier;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__CSLPRFStingSettingsModelControlItem_isEqual___block_invoke;
  v20[3] = &unk_278744E18;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendString:identifier counterpart:v20];
  title = self->_title;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__CSLPRFStingSettingsModelControlItem_isEqual___block_invoke_2;
  v18[3] = &unk_278744E18;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendString:title counterpart:v18];
  v12 = [(INIntent *)self->_defaultConfigurationIntent identifier];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__CSLPRFStingSettingsModelControlItem_isEqual___block_invoke_3;
  v16[3] = &unk_278744E18;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendString:v12 counterpart:v16];

  LOBYTE(v12) = [v5 isEqual];
  return v12;
}

id __47__CSLPRFStingSettingsModelControlItem_isEqual___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) defaultConfigurationIntent];
  v2 = [v1 identifier];

  return v2;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendString:self->_identifier];
  v5 = [v3 appendString:self->_title];
  v6 = [v3 appendObject:self->_defaultConfigurationIntent];
  v7 = [v3 hash];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CSLPRFStingSettingsModelControlItem);
  v5 = [(NSString *)self->_identifier copy];
  [(CSLPRFStingSettingsModelControlItem *)v4 setIdentifier:v5];

  v6 = [(NSString *)self->_title copy];
  [(CSLPRFStingSettingsModelControlItem *)v4 setTitle:v6];

  v7 = [(INIntent *)self->_defaultConfigurationIntent copy];
  [(CSLPRFStingSettingsModelControlItem *)v4 setDefaultConfigurationIntent:v7];

  return v4;
}

- (CSLPRFStingSettingsModelControlItem)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CSLPRFStingSettingsModelControlItem;
  v5 = [(CSLPRFStingSettingsModelControlItem *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectForKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 decodeObjectForKey:@"defaultConfigurationIntent"];
    defaultConfigurationIntent = v5->_defaultConfigurationIntent;
    v5->_defaultConfigurationIntent = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_defaultConfigurationIntent forKey:@"defaultConfigurationIntent"];
}

@end