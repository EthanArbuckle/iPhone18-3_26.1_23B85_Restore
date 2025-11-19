@interface NTKFaceColorEditOption
+ (BOOL)value:(int64_t)a3 existsInDevice:(id)a4;
+ (id)__allOrderedColors;
+ (id)__orderedValuesForDevice:(id)a3;
+ (id)__valueToFaceBundleStringDict;
+ (id)_optionByValidatingValueOfInvalidOption:(id)a3;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)standardColorEditOptionsForDevice:(id)a3;
+ (id)standardColorValuesForDevice:(id)a3;
+ (id)standardColorsWithColorClass:(Class)a3 forDevice:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)optionExistsInDevice:(id)a3;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKFaceColorEditOption

+ (id)_optionByValidatingValueOfInvalidOption:(id)a3
{
  v3 = a3;
  v4 = [v3 device];
  if (!NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues(v4))
  {
    goto LABEL_17;
  }

  v5 = [v3 _value];
  v6 = [v4 collectionType];
  v7 = [v4 materialType];
  v8 = objc_opt_class();
  v9 = 0;
  if (v5 > 100)
  {
    switch(v5)
    {
      case 'g':
        if (v6 == 6)
        {
          goto LABEL_17;
        }

        v11 = 39;
        break;
      case 'f':
        if (v6 == 5)
        {
LABEL_17:
          v9 = 0;
          goto LABEL_20;
        }

        v11 = 54;
        break;
      case 'e':
        v10 = 1001;
        if (v7 != 8)
        {
          v10 = 1002;
        }

        if (v7 == 10)
        {
          v11 = 1000;
        }

        else
        {
          v11 = v10;
        }

        break;
      default:
        goto LABEL_20;
    }

LABEL_19:
    v9 = [v8 optionWithFaceColor:v11 forDevice:v4];
    goto LABEL_20;
  }

  v11 = 1000;
  if (v5 == 53 || v5 == 100)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v9;
}

id __59__NTKFaceColorEditOption__orderedValuesRestrictedByDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_ValueKey_block_invoke_2_lock);
  if (_ValueKey_block_invoke_2___cachedDevice)
  {
    v3 = _ValueKey_block_invoke_2___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _ValueKey_block_invoke_2___previousCLKDeviceVersion))
  {
    _ValueKey_block_invoke_2___cachedDevice = v2;
    _ValueKey_block_invoke_2___previousCLKDeviceVersion = [v2 version];
    v5 = __59__NTKFaceColorEditOption__orderedValuesRestrictedByDevice___block_invoke_2(_ValueKey_block_invoke_2___previousCLKDeviceVersion, v2);
    v6 = _ValueKey_block_invoke_2_value;
    _ValueKey_block_invoke_2_value = v5;
  }

  v7 = _ValueKey_block_invoke_2_value;
  os_unfair_lock_unlock(&_ValueKey_block_invoke_2_lock);

  return v7;
}

id __59__NTKFaceColorEditOption__orderedValuesRestrictedByDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 collectionType];
  v5 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v4;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "_orderedValuesRestrictedByDevice collectionType:%ld", &v8, 0xCu);
  }

  if (v4 > 4)
  {
    if (v4 == 5)
    {
      v6 = &unk_284184A80;
      goto LABEL_15;
    }

    if (v4 == 8 && (NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues(v2) & 1) == 0)
    {
      v6 = &unk_284184AE0;
      goto LABEL_15;
    }
  }

  else
  {
    if (v4 == 3)
    {
      if (NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues(v2))
      {
        goto LABEL_16;
      }

      v6 = &unk_284184AB0;
      goto LABEL_15;
    }

    if (v4 == 4 && (NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues(v2) & 1) == 0)
    {
      v6 = &unk_284184AC8;
LABEL_15:
      [v3 addObject:v6];
    }
  }

LABEL_16:

  return v3;
}

+ (id)standardColorEditOptionsForDevice:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__NTKFaceColorEditOption_standardColorEditOptionsForDevice___block_invoke;
  v5[3] = &__block_descriptor_40_e28___NSArray_16__0__CLKDevice_8l;
  v5[4] = a1;
  v3 = __60__NTKFaceColorEditOption_standardColorEditOptionsForDevice___block_invoke(v5, a3);

  return v3;
}

