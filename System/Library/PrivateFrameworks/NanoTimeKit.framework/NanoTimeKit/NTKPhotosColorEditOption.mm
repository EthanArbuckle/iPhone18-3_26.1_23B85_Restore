@interface NTKPhotosColorEditOption
+ (id)__orderedValuesForDevice:(id)device;
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)pigmentEditOption;
@end

@implementation NTKPhotosColorEditOption

+ (id)_orderedValuesForDevice:(id)device
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__NTKPhotosColorEditOption__orderedValuesForDevice___block_invoke;
  v5[3] = &__block_descriptor_40_e28___NSArray_16__0__CLKDevice_8l;
  v5[4] = self;
  v3 = __52__NTKPhotosColorEditOption__orderedValuesForDevice___block_invoke(v5, device);

  return v3;
}

id __52__NTKPhotosColorEditOption__orderedValuesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&_ValueKey_block_invoke_16_lock);
  if (_ValueKey_block_invoke_16___cachedDevice)
  {
    v4 = _ValueKey_block_invoke_16___cachedDevice == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _ValueKey_block_invoke_16___previousCLKDeviceVersion))
  {
    _ValueKey_block_invoke_16___cachedDevice = v3;
    _ValueKey_block_invoke_16___previousCLKDeviceVersion = [v3 version];
    v6 = [*(a1 + 32) __orderedValuesForDevice:v3];
    v7 = _ValueKey_block_invoke_16_value;
    _ValueKey_block_invoke_16_value = v6;
  }

  v8 = _ValueKey_block_invoke_16_value;
  os_unfair_lock_unlock(&_ValueKey_block_invoke_16_lock);

  return v8;
}

+ (id)__orderedValuesForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_opt_new();
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___NTKPhotosColorEditOption;
  v6 = objc_msgSendSuper2(&v13, sel___orderedValuesForDevice_, deviceCopy);
  [v5 addObjectsFromArray:v6];

  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___NTKPhotosColorEditOption;
  v7 = objc_msgSendSuper2(&v12, sel__thirdPartyValues);
  [v5 removeObjectsInArray:v7];

  [v5 insertObject:&unk_2841853E0 atIndex:0];
  v8 = [v5 count];
  while (v8 >= 1)
  {
    v9 = [v5 objectAtIndex:--v8];
    v10 = [v9 isEqual:&unk_284184FF0];

    if (v10)
    {
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:
  [v5 insertObject:&unk_2841853F8 atIndex:v8];
  [v5 insertObject:&unk_284185410 atIndex:v8];
  [v5 insertObject:&unk_284185428 atIndex:v8];
  [v5 insertObject:&unk_284185440 atIndex:v8];
  [v5 insertObject:&unk_284185458 atIndex:v8];
  [v5 insertObject:&unk_284185470 atIndex:v8];
  [v5 insertObject:&unk_284185488 atIndex:v8];
  [v5 insertObject:&unk_2841854A0 atIndex:v8];
  [v5 insertObject:&unk_2841854B8 atIndex:v8];
  [v5 insertObject:&unk_2841854D0 atIndex:v8];
  [v5 insertObject:&unk_2841854E8 atIndex:v8];
  [v5 insertObject:&unk_284185500 atIndex:v8];
  [v5 insertObject:&unk_284185518 atIndex:v8];
  [v5 insertObject:&unk_284185530 atIndex:v8];
  [v5 insertObject:&unk_284185548 atIndex:v8];
  [v5 insertObject:&unk_284185560 atIndex:v8];
  [v5 insertObject:&unk_284185578 atIndex:v8];
  [v5 insertObject:&unk_284185590 atIndex:v8];
  [v5 insertObject:&unk_2841855A8 atIndex:v8];
  [v5 insertObject:&unk_2841855C0 atIndex:v8];

  return v5;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  deviceCopy = device;
  v7 = value - 3000;
  v8 = @"dual-tone-01";
  switch(v7)
  {
    case 0uLL:
      originalColorName = [self originalColorName];
      goto LABEL_17;
    case 1uLL:
      break;
    case 2uLL:
      v8 = @"dual-tone-02";
      break;
    case 3uLL:
      v8 = @"dual-tone-03";
      break;
    case 4uLL:
      v8 = @"dual-tone-04";
      break;
    case 5uLL:
      v8 = @"dual-tone-05";
      break;
    case 6uLL:
      v8 = @"dual-tone-06";
      break;
    case 7uLL:
      v8 = @"dual-tone-07";
      break;
    case 8uLL:
      v8 = @"dual-tone-08";
      break;
    case 9uLL:
      v8 = @"dual-tone-09";
      break;
    case 0xAuLL:
      v8 = @"dual-tone-10";
      break;
    case 0xBuLL:
      v8 = @"dual-tone-11";
      break;
    case 0xCuLL:
      v8 = @"dual-tone-12";
      break;
    case 0xDuLL:
      v8 = @"dual-tone-13";
      break;
    case 0xEuLL:
      v8 = @"dual-tone-14";
      break;
    case 0xFuLL:
      v8 = @"dual-tone-15";
      break;
    case 0x10uLL:
      v8 = @"dual-tone-16";
      break;
    case 0x11uLL:
      v8 = @"dual-tone-17";
      break;
    case 0x12uLL:
      v8 = @"dual-tone-18";
      break;
    case 0x13uLL:
      v8 = @"dual-tone-19";
      break;
    case 0x14uLL:
      v8 = @"dual-tone-20";
      break;
    default:
      originalColorName = [NTKFaceColorEditOption _snapshotKeyForValue:@"dual-tone-01" forDevice:deviceCopy];
LABEL_17:
      v8 = originalColorName;
      break;
  }

  return v8;
}

- (id)_valueToFaceBundleStringDict
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NTKPhotosColorEditOption__valueToFaceBundleStringDict__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  if (_valueToFaceBundleStringDict_onceToken_1389 != -1)
  {
    dispatch_once(&_valueToFaceBundleStringDict_onceToken_1389, block);
  }

  return _valueToFaceBundleStringDict_valueToFaceBundleString_1388;
}

