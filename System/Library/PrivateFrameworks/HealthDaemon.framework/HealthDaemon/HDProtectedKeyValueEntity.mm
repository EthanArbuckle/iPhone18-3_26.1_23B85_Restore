@interface HDProtectedKeyValueEntity
+ (BOOL)setUserCharacteristic:(id)characteristic forType:(id)type profile:(id)profile error:(id *)error;
+ (__CFString)_keyForDataType:(uint64_t)type error:;
+ (id)modificationDateForCharacteristicWithType:(id)type profile:(id)profile error:(id *)error;
+ (id)userCharacteristicForType:(id)type profile:(id)profile entity:(id *)entity error:(id *)error;
+ (id)userCharacteristicTypeForKey:(id)key;
@end

@implementation HDProtectedKeyValueEntity

+ (id)userCharacteristicForType:(id)type profile:(id)profile entity:(id *)entity error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  profileCopy = profile;
  v12 = [(HDProtectedKeyValueEntity *)self _keyForDataType:typeCopy error:error];
  if (v12)
  {
    code = [typeCopy code];
    if (code > 174)
    {
      if ((code - 175) < 2)
      {
        goto LABEL_13;
      }

      if (code == 218 || code == 177)
      {
LABEL_11:
        v15 = [self numberForKey:v12 domain:&stru_283BF39C8 category:101 profile:profileCopy entity:entity error:error];
        goto LABEL_12;
      }
    }

    else
    {
      v14 = code - 64;
      if ((code - 64) <= 0x27)
      {
        if (((1 << v14) & 0x8001000005) == 0)
        {
          if (((1 << v14) & 0x700000) == 0)
          {
            if (code == 65)
            {
              v15 = [self dateComponentsForKey:v12 domain:&stru_283BF39C8 category:101 profile:profileCopy entity:entity error:error];
LABEL_12:
              v16 = v15;
              goto LABEL_17;
            }

            goto LABEL_14;
          }

LABEL_13:
          _canoncialUnit = [typeCopy _canoncialUnit];
          v16 = [self quantityForKey:v12 unit:_canoncialUnit domain:&stru_283BF39C8 category:101 profile:profileCopy entity:entity error:error];

          goto LABEL_17;
        }

        goto LABEL_11;
      }
    }

LABEL_14:
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      v21 = v18;
      *buf = 134217984;
      code2 = [typeCopy code];
      _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "Unexpected characteristic type %ld", buf, 0xCu);
    }
  }

  v16 = 0;
