@interface NTKOlympusColorEditOption
+ (id)__orderedValuesForDevice:(id)a3;
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)colorNameForColorValue:(unint64_t)a3;
+ (id)colorNameForColorValue:(unint64_t)a3 collectionName:(id *)a4;
+ (unint64_t)colorCodeForPigmentEditOption:(id)a3 forDevice:(id)a4;
- (BOOL)optionExistsInDevice:(id)a3;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKOlympusColorEditOption

- (id)localizedName
{
  v2 = [(NTKOlympusColorEditOption *)self pigmentEditOption];
  v3 = [v2 localizedName];

  return v3;
}

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__NTKOlympusColorEditOption__orderedValuesForDevice___block_invoke;
  v5[3] = &__block_descriptor_40_e28___NSArray_16__0__CLKDevice_8l;
  v5[4] = a1;
  v3 = __53__NTKOlympusColorEditOption__orderedValuesForDevice___block_invoke(v5, a3);

  return v3;
}

id __53__NTKOlympusColorEditOption__orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&_ValueKey_block_invoke_13_lock);
  if (_ValueKey_block_invoke_13___cachedDevice)
  {
    v4 = _ValueKey_block_invoke_13___cachedDevice == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _ValueKey_block_invoke_13___previousCLKDeviceVersion))
  {
    _ValueKey_block_invoke_13___cachedDevice = v3;
    _ValueKey_block_invoke_13___previousCLKDeviceVersion = [v3 version];
    v6 = [*(a1 + 32) __orderedValuesForDevice:v3];
    v7 = _ValueKey_block_invoke_13_value;
    _ValueKey_block_invoke_13_value = v6;
  }

  v8 = _ValueKey_block_invoke_13_value;
  os_unfair_lock_unlock(&_ValueKey_block_invoke_13_lock);

  return v8;
}

+ (id)__orderedValuesForDevice:(id)a3
{
  v3 = a3;
  if ([v3 supportsPDRCapability:753405533])
  {
    v4 = _EnumValueRange(0x1AuLL, 0x1EuLL);
    v5 = [&unk_28418B698 arrayByAddingObjectsFromArray:v4];
  }

  else
  {
    v5 = &unk_28418B698;
  }

  if ([v3 supportsPDRCapability:2919474315])
  {
    v6 = _EnumValueRange(0x1FuLL, 0x27uLL);
    v7 = [v5 arrayByAddingObjectsFromArray:v6];

    v5 = v7;
  }

  if ([v3 supportsPDRCapability:3356802055])
  {
    v8 = _EnumValueRange(0x28uLL, 0x30uLL);
    v9 = [v5 arrayByAddingObjectsFromArray:v8];

    v5 = v9;
  }

  return v5;
}

