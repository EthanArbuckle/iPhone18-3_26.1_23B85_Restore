@interface CAFHistoricalNotificationUserAction
- (CAFHistoricalNotificationUserAction)initWithContentURLAction:(id)a3 symbolName:(id)a4 userVisibleLabel:(id)a5;
- (CAFHistoricalNotificationUserAction)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFHistoricalNotificationUserAction

- (CAFHistoricalNotificationUserAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CAFHistoricalNotificationUserAction;
  v5 = [(CAFHistoricalNotificationUserAction *)&v16 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKey:@"contentURLAction"];
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
    v9 = [v4 objectForKey:@"symbolName"];
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
    v12 = [v4 objectForKey:@"userVisibleLabel"];
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

- (CAFHistoricalNotificationUserAction)initWithContentURLAction:(id)a3 symbolName:(id)a4 userVisibleLabel:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CAFHistoricalNotificationUserAction;
  v12 = [(CAFHistoricalNotificationUserAction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_contentURLAction, a3);
    objc_storeStrong(&v13->_symbolName, a4);
    objc_storeStrong(&v13->_userVisibleLabel, a5);
  }

  return v13;
}

- (NSDictionary)dictionaryRepresentation
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"contentURLAction";
  v3 = [(CAFHistoricalNotificationUserAction *)self contentURLAction];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v13[0] = v4;
  v12[1] = @"symbolName";
  v5 = [(CAFHistoricalNotificationUserAction *)self symbolName];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v13[1] = v6;
  v12[2] = @"userVisibleLabel";
  v7 = [(CAFHistoricalNotificationUserAction *)self userVisibleLabel];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFHistoricalNotificationUserAction *)self contentURLAction];
  v6 = [(CAFHistoricalNotificationUserAction *)self symbolName];
  v7 = [(CAFHistoricalNotificationUserAction *)self userVisibleLabel];
  v8 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %@, %@: %@ }>", v4, self, @"contentURLAction", v5, @"symbolName", v6, @"userVisibleLabel", v7];

  return v8;
}

@end