id __60__NTKFaceColorEditOption_standardColorEditOptionsForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&_ValueKey_block_invoke_3_lock);
  if (_ValueKey_block_invoke_3___cachedDevice)
  {
    v4 = _ValueKey_block_invoke_3___cachedDevice == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _ValueKey_block_invoke_3___previousCLKDeviceVersion))
  {
    _ValueKey_block_invoke_3___cachedDevice = v3;
    _ValueKey_block_invoke_3___previousCLKDeviceVersion = [v3 version];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__NTKFaceColorEditOption_standardColorEditOptionsForDevice___block_invoke_2;
    v10[3] = &__block_descriptor_40_e19__16__0__CLKDevice_8l;
    v10[4] = *(a1 + 32);
    v6 = __60__NTKFaceColorEditOption_standardColorEditOptionsForDevice___block_invoke_2(v10, v3);
    v7 = _ValueKey_block_invoke_3_value;
    _ValueKey_block_invoke_3_value = v6;
  }

  v8 = _ValueKey_block_invoke_3_value;
  os_unfair_lock_unlock(&_ValueKey_block_invoke_3_lock);

  return v8;
}

id __60__NTKFaceColorEditOption_standardColorEditOptionsForDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) standardColorValuesForDevice:v3];
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(a1 + 32) optionWithFaceColor:objc_msgSend(*(*(&v14 + 1) + 8 * i) forDevice:{"integerValue", v14), v3}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

+ (id)standardColorValuesForDevice:(id)a3
{
  v3 = a3;
  if ([v3 pdrDeviceVersion] >= 0x50000)
  {
    if ([v3 pdrDeviceVersion] >> 9 >= 0x281)
    {
      if ([v3 pdrDeviceVersion] >= 0x60000)
      {
        if ([v3 supportsPDRCapability:753405533])
        {
          if ([v3 supportsPDRCapability:2919474315])
          {
            v5 = [v3 supportsPDRCapability:3356802055];
            v4 = &unk_28418B530;
            if (v5)
            {
              v4 = &unk_28418B548;
            }
          }

          else
          {
            v4 = &unk_28418B518;
          }
        }

        else
        {
          v4 = &unk_28418B500;
        }
      }

      else
      {
        v4 = &unk_28418B4E8;
      }
    }

    else
    {
      v4 = &unk_28418B4D0;
    }
  }

  else
  {
    v4 = &unk_28418B4B8;
  }

  v6 = standardColorValuesForDevice__orderedColors;
  standardColorValuesForDevice__orderedColors = v4;

  v7 = standardColorValuesForDevice__orderedColors;
  v8 = standardColorValuesForDevice__orderedColors;

  return v7;
}

+ (id)standardColorsWithColorClass:(Class)a3 forDevice:(id)a4
{
  v6 = a4;
  __65__NTKFaceColorEditOption_standardColorsWithColorClass_forDevice___block_invoke(v6, v6);
  v7 = a1;
  objc_sync_enter(v7);
  v8 = NSStringFromClass(a3);
  v9 = [standardColorsWithColorClass_forDevice__standardColorsCache objectForKey:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [(objc_class *)a3 standardColorEditOptionsForDevice:v6];
    [standardColorsWithColorClass_forDevice__standardColorsCache setObject:v11 forKey:v8];
  }

  objc_sync_exit(v7);

  return v11;
}

uint64_t __65__NTKFaceColorEditOption_standardColorsWithColorClass_forDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_ValueKey_block_invoke_4_lock);
  if (_ValueKey_block_invoke_4___cachedDevice)
  {
    v3 = _ValueKey_block_invoke_4___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _ValueKey_block_invoke_4___previousCLKDeviceVersion))
  {
    v5 = _ValueKey_block_invoke_4_value;
  }

  else
  {
    _ValueKey_block_invoke_4___cachedDevice = v2;
    _ValueKey_block_invoke_4___previousCLKDeviceVersion = [v2 version];
    v6 = objc_opt_new();
    v7 = standardColorsWithColorClass_forDevice__standardColorsCache;
    standardColorsWithColorClass_forDevice__standardColorsCache = v6;

    v5 = 1;
    _ValueKey_block_invoke_4_value = 1;
  }

  os_unfair_lock_unlock(&_ValueKey_block_invoke_4_lock);

  return v5;
}

