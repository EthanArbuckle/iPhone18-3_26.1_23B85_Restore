@interface CAFSymbolNotificationUserAction
- (CAFSymbolNotificationUserAction)initWithContentURLAction:(id)action disabled:(BOOL)disabled symbolColor:(unsigned __int8)color symbolName:(id)name userVisibleLabel:(id)label;
- (CAFSymbolNotificationUserAction)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFSymbolNotificationUserAction

- (CAFSymbolNotificationUserAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = CAFSymbolNotificationUserAction;
  v5 = [(CAFSymbolNotificationUserAction *)&v20 init];
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
    v9 = [dictionaryCopy objectForKey:@"disabled"];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v5->_disabled = [v10 BOOLValue];
    objc_opt_class();
    v11 = [dictionaryCopy objectForKey:@"symbolColor"];
    if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v5->_symbolColor = [v12 unsignedCharValue];
    objc_opt_class();
    v13 = [dictionaryCopy objectForKey:@"symbolName"];
    if (v13 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    symbolName = v5->_symbolName;
    v5->_symbolName = v14;

    objc_opt_class();
    v16 = [dictionaryCopy objectForKey:@"userVisibleLabel"];
    if (v16 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    userVisibleLabel = v5->_userVisibleLabel;
    v5->_userVisibleLabel = v17;
  }

  return v5;
}

- (CAFSymbolNotificationUserAction)initWithContentURLAction:(id)action disabled:(BOOL)disabled symbolColor:(unsigned __int8)color symbolName:(id)name userVisibleLabel:(id)label
{
  actionCopy = action;
  nameCopy = name;
  labelCopy = label;
  v19.receiver = self;
  v19.super_class = CAFSymbolNotificationUserAction;
  v16 = [(CAFSymbolNotificationUserAction *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_contentURLAction, action);
    v17->_disabled = disabled;
    v17->_symbolColor = color;
    objc_storeStrong(&v17->_symbolName, name);
    objc_storeStrong(&v17->_userVisibleLabel, label);
  }

  return v17;
}

- (NSDictionary)dictionaryRepresentation
{
  v15[5] = *MEMORY[0x277D85DE8];
  v14[0] = @"contentURLAction";
  contentURLAction = [(CAFSymbolNotificationUserAction *)self contentURLAction];
  null = contentURLAction;
  if (!contentURLAction)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v15[0] = null;
  v14[1] = @"disabled";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CAFSymbolNotificationUserAction disabled](self, "disabled")}];
  v15[1] = v5;
  v14[2] = @"symbolColor";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFSymbolNotificationUserAction symbolColor](self, "symbolColor")}];
  v15[2] = v6;
  v14[3] = @"symbolName";
  symbolName = [(CAFSymbolNotificationUserAction *)self symbolName];
  null2 = symbolName;
  if (!symbolName)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v15[3] = null2;
  v14[4] = @"userVisibleLabel";
  userVisibleLabel = [(CAFSymbolNotificationUserAction *)self userVisibleLabel];
  null3 = userVisibleLabel;
  if (!userVisibleLabel)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v15[4] = null3;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];
  if (!userVisibleLabel)
  {
  }

  if (!symbolName)
  {
  }

  if (!contentURLAction)
  {
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  contentURLAction = [(CAFSymbolNotificationUserAction *)self contentURLAction];
  disabled = [(CAFSymbolNotificationUserAction *)self disabled];
  symbolColor = [(CAFSymbolNotificationUserAction *)self symbolColor];
  symbolName = [(CAFSymbolNotificationUserAction *)self symbolName];
  userVisibleLabel = [(CAFSymbolNotificationUserAction *)self userVisibleLabel];
  v10 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %d, %@: %hhu, %@: %@, %@: %@ }>", v4, self, @"contentURLAction", contentURLAction, @"disabled", disabled, @"symbolColor", symbolColor, @"symbolName", symbolName, @"userVisibleLabel", userVisibleLabel];

  return v10;
}

@end