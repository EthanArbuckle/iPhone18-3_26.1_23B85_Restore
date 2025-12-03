@interface CAFNotificationUserAction
- (CAFNotificationUserAction)initWithContentURLAction:(id)action userVisibleLabel:(id)label;
- (CAFNotificationUserAction)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFNotificationUserAction

- (CAFNotificationUserAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = CAFNotificationUserAction;
  v5 = [(CAFNotificationUserAction *)&v13 init];
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
    v9 = [dictionaryCopy objectForKey:@"userVisibleLabel"];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    userVisibleLabel = v5->_userVisibleLabel;
    v5->_userVisibleLabel = v10;
  }

  return v5;
}

- (CAFNotificationUserAction)initWithContentURLAction:(id)action userVisibleLabel:(id)label
{
  actionCopy = action;
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = CAFNotificationUserAction;
  v9 = [(CAFNotificationUserAction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentURLAction, action);
    objc_storeStrong(&v10->_userVisibleLabel, label);
  }

  return v10;
}

- (NSDictionary)dictionaryRepresentation
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"contentURLAction";
  contentURLAction = [(CAFNotificationUserAction *)self contentURLAction];
  null = contentURLAction;
  if (!contentURLAction)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v10[1] = @"userVisibleLabel";
  v11[0] = null;
  userVisibleLabel = [(CAFNotificationUserAction *)self userVisibleLabel];
  null2 = userVisibleLabel;
  if (!userVisibleLabel)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!userVisibleLabel)
  {
  }

  if (!contentURLAction)
  {
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  contentURLAction = [(CAFNotificationUserAction *)self contentURLAction];
  userVisibleLabel = [(CAFNotificationUserAction *)self userVisibleLabel];
  v7 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %@ }>", v4, self, @"contentURLAction", contentURLAction, @"userVisibleLabel", userVisibleLabel];

  return v7;
}

@end