+ (BOOL)value:(int64_t)a3 existsInDevice:(id)a4
{
  v5 = a4;
  v6 = [v5 pdrDeviceVersion];
  v7 = v6;
  if (!(v6 >> 18))
  {
    v8 = NTKNewToFortuneColors();
    v9 = [v8 containsIndex:a3];

    if (v9)
    {
      goto LABEL_23;
    }

    if (v7 >> 9 <= 0x180)
    {
      v10 = NTKNewToElectricColors();
      v11 = [v10 containsIndex:a3];

      if (v11)
      {
        goto LABEL_23;
      }
    }

LABEL_7:
    v12 = NTKNewToEmperorColors();
    v13 = [v12 containsIndex:a3];

    if (v13)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  if (v6 >> 8 <= 0x402)
  {
    goto LABEL_7;
  }

  if (HIWORD(v6) <= 4u)
  {
LABEL_10:
    v14 = NTKNewToGloryColors();
    v15 = [v14 containsIndex:a3];

    if (v15)
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  if (v6 >> 9 > 0x280)
  {
    if (v6 >> 17 > 2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_13:
  v16 = NTKNewToGloryEColors();
  v17 = [v16 containsIndex:a3];

  if (v17)
  {
    goto LABEL_23;
  }

LABEL_16:
  v18 = NTKNewToGraceColors();
  v19 = [v18 containsIndex:a3];

  if (v19)
  {
LABEL_23:
    v26 = 0;
    goto LABEL_24;
  }

LABEL_17:
  if (([v5 supportsPDRCapability:753405533] & 1) == 0)
  {
    v20 = NTKNewToGraceEColors();
    v21 = [v20 containsIndex:a3];

    if (v21)
    {
      goto LABEL_23;
    }
  }

  if (([v5 supportsPDRCapability:2919474315] & 1) == 0)
  {
    v22 = NTKNewToHunterColors();
    v23 = [v22 containsIndex:a3];

    if (v23)
    {
      goto LABEL_23;
    }
  }

  if (([v5 supportsPDRCapability:3356802055] & 1) == 0)
  {
    v24 = NTKNewToHunterEColors();
    v25 = [v24 containsIndex:a3];

    if (v25)
    {
      goto LABEL_23;
    }
  }

  if (NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues(v5))
  {
    v26 = 1;
  }

  else
  {
    v28 = NTKDistinctSportPlusAndEditionColors();
    v29 = [v28 containsIndex:a3];

    v26 = v29 ^ 1;
  }

LABEL_24:

  return v26 & 1;
}

- (BOOL)optionExistsInDevice:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [objc_opt_class() value:-[NTKValueEditOption _value](self existsInDevice:{"_value"), v4}];

  return self;
}

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__NTKFaceColorEditOption__orderedValuesForDevice___block_invoke;
  v5[3] = &__block_descriptor_40_e28___NSArray_16__0__CLKDevice_8l;
  v5[4] = a1;
  v3 = __50__NTKFaceColorEditOption__orderedValuesForDevice___block_invoke(v5, a3);

  return v3;
}

id __50__NTKFaceColorEditOption__orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&_ValueKey_block_invoke_5_lock);
  if (_ValueKey_block_invoke_5___cachedDevice)
  {
    v4 = _ValueKey_block_invoke_5___cachedDevice == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _ValueKey_block_invoke_5___previousCLKDeviceVersion))
  {
    _ValueKey_block_invoke_5___cachedDevice = v3;
    _ValueKey_block_invoke_5___previousCLKDeviceVersion = [v3 version];
    v6 = [*(a1 + 32) __orderedValuesForDevice:v3];
    v7 = _ValueKey_block_invoke_5_value;
    _ValueKey_block_invoke_5_value = v6;
  }

  v8 = _ValueKey_block_invoke_5_value;
  os_unfair_lock_unlock(&_ValueKey_block_invoke_5_lock);

  return v8;
}

+ (id)__allOrderedColors
{
  v2 = [&unk_28418B560 mutableCopy];

  return v2;
}

+ (id)__orderedValuesForDevice:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 __allOrderedColors];
  v6 = [objc_opt_class() _orderedValuesRestrictedByDevice:v4];
  v7 = [v6 reverseObjectEnumerator];
  v8 = [v7 allObjects];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v5 insertObject:*(*(&v24 + 1) + 8 * i) atIndex:0];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v14 = MEMORY[0x277CCAC30];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __51__NTKFaceColorEditOption___orderedValuesForDevice___block_invoke;
  v21 = &unk_278785D38;
  v22 = v4;
  v23 = a1;
  v15 = v4;
  v16 = [v14 predicateWithBlock:&v18];
  [v5 filterUsingPredicate:{v16, v18, v19, v20, v21}];

  return v5;
}