void __56__NTKPhotosColorEditOption__valueToFaceBundleStringDict__block_invoke(uint64_t a1)
{
  v67[1] = *MEMORY[0x277D85DE8];
  v25.receiver = *(a1 + 32);
  v25.super_class = NTKPhotosColorEditOption;
  v1 = objc_msgSendSuper2(&v25, sel__valueToFaceBundleStringDict);
  v2 = [v1 mutableCopy];

  v66 = &unk_2841853E0;
  v67[0] = @"none";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:&v66 count:1];
  [v2 addEntriesFromDictionary:v3];

  v64 = &unk_2841855C0;
  v65 = @"dual tone 1";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  [v2 addEntriesFromDictionary:v4];

  v62 = &unk_2841855A8;
  v63 = @"dual tone 2";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  [v2 addEntriesFromDictionary:v5];

  v60 = &unk_284185590;
  v61 = @"dual tone 3";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  [v2 addEntriesFromDictionary:v6];

  v58 = &unk_284185578;
  v59 = @"dual tone 4";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  [v2 addEntriesFromDictionary:v7];

  v56 = &unk_284185560;
  v57 = @"dual tone 5";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  [v2 addEntriesFromDictionary:v8];

  v54 = &unk_284185548;
  v55 = @"dual tone 6";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  [v2 addEntriesFromDictionary:v9];

  v52 = &unk_284185530;
  v53 = @"dual tone 7";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  [v2 addEntriesFromDictionary:v10];

  v50 = &unk_284185518;
  v51 = @"dual tone 8";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  [v2 addEntriesFromDictionary:v11];

  v48 = &unk_284185500;
  v49 = @"dual tone 9";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  [v2 addEntriesFromDictionary:v12];

  v46 = &unk_2841854E8;
  v47 = @"dual tone 10";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  [v2 addEntriesFromDictionary:v13];

  v44 = &unk_2841854D0;
  v45 = @"dual tone 11";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  [v2 addEntriesFromDictionary:v14];

  v42 = &unk_2841854B8;
  v43 = @"dual tone 12";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  [v2 addEntriesFromDictionary:v15];

  v40 = &unk_2841854A0;
  v41 = @"dual tone 13";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  [v2 addEntriesFromDictionary:v16];

  v38 = &unk_284185488;
  v39 = @"dual tone 14";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  [v2 addEntriesFromDictionary:v17];

  v36 = &unk_284185470;
  v37 = @"dual tone 15";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  [v2 addEntriesFromDictionary:v18];

  v34 = &unk_284185458;
  v35 = @"dual tone 16";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  [v2 addEntriesFromDictionary:v19];

  v32 = &unk_284185440;
  v33 = @"dual tone 17";
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  [v2 addEntriesFromDictionary:v20];

  v30 = &unk_284185428;
  v31 = @"dual tone 18";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  [v2 addEntriesFromDictionary:v21];

  v28 = &unk_284185410;
  v29 = @"dual tone 19";
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [v2 addEntriesFromDictionary:v22];

  v26 = &unk_2841853F8;
  v27 = @"dual tone 20";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  [v2 addEntriesFromDictionary:v23];

  v24 = _valueToFaceBundleStringDict_valueToFaceBundleString_1388;
  _valueToFaceBundleStringDict_valueToFaceBundleString_1388 = v2;
}

