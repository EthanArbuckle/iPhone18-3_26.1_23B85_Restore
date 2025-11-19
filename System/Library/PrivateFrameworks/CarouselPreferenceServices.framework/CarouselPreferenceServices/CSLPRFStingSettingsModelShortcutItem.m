@interface CSLPRFStingSettingsModelShortcutItem
- (BOOL)isEqual:(id)a3;
- (CSLPRFStingSettingsModelShortcutItem)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSLPRFStingSettingsModelShortcutItem

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_identifier withName:@"identifier" skipIfEmpty:1];
  [v3 appendString:self->_title withName:@"title" skipIfEmpty:1];
  v4 = [v3 build];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  identifier = self->_identifier;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__CSLPRFStingSettingsModelShortcutItem_isEqual___block_invoke;
  v18[3] = &unk_278744E18;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendString:identifier counterpart:v18];
  title = self->_title;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __48__CSLPRFStingSettingsModelShortcutItem_isEqual___block_invoke_2;
  v16 = &unk_278744E18;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendString:title counterpart:&v13];
  LOBYTE(title) = [v5 isEqual];

  return title;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendString:self->_identifier];
  v5 = [v3 appendString:self->_title];
  v6 = [v3 hash];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CSLPRFStingSettingsModelShortcutItem);
  v5 = [(NSString *)self->_identifier copy];
  [(CSLPRFStingSettingsModelShortcutItem *)v4 setIdentifier:v5];

  v6 = [(NSString *)self->_title copy];
  [(CSLPRFStingSettingsModelShortcutItem *)v4 setTitle:v6];

  return v4;
}

- (CSLPRFStingSettingsModelShortcutItem)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CSLPRFStingSettingsModelShortcutItem;
  v5 = [(CSLPRFStingSettingsModelShortcutItem *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectForKey:@"title"];
    title = v5->_title;
    v5->_title = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_title forKey:@"title"];
}

@end