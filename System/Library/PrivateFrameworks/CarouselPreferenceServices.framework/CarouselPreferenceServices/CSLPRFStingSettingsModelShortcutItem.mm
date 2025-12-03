@interface CSLPRFStingSettingsModelShortcutItem
- (BOOL)isEqual:(id)equal;
- (CSLPRFStingSettingsModelShortcutItem)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSLPRFStingSettingsModelShortcutItem

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_identifier withName:@"identifier" skipIfEmpty:1];
  [v3 appendString:self->_title withName:@"title" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  identifier = self->_identifier;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__CSLPRFStingSettingsModelShortcutItem_isEqual___block_invoke;
  v18[3] = &unk_278744E18;
  v7 = equalCopy;
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
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendString:self->_identifier];
  v5 = [builder appendString:self->_title];
  v6 = [builder hash];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CSLPRFStingSettingsModelShortcutItem);
  v5 = [(NSString *)self->_identifier copy];
  [(CSLPRFStingSettingsModelShortcutItem *)v4 setIdentifier:v5];

  v6 = [(NSString *)self->_title copy];
  [(CSLPRFStingSettingsModelShortcutItem *)v4 setTitle:v6];

  return v4;
}

- (CSLPRFStingSettingsModelShortcutItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CSLPRFStingSettingsModelShortcutItem;
  v5 = [(CSLPRFStingSettingsModelShortcutItem *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectForKey:@"title"];
    title = v5->_title;
    v5->_title = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
}

@end