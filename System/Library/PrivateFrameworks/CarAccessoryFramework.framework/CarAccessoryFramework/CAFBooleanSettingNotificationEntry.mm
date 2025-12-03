@interface CAFBooleanSettingNotificationEntry
- (CAFBooleanSettingNotificationEntry)initWithDictionary:(id)dictionary;
- (CAFBooleanSettingNotificationEntry)initWithOffSymbolColor:(unsigned __int8)color offSymbolName:(id)name offUserVisibleLabel:(id)label onSymbolColor:(unsigned __int8)symbolColor onSymbolName:(id)symbolName onUserVisibleLabel:(id)visibleLabel;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFBooleanSettingNotificationEntry

- (CAFBooleanSettingNotificationEntry)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = CAFBooleanSettingNotificationEntry;
  v5 = [(CAFBooleanSettingNotificationEntry *)&v23 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [dictionaryCopy objectForKey:@"offSymbolColor"];
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
    v8 = [dictionaryCopy objectForKey:@"offSymbolName"];
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
    v11 = [dictionaryCopy objectForKey:@"offUserVisibleLabel"];
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
    v14 = [dictionaryCopy objectForKey:@"onSymbolColor"];
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
    v16 = [dictionaryCopy objectForKey:@"onSymbolName"];
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
    v19 = [dictionaryCopy objectForKey:@"onUserVisibleLabel"];
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

- (CAFBooleanSettingNotificationEntry)initWithOffSymbolColor:(unsigned __int8)color offSymbolName:(id)name offUserVisibleLabel:(id)label onSymbolColor:(unsigned __int8)symbolColor onSymbolName:(id)symbolName onUserVisibleLabel:(id)visibleLabel
{
  nameCopy = name;
  labelCopy = label;
  symbolNameCopy = symbolName;
  visibleLabelCopy = visibleLabel;
  v22.receiver = self;
  v22.super_class = CAFBooleanSettingNotificationEntry;
  v18 = [(CAFBooleanSettingNotificationEntry *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_offSymbolColor = color;
    objc_storeStrong(&v18->_offSymbolName, name);
    objc_storeStrong(&v19->_offUserVisibleLabel, label);
    v19->_onSymbolColor = symbolColor;
    objc_storeStrong(&v19->_onSymbolName, symbolName);
    objc_storeStrong(&v19->_onUserVisibleLabel, visibleLabel);
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
  offSymbolName = [(CAFBooleanSettingNotificationEntry *)self offSymbolName];
  null = offSymbolName;
  if (!offSymbolName)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v17[1] = null;
  v16[2] = @"offUserVisibleLabel";
  offUserVisibleLabel = [(CAFBooleanSettingNotificationEntry *)self offUserVisibleLabel];
  null2 = offUserVisibleLabel;
  if (!offUserVisibleLabel)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v17[2] = null2;
  v16[3] = @"onSymbolColor";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFBooleanSettingNotificationEntry onSymbolColor](self, "onSymbolColor")}];
  v17[3] = v7;
  v16[4] = @"onSymbolName";
  onSymbolName = [(CAFBooleanSettingNotificationEntry *)self onSymbolName];
  null3 = onSymbolName;
  if (!onSymbolName)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v17[4] = null3;
  v16[5] = @"onUserVisibleLabel";
  onUserVisibleLabel = [(CAFBooleanSettingNotificationEntry *)self onUserVisibleLabel];
  null4 = onUserVisibleLabel;
  if (!onUserVisibleLabel)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v17[5] = null4;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:6];
  if (!onUserVisibleLabel)
  {
  }

  if (!onSymbolName)
  {
  }

  if (!offUserVisibleLabel)
  {
  }

  if (!offSymbolName)
  {
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  offSymbolColor = [(CAFBooleanSettingNotificationEntry *)self offSymbolColor];
  offSymbolName = [(CAFBooleanSettingNotificationEntry *)self offSymbolName];
  offUserVisibleLabel = [(CAFBooleanSettingNotificationEntry *)self offUserVisibleLabel];
  onSymbolColor = [(CAFBooleanSettingNotificationEntry *)self onSymbolColor];
  onSymbolName = [(CAFBooleanSettingNotificationEntry *)self onSymbolName];
  onUserVisibleLabel = [(CAFBooleanSettingNotificationEntry *)self onUserVisibleLabel];
  v11 = [v3 stringWithFormat:@"<%@: %p { %@: %hhu, %@: %@, %@: %@, %@: %hhu, %@: %@, %@: %@ }>", v4, self, @"offSymbolColor", offSymbolColor, @"offSymbolName", offSymbolName, @"offUserVisibleLabel", offUserVisibleLabel, @"onSymbolColor", onSymbolColor, @"onSymbolName", onSymbolName, @"onUserVisibleLabel", onUserVisibleLabel];

  return v11;
}

@end