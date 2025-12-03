@interface CSLPRFStingSettingsItem
- (CSLPRFStingSettingsItem)initWithIdentifier:(id)identifier title:(id)title actionType:(id)type assetName:(id)name;
- (NSString)subtitle;
- (id)description;
@end

@implementation CSLPRFStingSettingsItem

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_identifier withName:@"identifier" skipIfEmpty:0];
  [v3 appendString:self->_title withName:@"title" skipIfEmpty:0];
  v4 = [v3 appendInteger:-[NSNumber integerValue](self->_actionType withName:{"integerValue"), @"actionType"}];
  [v3 appendString:self->_assetName withName:@"assetName" skipIfEmpty:0];
  build = [v3 build];

  return build;
}

- (NSString)subtitle
{
  v3 = MEMORY[0x277CCACA8];
  linkActionType = [(CSLPRFStingSettingsItem *)self linkActionType];
  if (linkActionType - 1 > 0x29)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_278744510[linkActionType - 1];
  }

  v6 = v5;
  v7 = [v3 stringWithFormat:@"QUICK_SWITCH_SUBTITLE_%@", v6];

  linkActionType2 = [(CSLPRFStingSettingsItem *)self linkActionType];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = v9;
  if (linkActionType2 == 29)
  {
    v11 = @"LocalizableSettings-Translate";
  }

  else
  {
    v11 = @"LocalizableSettings-N199";
  }

  v12 = [v9 localizedStringForKey:v7 value:&stru_28401BD18 table:v11];

  return v12;
}

- (CSLPRFStingSettingsItem)initWithIdentifier:(id)identifier title:(id)title actionType:(id)type assetName:(id)name
{
  identifierCopy = identifier;
  titleCopy = title;
  typeCopy = type;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = CSLPRFStingSettingsItem;
  v15 = [(CSLPRFStingSettingsItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_title, title);
    objc_storeStrong(&v16->_actionType, type);
    objc_storeStrong(&v16->_assetName, name);
  }

  return v16;
}

@end