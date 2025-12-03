@interface PBBridgeWatchAttributeController
+ (id)editionDescription:(unint64_t)description;
+ (id)hwBehaviorDescription:(unint64_t)description;
+ (id)materialDescription:(unint64_t)description;
+ (id)materialKeyColorForMaterial:(unint64_t)material;
+ (id)resourceString:(id)string material:(unint64_t)material size:(unint64_t)size forAttributes:(unint64_t)attributes;
+ (id)sharedDeviceController;
+ (id)sizeDescription:(unint64_t)description;
+ (id)stingMaterialDescription:(unint64_t)description;
+ (unint64_t)_materialForCLHSValue:(unint64_t)value;
+ (unint64_t)materialFromDevice:(id)device;
+ (unint64_t)materialFromPdrDevice:(id)device;
+ (unint64_t)sizeFromDevice:(id)device;
+ (unint64_t)sizeFromPdrDevice:(id)device;
+ (unsigned)sizeFromInternalSize:(unint64_t)size;
- (BOOL)hasTwoYearWarranty;
- (PBBridgeWatchAttributeController)init;
- (PDRDevice)pdrDevice;
- (id)attributesDescription;
- (id)getGestaltDmin;
- (id)resourceString:(id)string forAttributes:(unint64_t)attributes;
- (unint64_t)fallbackMaterialForSize:(unint64_t)size;
- (void)_populateMaterialDetailsWithDMinProperties:(id)properties;
- (void)_setMaterialWithCLHSValue:(unint64_t)value;
- (void)setDevice:(id)device;
- (void)setInternalSize:(unint64_t)size;
- (void)setMaterial:(unint64_t)material;
@end

@implementation PBBridgeWatchAttributeController

+ (id)sharedDeviceController
{
  if (sharedDeviceController_onceToken != -1)
  {
    +[PBBridgeWatchAttributeController sharedDeviceController];
  }

  v3 = sharedDeviceController___material;

  return v3;
}

uint64_t __58__PBBridgeWatchAttributeController_sharedDeviceController__block_invoke()
{
  sharedDeviceController___material = objc_alloc_init(PBBridgeWatchAttributeController);

  return MEMORY[0x2821F96F8]();
}

- (void)_populateMaterialDetailsWithDMinProperties:(id)properties
{
  v6 = [properties objectForKey:&unk_286FB4178];
  integerValue = [v6 integerValue];
  self->_material = integerValue;
  if (integerValue - 1 > 0x25)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_25DEB4D30[integerValue - 1];
  }

  self->_edition = v5;
}