- (BOOL)optionExistsInDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 supportsPDRCapability:753405533];
  if ((v5 & 1) != 0 || (___NTKNewToGraceEOlympusColors_block_invoke(v5, v4), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 containsIndex:{-[NTKValueEditOption _value](self, "_value")}], v6, (v7 & 1) == 0)) && ((v8 = objc_msgSend(v4, "supportsPDRCapability:", 2919474315), (v8) || (___NTKNewToHunterOlympusColors_block_invoke(v8, v4), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsIndex:", -[NTKValueEditOption _value](self, "_value")), v9, (v10 & 1) == 0)))
  {
    v12 = [v4 supportsPDRCapability:3356802055];
    if (v12)
    {
      v11 = 1;
    }

    else
    {
      v13 = ___NTKNewToHunterEOlympusColors_block_invoke(v12, v4);
      v14 = [v13 containsIndex:{-[NTKValueEditOption _value](self, "_value")}];

      v11 = v14 ^ 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (id)_valueToFaceBundleStringDict
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__NTKOlympusColorEditOption__valueToFaceBundleStringDict__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  if (_valueToFaceBundleStringDict_onceToken_1200 != -1)
  {
    dispatch_once(&_valueToFaceBundleStringDict_onceToken_1200, block);
  }

  return _valueToFaceBundleStringDict_valueToFaceBundleStringDict;
}

void __57__NTKOlympusColorEditOption__valueToFaceBundleStringDict__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = _valueToFaceBundleStringDict_valueToFaceBundleStringDict;
  _valueToFaceBundleStringDict_valueToFaceBundleStringDict = v2;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) device];
  v6 = [v4 _orderedValuesForDevice:v5];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = MEMORY[0x277CCACA8];
        v13 = [v11 stringValue];
        v14 = [v12 stringWithFormat:@"color %@", v13];
        [_valueToFaceBundleStringDict_valueToFaceBundleStringDict setObject:v14 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (id)pigmentEditOption
{
  v6 = @"victoryHybrid";
  v2 = [objc_opt_class() colorNameForColorValue:-[NTKOlympusColorEditOption color](self collectionName:{"color"), &v6}];
  v3 = v6;
  v4 = [[NTKPigmentEditOption alloc] initWithOptionName:v2 collectionName:v3];

  return v4;
}

+ (id)colorNameForColorValue:(unint64_t)a3
{
  v5 = 0;
  v3 = [a1 colorNameForColorValue:a3 collectionName:&v5];

  return v3;
}

+ (id)colorNameForColorValue:(unint64_t)a3 collectionName:(id *)a4
{
  switch(a3)
  {
    case 0uLL:
      v4 = @"anthracite";
      goto LABEL_49;
    case 1uLL:
      v4 = @"black";
      v8 = @"anthracite";
      goto LABEL_50;
    case 2uLL:
      *a4 = @"victory";
      v5 = @"volt";
      break;
    case 3uLL:
      v6 = 2;
      goto LABEL_52;
    case 4uLL:
      v7 = 2;
      goto LABEL_47;
    case 5uLL:
      *a4 = @"victory";
      v5 = @"purePlatinum";
      break;
    case 6uLL:
      v6 = 5;
      goto LABEL_52;
    case 7uLL:
      v7 = 5;
      goto LABEL_47;
    case 8uLL:
      *a4 = @"victory";
      v5 = @"totalOrange";
      break;
    case 9uLL:
      v6 = 8;
      goto LABEL_52;
    case 0xAuLL:
      v7 = 8;
      goto LABEL_47;
    case 0xBuLL:
      *a4 = @"victory";
      v5 = @"auroraGreen";
      break;
    case 0xCuLL:
      v6 = 11;
      goto LABEL_52;
    case 0xDuLL:
      v7 = 11;
      goto LABEL_47;
    case 0xEuLL:
      *a4 = @"victory";
      v5 = @"celestialTeal";
      break;
    case 0xFuLL:
      v6 = 14;
      goto LABEL_52;
    case 0x10uLL:
      v7 = 14;
      goto LABEL_47;
    case 0x11uLL:
      *a4 = @"victory";
      v5 = @"royalPulse";
      break;
    case 0x12uLL:
      v6 = 17;
      goto LABEL_52;
    case 0x13uLL:
      v7 = 17;
      goto LABEL_47;
    case 0x14uLL:
      *a4 = @"victory";
      v5 = @"pinkBlast";
      break;
    case 0x15uLL:
      v6 = 20;
      goto LABEL_52;
    case 0x16uLL:
      v7 = 20;
      goto LABEL_47;
    case 0x17uLL:
      *a4 = @"victory";
      v5 = @"desertSand";
      break;
    case 0x18uLL:
      v6 = 23;
      goto LABEL_52;
    case 0x19uLL:
      v7 = 23;
      goto LABEL_47;
    case 0x1AuLL:
      *a4 = @"victory";
      v5 = @"midnightTurquoise";
      break;
    case 0x1BuLL:
      v6 = 26;
      goto LABEL_52;
    case 0x1CuLL:
      v7 = 26;
      goto LABEL_47;
    case 0x1DuLL:
      v4 = @"limeBlast";
LABEL_49:
      v8 = @"black";
      goto LABEL_50;
    case 0x1EuLL:
      v4 = @"black";
      v8 = @"limeBlast";
LABEL_50:
      v5 = ntk_duotone(@"victory", v4, @"victory", v8);
      break;
    case 0x1FuLL:
      *a4 = @"victory";
      v5 = @"spruceAura";
      break;
    case 0x20uLL:
      v6 = 31;
      goto LABEL_52;
    case 0x21uLL:
      v7 = 31;
      goto LABEL_47;
    case 0x22uLL:
      *a4 = @"victory";
      v5 = @"blueBlack";
      break;
    case 0x23uLL:
      v6 = 34;
      goto LABEL_52;
    case 0x24uLL:
      v7 = 34;
      goto LABEL_47;
    case 0x25uLL:
      *a4 = @"victory";
      v5 = @"obsidianMist";
      break;
    case 0x26uLL:
      v6 = 37;
      goto LABEL_52;
    case 0x27uLL:
      v7 = 37;
      goto LABEL_47;
    case 0x28uLL:
      *a4 = @"victory";
      v5 = @"hasta";
      break;
    case 0x29uLL:
      v6 = 40;
      goto LABEL_52;
    case 0x2AuLL:
      v7 = 40;
      goto LABEL_47;
    case 0x2BuLL:
      *a4 = @"victory";
      v5 = @"chlorineBlue";
      break;
    case 0x2CuLL:
      v6 = 43;
      goto LABEL_52;
    case 0x2DuLL:
      v7 = 43;
      goto LABEL_47;
    case 0x2EuLL:
      *a4 = @"victory";
      v5 = @"ironstone";
      break;
    case 0x2FuLL:
      v6 = 46;
LABEL_52:
      v9 = [a1 colorNameForColorValue:{v6, a4}];
      v11 = @"black";
      v10 = v9;
      goto LABEL_53;
    case 0x30uLL:
      v7 = 46;
LABEL_47:
      v9 = [a1 colorNameForColorValue:{v7, a4}];
      v10 = @"black";
      v11 = v9;
LABEL_53:
      v5 = ntk_duotone(@"victory", v10, @"victory", v11);

      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

+ (unint64_t)colorCodeForPigmentEditOption:(id)a3 forDevice:(id)a4
{
  v4 = [a1 legacyOptionWithPigmentEditOption:a3 forDevice:a4];
  v5 = [v4 color];

  return v5;
}

@end