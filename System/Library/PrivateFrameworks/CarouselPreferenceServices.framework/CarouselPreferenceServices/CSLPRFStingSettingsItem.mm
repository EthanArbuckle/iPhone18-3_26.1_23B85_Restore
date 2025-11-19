@interface CSLPRFStingSettingsItem
- (CSLPRFStingSettingsItem)initWithIdentifier:(id)a3 title:(id)a4 actionType:(id)a5 assetName:(id)a6;
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
  v5 = [v3 build];

  return v5;
}

- (NSString)subtitle
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(CSLPRFStingSettingsItem *)self linkActionType];
  if (v4 - 1 > 0x29)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_278744510[v4 - 1];
  }

  v6 = v5;
  v7 = [v3 stringWithFormat:@"QUICK_SWITCH_SUBTITLE_%@", v6];

  v8 = [(CSLPRFStingSettingsItem *)self linkActionType];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = v9;
  if (v8 == 29)
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

- (CSLPRFStingSettingsItem)initWithIdentifier:(id)a3 title:(id)a4 actionType:(id)a5 assetName:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CSLPRFStingSettingsItem;
  v15 = [(CSLPRFStingSettingsItem *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    objc_storeStrong(&v16->_title, a4);
    objc_storeStrong(&v16->_actionType, a5);
    objc_storeStrong(&v16->_assetName, a6);
  }

  return v16;
}

@end