- (PBBridgeWatchAttributeController)init
{
  v36 = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = PBBridgeWatchAttributeController;
  v2 = [(PBBridgeWatchAttributeController *)&v33 init];
  if (v2)
  {
    if (_IsSetup_onceToken != -1)
    {
      [PBBridgeWatchAttributeController init];
    }

    if (_IsSetup___isSetup == 1)
    {
      v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
      stringCache = v2->_stringCache;
      v2->_stringCache = v3;

      v5 = MGCopyAnswer();
      integerValue = [v5 integerValue];
      v7 = pbb_setup_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (integerValue)
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "Device is CLHS Type", buf, 2u);
        }

        [(PBBridgeWatchAttributeController *)v2 _setMaterialWithCLHSValue:integerValue];
      }

      else
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "Device is DMin Type", buf, 2u);
        }

        getGestaltDmin = [(PBBridgeWatchAttributeController *)v2 getGestaltDmin];
        [(PBBridgeWatchAttributeController *)v2 _populateMaterialDetailsWithDMinProperties:getGestaltDmin];
      }

      v10 = MGCopyAnswer();
      v2->_hardwareBehavior = [v10 integerValue];
      if (MGGetBoolAnswer())
      {
        v11 = MGCopyAnswer();
        v12 = [v11 objectForKey:@"ArtworkDeviceSubType"];
        [v12 unsignedIntegerValue];
        v13 = NRDeviceSizeForArtworkDeviceSubType();
        v14 = 0;
        hardwareBehavior = v2->_hardwareBehavior;
        if (v13 <= 5)
        {
          if (v13 <= 2)
          {
            if (v13 == 1)
            {
              v14 = 5;
              if (hardwareBehavior != 2)
              {
                v14 = 1;
              }

              v16 = hardwareBehavior == 1;
              v17 = 3;
            }

            else
            {
              if (v13 != 2)
              {
LABEL_91:
                v2->_internalSize = v14;

LABEL_97:
                v28 = MGCopyAnswer();
                v2->_stingButtonColor = [v28 integerValue];
                v29 = pbb_setup_log();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  attributesDescription = [(PBBridgeWatchAttributeController *)v2 attributesDescription];
                  *buf = 138412290;
                  v35 = attributesDescription;
                  _os_log_impl(&dword_25DE64000, v29, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
                }

                goto LABEL_100;
              }

              v14 = 2;
              if (hardwareBehavior == 2)
              {
                v14 = 6;
              }

              v16 = hardwareBehavior == 1;
              v17 = 4;
            }
          }

          else if (v13 == 3)
          {
            v14 = 7;
            if (hardwareBehavior == 2)
            {
              v14 = 11;
            }

            v16 = hardwareBehavior == 1;
            v17 = 9;
          }

          else if (v13 == 4)
          {
            v14 = 8;
            if (hardwareBehavior == 2)
            {
              v14 = 12;
            }

            v16 = hardwareBehavior == 1;
            v17 = 10;
          }

          else
          {
            v14 = 14;
            if (hardwareBehavior == 2)
            {
              v14 = 18;
            }

            v16 = hardwareBehavior == 1;
            v17 = 16;
          }

LABEL_82:
          if (v16)
          {
            v14 = v17;
          }

          goto LABEL_91;
        }

        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v14 = 13;
            if (hardwareBehavior == 2)
            {
              v14 = 17;
            }

            v16 = hardwareBehavior == 1;
            v17 = 15;
            goto LABEL_82;
          }

          v26 = hardwareBehavior == 1;
          v27 = 19;
          v14 = 24;
        }

        else if (v13 == 8)
        {
          v26 = hardwareBehavior == 1;
          v27 = 20;
          v14 = 22;
        }

        else
        {
          if (v13 != 9)
          {
            if (v13 == 10)
            {
              if (hardwareBehavior == 1)
              {
                v14 = 26;
              }

              else
              {
                v14 = 25;
              }
            }

            goto LABEL_91;
          }

          v26 = hardwareBehavior == 1;
          v27 = 21;
          v14 = 23;
        }

        if (!v26)
        {
          v14 = v27;
        }

        goto LABEL_91;
      }

      v11 = MGCopyAnswer();
      v18 = v2->_hardwareBehavior;
      v19 = NRDeviceSizeForProductType();
      if (v19 <= 5)
      {
        if (v19 <= 2)
        {
          if (v19 == 1)
          {
            v20 = 5;
            if (v18 != 2)
            {
              v20 = 1;
            }

            v21 = v18 == 1;
            v22 = 3;
          }

          else
          {
            v25 = 0;
            if (v19 != 2)
            {
LABEL_96:
              v2->_internalSize = v25;
              [PBBridgeCAReporter recordMaterial:integerValue andSize:?];
              goto LABEL_97;
            }

            v20 = 2;
            if (v18 == 2)
            {
              v20 = 6;
            }

            v21 = v18 == 1;
            v22 = 4;
          }
        }

        else if (v19 == 3)
        {
          v20 = 7;
          if (v18 == 2)
          {
            v20 = 11;
          }

          v21 = v18 == 1;
          v22 = 9;
        }

        else if (v19 == 4)
        {
          v20 = 8;
          if (v18 == 2)
          {
            v20 = 12;
          }

          v21 = v18 == 1;
          v22 = 10;
        }

        else
        {
          v20 = 14;
          if (v18 == 2)
          {
            v20 = 18;
          }

          v21 = v18 == 1;
          v22 = 16;
        }

LABEL_93:
        if (v21)
        {
          v25 = v22;
        }

        else
        {
          v25 = v20;
        }

        goto LABEL_96;
      }

      if (v19 <= 7)
      {
        if (v19 == 6)
        {
          v20 = 13;
          if (v18 == 2)
          {
            v20 = 17;
          }

          v21 = v18 == 1;
          v22 = 15;
          goto LABEL_93;
        }

        v23 = 19;
        if (v18 == 1)
        {
          v23 = 24;
        }

        v24 = v19 == 7;
      }

      else
      {
        if (v19 == 8)
        {
          v21 = v18 == 1;
          v20 = 20;
          v22 = 22;
          goto LABEL_93;
        }

        if (v19 == 9)
        {
          v21 = v18 == 1;
          v20 = 21;
          v22 = 23;
          goto LABEL_93;
        }

        v23 = 25;
        if (v18 == 1)
        {
          v23 = 26;
        }

        v24 = v19 == 10;
      }

      if (v24)
      {
        v25 = v23;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_96;
    }
  }

