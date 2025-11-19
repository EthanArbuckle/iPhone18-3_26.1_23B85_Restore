@interface NTKVictoryColorEditOption
+ (id)_orderedValuesForDevice:(id)a3;
+ (id)_orderedValuesRestrictedByDevice:(id)a3;
+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4;
+ (id)colorNameForColorValue:(unint64_t)a3;
+ (id)fall2020VictoryColors;
+ (id)gloryEVictoryColors;
+ (id)graceVictoryColors;
+ (id)spring2020VictoryColors;
+ (unint64_t)colorCodeForPigmentEditOption:(id)a3 forDevice:(id)a4;
- (BOOL)optionExistsInDevice:(id)a3;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
- (id)pigmentEditOption;
@end

@implementation NTKVictoryColorEditOption

- (id)localizedName
{
  v2 = [(NTKVictoryColorEditOption *)self pigmentEditOption];
  v3 = [v2 localizedName];

  return v3;
}

- (BOOL)optionExistsInDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 pdrDeviceVersion];
  v6 = v5;
  if (!(v5 >> 18))
  {
    v7 = [(NTKEditOption *)self device];
    v8 = ___NTKNewToFortuneVictoryColors_block_invoke(v7, v7);
    v9 = [v8 containsIndex:{-[NTKValueEditOption _value](self, "_value")}];

    if (v9)
    {
      goto LABEL_21;
    }

    if (v6 >> 9 <= 0x180)
    {
      v10 = [(NTKEditOption *)self device];
      v11 = ___NTKNewToElectricVictoryColors_block_invoke(v10, v10);
      v12 = [v11 containsIndex:{-[NTKValueEditOption _value](self, "_value")}];

      if (v12)
      {
        goto LABEL_21;
      }
    }

LABEL_7:
    v13 = [(NTKEditOption *)self device];
    v14 = ___NTKNewToGloryVictoryColors_block_invoke(v13, v13);
    v15 = [v14 containsIndex:{-[NTKValueEditOption _value](self, "_value")}];

    if (v15)
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  if (HIWORD(v5) <= 4u)
  {
    goto LABEL_7;
  }

  if (v5 >= 0x50200)
  {
    if (v5 >> 17 > 2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_10:
  v16 = [(NTKEditOption *)self device];
  v17 = ___NTKNewToGloryEVictoryColors_block_invoke(v16, v16);
  v18 = [v17 containsIndex:{-[NTKValueEditOption _value](self, "_value")}];

  if (v18)
  {
    goto LABEL_21;
  }

LABEL_13:
  v19 = [(NTKEditOption *)self device];
  v20 = ___NTKNewToGraceVictoryColors_block_invoke(v19, v19);
  v21 = [v20 containsIndex:{-[NTKValueEditOption _value](self, "_value")}];

  if (v21)
  {
LABEL_21:
    v28 = 0;
    goto LABEL_22;
  }

LABEL_14:
  if (([v4 supportsPDRCapability:753405533] & 1) == 0)
  {
    v22 = [(NTKEditOption *)self device];
    v23 = ___NTKNewToGraceEVictoryColors_block_invoke(v22, v22);
    v24 = [v23 containsIndex:{-[NTKValueEditOption _value](self, "_value")}];

    if (v24)
    {
      goto LABEL_21;
    }
  }

  if ((NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues(v4) & 1) == 0 && ([v4 isExplorer] & 1) == 0 && -[NTKValueEditOption _value](self, "_value") == 100)
  {
    goto LABEL_21;
  }

  if (([v4 supportsPDRCapability:2919474315] & 1) == 0)
  {
    v25 = [(NTKEditOption *)self device];
    v26 = ___NTKNewToHunterVictoryColors_block_invoke(v25, v25);
    v27 = [v26 containsIndex:{-[NTKValueEditOption _value](self, "_value")}];

    if (v27)
    {
      goto LABEL_21;
    }
  }

  if ([v4 supportsPDRCapability:3356802055])
  {
    v28 = 1;
  }

  else
  {
    v30 = [(NTKEditOption *)self device];
    v31 = ___NTKNewToHunterEVictoryColors_block_invoke(v30, v30);
    v32 = [v31 containsIndex:{-[NTKValueEditOption _value](self, "_value")}];

    v28 = v32 ^ 1;
  }

LABEL_22:

  return v28 & 1;
}

+ (id)_orderedValuesForDevice:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__NTKVictoryColorEditOption__orderedValuesForDevice___block_invoke;
  v5[3] = &__block_descriptor_40_e28___NSArray_16__0__CLKDevice_8l;
  v5[4] = a1;
  v3 = __53__NTKVictoryColorEditOption__orderedValuesForDevice___block_invoke(v5, a3);

  return v3;
}

id __53__NTKVictoryColorEditOption__orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&_ValueKey_block_invoke_11_lock);
  if (_ValueKey_block_invoke_11___cachedDevice)
  {
    v4 = _ValueKey_block_invoke_11___cachedDevice == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _ValueKey_block_invoke_11___previousCLKDeviceVersion))
  {
    _ValueKey_block_invoke_11___cachedDevice = v3;
    _ValueKey_block_invoke_11___previousCLKDeviceVersion = [v3 version];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__NTKVictoryColorEditOption__orderedValuesForDevice___block_invoke_2;
    v10[3] = &__block_descriptor_40_e28___NSArray_16__0__CLKDevice_8l;
    v10[4] = *(a1 + 32);
    v6 = __53__NTKVictoryColorEditOption__orderedValuesForDevice___block_invoke_2(v10, v3);
    v7 = _ValueKey_block_invoke_11_value;
    _ValueKey_block_invoke_11_value = v6;
  }

  v8 = _ValueKey_block_invoke_11_value;
  os_unfair_lock_unlock(&_ValueKey_block_invoke_11_lock);

  return v8;
}

