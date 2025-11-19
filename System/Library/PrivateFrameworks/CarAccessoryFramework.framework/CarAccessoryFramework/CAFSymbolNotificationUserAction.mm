@interface CAFSymbolNotificationUserAction
- (CAFSymbolNotificationUserAction)initWithContentURLAction:(id)a3 disabled:(BOOL)a4 symbolColor:(unsigned __int8)a5 symbolName:(id)a6 userVisibleLabel:(id)a7;
- (CAFSymbolNotificationUserAction)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFSymbolNotificationUserAction

- (CAFSymbolNotificationUserAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CAFSymbolNotificationUserAction;
  v5 = [(CAFSymbolNotificationUserAction *)&v20 init];
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
    v9 = [v4 objectForKey:@"disabled"];
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
    v11 = [v4 objectForKey:@"symbolColor"];
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
    v13 = [v4 objectForKey:@"symbolName"];
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
    v16 = [v4 objectForKey:@"userVisibleLabel"];
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

- (CAFSymbolNotificationUserAction)initWithContentURLAction:(id)a3 disabled:(BOOL)a4 symbolColor:(unsigned __int8)a5 symbolName:(id)a6 userVisibleLabel:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = CAFSymbolNotificationUserAction;
  v16 = [(CAFSymbolNotificationUserAction *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_contentURLAction, a3);
    v17->_disabled = a4;
    v17->_symbolColor = a5;
    objc_storeStrong(&v17->_symbolName, a6);
    objc_storeStrong(&v17->_userVisibleLabel, a7);
  }

  return v17;
}

- (NSDictionary)dictionaryRepresentation
{
  v15[5] = *MEMORY[0x277D85DE8];
  v14[0] = @"contentURLAction";
  v3 = [(CAFSymbolNotificationUserAction *)self contentURLAction];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v15[0] = v4;
  v14[1] = @"disabled";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CAFSymbolNotificationUserAction disabled](self, "disabled")}];
  v15[1] = v5;
  v14[2] = @"symbolColor";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFSymbolNotificationUserAction symbolColor](self, "symbolColor")}];
  v15[2] = v6;
  v14[3] = @"symbolName";
  v7 = [(CAFSymbolNotificationUserAction *)self symbolName];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v15[3] = v8;
  v14[4] = @"userVisibleLabel";
  v9 = [(CAFSymbolNotificationUserAction *)self userVisibleLabel];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v15[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];
  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v3)
  {
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFSymbolNotificationUserAction *)self contentURLAction];
  v6 = [(CAFSymbolNotificationUserAction *)self disabled];
  v7 = [(CAFSymbolNotificationUserAction *)self symbolColor];
  v8 = [(CAFSymbolNotificationUserAction *)self symbolName];
  v9 = [(CAFSymbolNotificationUserAction *)self userVisibleLabel];
  v10 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %d, %@: %hhu, %@: %@, %@: %@ }>", v4, self, @"contentURLAction", v5, @"disabled", v6, @"symbolColor", v7, @"symbolName", v8, @"userVisibleLabel", v9];

  return v10;
}

@end