@interface CAFSelectableNotificationEntry
- (CAFSelectableNotificationEntry)initWithDictionary:(id)a3;
- (CAFSelectableNotificationEntry)initWithDisabled:(BOOL)a3 offSymbolColor:(unsigned __int8)a4 offSymbolName:(id)a5 offUserVisibleLabel:(id)a6 onSymbolColor:(unsigned __int8)a7 onSymbolName:(id)a8 onUserVisibleLabel:(id)a9;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFSelectableNotificationEntry

- (CAFSelectableNotificationEntry)initWithDictionary:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CAFSelectableNotificationEntry;
  v5 = [(CAFSelectableNotificationEntry *)&v25 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKey:@"disabled"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v5->_disabled = [v7 BOOLValue];
    objc_opt_class();
    v8 = [v4 objectForKey:@"offSymbolColor"];
    if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v5->_offSymbolColor = [v9 unsignedCharValue];
    objc_opt_class();
    v10 = [v4 objectForKey:@"offSymbolName"];
    if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    offSymbolName = v5->_offSymbolName;
    v5->_offSymbolName = v11;

    objc_opt_class();
    v13 = [v4 objectForKey:@"offUserVisibleLabel"];
    if (v13 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    offUserVisibleLabel = v5->_offUserVisibleLabel;
    v5->_offUserVisibleLabel = v14;

    objc_opt_class();
    v16 = [v4 objectForKey:@"onSymbolColor"];
    if (v16 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v5->_onSymbolColor = [v17 unsignedCharValue];
    objc_opt_class();
    v18 = [v4 objectForKey:@"onSymbolName"];
    if (v18 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    onSymbolName = v5->_onSymbolName;
    v5->_onSymbolName = v19;

    objc_opt_class();
    v21 = [v4 objectForKey:@"onUserVisibleLabel"];
    if (v21 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    onUserVisibleLabel = v5->_onUserVisibleLabel;
    v5->_onUserVisibleLabel = v22;
  }

  return v5;
}

- (CAFSelectableNotificationEntry)initWithDisabled:(BOOL)a3 offSymbolColor:(unsigned __int8)a4 offSymbolName:(id)a5 offUserVisibleLabel:(id)a6 onSymbolColor:(unsigned __int8)a7 onSymbolName:(id)a8 onUserVisibleLabel:(id)a9
{
  v22 = a5;
  v15 = a6;
  v16 = a8;
  v17 = a9;
  v23.receiver = self;
  v23.super_class = CAFSelectableNotificationEntry;
  v18 = [(CAFSelectableNotificationEntry *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_disabled = a3;
    v18->_offSymbolColor = a4;
    objc_storeStrong(&v18->_offSymbolName, a5);
    objc_storeStrong(&v19->_offUserVisibleLabel, a6);
    v19->_onSymbolColor = a7;
    objc_storeStrong(&v19->_onSymbolName, a8);
    objc_storeStrong(&v19->_onUserVisibleLabel, a9);
  }

  return v19;
}

- (NSDictionary)dictionaryRepresentation
{
  v18[7] = *MEMORY[0x277D85DE8];
  v17[0] = @"disabled";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[CAFSelectableNotificationEntry disabled](self, "disabled")}];
  v18[0] = v16;
  v17[1] = @"offSymbolColor";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFSelectableNotificationEntry offSymbolColor](self, "offSymbolColor")}];
  v18[1] = v15;
  v17[2] = @"offSymbolName";
  v3 = [(CAFSelectableNotificationEntry *)self offSymbolName];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v18[2] = v4;
  v17[3] = @"offUserVisibleLabel";
  v5 = [(CAFSelectableNotificationEntry *)self offUserVisibleLabel];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v18[3] = v6;
  v17[4] = @"onSymbolColor";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFSelectableNotificationEntry onSymbolColor](self, "onSymbolColor")}];
  v18[4] = v7;
  v17[5] = @"onSymbolName";
  v8 = [(CAFSelectableNotificationEntry *)self onSymbolName];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v18[5] = v9;
  v17[6] = @"onUserVisibleLabel";
  v10 = [(CAFSelectableNotificationEntry *)self onUserVisibleLabel];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v18[6] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:7];
  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CAFSelectableNotificationEntry *)self disabled];
  v6 = [(CAFSelectableNotificationEntry *)self offSymbolColor];
  v7 = [(CAFSelectableNotificationEntry *)self offSymbolName];
  v8 = [(CAFSelectableNotificationEntry *)self offUserVisibleLabel];
  v9 = [(CAFSelectableNotificationEntry *)self onSymbolColor];
  v10 = [(CAFSelectableNotificationEntry *)self onSymbolName];
  v11 = [(CAFSelectableNotificationEntry *)self onUserVisibleLabel];
  v12 = [v3 stringWithFormat:@"<%@: %p { %@: %d, %@: %hhu, %@: %@, %@: %@, %@: %hhu, %@: %@, %@: %@ }>", v4, self, @"disabled", v5, @"offSymbolColor", v6, @"offSymbolName", v7, @"offUserVisibleLabel", v8, @"onSymbolColor", v9, @"onSymbolName", v10, @"onUserVisibleLabel", v11];

  return v12;
}

@end