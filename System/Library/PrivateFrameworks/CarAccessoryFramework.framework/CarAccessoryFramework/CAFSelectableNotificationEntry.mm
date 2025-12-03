@interface CAFSelectableNotificationEntry
- (CAFSelectableNotificationEntry)initWithDictionary:(id)dictionary;
- (CAFSelectableNotificationEntry)initWithDisabled:(BOOL)disabled offSymbolColor:(unsigned __int8)color offSymbolName:(id)name offUserVisibleLabel:(id)label onSymbolColor:(unsigned __int8)symbolColor onSymbolName:(id)symbolName onUserVisibleLabel:(id)visibleLabel;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFSelectableNotificationEntry

- (CAFSelectableNotificationEntry)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = CAFSelectableNotificationEntry;
  v5 = [(CAFSelectableNotificationEntry *)&v25 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [dictionaryCopy objectForKey:@"disabled"];
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
    v8 = [dictionaryCopy objectForKey:@"offSymbolColor"];
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
    v10 = [dictionaryCopy objectForKey:@"offSymbolName"];
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
    v13 = [dictionaryCopy objectForKey:@"offUserVisibleLabel"];
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
    v16 = [dictionaryCopy objectForKey:@"onSymbolColor"];
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
    v18 = [dictionaryCopy objectForKey:@"onSymbolName"];
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
    v21 = [dictionaryCopy objectForKey:@"onUserVisibleLabel"];
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

- (CAFSelectableNotificationEntry)initWithDisabled:(BOOL)disabled offSymbolColor:(unsigned __int8)color offSymbolName:(id)name offUserVisibleLabel:(id)label onSymbolColor:(unsigned __int8)symbolColor onSymbolName:(id)symbolName onUserVisibleLabel:(id)visibleLabel
{
  nameCopy = name;
  labelCopy = label;
  symbolNameCopy = symbolName;
  visibleLabelCopy = visibleLabel;
  v23.receiver = self;
  v23.super_class = CAFSelectableNotificationEntry;
  v18 = [(CAFSelectableNotificationEntry *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_disabled = disabled;
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
  v18[7] = *MEMORY[0x277D85DE8];
  v17[0] = @"disabled";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[CAFSelectableNotificationEntry disabled](self, "disabled")}];
  v18[0] = v16;
  v17[1] = @"offSymbolColor";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFSelectableNotificationEntry offSymbolColor](self, "offSymbolColor")}];
  v18[1] = v15;
  v17[2] = @"offSymbolName";
  offSymbolName = [(CAFSelectableNotificationEntry *)self offSymbolName];
  null = offSymbolName;
  if (!offSymbolName)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v18[2] = null;
  v17[3] = @"offUserVisibleLabel";
  offUserVisibleLabel = [(CAFSelectableNotificationEntry *)self offUserVisibleLabel];
  null2 = offUserVisibleLabel;
  if (!offUserVisibleLabel)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v18[3] = null2;
  v17[4] = @"onSymbolColor";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[CAFSelectableNotificationEntry onSymbolColor](self, "onSymbolColor")}];
  v18[4] = v7;
  v17[5] = @"onSymbolName";
  onSymbolName = [(CAFSelectableNotificationEntry *)self onSymbolName];
  null3 = onSymbolName;
  if (!onSymbolName)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v18[5] = null3;
  v17[6] = @"onUserVisibleLabel";
  onUserVisibleLabel = [(CAFSelectableNotificationEntry *)self onUserVisibleLabel];
  null4 = onUserVisibleLabel;
  if (!onUserVisibleLabel)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v18[6] = null4;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:7];
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
  disabled = [(CAFSelectableNotificationEntry *)self disabled];
  offSymbolColor = [(CAFSelectableNotificationEntry *)self offSymbolColor];
  offSymbolName = [(CAFSelectableNotificationEntry *)self offSymbolName];
  offUserVisibleLabel = [(CAFSelectableNotificationEntry *)self offUserVisibleLabel];
  onSymbolColor = [(CAFSelectableNotificationEntry *)self onSymbolColor];
  onSymbolName = [(CAFSelectableNotificationEntry *)self onSymbolName];
  onUserVisibleLabel = [(CAFSelectableNotificationEntry *)self onUserVisibleLabel];
  v12 = [v3 stringWithFormat:@"<%@: %p { %@: %d, %@: %hhu, %@: %@, %@: %@, %@: %hhu, %@: %@, %@: %@ }>", v4, self, @"disabled", disabled, @"offSymbolColor", offSymbolColor, @"offSymbolName", offSymbolName, @"offUserVisibleLabel", offUserVisibleLabel, @"onSymbolColor", onSymbolColor, @"onSymbolName", onSymbolName, @"onUserVisibleLabel", onUserVisibleLabel];

  return v12;
}

@end