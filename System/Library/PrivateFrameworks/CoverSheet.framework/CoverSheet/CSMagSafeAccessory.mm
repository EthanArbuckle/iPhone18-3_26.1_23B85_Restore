@interface CSMagSafeAccessory
+ (CSMagSafeAccessory)accessoryWithType:(int64_t)type primaryColor:(id)color secondoryColor:(id)secondoryColor;
- (BOOL)_isSupportedFromDictionary:(id)dictionary;
- (CGRect)visibleScreenCoordinates;
- (CSMagSafeAccessory)initWithDictionary:(id)dictionary endpointUUID:(id)d;
- (double)_delayFromDictionary:(id)dictionary;
- (id)accessoryTypeString;
- (id)colorForP3ColorData:(id)data;
- (id)description;
- (int64_t)_accessoryTypeForFamily:(unsigned __int8)family;
- (int64_t)_accessoryTypeForNFCtype:(unsigned __int8)ctype;
- (unsigned)_accessoryTypeFromDictionary:(id)dictionary;
@end

@implementation CSMagSafeAccessory

+ (CSMagSafeAccessory)accessoryWithType:(int64_t)type primaryColor:(id)color secondoryColor:(id)secondoryColor
{
  secondoryColorCopy = secondoryColor;
  colorCopy = color;
  v9 = objc_opt_new();
  [v9 setType:type];
  [v9 setPrimaryColor:colorCopy];

  [v9 setSecondaryColor:secondoryColorCopy];

  return v9;
}

- (CSMagSafeAccessory)initWithDictionary:(id)dictionary endpointUUID:(id)d
{
  dictionaryCopy = dictionary;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = CSMagSafeAccessory;
  v8 = [(CSMagSafeAccessory *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_endpointUUID, d);
    v10 = [(CSMagSafeAccessory *)v9 _accessoryTypeFromDictionary:dictionaryCopy];
    v9->_type = [(CSMagSafeAccessory *)v9 _accessoryTypeForNFCtype:v10];
    v9->_isSupported = [(CSMagSafeAccessory *)v9 _isSupportedFromDictionary:dictionaryCopy];
    v9->_blocksWallet = [(CSMagSafeAccessory *)v9 _blocksWalletAnimationForNFCtype:v10];
    v11 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CFD2E8]];
    v12 = [(CSMagSafeAccessory *)v9 colorForP3ColorData:v11];
    primaryColor = v9->_primaryColor;
    v9->_primaryColor = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CFD2F0]];
    v15 = [(CSMagSafeAccessory *)v9 colorForP3ColorData:v14];
    secondaryColor = v9->_secondaryColor;
    v9->_secondaryColor = v15;

    [(CSMagSafeAccessory *)v9 _delayFromDictionary:dictionaryCopy];
    v9->_attachAnimationDelay = v17;
  }

  return v9;
}