id __53__NTKVictoryColorEditOption__orderedValuesForDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _orderedValuesRestrictedByDevice:v3];
  v5 = [v4 arrayByAddingObjectsFromArray:&unk_28418B578];

  if ([v3 supportsPDRCapability:3503302961] && (NTKGizmoOrCompanionAreRussian(v3) & 1) == 0)
  {
    v6 = [v5 arrayByAddingObjectsFromArray:&unk_28418B590];

    v5 = v6;
  }

  if ((NTKDeviceSupportsFaceColorMappingAndDistinctFaceColorValues(v3) & 1) != 0 || [v3 isExplorer])
  {
    v7 = [v5 arrayByAddingObject:&unk_284184AB0];

    v5 = v7;
  }

  v8 = [v5 arrayByAddingObjectsFromArray:&unk_28418B5A8];

  return v8;
}

+ (id)fall2020VictoryColors
{
  v2 = [a1 spring2020VictoryColors];
  v3 = [v2 arrayByExcludingObjectsInArray:&unk_28418B5D8];
  v4 = [&unk_28418B5C0 arrayByAddingObjectsFromArray:v3];

  return v4;
}

+ (id)spring2020VictoryColors
{
  v2 = [a1 graceVictoryColors];
  v3 = [v2 arrayByExcludingObjectsInArray:&unk_28418B608];
  v4 = [&unk_28418B5F0 arrayByAddingObjectsFromArray:v3];

  return v4;
}

+ (id)graceVictoryColors
{
  v2 = [a1 gloryEVictoryColors];
  v3 = [v2 arrayByExcludingObjectsInArray:&unk_28418B638];
  v4 = [&unk_28418B620 arrayByAddingObjectsFromArray:v3];

  return v4;
}

+ (id)gloryEVictoryColors
{
  v2 = [a1 gloryVictoryColors];
  v3 = [v2 arrayByExcludingObjectsInArray:&unk_28418B668];
  v4 = [&unk_28418B650 arrayByAddingObjectsFromArray:v3];

  return v4;
}

+ (id)_snapshotKeyForValue:(unint64_t)a3 forDevice:(id)a4
{
  switch(a3)
  {
    case 0uLL:
      result = @"white";
      break;
    case 1uLL:
      result = @"green-white";
      break;
    case 2uLL:
      result = @"green";
      break;
    case 3uLL:
      result = @"blue-orbit";
      break;
    case 4uLL:
      result = @"indigo";
      break;
    case 5uLL:
      result = @"violet-dust";
      break;
    case 6uLL:
      result = @"light-violet";
      break;
    case 7uLL:
      result = @"anthracite";
      break;
    case 8uLL:
      result = @"light-bone";
      break;
    case 9uLL:
      result = @"solar-red";
      break;
    case 0xAuLL:
      result = @"total-orange";
      break;
    case 0xBuLL:
      result = @"cargo-khaki";
      break;
    case 0xCuLL:
      result = @"barely-rose";
      break;
    case 0xDuLL:
      result = @"wolf-gray";
      break;
    case 0xEuLL:
      result = @"light-silver";
      break;
    case 0xFuLL:
      result = @"particle-beige";
      break;
    case 0x10uLL:
      result = @"aurora-green";
      break;
    case 0x11uLL:
      result = @"obsidian-indigo";
      break;
    case 0x12uLL:
      result = @"terra-blush";
      break;
    case 0x13uLL:
      result = @"smoky-mauve";
      break;
    case 0x14uLL:
      result = @"olive-flak";
      break;
    case 0x15uLL:
      result = @"celestial-teal";
      break;
    case 0x16uLL:
      result = @"teal-tint";
      break;
    case 0x17uLL:
      result = @"hyper-grape";
      break;
    case 0x18uLL:
      result = @"spruce-fog";
      break;
    case 0x19uLL:
      result = @"desert-sand";
      break;
    case 0x1AuLL:
      result = @"royal-pulse";
      break;
    case 0x1BuLL:
      result = @"pink-blast";
      break;
    case 0x1CuLL:
      result = @"midnight-turquoise";
      break;
    case 0x1DuLL:
      result = @"lime-blast";
      break;
    case 0x1EuLL:
      result = @"multicolor-1";
      break;
    case 0x1FuLL:
      result = @"spruce-aura";
      break;
    case 0x20uLL:
      result = @"blue-black";
      break;
    case 0x21uLL:
      result = @"obsidian-mist";
      break;
    case 0x22uLL:
      result = @"hasta";
      break;
    case 0x23uLL:
      result = @"chlorine-blue";
      break;
    case 0x24uLL:
      result = @"ironstone";
      break;
    default:
      if (a3 == 100)
      {
        result = @"explorer";
      }

      else
      {
        result = 0;
      }

      break;
  }

  return result;
}