LABEL_100:
  v31 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)attributesDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [PBBridgeWatchAttributeController stingMaterialDescription:self->_stingButtonColor];
  v5 = [v3 stringWithFormat:@" (Sting: %@)", v4];

  v6 = MEMORY[0x277CCACA8];
  v7 = [PBBridgeWatchAttributeController materialDescription:self->_material];
  v8 = [PBBridgeWatchAttributeController sizeDescription:self->_internalSize];
  v9 = [PBBridgeWatchAttributeController editionDescription:self->_edition];
  v10 = [PBBridgeWatchAttributeController hwBehaviorDescription:self->_hardwareBehavior];
  v11 = [v6 stringWithFormat:@" Attributes: (Material: %@) (Size: %@) (Edition: %@) (HW Behavior: %@)%@", v7, v8, v9, v10, v5];

  return v11;
}

- (BOOL)hasTwoYearWarranty
{
  if ([(PBBridgeWatchAttributeController *)self size]> 0x12)
  {
    return 0;
  }

  edition = [(PBBridgeWatchAttributeController *)self edition];
  hardwareBehavior = [(PBBridgeWatchAttributeController *)self hardwareBehavior];
  v6 = [(PBBridgeWatchAttributeController *)self material]& 0xFFFFFFFFFFFFFFFELL;
  return edition == 3 || hardwareBehavior == 1 || v6 == 10;
}