LABEL_17:

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (__CFString)_keyForDataType:(uint64_t)type error:
{
  v4 = a2;
  objc_opt_self();
  code = [v4 code];
  if (code > 87)
  {
    if (code > 175)
    {
      switch(code)
      {
        case 176:
          v6 = @"user_entered_period_cycle_length";
          goto LABEL_29;
        case 177:
          v6 = @"activity_move_mode";
          goto LABEL_29;
        case 218:
          v6 = @"cardio_fitness_medications_use";
          goto LABEL_29;
      }
    }

    else
    {
      switch(code)
      {
        case 88:
          v6 = @"fitzpatrick_skin_type";
          goto LABEL_29;
        case 103:
          v6 = @"wheelchair_use";
          goto LABEL_29;
        case 175:
          v6 = @"user_entered_menstrual_cycle_length";
          goto LABEL_29;
      }
    }

LABEL_28:
    [MEMORY[0x277CCA9B8] hk_assignError:type code:3 format:{@"Invalid characteristic type %@", v4}];
    v6 = 0;
    goto LABEL_29;
  }

  if (code > 83)
  {
    switch(code)
    {
      case 'T':
        v6 = @"body_mass";
        goto LABEL_29;
      case 'U':
        v6 = @"lean_body_mass";
        goto LABEL_29;
      case 'V':
        v6 = @"height";
        goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (code == 64)
  {
    v6 = @"sex";
    goto LABEL_29;
  }

  if (code == 65)
  {
    v6 = @"birthdate";
    goto LABEL_29;
  }

  if (code != 66)
  {
    goto LABEL_28;
  }

  v6 = @"blood_type";
LABEL_29:

  return v6;
}

+ (id)modificationDateForCharacteristicWithType:(id)type profile:(id)profile error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v9 = [(HDProtectedKeyValueEntity *)self _keyForDataType:type error:error];
  v10 = v9;
  if (v9)
  {
    v16[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v12 = [self modificationDatesForKeys:v11 domain:&stru_283BF39C8 category:101 profile:profileCopy error:error];

    v13 = [v12 objectForKeyedSubscript:v10];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (BOOL)setUserCharacteristic:(id)characteristic forType:(id)type profile:(id)profile error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  typeCopy = type;
  profileCopy = profile;
  if ([typeCopy _validateCharacteristic:characteristicCopy error:error])
  {
    v13 = [(HDProtectedKeyValueEntity *)self _keyForDataType:typeCopy error:error];
    if (!v13)
    {
LABEL_20:
      v18 = 0;
      goto LABEL_21;
    }

    code = [typeCopy code];
    if (code > 174)
    {
      if ((code - 175) < 2)
      {
        goto LABEL_17;
      }

      if (code == 218 || code == 177)
      {
LABEL_15:
        v16 = [self setNumber:characteristicCopy forKey:v13 domain:&stru_283BF39C8 category:101 profile:profileCopy error:error];
        goto LABEL_16;
      }
    }

    else
    {
      v15 = code - 64;
      if ((code - 64) <= 0x27)
      {
        if (((1 << v15) & 0x8001000005) == 0)
        {
          if (((1 << v15) & 0x700000) == 0)
          {
            if (code == 65)
            {
              v16 = [self setDateComponents:characteristicCopy forKey:v13 domain:&stru_283BF39C8 category:101 profile:profileCopy error:error];
LABEL_16:
              v18 = v16;
LABEL_21:

              goto LABEL_22;
            }

            goto LABEL_18;
          }

LABEL_17:
          _canoncialUnit = [typeCopy _canoncialUnit];
          v18 = [self setQuantity:characteristicCopy unit:_canoncialUnit forKey:v13 domain:&stru_283BF39C8 category:101 profile:profileCopy error:error];

          goto LABEL_21;
        }

        goto LABEL_15;
      }
    }

LABEL_18:
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      v24 = v21;
      *buf = 134217984;
      code2 = [typeCopy code];
      _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "Unexpected characteristic type %ld", buf, 0xCu);
    }

    goto LABEL_20;
  }

  _HKInitializeLogging();
  v17 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
  {
    v20 = v17;
    *buf = 134217984;
    code2 = [typeCopy code];
    _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "Failed to validate characteristic for type %ld", buf, 0xCu);
  }

  v18 = 0;
LABEL_22:

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)userCharacteristicTypeForKey:(id)key
{
  keyCopy = key;
  objc_opt_self();
  if ([keyCopy isEqualToString:@"sex"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCBB08];
LABEL_25:
    v6 = [v4 characteristicTypeForIdentifier:*v5];
    goto LABEL_26;
  }

  if ([keyCopy isEqualToString:@"birthdate"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCBB18];
    goto LABEL_25;
  }

  if ([keyCopy isEqualToString:@"blood_type"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCBB10];
    goto LABEL_25;
  }

  if ([keyCopy isEqualToString:@"body_mass"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCDEC8];
    goto LABEL_25;
  }

  if ([keyCopy isEqualToString:@"lean_body_mass"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCDEE0];
    goto LABEL_25;
  }

  if ([keyCopy isEqualToString:@"height"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCDED8];
    goto LABEL_25;
  }

  if ([keyCopy isEqualToString:@"fitzpatrick_skin_type"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCBB20];
    goto LABEL_25;
  }

  if ([keyCopy isEqualToString:@"wheelchair_use"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCBB28];
    goto LABEL_25;
  }

  if ([keyCopy isEqualToString:@"cardio_fitness_medications_use"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCDED0];
    goto LABEL_25;
  }

  if ([keyCopy isEqualToString:@"user_entered_menstrual_cycle_length"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCDEE8];
    goto LABEL_25;
  }

  if ([keyCopy isEqualToString:@"user_entered_period_cycle_length"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCDEF0];
    goto LABEL_25;
  }

  if ([keyCopy isEqualToString:@"activity_move_mode"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCBB00];
    goto LABEL_25;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:0 code:3 format:{@"Invalid key '%@' searching for characteristic type", keyCopy}];
  v6 = 0;
LABEL_26:

  return v6;
}

@end