- (id)_valueToFaceBundleStringDict
{
  if (_valueToFaceBundleStringDict_onceToken_1076 != -1)
  {
    [NTKVictoryColorEditOption _valueToFaceBundleStringDict];
  }

  v3 = _valueToFaceBundleStringDict_valueToFaceBundleString_1075;

  return v3;
}

void __57__NTKVictoryColorEditOption__valueToFaceBundleStringDict__block_invoke()
{
  v3[38] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2841850C8;
  v2[1] = &unk_284184B70;
  v3[0] = @"green";
  v3[1] = @"mint";
  v2[2] = &unk_2841851D0;
  v2[3] = &unk_284185098;
  v3[2] = @"white";
  v3[3] = @"blue orbit";
  v2[4] = &unk_284185050;
  v2[5] = &unk_284185038;
  v3[4] = @"indigo";
  v3[5] = @"violet dust";
  v2[6] = &unk_284184BA0;
  v2[7] = &unk_284184FF0;
  v3[6] = @"light violet";
  v3[7] = @"anthracite";
  v2[8] = &unk_284185008;
  v2[9] = &unk_284184AB0;
  v3[8] = @"light bone";
  v3[9] = @"explorer";
  v2[10] = &unk_284184B88;
  v2[11] = &unk_284184D68;
  v3[10] = @"solar red";
  v3[11] = @"total orange";
  v2[12] = &unk_284185188;
  v2[13] = &unk_2841851B8;
  v3[12] = @"cargo khaki";
  v3[13] = @"barely rose";
  v2[14] = &unk_284185248;
  v2[15] = &unk_284185260;
  v3[14] = @"wolf gray";
  v3[15] = @"light silver";
  v2[16] = &unk_284185278;
  v2[17] = &unk_2841850B0;
  v3[16] = @"particle beige";
  v3[17] = @"aurora green";
  v2[18] = &unk_284184B40;
  v2[19] = &unk_284184CD8;
  v3[18] = @"obsidian indigo";
  v3[19] = @"terra blush";
  v2[20] = &unk_284184B10;
  v2[21] = &unk_284184B28;
  v3[20] = @"smoky mauve";
  v3[21] = @"olive flak";
  v2[22] = &unk_284184B58;
  v2[23] = &unk_284185158;
  v3[22] = @"celestial teal";
  v3[23] = @"teal tint";
  v2[24] = &unk_2841852C0;
  v2[25] = &unk_2841853B0;
  v3[24] = @"hyper grape";
  v3[25] = @"spruce fog";
  v2[26] = &unk_2841851A0;
  v2[27] = &unk_284185398;
  v3[26] = @"desert sand";
  v3[27] = @"royal pulse";
  v2[28] = &unk_2841852A8;
  v2[29] = &unk_2841850F8;
  v3[28] = @"pink blast";
  v3[29] = @"midnight turquoise";
  v2[30] = &unk_284185218;
  v2[31] = &unk_2841850E0;
  v3[30] = @"lime blast";
  v3[31] = @"multicolor 1";
  v2[32] = &unk_284185230;
  v2[33] = &unk_284184AF8;
  v3[32] = @"spruce aura";
  v3[33] = @"blue black";
  v2[34] = &unk_284185290;
  v2[35] = &unk_284185110;
  v3[34] = @"obsidian mist";
  v3[35] = @"hasta";
  v2[36] = &unk_2841852D8;
  v2[37] = &unk_284185170;
  v3[36] = @"chlorine-blue";
  v3[37] = @"ironstone";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:38];
  v1 = _valueToFaceBundleStringDict_valueToFaceBundleString_1075;
  _valueToFaceBundleStringDict_valueToFaceBundleString_1075 = v0;
}