- (id)colorForP3ColorData:(id)data
{
  dataCopy = data;
  if (([dataCopy length] & 0xFFFFFFFFFFFFFFF8) == 0x20)
  {
    bytes = [dataCopy bytes];
    v5 = [MEMORY[0x277D75348] colorWithDisplayP3Red:*bytes green:bytes[1] blue:bytes[2] alpha:bytes[3]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_accessoryTypeForNFCtype:(unsigned __int8)ctype
{
  ctypeCopy = ctype;
  result = 1;
  if (ctype <= 86)
  {
    if (ctype > 75)
    {
      if ((ctype - 76) < 3)
      {
        return 3;
      }

      if ((ctype - 83) < 3)
      {
        return 5;
      }

      if (ctype != 86)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (ctype > 65)
      {
        if ((ctype - 67) >= 3)
        {
          if (ctype == 66)
          {
            return result;
          }

          goto LABEL_51;
        }

        return 2;
      }

      if (!ctype)
      {
        v5 = SBLogCommon();
        v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

        if (v6)
        {
          NSLog(&cfstr_NotAValidAcces.isa);
        }

        return 0;
      }

      if (ctype == 57)
      {
        return 10;
      }

      if (ctype != 65)
      {
        goto LABEL_51;
      }
    }

    return 6;
  }

  if (ctype <= 127)
  {
    if (ctype <= 96)
    {
      if ((ctype - 87) < 2)
      {
        return 8;
      }

      if (ctype == 89)
      {
        return 11;
      }

      if (ctype != 96)
      {
        goto LABEL_51;
      }

      return 7;
    }

    if (ctype > 113)
    {
      if (ctype == 114)
      {
        return 4;
      }

      if (ctype == 115)
      {
        return result;
      }

      goto LABEL_51;
    }

    if (ctype != 97)
    {
      if (ctype != 101)
      {
        goto LABEL_51;
      }

      return 2;
    }

    return 5;
  }

  if (ctype > 143)
  {
    if (ctype <= 146)
    {
      if (ctype == 144)
      {
        return 7;
      }

      if (ctype == 145)
      {
        return 5;
      }

      goto LABEL_51;
    }

    if (ctype != 147)
    {
      if (ctype != 149)
      {
        goto LABEL_51;
      }

      return 2;
    }

    return 10;
  }

  if (ctype > 132)
  {
    if (ctype != 133)
    {
      if (ctype == 136)
      {
        return 9;
      }

      goto LABEL_51;
    }

    return 2;
  }

  if (ctype == 128)
  {
    return 7;
  }

  if (ctype == 129)
  {
    return 5;
  }

LABEL_51:
  v7 = SBLogCommon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  if (v8)
  {
    NSLog(&cfstr_NotAnImplement.isa, ctypeCopy);
  }

  return 0;
}

- (int64_t)_accessoryTypeForFamily:(unsigned __int8)family
{
  familyCopy = family;
  if (family > 5)
  {
    if (family > 8)
    {
      switch(family)
      {
        case 9u:
          return 9;
        case 0xAu:
          return 10;
        case 0xCu:
          return 11;
      }

LABEL_26:
      v6 = SBLogCommon();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

      if (v7)
      {
        NSLog(&cfstr_NotAnImplement_0.isa, familyCopy);
      }

      return 0;
    }

    if (family == 6)
    {
      return 6;
    }

    else if (family == 7)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }

  else if (family > 2)
  {
    if (family == 3)
    {
      return 3;
    }

    else if (family == 4)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    if (!family)
    {
      v4 = SBLogCommon();
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

      if (v5)
      {
        NSLog(&cfstr_NotAValidAcces_0.isa);
      }

      return 0;
    }

    if (family != 1)
    {
      if (family == 2)
      {
        return 2;
      }

      goto LABEL_26;
    }
  }

  return familyCopy;
}

- (unsigned)_accessoryTypeFromDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:*MEMORY[0x277CFD330]];
  charValue = [v3 charValue];

  return charValue;
}

- (BOOL)_isSupportedFromDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:*MEMORY[0x277CFD2F8]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (double)_delayFromDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:*MEMORY[0x277CFD338]];
  v4 = [v3 intValue] / 1000.0;

  return v4;
}

- (id)accessoryTypeString
{
  type = self->_type;
  if (type > 0xB)
  {
    return @"Battery Pack";
  }

  else
  {
    return off_27838CA80[type];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  endpointUUID = self->_endpointUUID;
  accessoryTypeString = [(CSMagSafeAccessory *)self accessoryTypeString];
  v6 = accessoryTypeString;
  secondaryColor = @"N/A";
  primaryColor = self->_primaryColor;
  if (!primaryColor)
  {
    primaryColor = @"N/A";
  }

  if (self->_secondaryColor)
  {
    secondaryColor = self->_secondaryColor;
  }

  secondaryColor = [v3 stringWithFormat:@"Accessory endpointUUID: %@, type: %@, allows: %d, primary color: %@, secondary color: %@", endpointUUID, accessoryTypeString, self->_isSupported, primaryColor, secondaryColor];

  return secondaryColor;
}

- (CGRect)visibleScreenCoordinates
{
  if ([(CSMagSafeAccessory *)self isWindowed])
  {
    v2 = +[CSMagSafeAccessoryConfiguration defaultConfiguration];
    [v2 visibleScreenCoordinatesForSleeve];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end