- (void)setDevice:(id)device
{
  v31 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (self->_device != deviceCopy)
  {
    [(NSCache *)self->_stringCache removeAllObjects];
    v5 = objc_alloc_init(MEMORY[0x277CBEA78]);
    stringCache = self->_stringCache;
    self->_stringCache = v5;

    v7 = [(NRDevice *)deviceCopy valueForProperty:*MEMORY[0x277D2BAD8]];
    v8 = [(NRDevice *)deviceCopy valueForProperty:*MEMORY[0x277D2BAC0]];
    intValue = [v8 intValue];

    v10 = [(NRDevice *)deviceCopy valueForProperty:*MEMORY[0x277D2BAC8]];
    integerValue = [v10 integerValue];
    v12 = pbb_setup_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (integerValue)
    {
      if (v13)
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "Device is CLHS Type", &v29, 2u);
      }

      [(PBBridgeWatchAttributeController *)self _setMaterialWithCLHSValue:integerValue];
    }

    else
    {
      if (v13)
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "Device is DMin Type", &v29, 2u);
      }

      [(PBBridgeWatchAttributeController *)self _populateMaterialDetailsWithDMinProperties:v7];
    }

    self->_hardwareBehavior = intValue;
    v14 = [(NRDevice *)deviceCopy valueForProperty:*MEMORY[0x277D2BA80]];
    if (MGGetBoolAnswer() && v14)
    {
      v15 = [v14 objectForKeyedSubscript:@"ArtworkDeviceSubType"];
      [v15 unsignedIntegerValue];
      v16 = NRDeviceSizeForArtworkDeviceSubType();
    }

    else
    {
      v15 = [(NRDevice *)deviceCopy valueForProperty:*MEMORY[0x277D2BBC0]];
      v16 = NRDeviceSizeForProductType();
    }

    if (v16 > 5)
    {
      v17 = 20;
      if (intValue == 1)
      {
        v17 = 22;
      }

      v21 = 21;
      if (intValue == 1)
      {
        v21 = 23;
      }

      v22 = 25;
      if (intValue == 1)
      {
        v22 = 26;
      }

      if (v16 != 10)
      {
        v22 = 0;
      }

      if (v16 != 9)
      {
        v21 = v22;
      }

      if (v16 != 8)
      {
        v17 = v21;
      }

      v23 = 13;
      if (intValue == 2)
      {
        v23 = 17;
      }

      if (intValue == 1)
      {
        v23 = 15;
      }

      v24 = 19;
      if (intValue == 1)
      {
        v24 = 24;
      }

      if (v16 != 7)
      {
        v24 = 0;
      }

      if (v16 != 6)
      {
        v23 = v24;
      }

      if (v16 <= 7)
      {
        v17 = v23;
      }
    }

    else
    {
      if (v16 <= 2)
      {
        v17 = 5;
        if (intValue != 2)
        {
          v17 = 1;
        }

        if (intValue == 1)
        {
          v17 = 3;
        }

        v18 = 2;
        if (intValue == 2)
        {
          v18 = 6;
        }

        if (intValue == 1)
        {
          v18 = 4;
        }

        if (v16 != 2)
        {
          v18 = 0;
        }

        v20 = v16 == 1;
      }

      else
      {
        v17 = 7;
        if (intValue == 2)
        {
          v17 = 11;
        }

        if (intValue == 1)
        {
          v17 = 9;
        }

        v18 = 8;
        if (intValue == 2)
        {
          v18 = 12;
        }

        if (intValue == 1)
        {
          v18 = 10;
        }

        v19 = 14;
        if (intValue == 2)
        {
          v19 = 18;
        }

        if (intValue == 1)
        {
          v19 = 16;
        }

        if (v16 != 5)
        {
          v19 = 0;
        }

        if (v16 != 4)
        {
          v18 = v19;
        }

        v20 = v16 == 3;
      }

      if (!v20)
      {
        v17 = v18;
      }
    }

    self->_internalSize = v17;

    v25 = pbb_setup_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      attributesDescription = [(PBBridgeWatchAttributeController *)self attributesDescription];
      v29 = 138543362;
      v30 = attributesDescription;
      _os_log_impl(&dword_25DE64000, v25, OS_LOG_TYPE_DEFAULT, "Populating With Device: %{public}@", &v29, 0xCu);
    }
  }

  device = self->_device;
  self->_device = deviceCopy;

  v28 = *MEMORY[0x277D85DE8];
}

