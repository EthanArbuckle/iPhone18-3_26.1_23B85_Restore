@interface PBBridgeWatchAttributeController
+ (id)editionDescription:(unint64_t)a3;
+ (id)hwBehaviorDescription:(unint64_t)a3;
+ (id)materialDescription:(unint64_t)a3;
+ (id)materialKeyColorForMaterial:(unint64_t)a3;
+ (id)resourceString:(id)a3 material:(unint64_t)a4 size:(unint64_t)a5 forAttributes:(unint64_t)a6;
+ (id)sharedDeviceController;
+ (id)sizeDescription:(unint64_t)a3;
+ (id)stingMaterialDescription:(unint64_t)a3;
+ (unint64_t)_materialForCLHSValue:(unint64_t)a3;
+ (unint64_t)materialFromDevice:(id)a3;
+ (unint64_t)materialFromPdrDevice:(id)a3;
+ (unint64_t)sizeFromDevice:(id)a3;
+ (unint64_t)sizeFromPdrDevice:(id)a3;
+ (unsigned)sizeFromInternalSize:(unint64_t)a3;
- (BOOL)hasTwoYearWarranty;
- (PBBridgeWatchAttributeController)init;
- (PDRDevice)pdrDevice;
- (id)attributesDescription;
- (id)getGestaltDmin;
- (id)resourceString:(id)a3 forAttributes:(unint64_t)a4;
- (unint64_t)fallbackMaterialForSize:(unint64_t)a3;
- (void)_populateMaterialDetailsWithDMinProperties:(id)a3;
- (void)_setMaterialWithCLHSValue:(unint64_t)a3;
- (void)setDevice:(id)a3;
- (void)setInternalSize:(unint64_t)a3;
- (void)setMaterial:(unint64_t)a3;
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

- (void)_populateMaterialDetailsWithDMinProperties:(id)a3
{
  v6 = [a3 objectForKey:&unk_286FB4178];
  v4 = [v6 integerValue];
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
      v6 = [v5 integerValue];
      v7 = pbb_setup_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "Device is CLHS Type", buf, 2u);
        }

        [(PBBridgeWatchAttributeController *)v2 _setMaterialWithCLHSValue:v6];
      }

      else
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "Device is DMin Type", buf, 2u);
        }

        v9 = [(PBBridgeWatchAttributeController *)v2 getGestaltDmin];
        [(PBBridgeWatchAttributeController *)v2 _populateMaterialDetailsWithDMinProperties:v9];
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
                  v30 = [(PBBridgeWatchAttributeController *)v2 attributesDescription];
                  *buf = 138412290;
                  v35 = v30;
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
              [PBBridgeCAReporter recordMaterial:v6 andSize:?];
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

  v4 = [(PBBridgeWatchAttributeController *)self edition];
  v5 = [(PBBridgeWatchAttributeController *)self hardwareBehavior];
  v6 = [(PBBridgeWatchAttributeController *)self material]& 0xFFFFFFFFFFFFFFFELL;
  return v4 == 3 || v5 == 1 || v6 == 10;
}

- (void)setDevice:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_device != v4)
  {
    [(NSCache *)self->_stringCache removeAllObjects];
    v5 = objc_alloc_init(MEMORY[0x277CBEA78]);
    stringCache = self->_stringCache;
    self->_stringCache = v5;

    v7 = [(NRDevice *)v4 valueForProperty:*MEMORY[0x277D2BAD8]];
    v8 = [(NRDevice *)v4 valueForProperty:*MEMORY[0x277D2BAC0]];
    v9 = [v8 intValue];

    v10 = [(NRDevice *)v4 valueForProperty:*MEMORY[0x277D2BAC8]];
    v11 = [v10 integerValue];
    v12 = pbb_setup_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        LOWORD(v29) = 0;
        _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "Device is CLHS Type", &v29, 2u);
      }

      [(PBBridgeWatchAttributeController *)self _setMaterialWithCLHSValue:v11];
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

    self->_hardwareBehavior = v9;
    v14 = [(NRDevice *)v4 valueForProperty:*MEMORY[0x277D2BA80]];
    if (MGGetBoolAnswer() && v14)
    {
      v15 = [v14 objectForKeyedSubscript:@"ArtworkDeviceSubType"];
      [v15 unsignedIntegerValue];
      v16 = NRDeviceSizeForArtworkDeviceSubType();
    }

    else
    {
      v15 = [(NRDevice *)v4 valueForProperty:*MEMORY[0x277D2BBC0]];
      v16 = NRDeviceSizeForProductType();
    }

    if (v16 > 5)
    {
      v17 = 20;
      if (v9 == 1)
      {
        v17 = 22;
      }

      v21 = 21;
      if (v9 == 1)
      {
        v21 = 23;
      }

      v22 = 25;
      if (v9 == 1)
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
      if (v9 == 2)
      {
        v23 = 17;
      }

      if (v9 == 1)
      {
        v23 = 15;
      }

      v24 = 19;
      if (v9 == 1)
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
        if (v9 != 2)
        {
          v17 = 1;
        }

        if (v9 == 1)
        {
          v17 = 3;
        }

        v18 = 2;
        if (v9 == 2)
        {
          v18 = 6;
        }

        if (v9 == 1)
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
        if (v9 == 2)
        {
          v17 = 11;
        }

        if (v9 == 1)
        {
          v17 = 9;
        }

        v18 = 8;
        if (v9 == 2)
        {
          v18 = 12;
        }

        if (v9 == 1)
        {
          v18 = 10;
        }

        v19 = 14;
        if (v9 == 2)
        {
          v19 = 18;
        }

        if (v9 == 1)
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
      v26 = [(PBBridgeWatchAttributeController *)self attributesDescription];
      v29 = 138543362;
      v30 = v26;
      _os_log_impl(&dword_25DE64000, v25, OS_LOG_TYPE_DEFAULT, "Populating With Device: %{public}@", &v29, 0xCu);
    }
  }

  device = self->_device;
  self->_device = v4;

  v28 = *MEMORY[0x277D85DE8];
}

