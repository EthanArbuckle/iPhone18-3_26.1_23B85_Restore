@interface HDProtectedKeyValueEntity
+ (BOOL)setUserCharacteristic:(id)a3 forType:(id)a4 profile:(id)a5 error:(id *)a6;
+ (__CFString)_keyForDataType:(uint64_t)a3 error:;
+ (id)modificationDateForCharacteristicWithType:(id)a3 profile:(id)a4 error:(id *)a5;
+ (id)userCharacteristicForType:(id)a3 profile:(id)a4 entity:(id *)a5 error:(id *)a6;
+ (id)userCharacteristicTypeForKey:(id)a3;
@end

@implementation HDProtectedKeyValueEntity

+ (id)userCharacteristicForType:(id)a3 profile:(id)a4 entity:(id *)a5 error:(id *)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [(HDProtectedKeyValueEntity *)a1 _keyForDataType:v10 error:a6];
  if (v12)
  {
    v13 = [v10 code];
    if (v13 > 174)
    {
      if ((v13 - 175) < 2)
      {
        goto LABEL_13;
      }

      if (v13 == 218 || v13 == 177)
      {
LABEL_11:
        v15 = [a1 numberForKey:v12 domain:&stru_283BF39C8 category:101 profile:v11 entity:a5 error:a6];
        goto LABEL_12;
      }
    }

    else
    {
      v14 = v13 - 64;
      if ((v13 - 64) <= 0x27)
      {
        if (((1 << v14) & 0x8001000005) == 0)
        {
          if (((1 << v14) & 0x700000) == 0)
          {
            if (v13 == 65)
            {
              v15 = [a1 dateComponentsForKey:v12 domain:&stru_283BF39C8 category:101 profile:v11 entity:a5 error:a6];
LABEL_12:
              v16 = v15;
              goto LABEL_17;
            }

            goto LABEL_14;
          }

LABEL_13:
          v17 = [v10 _canoncialUnit];
          v16 = [a1 quantityForKey:v12 unit:v17 domain:&stru_283BF39C8 category:101 profile:v11 entity:a5 error:a6];

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
      v23 = [v10 code];
      _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "Unexpected characteristic type %ld", buf, 0xCu);
    }
  }

  v16 = 0;
LABEL_17:

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (__CFString)_keyForDataType:(uint64_t)a3 error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [v4 code];
  if (v5 > 87)
  {
    if (v5 > 175)
    {
      switch(v5)
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
      switch(v5)
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
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:{@"Invalid characteristic type %@", v4}];
    v6 = 0;
    goto LABEL_29;
  }

  if (v5 > 83)
  {
    switch(v5)
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

  if (v5 == 64)
  {
    v6 = @"sex";
    goto LABEL_29;
  }

  if (v5 == 65)
  {
    v6 = @"birthdate";
    goto LABEL_29;
  }

  if (v5 != 66)
  {
    goto LABEL_28;
  }

  v6 = @"blood_type";
LABEL_29:

  return v6;
}

+ (id)modificationDateForCharacteristicWithType:(id)a3 profile:(id)a4 error:(id *)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(HDProtectedKeyValueEntity *)a1 _keyForDataType:a3 error:a5];
  v10 = v9;
  if (v9)
  {
    v16[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v12 = [a1 modificationDatesForKeys:v11 domain:&stru_283BF39C8 category:101 profile:v8 error:a5];

    v13 = [v12 objectForKeyedSubscript:v10];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (BOOL)setUserCharacteristic:(id)a3 forType:(id)a4 profile:(id)a5 error:(id *)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v11 _validateCharacteristic:v10 error:a6])
  {
    v13 = [(HDProtectedKeyValueEntity *)a1 _keyForDataType:v11 error:a6];
    if (!v13)
    {
LABEL_20:
      v18 = 0;
      goto LABEL_21;
    }

    v14 = [v11 code];
    if (v14 > 174)
    {
      if ((v14 - 175) < 2)
      {
        goto LABEL_17;
      }

      if (v14 == 218 || v14 == 177)
      {
LABEL_15:
        v16 = [a1 setNumber:v10 forKey:v13 domain:&stru_283BF39C8 category:101 profile:v12 error:a6];
        goto LABEL_16;
      }
    }

    else
    {
      v15 = v14 - 64;
      if ((v14 - 64) <= 0x27)
      {
        if (((1 << v15) & 0x8001000005) == 0)
        {
          if (((1 << v15) & 0x700000) == 0)
          {
            if (v14 == 65)
            {
              v16 = [a1 setDateComponents:v10 forKey:v13 domain:&stru_283BF39C8 category:101 profile:v12 error:a6];
LABEL_16:
              v18 = v16;
LABEL_21:

              goto LABEL_22;
            }

            goto LABEL_18;
          }

LABEL_17:
          v19 = [v11 _canoncialUnit];
          v18 = [a1 setQuantity:v10 unit:v19 forKey:v13 domain:&stru_283BF39C8 category:101 profile:v12 error:a6];

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
      v26 = [v11 code];
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
    v26 = [v11 code];
    _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "Failed to validate characteristic for type %ld", buf, 0xCu);
  }

  v18 = 0;
LABEL_22:

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)userCharacteristicTypeForKey:(id)a3
{
  v3 = a3;
  objc_opt_self();
  if ([v3 isEqualToString:@"sex"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCBB08];
LABEL_25:
    v6 = [v4 characteristicTypeForIdentifier:*v5];
    goto LABEL_26;
  }

  if ([v3 isEqualToString:@"birthdate"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCBB18];
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"blood_type"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCBB10];
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"body_mass"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCDEC8];
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"lean_body_mass"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCDEE0];
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"height"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCDED8];
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"fitzpatrick_skin_type"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCBB20];
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"wheelchair_use"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCBB28];
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"cardio_fitness_medications_use"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCDED0];
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"user_entered_menstrual_cycle_length"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCDEE8];
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"user_entered_period_cycle_length"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCDEF0];
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"activity_move_mode"])
  {
    v4 = MEMORY[0x277CCD0D0];
    v5 = MEMORY[0x277CCBB00];
    goto LABEL_25;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:0 code:3 format:{@"Invalid key '%@' searching for characteristic type", v3}];
  v6 = 0;
LABEL_26:

  return v6;
}

@end