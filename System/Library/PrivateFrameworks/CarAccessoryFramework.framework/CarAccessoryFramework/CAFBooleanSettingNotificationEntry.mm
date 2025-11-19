@interface CAFBooleanSettingNotificationEntry
- (CAFBooleanSettingNotificationEntry)initWithDictionary:(id)a3;
- (CAFBooleanSettingNotificationEntry)initWithOffSymbolColor:(unsigned __int8)a3 offSymbolName:(id)a4 offUserVisibleLabel:(id)a5 onSymbolColor:(unsigned __int8)a6 onSymbolName:(id)a7 onUserVisibleLabel:(id)a8;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFBooleanSettingNotificationEntry

- (CAFBooleanSettingNotificationEntry)initWithDictionary:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CAFBooleanSettingNotificationEntry;
  v5 = [(CAFBooleanSettingNotificationEntry *)&v23 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKey:@"offSymbolColor"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v5->_offSymbolColor = [v7 unsignedCharValue];
    objc_opt_class();
    v8 = [v4 objectForKey:@"offSymbolName"];
    if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    offSymbolName = v5->_offSymbolName;
    v5->_offSymbolName = v9;

    objc_opt_class();
    v11 = [v4 objectForKey:@"offUserVisibleLabel"];
    if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    offUserVisibleLabel = v5->_offUserVisibleLabel;
    v5->_offUserVisibleLabel = v12;

    objc_opt_class();
    v14 = [v4 objectForKey:@"onSymbolColor"];
    if (v14 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v5->_onSymbolColor = [v15 unsignedCharValue];
    objc_opt_class();
    v16 = [v4 objectForKey:@"onSymbolName"];
    if (v16 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    onSymbolName = v5->_onSymbolName;
    v5->_onSymbolName = v17;

    objc_opt_class();
    v19 = [v4 objectForKey:@"onUserVisibleLabel"];
    if (v19 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    onUserVisibleLabel = v5->_onUserVisibleLabel;
    v5->_onUserVisibleLabel = v20;
  }

  return v5;
}

- (CAFBooleanSettingNotificationEntry)initWithOffSymbolColor:(unsigned __int8)a3 offSymbolName:(id)a4 offUserVisibleLabel:(id)a5 onSymbolColor:(unsigned __int8)a6 onSymbolName:(id)a7 onUserVisibleLabel:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = CAFBooleanSettingNotificationEntry;
  v18 = [(CAFBooleanSettingNotificationEntry *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_offSymbolColor = a3;
    objc_storeStrong(&v18->_offSymbolName, a4);
    objc_storeStrong(&v19->_offUserVisibleLabel, a5);
    v19->_onSymbolColor = a6;
    objc_storeStrong(&v19->_onSymbolName, a7);
    objc_storeStrong(&v19->_onUserVisibleLabel, a8);
  }

  return v19;
}

- (NSDictionary)dictionaryRepresentation
{
  v17[6] = *MEMORY[0x277D85DE8];
  v16[0] = @"offSymbolColor";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFBooleanSettingNotificationEntry offSymbolColor](self, "offSymbolColor")}];
  v17[0] = v15;
  v16[1] = @"offSymbolName";
  v3 = [(CAFBooleanSettingNotificationEntry *)self offSymbolName];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v17[1] = v4;
  v16[2] = @"offUserVisibleLabel";
  v5 = [(CAFBooleanSettingNotificationEntry *)self offUserVisibleLabel];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v17[2] = v6;
  v16[3] = @"onSymbolColor";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFBooleanSettingNotificationEntry onSymbolColor](self, "onSymbolColor")}];
  v17[3] = v7;
  v16[4] = @"onSymbolName";
  v8 = [(CAFBooleanSettingNotificationEntry *)self onSymbolName];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v17[4] = v9;
  v16[5] = @"onUserVisibleLabel";
  v10 = [(CAFBooleanSettingNotificationEntry *)self onUserVisibleLabel];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v17[5] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:6];
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
  v5 = [(CAFBooleanSettingNotificationEntry *)self offSymbolColor];
  v6 = [(CAFBooleanSettingNotificationEntry *)self offSymbolName];
  v7 = [(CAFBooleanSettingNotificationEntry *)self offUserVisibleLabel];
  v8 = [(CAFBooleanSettingNotificationEntry *)self onSymbolColor];
  v9 = [(CAFBooleanSettingNotificationEntry *)self onSymbolName];
  v10 = [(CAFBooleanSettingNotificationEntry *)self onUserVisibleLabel];
  v11 = [v3 stringWithFormat:@"<%@: %p { %@: %hhu, %@: %@, %@: %@, %@: %hhu, %@: %@, %@: %@ }>", v4, self, @"offSymbolColor", v5, @"offSymbolName", v6, @"offUserVisibleLabel", v7, @"onSymbolColor", v8, @"onSymbolName", v9, @"onUserVisibleLabel", v10];

  return v11;
}

@end