- (PDRDevice)pdrDevice
{
  device = self->_device;
  if (device)
  {
    pairingID = [(NRDevice *)device pairingID];
    mEMORY[0x277D37B50] = [MEMORY[0x277D37B50] sharedInstance];
    v5 = [mEMORY[0x277D37B50] deviceForPairingID:pairingID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getGestaltDmin
{
  NSLog(&cfstr_CallingMgcopya.isa, a2, @"DMin");
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)stingMaterialDescription:(unint64_t)description
{
  if (description == 1)
  {
    return @"Color-2022";
  }

  else
  {
    return 0;
  }
}

+ (id)materialDescription:(unint64_t)description
{
  if (description - 1 > 0x25)
  {
    return @"Generic";
  }

  else
  {
    return off_2799F3F28[description - 1];
  }
}

+ (id)sizeDescription:(unint64_t)description
{
  if (description > 0x1A)
  {
    return 0;
  }

  else
  {
    return off_2799F4058[description];
  }
}

+ (id)hwBehaviorDescription:(unint64_t)description
{
  v3 = @"Default";
  if (description == 2)
  {
    v3 = @"Nike+";
  }

  if (description == 1)
  {
    return @"Hermès";
  }

  else
  {
    return v3;
  }
}

+ (id)resourceString:(id)string material:(unint64_t)material size:(unint64_t)size forAttributes:(unint64_t)attributes
{
  attributesCopy = attributes;
  v20 = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CCAB68] stringWithString:string];
  v10 = v9;
  if ((attributesCopy & 2) != 0)
  {
    v11 = material - 1;
    if (material - 1 >= 0x26)
    {
      v13 = @"-M3";
      goto LABEL_10;
    }

    v12 = off_2799F4260;
  }

  else
  {
    if ((attributesCopy & 1) == 0)
    {
      goto LABEL_11;
    }

    v11 = material - 5;
    if (material - 5 >= 0x22)
    {
      v13 = @"-E2";
      goto LABEL_10;
    }

    v12 = off_2799F4130;
  }

  v13 = v12[v11];
LABEL_10:
  [v9 appendString:v13];
LABEL_11:
  if ((attributesCopy & 4) != 0)
  {
    if (size - 1 > 0x19)
    {
      v14 = @"-448h";
    }

    else
    {
      v14 = off_2799F4390[size - 1];
    }

    [v10 appendString:v14];
  }

  v15 = pbb_setup_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v10;
    _os_log_impl(&dword_25DE64000, v15, OS_LOG_TYPE_DEFAULT, "+resourceString %@", &v18, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)editionDescription:(unint64_t)description
{
  if (description > 3)
  {
    return @"Sport";
  }

  else
  {
    return off_2799F4240[description];
  }
}

- (id)resourceString:(id)string forAttributes:(unint64_t)attributes
{
  attributesCopy = attributes;
  v22 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (self->_material - 29 <= 0xFFFFFFFFFFFFFFE3)
  {
    v7 = pbb_setup_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      material = self->_material;
      v20 = 134217984;
      v21 = material;
      _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "Unknown Material: %lu -- Will fallback to M3.", &v20, 0xCu);
    }
  }

  v9 = [(NSCache *)self->_stringCache objectForKey:stringCopy];
  if (!v9)
  {
    v10 = [MEMORY[0x277CCAB68] stringWithString:stringCopy];
    v9 = v10;
    if ((attributesCopy & 2) != 0)
    {
      v14 = self->_material - 1;
      if (v14 >= 0x26)
      {
        v13 = @"-M3";
      }

      else
      {
        v13 = off_2799F4260[v14];
      }
    }

    else
    {
      if ((attributesCopy & 1) == 0)
      {
LABEL_17:
        if ((attributesCopy & 4) != 0)
        {
          v15 = self->_internalSize - 1;
          if (v15 > 0x19)
          {
            v16 = @"-448h";
          }

          else
          {
            v16 = off_2799F4390[v15];
          }

          [v9 appendString:v16];
        }

        [(NSCache *)self->_stringCache setObject:v9 forKey:stringCopy];
        goto LABEL_23;
      }

      edition = self->_edition;
      v12 = @"-E2";
      if (edition == 3)
      {
        v12 = @"-E3";
      }

      if (edition == 1)
      {
        v13 = @"-E1";
      }

      else
      {
        v13 = v12;
      }
    }

    [v10 appendString:v13];
    goto LABEL_17;
  }

LABEL_23:
  v17 = pbb_setup_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v9;
    _os_log_impl(&dword_25DE64000, v17, OS_LOG_TYPE_DEFAULT, "-resourceString %@", &v20, 0xCu);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)materialKeyColorForMaterial:(unint64_t)material
{
  switch(material)
  {
    case 0x14uLL:
      systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
      break;
    case 9uLL:
      v3 = 0.91372549;
      v4 = 0.705882353;
      v5 = 0.549019608;
      goto LABEL_6;
    case 8uLL:
      v3 = 0.898039216;
      v4 = 0.796078431;
      v5 = 0.482352941;
LABEL_6:
      systemOrangeColor = [MEMORY[0x277D75348] colorWithRed:v3 green:v4 blue:v5 alpha:1.0];
      break;
    default:
      systemOrangeColor = [MEMORY[0x277D75348] whiteColor];
      break;
  }

  return systemOrangeColor;
}