uint64_t __51__NTKFaceColorEditOption___orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = [a2 integerValue];
  v5 = *(a1 + 32);

  return [v3 value:v4 existsInDevice:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NTKFaceColorEditOption;
  if ([(NTKValueEditOption *)&v15 isEqual:v4])
  {
    v5 = objc_opt_class();
    v6 = [(NTKEditOption *)self device];
    v7 = [v5 _orderedValuesRestrictedByDevice:v6];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NTKValueEditOption _value](self, "_value")}];
    v9 = [v7 containsObject:v8];

    if (v9)
    {
      v10 = [(NTKEditOption *)self device];
      v11 = [v10 materialType];
      v12 = [v4 device];
      v13 = v11 == [v12 materialType];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = 0;
  if (a3 > 999)
  {
    v8 = @"gold-generic-2";
    v9 = @"gold-generic-3";
    if (a3 != 1002)
    {
      v9 = 0;
    }

    if (a3 != 1001)
    {
      v8 = v9;
    }

    if (a3 == 1000)
    {
      v7 = @"gold-generic-1";
    }

    else
    {
      v7 = v8;
    }
  }

  else
  {
    switch(a3)
    {
      case 0uLL:
        v7 = @"pink";
        break;
      case 1uLL:
        v7 = @"purple";
        break;
      case 2uLL:
        v7 = @"blue";
        break;
      case 3uLL:
        v7 = @"green";
        break;
      case 4uLL:
        v7 = @"yellow";
        break;
      case 5uLL:
        v7 = @"orange";
        break;
      case 6uLL:
        v7 = @"red";
        break;
      case 7uLL:
        v7 = @"white";
        break;
      case 8uLL:
        v7 = @"dark-orange";
        break;
      case 9uLL:
        v7 = @"turquoise";
        break;
      case 0xAuLL:
        v7 = @"midnight-blue";
        break;
      case 0xBuLL:
        v7 = @"lavender";
        break;
      case 0xCuLL:
        v7 = @"vintage-rose";
        break;
      case 0xDuLL:
        v7 = @"walnut";
        break;
      case 0xEuLL:
        v7 = @"stone";
        break;
      case 0xFuLL:
        v7 = @"antique-white";
        break;
      case 0x10uLL:
        v7 = @"light-blue";
        break;
      case 0x11uLL:
        v7 = @"mint";
        break;
      case 0x12uLL:
        v7 = @"lilac";
        break;
      case 0x13uLL:
        v7 = @"royal-blue";
        break;
      case 0x14uLL:
        v7 = @"light-pink";
        break;
      case 0x15uLL:
        v7 = @"apricot";
        break;
      case 0x16uLL:
        v7 = @"ocean-blue";
        break;
      case 0x17uLL:
        v7 = @"cocoa";
        break;
      case 0x18uLL:
        v7 = @"ice-white";
        break;
      case 0x19uLL:
        v7 = @"pink-sand";
        break;
      case 0x1AuLL:
        v7 = @"gray";
        break;
      case 0x1BuLL:
        v7 = @"pebble";
        break;
      case 0x1CuLL:
        v7 = @"azure";
        break;
      case 0x1DuLL:
        v7 = @"camellia";
        break;
      case 0x1EuLL:
        v7 = @"mist-blue";
        break;
      case 0x1FuLL:
        v7 = @"flamingo";
        break;
      case 0x20uLL:
        v7 = @"pollen";
        break;
      case 0x21uLL:
        v7 = @"soft-white";
        break;
      case 0x22uLL:
        v7 = @"blue-cobalt";
        break;
      case 0x23uLL:
        v7 = @"dark-olive";
        break;
      case 0x24uLL:
        v7 = @"violet";
        break;
      case 0x25uLL:
        v7 = @"rose-red";
        break;
      case 0x27uLL:
        v7 = @"flash";
        break;
      case 0x28uLL:
        v7 = @"dark-teal";
        break;
      case 0x29uLL:
        v7 = @"electric-pink";
        break;
      case 0x2AuLL:
        v7 = @"peach";
        break;
      case 0x2BuLL:
        v7 = @"denim-blue";
        break;
      case 0x2CuLL:
        v7 = @"flash-light";
        break;
      case 0x2DuLL:
        v7 = @"nectarine";
        break;
      case 0x2EuLL:
        v7 = @"mellow-yellow";
        break;
      case 0x2FuLL:
        v7 = @"storm-gray";
        break;
      case 0x30uLL:
        v7 = @"pacific-green";
        break;
      case 0x31uLL:
        v7 = @"blue-horizon";
        break;
      case 0x32uLL:
        v7 = @"indigo";
        break;
      case 0x33uLL:
        v7 = @"lavender-gray";
        break;
      case 0x34uLL:
        v7 = @"hibiscus";
        break;
      case 0x35uLL:
        v7 = @"blush-gold-steel";
        break;
      case 0x36uLL:
        v7 = @"papaya";
        break;
      case 0x37uLL:
        v7 = @"canary-yellow";
        break;
      case 0x38uLL:
        v7 = @"spearmint";
        break;
      case 0x39uLL:
        v7 = @"cerulean";
        break;
      case 0x3AuLL:
        v7 = @"delft-blue";
        break;
      case 0x3BuLL:
        v7 = @"dragon-fruit";
        break;
      case 0x3CuLL:
        v7 = @"pine-green";
        break;
      case 0x3DuLL:
        v7 = @"lemon-cream";
        break;
      case 0x3EuLL:
        v7 = @"alaskan-blue";
        break;
      case 0x3FuLL:
        v7 = @"pomegranate";
        break;
      case 0x40uLL:
        v7 = @"khaki";
        break;
      case 0x41uLL:
        v7 = @"beryl";
        break;
      case 0x42uLL:
        v7 = @"camel";
        break;
      case 0x43uLL:
        v7 = @"sea-foam";
        break;
      case 0x44uLL:
        v7 = @"surf-blue";
        break;
      case 0x45uLL:
        v7 = @"cactus";
        break;
      case 0x46uLL:
        v7 = @"linen-blue";
        break;
      case 0x47uLL:
        v7 = @"grapefruit";
        break;
      case 0x48uLL:
        v7 = @"neon-pink";
        break;
      case 0x49uLL:
        v7 = @"coastal-gray";
        break;
      case 0x4AuLL:
        v7 = @"PinkCitrus";
        break;
      case 0x4BuLL:
        v7 = @"DeepNavy";
        break;
      case 0x4CuLL:
        v7 = @"CyprusGreen";
        break;
      case 0x4DuLL:
        v7 = @"Cream";
        break;
      case 0x4EuLL:
        v7 = @"Kumquat";
        break;
      case 0x4FuLL:
        v7 = @"NorthernBlue";
        break;
      case 0x50uLL:
        v7 = @"Plum";
        break;
      case 0x51uLL:
        v7 = @"ElectricOrange";
        break;
      case 0x52uLL:
        v7 = @"Sunflower";
        break;
      case 0x53uLL:
        v7 = @"Pistachio";
        break;
      case 0x54uLL:
        v7 = @"CloudBlue";
        break;
      case 0x55uLL:
        v7 = @"Abyss";
        break;
      case 0x56uLL:
        v7 = @"SeaSalt";
        break;
      case 0x57uLL:
        v7 = @"Olive";
        break;
      case 0x58uLL:
        v7 = @"MallardGreen";
        break;
      case 0x64uLL:
        v10 = [v5 materialType];
        v11 = @"edition";
        if (v10 == 6)
        {
          v11 = @"edition rose gold";
        }

        if (v10 == 5)
        {
          v7 = @"edition gold";
        }

        else
        {
          v7 = v11;
        }

        break;
      case 0x65uLL:
        v12 = [v5 materialType];
        if ((v12 - 7) >= 4)
        {
          v7 = @"sport+";
        }

        else
        {
          v7 = off_278785D78[v12 - 7];
        }

        break;
      case 0x66uLL:
        v7 = @"zeus";
        break;
      case 0x67uLL:
        v7 = @"victory";
        break;
      case 0x68uLL:
        v7 = @"explorer";
        break;
      case 0x69uLL:
        v7 = @"whistler-black";
        break;
      case 0xC8uLL:
        v7 = @"multi";
        break;
      default:
        break;
    }
  }

  return v7;
}

