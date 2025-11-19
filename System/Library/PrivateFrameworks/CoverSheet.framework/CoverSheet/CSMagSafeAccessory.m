@interface CSMagSafeAccessory
+ (CSMagSafeAccessory)accessoryWithType:(int64_t)a3 primaryColor:(id)a4 secondoryColor:(id)a5;
- (BOOL)_isSupportedFromDictionary:(id)a3;
- (CGRect)visibleScreenCoordinates;
- (CSMagSafeAccessory)initWithDictionary:(id)a3 endpointUUID:(id)a4;
- (double)_delayFromDictionary:(id)a3;
- (id)accessoryTypeString;
- (id)colorForP3ColorData:(id)a3;
- (id)description;
- (int64_t)_accessoryTypeForFamily:(unsigned __int8)a3;
- (int64_t)_accessoryTypeForNFCtype:(unsigned __int8)a3;
- (unsigned)_accessoryTypeFromDictionary:(id)a3;
@end

@implementation CSMagSafeAccessory

+ (CSMagSafeAccessory)accessoryWithType:(int64_t)a3 primaryColor:(id)a4 secondoryColor:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = objc_opt_new();
  [v9 setType:a3];
  [v9 setPrimaryColor:v8];

  [v9 setSecondaryColor:v7];

  return v9;
}

- (CSMagSafeAccessory)initWithDictionary:(id)a3 endpointUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = CSMagSafeAccessory;
  v8 = [(CSMagSafeAccessory *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_endpointUUID, a4);
    v10 = [(CSMagSafeAccessory *)v9 _accessoryTypeFromDictionary:v6];
    v9->_type = [(CSMagSafeAccessory *)v9 _accessoryTypeForNFCtype:v10];
    v9->_isSupported = [(CSMagSafeAccessory *)v9 _isSupportedFromDictionary:v6];
    v9->_blocksWallet = [(CSMagSafeAccessory *)v9 _blocksWalletAnimationForNFCtype:v10];
    v11 = [v6 objectForKeyedSubscript:*MEMORY[0x277CFD2E8]];
    v12 = [(CSMagSafeAccessory *)v9 colorForP3ColorData:v11];
    primaryColor = v9->_primaryColor;
    v9->_primaryColor = v12;

    v14 = [v6 objectForKeyedSubscript:*MEMORY[0x277CFD2F0]];
    v15 = [(CSMagSafeAccessory *)v9 colorForP3ColorData:v14];
    secondaryColor = v9->_secondaryColor;
    v9->_secondaryColor = v15;

    [(CSMagSafeAccessory *)v9 _delayFromDictionary:v6];
    v9->_attachAnimationDelay = v17;
  }

  return v9;
}

- (id)colorForP3ColorData:(id)a3
{
  v3 = a3;
  if (([v3 length] & 0xFFFFFFFFFFFFFFF8) == 0x20)
  {
    v4 = [v3 bytes];
    v5 = [MEMORY[0x277D75348] colorWithDisplayP3Red:*v4 green:v4[1] blue:v4[2] alpha:v4[3]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_accessoryTypeForNFCtype:(unsigned __int8)a3
{
  v3 = a3;
  result = 1;
  if (a3 <= 86)
  {
    if (a3 > 75)
    {
      if ((a3 - 76) < 3)
      {
        return 3;
      }

      if ((a3 - 83) < 3)
      {
        return 5;
      }

      if (a3 != 86)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (a3 > 65)
      {
        if ((a3 - 67) >= 3)
        {
          if (a3 == 66)
          {
            return result;
          }

          goto LABEL_51;
        }

        return 2;
      }

      if (!a3)
      {
        v5 = SBLogCommon();
        v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

        if (v6)
        {
          NSLog(&cfstr_NotAValidAcces.isa);
        }

        return 0;
      }

      if (a3 == 57)
      {
        return 10;
      }

      if (a3 != 65)
      {
        goto LABEL_51;
      }
    }

    return 6;
  }

  if (a3 <= 127)
  {
    if (a3 <= 96)
    {
      if ((a3 - 87) < 2)
      {
        return 8;
      }

      if (a3 == 89)
      {
        return 11;
      }

      if (a3 != 96)
      {
        goto LABEL_51;
      }

      return 7;
    }

    if (a3 > 113)
    {
      if (a3 == 114)
      {
        return 4;
      }

      if (a3 == 115)
      {
        return result;
      }

      goto LABEL_51;
    }

    if (a3 != 97)
    {
      if (a3 != 101)
      {
        goto LABEL_51;
      }

      return 2;
    }

    return 5;
  }

  if (a3 > 143)
  {
    if (a3 <= 146)
    {
      if (a3 == 144)
      {
        return 7;
      }

      if (a3 == 145)
      {
        return 5;
      }

      goto LABEL_51;
    }

    if (a3 != 147)
    {
      if (a3 != 149)
      {
        goto LABEL_51;
      }

      return 2;
    }

    return 10;
  }

  if (a3 > 132)
  {
    if (a3 != 133)
    {
      if (a3 == 136)
      {
        return 9;
      }

      goto LABEL_51;
    }

    return 2;
  }

  if (a3 == 128)
  {
    return 7;
  }

  if (a3 == 129)
  {
    return 5;
  }

LABEL_51:
  v7 = SBLogCommon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  if (v8)
  {
    NSLog(&cfstr_NotAnImplement.isa, v3);
  }

  return 0;
}

- (int64_t)_accessoryTypeForFamily:(unsigned __int8)a3
{
  v3 = a3;
  if (a3 > 5)
  {
    if (a3 > 8)
    {
      switch(a3)
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
        NSLog(&cfstr_NotAnImplement_0.isa, v3);
      }

      return 0;
    }

    if (a3 == 6)
    {
      return 6;
    }

    else if (a3 == 7)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }

  else if (a3 > 2)
  {
    if (a3 == 3)
    {
      return 3;
    }

    else if (a3 == 4)
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
    if (!a3)
    {
      v4 = SBLogCommon();
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

      if (v5)
      {
        NSLog(&cfstr_NotAValidAcces_0.isa);
      }

      return 0;
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        return 2;
      }

      goto LABEL_26;
    }
  }

  return v3;
}

- (unsigned)_accessoryTypeFromDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x277CFD330]];
  v4 = [v3 charValue];

  return v4;
}

- (BOOL)_isSupportedFromDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x277CFD2F8]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (double)_delayFromDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x277CFD338]];
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
  v5 = [(CSMagSafeAccessory *)self accessoryTypeString];
  v6 = v5;
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

  v9 = [v3 stringWithFormat:@"Accessory endpointUUID: %@, type: %@, allows: %d, primary color: %@, secondary color: %@", endpointUUID, v5, self->_isSupported, primaryColor, secondaryColor];

  return v9;
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