- (unint64_t)fallbackMaterialForSize:(unint64_t)size
{
  v3 = 3;
  if ((size & 0xFFFFFFFFFFFFFFFELL) == 0x14)
  {
    v3 = 22;
  }

  if (size == 25)
  {
    v3 = 14;
  }

  if (size == 19)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

- (void)setInternalSize:(unint64_t)size
{
  self->_internalSize = size;
  if (size - 3 > 0x15)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_25DEB4B08[size - 3];
  }

  self->_hardwareBehavior = v3;
}

- (void)setMaterial:(unint64_t)material
{
  self->_material = material;
  if (material - 1 > 0x25)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_25DEB4D30[material - 1];
  }

  self->_edition = v3;
}

+ (unint64_t)materialFromDevice:(id)device
{
  deviceCopy = device;
  v5 = [deviceCopy valueForProperty:*MEMORY[0x277D2BAC8]];
  integerValue = [v5 integerValue];
  if (integerValue)
  {
    integerValue2 = [self _materialForCLHSValue:integerValue];
  }

  else
  {
    v8 = [deviceCopy valueForProperty:*MEMORY[0x277D2BAD8]];
    v9 = [v8 objectForKeyedSubscript:&unk_286FB4178];
    integerValue2 = [v9 integerValue];
  }

  return integerValue2;
}

+ (unint64_t)sizeFromDevice:(id)device
{
  deviceCopy = device;
  v4 = [deviceCopy valueForProperty:*MEMORY[0x277D2BAC0]];
  intValue = [v4 intValue];

  v6 = [deviceCopy valueForProperty:*MEMORY[0x277D2BA80]];
  if (MGGetBoolAnswer() && v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"ArtworkDeviceSubType"];
    [v7 unsignedIntegerValue];
    v8 = NRDeviceSizeForArtworkDeviceSubType();
  }

  else
  {
    v7 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBC0]];
    v8 = NRDeviceSizeForProductType();
  }

  if (v8 > 5)
  {
    v13 = 20;
    if (intValue == 1)
    {
      v13 = 22;
    }

    v14 = 21;
    if (intValue == 1)
    {
      v14 = 23;
    }

    v15 = 25;
    if (intValue == 1)
    {
      v15 = 26;
    }

    if (v8 != 10)
    {
      v15 = 0;
    }

    if (v8 != 9)
    {
      v14 = v15;
    }

    if (v8 != 8)
    {
      v13 = v14;
    }

    v16 = 13;
    if (intValue == 2)
    {
      v16 = 17;
    }

    if (intValue == 1)
    {
      v16 = 15;
    }

    v17 = 19;
    if (intValue == 1)
    {
      v17 = 24;
    }

    if (v8 != 7)
    {
      v17 = 0;
    }

    if (v8 != 6)
    {
      v16 = v17;
    }

    if (v8 <= 7)
    {
      v18 = v16;
    }

    else
    {
      v18 = v13;
    }
  }

  else
  {
    if (v8 <= 2)
    {
      v9 = 5;
      if (intValue != 2)
      {
        v9 = 1;
      }

      if (intValue == 1)
      {
        v9 = 3;
      }

      v10 = 2;
      if (intValue == 2)
      {
        v10 = 6;
      }

      if (intValue == 1)
      {
        v10 = 4;
      }

      if (v8 != 2)
      {
        v10 = 0;
      }

      v12 = v8 == 1;
    }

    else
    {
      v9 = 7;
      if (intValue == 2)
      {
        v9 = 11;
      }

      if (intValue == 1)
      {
        v9 = 9;
      }

      v10 = 8;
      if (intValue == 2)
      {
        v10 = 12;
      }

      if (intValue == 1)
      {
        v10 = 10;
      }

      v11 = 14;
      if (intValue == 2)
      {
        v11 = 18;
      }

      if (intValue == 1)
      {
        v11 = 16;
      }

      if (v8 != 5)
      {
        v11 = 0;
      }

      if (v8 != 4)
      {
        v10 = v11;
      }

      v12 = v8 == 3;
    }

    if (v12)
    {
      v18 = v9;
    }

    else
    {
      v18 = v10;
    }
  }

  v19 = SizeForInternalSize(v18);
  return v19;
}

