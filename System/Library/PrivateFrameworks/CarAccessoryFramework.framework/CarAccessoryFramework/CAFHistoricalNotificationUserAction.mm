@interface CAFHistoricalNotificationUserAction
- (CAFHistoricalNotificationUserAction)initWithContentURLAction:(id)action symbolName:(id)name userVisibleLabel:(id)label;
- (CAFHistoricalNotificationUserAction)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFHistoricalNotificationUserAction

- (CAFHistoricalNotificationUserAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = CAFHistoricalNotificationUserAction;
  v5 = [(CAFHistoricalNotificationUserAction *)&v16 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [dictionaryCopy objectForKey:@"contentURLAction"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    contentURLAction = v5->_contentURLAction;
    v5->_contentURLAction = v7;

    objc_opt_class();
    v9 = [dictionaryCopy objectForKey:@"symbolName"];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    symbolName = v5->_symbolName;
    v5->_symbolName = v10;

    objc_opt_class();
    v12 = [dictionaryCopy objectForKey:@"userVisibleLabel"];
    if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    userVisibleLabel = v5->_userVisibleLabel;
    v5->_userVisibleLabel = v13;
  }

  return v5;
}

- (CAFHistoricalNotificationUserAction)initWithContentURLAction:(id)action symbolName:(id)name userVisibleLabel:(id)label
{
  actionCopy = action;
  nameCopy = name;
  labelCopy = label;
  v15.receiver = self;
  v15.super_class = CAFHistoricalNotificationUserAction;
  v12 = [(CAFHistoricalNotificationUserAction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contentURLAction, action);
    objc_storeStrong(&v13->_symbolName, name);
    objc_storeStrong(&v13->_userVisibleLabel, label);
  }

  return v13;
}

- (NSDictionary)dictionaryRepresentation
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"contentURLAction";
  contentURLAction = [(CAFHistoricalNotificationUserAction *)self contentURLAction];
  null = contentURLAction;
  if (!contentURLAction)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v13[0] = null;
  v12[1] = @"symbolName";
  symbolName = [(CAFHistoricalNotificationUserAction *)self symbolName];
  null2 = symbolName;
  if (!symbolName)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v13[1] = null2;
  v12[2] = @"userVisibleLabel";
  userVisibleLabel = [(CAFHistoricalNotificationUserAction *)self userVisibleLabel];
  null3 = userVisibleLabel;
  if (!userVisibleLabel)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!userVisibleLabel)
  {
  }

  if (!symbolName)
  {
  }

  if (!contentURLAction)
  {
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  contentURLAction = [(CAFHistoricalNotificationUserAction *)self contentURLAction];
  symbolName = [(CAFHistoricalNotificationUserAction *)self symbolName];
  userVisibleLabel = [(CAFHistoricalNotificationUserAction *)self userVisibleLabel];
  v8 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %@, %@: %@ }>", v4, self, @"contentURLAction", contentURLAction, @"symbolName", symbolName, @"userVisibleLabel", userVisibleLabel];

  return v8;
}

@end