@interface CSLPRFStingSettingsModelAction
- (BOOL)isEqual:(id)a3;
- (CSLPRFStingSettingsModelAction)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSLPRFStingSettingsModelAction

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_actionIdentifier withName:@"actionIdentifier" skipIfNil:1];
  v5 = [v3 appendObject:self->_startActionIdentifier withName:@"startActionIdentifier" skipIfNil:1];
  v6 = [v3 appendObject:self->_title withName:@"title" skipIfNil:0];
  v7 = [v3 build];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  actionIdentifier = self->_actionIdentifier;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __42__CSLPRFStingSettingsModelAction_isEqual___block_invoke;
  v20[3] = &unk_278744E18;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendString:actionIdentifier counterpart:v20];
  startActionIdentifier = self->_startActionIdentifier;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __42__CSLPRFStingSettingsModelAction_isEqual___block_invoke_2;
  v18[3] = &unk_278744E18;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendString:startActionIdentifier counterpart:v18];
  title = self->_title;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__CSLPRFStingSettingsModelAction_isEqual___block_invoke_3;
  v16[3] = &unk_278744E18;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendString:title counterpart:v16];
  LOBYTE(title) = [v5 isEqual];

  return title;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendString:self->_actionIdentifier];
  v5 = [v3 appendString:self->_startActionIdentifier];
  v6 = [v3 appendString:self->_title];
  v7 = [v3 hash];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CSLPRFStingSettingsModelAction);
  v5 = [(NSString *)self->_actionIdentifier copy];
  [(CSLPRFStingSettingsModelAction *)v4 setActionIdentifier:v5];

  v6 = [(NSString *)self->_startActionIdentifier copy];
  [(CSLPRFStingSettingsModelAction *)v4 setStartActionIdentifier:v6];

  v7 = [(NSString *)self->_title copy];
  [(CSLPRFStingSettingsModelAction *)v4 setTitle:v7];

  return v4;
}

- (CSLPRFStingSettingsModelAction)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CSLPRFStingSettingsModelAction;
  v5 = [(CSLPRFStingSettingsModelAction *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"actionIdentifier"];
    actionIdentifier = v5->_actionIdentifier;
    v5->_actionIdentifier = v6;

    v8 = [v4 decodeObjectForKey:@"startActionIdentifier"];
    startActionIdentifier = v5->_startActionIdentifier;
    v5->_startActionIdentifier = v8;

    v10 = [v4 decodeObjectForKey:@"title"];
    title = v5->_title;
    v5->_title = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  actionIdentifier = self->_actionIdentifier;
  v5 = a3;
  [v5 encodeObject:actionIdentifier forKey:@"actionIdentifier"];
  [v5 encodeObject:self->_startActionIdentifier forKey:@"startActionIdentifier"];
  [v5 encodeObject:self->_title forKey:@"title"];
}

@end