+ (unint64_t)materialFromPdrDevice:(id)device
{
  deviceCopy = device;
  v5 = [deviceCopy valueForProperty:*MEMORY[0x277D37B80]];
  integerValue = [v5 integerValue];
  if (integerValue)
  {
    integerValue2 = [self _materialForCLHSValue:integerValue];
  }

  else
  {
    v8 = [deviceCopy valueForProperty:*MEMORY[0x277D37B90]];
    v9 = [v8 objectForKeyedSubscript:&unk_286FB4178];
    integerValue2 = [v9 integerValue];
  }

  return integerValue2;
}

+ (unint64_t)sizeFromPdrDevice:(id)device
{
  v3 = *MEMORY[0x277D37B78];
  deviceCopy = device;
  v5 = [deviceCopy valueForProperty:v3];
  intValue = [v5 intValue];

  v7 = [deviceCopy valueForProperty:*MEMORY[0x277D37BE8]];

  v8 = NRDeviceSizeForProductType();
  if (v8 > 5)
  {
    v13 = 20;
    if (intValue == 1)
    {
      v13 = 22;
    }

    v14 = 21;
    if (intValue == 1)
    {
      v14 = 23;
    }

    v15 = 25;
    if (intValue == 1)
    {
      v15 = 26;
    }

    if (v8 != 10)
    {
      v15 = 0;
    }

    if (v8 != 9)
    {
      v14 = v15;
    }

    if (v8 != 8)
    {
      v13 = v14;
    }

    v16 = 13;
    if (intValue == 2)
    {
      v16 = 17;
    }

    if (intValue == 1)
    {
      v16 = 15;
    }

    v17 = 19;
    if (intValue == 1)
    {
      v17 = 24;
    }

    if (v8 != 7)
    {
      v17 = 0;
    }

    if (v8 != 6)
    {
      v16 = v17;
    }

    if (v8 <= 7)
    {
      v18 = v16;
    }

    else
    {
      v18 = v13;
    }
  }

  else
  {
    if (v8 <= 2)
    {
      v9 = 5;
      if (intValue != 2)
      {
        v9 = 1;
      }

      if (intValue == 1)
      {
        v9 = 3;
      }

      v10 = 2;
      if (intValue == 2)
      {
        v10 = 6;
      }

      if (intValue == 1)
      {
        v10 = 4;
      }

      if (v8 != 2)
      {
        v10 = 0;
      }

      v12 = v8 == 1;
    }

    else
    {
      v9 = 7;
      if (intValue == 2)
      {
        v9 = 11;
      }

      if (intValue == 1)
      {
        v9 = 9;
      }

      v10 = 8;
      if (intValue == 2)
      {
        v10 = 12;
      }

      if (intValue == 1)
      {
        v10 = 10;
      }

      v11 = 14;
      if (intValue == 2)
      {
        v11 = 18;
      }

      if (intValue == 1)
      {
        v11 = 16;
      }

      if (v8 != 5)
      {
        v11 = 0;
      }

      if (v8 != 4)
      {
        v10 = v11;
      }

      v12 = v8 == 3;
    }

    if (v12)
    {
      v18 = v9;
    }

    else
    {
      v18 = v10;
    }
  }

  return SizeForInternalSize(v18);
}

+ (unsigned)sizeFromInternalSize:(unint64_t)size
{
  if (size - 1 > 0x19)
  {
    return 0;
  }

  else
  {
    return word_25DEB4BB8[size - 1];
  }
}

+ (unint64_t)_materialForCLHSValue:(unint64_t)value
{
  if (value - 2 > 0x27)
  {
    return 3;
  }

  else
  {
    return qword_25DEB4BF0[value - 2];
  }
}

- (void)_setMaterialWithCLHSValue:(unint64_t)value
{
  v4 = [PBBridgeWatchAttributeController _materialForCLHSValue:value];
  self->_material = v4;
  if (v4 - 1 > 0x25)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_25DEB4D30[v4 - 1];
  }

  self->_edition = v5;
}

@end