+ (id)_orderedValuesRestrictedByDevice:(id)a3
{
  v3 = objc_opt_new();

  return v3;
}

- (id)pigmentEditOption
{
  v3 = [objc_opt_class() colorNameForColorValue:{-[NTKVictoryColorEditOption victoryColor](self, "victoryColor")}];
  v4 = [(NTKVictoryColorEditOption *)self pigmentCollectionName];
  if ([(NTKVictoryColorEditOption *)self victoryColor]== 30)
  {
    v5 = [NTKPigmentEditOption pigmentNamed:@"special.rainbow"];
  }

  else
  {
    v5 = [[NTKPigmentEditOption alloc] initWithOptionName:v3 collectionName:v4];
  }

  v6 = v5;

  return v6;
}

+ (id)colorNameForColorValue:(unint64_t)a3
{
  switch(a3)
  {
    case 0uLL:
      v4 = @"white";
      break;
    case 1uLL:
      v6 = [a1 colorNameForColorValue:0];
      v7 = [a1 colorNameForColorValue:2];
      v4 = ntk_duotone(@"victory", v6, @"victory", v7);

      break;
    case 2uLL:
      v4 = @"volt";
      break;
    case 3uLL:
      v4 = @"blueOrbit";
      break;
    case 4uLL:
      v4 = @"indigo";
      break;
    case 5uLL:
      v4 = @"violetDust";
      break;
    case 6uLL:
      v4 = @"lightViolet";
      break;
    case 7uLL:
      v4 = @"anthracite";
      break;
    case 8uLL:
      v4 = @"lightBone";
      break;
    case 9uLL:
      v4 = @"brightCrimson";
      break;
    case 0xAuLL:
      v4 = @"totalOrange";
      break;
    case 0xBuLL:
      v4 = @"cargoKhaki";
      break;
    case 0xCuLL:
      v4 = @"barelyRose";
      break;
    case 0xDuLL:
      v4 = @"wolfGray";
      break;
    case 0xEuLL:
      v4 = @"lightSilver";
      break;
    case 0xFuLL:
      v4 = @"particleBeige";
      break;
    case 0x10uLL:
      v4 = @"auroraGreen";
      break;
    case 0x11uLL:
      v4 = @"obsidianIndigo";
      break;
    case 0x12uLL:
      v4 = @"terraBlush";
      break;
    case 0x13uLL:
      v4 = @"smokyMauve";
      break;
    case 0x14uLL:
      v4 = @"oliveFlak";
      break;
    case 0x15uLL:
      v4 = @"celestialTeal";
      break;
    case 0x16uLL:
      v4 = @"tealTint";
      break;
    case 0x17uLL:
      v4 = @"hyperGrape";
      break;
    case 0x18uLL:
      v4 = @"spruceFog";
      break;
    case 0x19uLL:
      v4 = @"desertSand";
      break;
    case 0x1AuLL:
      v4 = @"royalPulse";
      break;
    case 0x1BuLL:
      v4 = @"pinkBlast";
      break;
    case 0x1CuLL:
      v4 = @"midnightTurquoise";
      break;
    case 0x1DuLL:
      v4 = @"limeBlast";
      break;
    case 0x1EuLL:
      v4 = @"rainbow";
      break;
    case 0x1FuLL:
      v4 = @"spruceAura";
      break;
    case 0x20uLL:
      v4 = @"blueBlack";
      break;
    case 0x21uLL:
      v4 = @"obsidianMist";
      break;
    case 0x22uLL:
      v4 = @"hasta";
      break;
    case 0x23uLL:
      v4 = @"chlorineBlue";
      break;
    case 0x24uLL:
      v4 = @"ironstone";
      break;
    default:
      if (a3 == 100)
      {
        v5 = [a1 colorNameForColorValue:0];
        v4 = ntk_duotone(@"seasons.spring2015", v5, @"explorer", @"red");
      }

      else
      {
        v4 = 0;
      }

      break;
  }

  return v4;
}

+ (unint64_t)colorCodeForPigmentEditOption:(id)a3 forDevice:(id)a4
{
  v4 = [a1 legacyOptionWithPigmentEditOption:a3 forDevice:a4];
  v5 = [v4 victoryColor];

  return v5;
}

@end