- (PDRDevice)pdrDevice
{
  device = self->_device;
  if (device)
  {
    v3 = [(NRDevice *)device pairingID];
    v4 = [MEMORY[0x277D37B50] sharedInstance];
    v5 = [v4 deviceForPairingID:v3];
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

+ (id)stingMaterialDescription:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"Color-2022";
  }

  else
  {
    return 0;
  }
}

+ (id)materialDescription:(unint64_t)a3
{
  if (a3 - 1 > 0x25)
  {
    return @"Generic";
  }

  else
  {
    return off_2799F3F28[a3 - 1];
  }
}

+ (id)sizeDescription:(unint64_t)a3
{
  if (a3 > 0x1A)
  {
    return 0;
  }

  else
  {
    return off_2799F4058[a3];
  }
}

+ (id)hwBehaviorDescription:(unint64_t)a3
{
  v3 = @"Default";
  if (a3 == 2)
  {
    v3 = @"Nike+";
  }

  if (a3 == 1)
  {
    return @"Hermès";
  }

  else
  {
    return v3;
  }
}

+ (id)resourceString:(id)a3 material:(unint64_t)a4 size:(unint64_t)a5 forAttributes:(unint64_t)a6
{
  v6 = a6;
  v20 = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CCAB68] stringWithString:a3];
  v10 = v9;
  if ((v6 & 2) != 0)
  {
    v11 = a4 - 1;
    if (a4 - 1 >= 0x26)
    {
      v13 = @"-M3";
      goto LABEL_10;
    }

    v12 = off_2799F4260;
  }

  else
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

    v11 = a4 - 5;
    if (a4 - 5 >= 0x22)
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
  if ((v6 & 4) != 0)
  {
    if (a5 - 1 > 0x19)
    {
      v14 = @"-448h";
    }

    else
    {
      v14 = off_2799F4390[a5 - 1];
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

+ (id)editionDescription:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"Sport";
  }

  else
  {
    return off_2799F4240[a3];
  }
}

- (id)resourceString:(id)a3 forAttributes:(unint64_t)a4
{
  v4 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
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

  v9 = [(NSCache *)self->_stringCache objectForKey:v6];
  if (!v9)
  {
    v10 = [MEMORY[0x277CCAB68] stringWithString:v6];
    v9 = v10;
    if ((v4 & 2) != 0)
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
      if ((v4 & 1) == 0)
      {
LABEL_17:
        if ((v4 & 4) != 0)
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

        [(NSCache *)self->_stringCache setObject:v9 forKey:v6];
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

+ (id)materialKeyColorForMaterial:(unint64_t)a3
{
  switch(a3)
  {
    case 0x14uLL:
      v6 = [MEMORY[0x277D75348] systemOrangeColor];
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
      v6 = [MEMORY[0x277D75348] colorWithRed:v3 green:v4 blue:v5 alpha:1.0];
      break;
    default:
      v6 = [MEMORY[0x277D75348] whiteColor];
      break;
  }

  return v6;
}

- (unint64_t)fallbackMaterialForSize:(unint64_t)a3
{
  v3 = 3;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0x14)
  {
    v3 = 22;
  }

  if (a3 == 25)
  {
    v3 = 14;
  }

  if (a3 == 19)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

- (void)setInternalSize:(unint64_t)a3
{
  self->_internalSize = a3;
  if (a3 - 3 > 0x15)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_25DEB4B08[a3 - 3];
  }

  self->_hardwareBehavior = v3;
}

- (void)setMaterial:(unint64_t)a3
{
  self->_material = a3;
  if (a3 - 1 > 0x25)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_25DEB4D30[a3 - 1];
  }

  self->_edition = v3;
}

+ (unint64_t)materialFromDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForProperty:*MEMORY[0x277D2BAC8]];
  v6 = [v5 integerValue];
  if (v6)
  {
    v7 = [a1 _materialForCLHSValue:v6];
  }

  else
  {
    v8 = [v4 valueForProperty:*MEMORY[0x277D2BAD8]];
    v9 = [v8 objectForKeyedSubscript:&unk_286FB4178];
    v7 = [v9 integerValue];
  }

  return v7;
}