- (id)pigmentEditOption
{
  v3 = @"photos";
  if ([(NTKPhotosColorEditOption *)self color]== 3000)
  {
    v4 = +[NTKPhotosColorEditOption originalColorName];
  }

  else
  {
    if ([(NTKPhotosColorEditOption *)self color]< 0xBB9)
    {
LABEL_6:
      v7 = 0;
      goto LABEL_33;
    }

    switch([(NTKPhotosColorEditOption *)self color])
    {
      case 3001uLL:
        v5 = 45;
        v6 = 12;
        break;
      case 3002uLL:
        v5 = 61;
        v6 = 65;
        break;
      case 3003uLL:
        v5 = 65;
        v6 = 64;
        break;
      case 3004uLL:
        v5 = 61;
        v6 = 62;
        break;
      case 3005uLL:
        v5 = 4;
        v6 = 9;
        break;
      case 3006uLL:
        v5 = 39;
        v6 = 25;
        break;
      case 3007uLL:
        v5 = 8;
        v6 = 47;
        break;
      case 3008uLL:
        v5 = 35;
        v6 = 0;
        break;
      case 3009uLL:
        v5 = 72;
        goto LABEL_25;
      case 3010uLL:
        v5 = 3;
        v6 = 70;
        break;
      case 3011uLL:
        v5 = 8;
LABEL_25:
        v6 = 73;
        break;
      case 3012uLL:
        v5 = 5;
        v6 = 69;
        break;
      case 3013uLL:
        v5 = 78;
        v6 = 79;
        break;
      case 3014uLL:
        v5 = 76;
        v6 = 75;
        break;
      case 3015uLL:
        v5 = 74;
        v6 = 78;
        break;
      case 3016uLL:
        v5 = 0;
        v6 = 87;
        break;
      case 3017uLL:
        v5 = 82;
        v6 = 85;
        break;
      case 3018uLL:
        v5 = 87;
        v6 = 86;
        break;
      case 3019uLL:
        v5 = 49;
        v6 = 81;
        break;
      case 3020uLL:
        v5 = 87;
        v6 = 71;
        break;
      default:
        goto LABEL_6;
    }

    v4 = NTKFaceColorNameForDuotones(v5, v6);
  }

  v7 = v4;
  if (v4)
  {
    v8 = v3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    pigmentEditOption = [[NTKPigmentEditOption alloc] initWithOptionName:v4 collectionName:v3];
    goto LABEL_34;
  }

LABEL_33:
  v12.receiver = self;
  v12.super_class = NTKPhotosColorEditOption;
  pigmentEditOption = [(NTKFaceColorEditOption *)&v12 pigmentEditOption];
LABEL_34:
  v10 = pigmentEditOption;

  return v10;
}

@end