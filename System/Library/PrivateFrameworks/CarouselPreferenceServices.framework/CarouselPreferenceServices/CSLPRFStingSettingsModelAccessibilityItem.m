@interface CSLPRFStingSettingsModelAccessibilityItem
+ (id)defaultItems;
- (BOOL)isEqual:(id)a3;
- (CSLPRFStingSettingsModelAccessibilityItem)initWithActionType:(unint64_t)a3;
- (CSLPRFStingSettingsModelAccessibilityItem)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSLPRFStingSettingsModelAccessibilityItem

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
  v18[2] = __53__CSLPRFStingSettingsModelAccessibilityItem_isEqual___block_invoke;
  v18[3] = &unk_278744E18;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendString:identifier counterpart:v18];
  title = self->_title;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __53__CSLPRFStingSettingsModelAccessibilityItem_isEqual___block_invoke_2;
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
  v4 = objc_alloc_init(CSLPRFStingSettingsModelAccessibilityItem);
  v5 = [(NSString *)self->_identifier copy];
  [(CSLPRFStingSettingsModelAccessibilityItem *)v4 setIdentifier:v5];

  v6 = [(NSString *)self->_title copy];
  [(CSLPRFStingSettingsModelAccessibilityItem *)v4 setTitle:v6];

  return v4;
}

- (CSLPRFStingSettingsModelAccessibilityItem)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CSLPRFStingSettingsModelAccessibilityItem;
  v5 = [(CSLPRFStingSettingsModelAccessibilityItem *)&v11 init];
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

- (CSLPRFStingSettingsModelAccessibilityItem)initWithActionType:(unint64_t)a3
{
  if (a3 > 0xC)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_2787446A0[a3];
  }

  v6 = v5;
  v7 = CSLPRFStingAccessibilityActionTypeName(a3);
  if (-[__CFString length](v6, "length") && [v7 length])
  {
    v15.receiver = self;
    v15.super_class = CSLPRFStingSettingsModelAccessibilityItem;
    v8 = [(CSLPRFStingSettingsModelAccessibilityItem *)&v15 init];
    v9 = v8;
    if (v8)
    {
      if (a3 > 0xC)
      {
        v10 = 0;
      }

      else
      {
        v10 = off_2787446A0[a3];
      }

      objc_storeStrong(&v8->_identifier, v10);
      v12 = CSLPRFStingAccessibilityActionTypeName(a3);
      title = v9->_title;
      v9->_title = v12;
    }

    self = v9;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_title forKey:@"title"];
}

+ (id)defaultItems
{
  v2 = [MEMORY[0x277CBEB18] array];
  for (i = 0; i != 14; ++i)
  {
    if (i)
    {
      v4 = [[CSLPRFStingSettingsModelAccessibilityItem alloc] initWithActionType:i];
      if (v4)
      {
        [v2 addObject:v4];
      }
    }
  }

  v5 = [v2 sortedArrayUsingComparator:&__block_literal_global_2580];

  return v5;
}

uint64_t __57__CSLPRFStingSettingsModelAccessibilityItem_defaultItems__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 title];
  v6 = [v4 title];

  v7 = [v5 localizedCompare:v6];
  return v7;
}

@end