+ (unint64_t)sizeFromDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForProperty:*MEMORY[0x277D2BAC0]];
  v5 = [v4 intValue];

  v6 = [v3 valueForProperty:*MEMORY[0x277D2BA80]];
  if (MGGetBoolAnswer() && v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"ArtworkDeviceSubType"];
    [v7 unsignedIntegerValue];
    v8 = NRDeviceSizeForArtworkDeviceSubType();
  }

  else
  {
    v7 = [v3 valueForProperty:*MEMORY[0x277D2BBC0]];
    v8 = NRDeviceSizeForProductType();
  }

  if (v8 > 5)
  {
    v13 = 20;
    if (v5 == 1)
    {
      v13 = 22;
    }

    v14 = 21;
    if (v5 == 1)
    {
      v14 = 23;
    }

    v15 = 25;
    if (v5 == 1)
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
    if (v5 == 2)
    {
      v16 = 17;
    }

    if (v5 == 1)
    {
      v16 = 15;
    }

    v17 = 19;
    if (v5 == 1)
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
      if (v5 != 2)
      {
        v9 = 1;
      }

      if (v5 == 1)
      {
        v9 = 3;
      }

      v10 = 2;
      if (v5 == 2)
      {
        v10 = 6;
      }

      if (v5 == 1)
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
      if (v5 == 2)
      {
        v9 = 11;
      }

      if (v5 == 1)
      {
        v9 = 9;
      }

      v10 = 8;
      if (v5 == 2)
      {
        v10 = 12;
      }

      if (v5 == 1)
      {
        v10 = 10;
      }

      v11 = 14;
      if (v5 == 2)
      {
        v11 = 18;
      }

      if (v5 == 1)
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

+ (unint64_t)materialFromPdrDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForProperty:*MEMORY[0x277D37B80]];
  v6 = [v5 integerValue];
  if (v6)
  {
    v7 = [a1 _materialForCLHSValue:v6];
  }

  else
  {
    v8 = [v4 valueForProperty:*MEMORY[0x277D37B90]];
    v9 = [v8 objectForKeyedSubscript:&unk_286FB4178];
    v7 = [v9 integerValue];
  }

  return v7;
}

+ (unint64_t)sizeFromPdrDevice:(id)a3
{
  v3 = *MEMORY[0x277D37B78];
  v4 = a3;
  v5 = [v4 valueForProperty:v3];
  v6 = [v5 intValue];

  v7 = [v4 valueForProperty:*MEMORY[0x277D37BE8]];

  v8 = NRDeviceSizeForProductType();
  if (v8 > 5)
  {
    v13 = 20;
    if (v6 == 1)
    {
      v13 = 22;
    }

    v14 = 21;
    if (v6 == 1)
    {
      v14 = 23;
    }

    v15 = 25;
    if (v6 == 1)
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
    if (v6 == 2)
    {
      v16 = 17;
    }

    if (v6 == 1)
    {
      v16 = 15;
    }

    v17 = 19;
    if (v6 == 1)
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
      if (v6 != 2)
      {
        v9 = 1;
      }

      if (v6 == 1)
      {
        v9 = 3;
      }

      v10 = 2;
      if (v6 == 2)
      {
        v10 = 6;
      }

      if (v6 == 1)
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
      if (v6 == 2)
      {
        v9 = 11;
      }

      if (v6 == 1)
      {
        v9 = 9;
      }

      v10 = 8;
      if (v6 == 2)
      {
        v10 = 12;
      }

      if (v6 == 1)
      {
        v10 = 10;
      }

      v11 = 14;
      if (v6 == 2)
      {
        v11 = 18;
      }

      if (v6 == 1)
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

+ (unsigned)sizeFromInternalSize:(unint64_t)a3
{
  if (a3 - 1 > 0x19)
  {
    return 0;
  }

  else
  {
    return word_25DEB4BB8[a3 - 1];
  }
}

+ (unint64_t)_materialForCLHSValue:(unint64_t)a3
{
  if (a3 - 2 > 0x27)
  {
    return 3;
  }

  else
  {
    return qword_25DEB4BF0[a3 - 2];
  }
}

- (void)_setMaterialWithCLHSValue:(unint64_t)a3
{
  v4 = [PBBridgeWatchAttributeController _materialForCLHSValue:a3];
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