- (id)localizedName
{
  v2 = [(NTKFaceColorEditOption *)self pigmentEditOption];
  v3 = [v2 localizedName];

  return v3;
}

+ (id)__valueToFaceBundleStringDict
{
  if (__valueToFaceBundleStringDict_onceToken != -1)
  {
    +[NTKFaceColorEditOption __valueToFaceBundleStringDict];
  }

  v3 = __valueToFaceBundleStringDict_valueToFaceBundleString;

  return v3;
}

void __55__NTKFaceColorEditOption___valueToFaceBundleStringDict__block_invoke()
{
  v3[100] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2841851D0;
  v2[1] = &unk_284184B70;
  v3[0] = @"pink";
  v3[1] = @"purple";
  v2[2] = &unk_2841850C8;
  v2[3] = &unk_284185098;
  v3[2] = @"blue";
  v3[3] = @"green";
  v2[4] = &unk_284185050;
  v2[5] = &unk_284185038;
  v3[4] = @"yellow";
  v3[5] = @"orange";
  v2[6] = &unk_284184BA0;
  v2[7] = &unk_284184FF0;
  v3[6] = @"red";
  v3[7] = @"white";
  v2[8] = &unk_284184AB0;
  v2[9] = &unk_284184AC8;
  v3[8] = @"rose gold";
  v3[9] = @"rose gold sport";
  v2[10] = &unk_2841852F0;
  v2[11] = &unk_284185308;
  v3[10] = @"gold generic 1";
  v3[11] = @"gold generic 2";
  v2[12] = &unk_284185320;
  v2[13] = &unk_284184A80;
  v3[12] = @"gold generic 3";
  v3[13] = @"Hermès";
  v2[14] = &unk_284185338;
  v2[15] = &unk_284185350;
  v3[14] = @"siri";
  v3[15] = @"siri grey";
  v2[16] = &unk_284184A98;
  v2[17] = &unk_284185368;
  v3[16] = @"victory";
  v3[17] = @"explorer";
  v2[18] = &unk_284185380;
  v2[19] = &unk_284185008;
  v3[18] = @"multicolor";
  v3[19] = @"dark orange";
  v2[20] = &unk_284184B88;
  v2[21] = &unk_284184D68;
  v3[20] = @"turquoise";
  v3[21] = @"midnight blue";
  v2[22] = &unk_284185188;
  v2[23] = &unk_2841851B8;
  v3[22] = @"lavender";
  v3[23] = @"vintage rose";
  v2[24] = &unk_284185248;
  v2[25] = &unk_284185260;
  v3[24] = @"walnut";
  v3[25] = @"stone";
  v2[26] = &unk_284185278;
  v2[27] = &unk_2841850B0;
  v3[26] = @"antique white";
  v3[27] = @"light blue";
  v2[28] = &unk_284185398;
  v2[29] = &unk_284184B40;
  v3[28] = @"gray";
  v3[29] = @"mint";
  v2[30] = &unk_284184CD8;
  v2[31] = &unk_284184B10;
  v3[30] = @"lilac";
  v3[31] = @"royal blue";
  v2[32] = &unk_284184B28;
  v2[33] = &unk_284184B58;
  v3[32] = @"light pink";
  v3[33] = @"apricot";
  v2[34] = &unk_284185158;
  v2[35] = &unk_2841852C0;
  v3[34] = @"ocean blue";
  v3[35] = @"cocoa";
  v2[36] = &unk_2841853B0;
  v2[37] = &unk_2841851A0;
  v3[36] = @"ice white";
  v3[37] = @"pink sand";
  v2[38] = &unk_2841852A8;
  v2[39] = &unk_2841850F8;
  v3[38] = @"pebble";
  v3[39] = @"azure";
  v2[40] = &unk_284185218;
  v2[41] = &unk_2841850E0;
  v3[40] = @"camelia";
  v3[41] = @"mist blue";
  v2[42] = &unk_284185230;
  v2[43] = &unk_284184AF8;
  v3[42] = @"flamingo";
  v3[43] = @"pollen";
  v2[44] = &unk_284184BB8;
  v2[45] = &unk_284184C30;
  v3[44] = @"nectarine";
  v3[45] = @"mellow yellow";
  v2[46] = &unk_284184BD0;
  v2[47] = &unk_284184C48;
  v3[46] = @"storm gray";
  v3[47] = @"pacific green";
  v2[48] = &unk_284184BE8;
  v2[49] = &unk_284184C00;
  v3[48] = @"blue horizon";
  v3[49] = @"indigo";
  v2[50] = &unk_284184C18;
  v2[51] = &unk_284184C60;
  v3[50] = @"lavender gray";
  v3[51] = @"hibiscus";
  v2[52] = &unk_284184AE0;
  v2[53] = &unk_284185290;
  v3[52] = @"blush gold steel";
  v3[53] = @"soft white";
  v2[54] = &unk_284185110;
  v2[55] = &unk_2841852D8;
  v3[54] = @"blue cobalt";
  v3[55] = @"dark olive";
  v2[56] = &unk_284185170;
  v2[57] = &unk_284185200;
  v3[56] = @"violet";
  v3[57] = @"rose red";
  v2[58] = &unk_284185080;
  v2[59] = &unk_284185128;
  v3[58] = @"flash";
  v3[59] = @"dark teal";
  v2[60] = &unk_2841851E8;
  v2[61] = &unk_284185020;
  v3[60] = @"electric pink";
  v3[61] = @"peach";
  v2[62] = &unk_284185140;
  v2[63] = &unk_284185068;
  v3[62] = @"denim blue";
  v3[63] = @"flash light";
  v2[64] = &unk_284184C78;
  v3[64] = @"papaya";
  v2[65] = &unk_284184C90;
  v3[65] = @"canary yellow";
  v2[66] = &unk_284184CA8;
  v3[66] = @"spearmint";
  v2[67] = &unk_284184CC0;
  v3[67] = @"cerulean";
  v2[68] = &unk_284184CF0;
  v3[68] = @"delft blue";
  v2[69] = &unk_284184D08;
  v3[69] = @"dragon fruit";
  v2[70] = &unk_284184DC8;
  v3[70] = @"pine green";
  v2[71] = &unk_284184D50;
  v3[71] = @"lemon cream";
  v2[72] = &unk_284184D38;
  v3[72] = @"alaskan blue";
  v2[73] = &unk_284184D80;
  v3[73] = @"pomegranate";
  v2[74] = &unk_284184DB0;
  v3[74] = @"khaki";
  v2[75] = &unk_284184D20;
  v3[75] = @"beryl";
  v2[76] = &unk_284184D98;
  v3[76] = @"camel";
  v2[77] = &unk_284184DE0;
  v3[77] = @"sea foam";
  v2[78] = &unk_284184DF8;
  v3[78] = @"surf blue";
  v2[79] = &unk_284184E10;
  v3[79] = @"cactus";
  v2[80] = &unk_284184E28;
  v3[80] = @"linen blue";
  v2[81] = &unk_284184E40;
  v3[81] = @"grapefruit";
  v2[82] = &unk_284184E58;
  v3[82] = @"neon pink";
  v2[83] = &unk_284184E70;
  v3[83] = @"coastal gray";
  v2[84] = &unk_284184E88;
  v3[84] = @"PinkCitrus";
  v2[85] = &unk_284184EA0;
  v3[85] = @"DeepNavy";
  v2[86] = &unk_284184EB8;
  v3[86] = @"CyprusGreen";
  v2[87] = &unk_284184ED0;
  v3[87] = @"FallCream";
  v2[88] = &unk_284184EE8;
  v3[88] = @"Kumquat";
  v2[89] = &unk_284184F00;
  v3[89] = @"NorthernBlue";
  v2[90] = &unk_284184F18;
  v3[90] = @"Plum";
  v2[91] = &unk_284184F30;
  v3[91] = @"ElectricOrange";
  v2[92] = &unk_284184F48;
  v3[92] = @"Sunflower";
  v2[93] = &unk_284184F60;
  v3[93] = @"Pistachio";
  v2[94] = &unk_284184F78;
  v3[94] = @"CloudBlue";
  v2[95] = &unk_284184F90;
  v3[95] = @"Abyss";
  v2[96] = &unk_284184FA8;
  v3[96] = @"SeaSalt";
  v2[97] = &unk_284184FC0;
  v3[97] = @"Olive";
  v2[98] = &unk_284184FD8;
  v3[98] = @"MallardGreen";
  v2[99] = &unk_2841853C8;
  v3[99] = @"whistler black";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:100];
  v1 = __valueToFaceBundleStringDict_valueToFaceBundleString;
  __valueToFaceBundleStringDict_valueToFaceBundleString = v0;
}

- (id)pigmentEditOption
{
  v6 = 0;
  v7 = 0;
  NTKFaceColorNameAndCollection([(NTKValueEditOption *)self _value], &v7, &v6);
  v2 = v7;
  v3 = v6;
  v4 = [[NTKPigmentEditOption alloc] initWithOptionName:v2 collectionName:v3];

  return v4;
}

@end