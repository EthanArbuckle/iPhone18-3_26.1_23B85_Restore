@interface NDODevice
+ (NDODevice)deviceWithCBDevice:(id)a3 isVisibleInCC:(BOOL)a4;
+ (NDODevice)deviceWithDeviceListDevice:(id)a3;
+ (NDODevice)deviceWithName:(id)a3 serialNumber:(id)a4 activationDate:(id)a5 deviceType:(unint64_t)a6;
+ (NDODevice)deviceWithName:(id)a3 serialNumber:(id)a4 activationDate:(id)a5 deviceType:(unint64_t)a6 productID:(id)a7 productName:(id)a8;
+ (NDODevice)deviceWithName:(id)a3 serialNumber:(id)a4 activationDate:(id)a5 deviceType:(unint64_t)a6 productID:(id)a7 productName:(id)a8 color:(id)a9 enclosureColor:(id)a10 coverGlassColor:(id)a11;
+ (NDODevice)deviceWithName:(id)a3 serialNumber:(id)a4 activationDate:(id)a5 deviceType:(unint64_t)a6 productID:(id)a7 productName:(id)a8 isVisibleInCC:(BOOL)a9;
- (NDODevice)initWithCoder:(id)a3;
- (NDODevice)initWithName:(id)a3 serialNumber:(id)a4 activationDate:(id)a5 deviceType:(unint64_t)a6 productID:(id)a7 productName:(id)a8 color:(id)a9 enclosureColor:(id)a10 coverGlassColor:(id)a11 isVisibleInCC:(BOOL)a12 cachingPolicy:(BOOL)a13;
- (NSString)description;
- (NSString)sourceFromDeviceType;
- (id)deviceTypeString;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithWarranty:(id)a3;
@end

@implementation NDODevice

+ (NDODevice)deviceWithName:(id)a3 serialNumber:(id)a4 activationDate:(id)a5 deviceType:(unint64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  LOWORD(v15) = 257;
  v13 = [[a1 alloc] initWithName:v12 serialNumber:v11 activationDate:v10 deviceType:a6 productID:0 productName:0 color:0 enclosureColor:0 coverGlassColor:0 isVisibleInCC:v15 cachingPolicy:?];

  return v13;
}

+ (NDODevice)deviceWithName:(id)a3 serialNumber:(id)a4 activationDate:(id)a5 deviceType:(unint64_t)a6 productID:(id)a7 productName:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  LOWORD(v21) = 257;
  v19 = [[a1 alloc] initWithName:v18 serialNumber:v17 activationDate:v16 deviceType:a6 productID:v15 productName:v14 color:0 enclosureColor:0 coverGlassColor:0 isVisibleInCC:v21 cachingPolicy:?];

  return v19;
}

+ (NDODevice)deviceWithName:(id)a3 serialNumber:(id)a4 activationDate:(id)a5 deviceType:(unint64_t)a6 productID:(id)a7 productName:(id)a8 color:(id)a9 enclosureColor:(id)a10 coverGlassColor:(id)a11
{
  v18 = a11;
  v19 = a10;
  v20 = a9;
  v21 = a8;
  v22 = a7;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  LOWORD(v28) = 257;
  v26 = [[a1 alloc] initWithName:v25 serialNumber:v24 activationDate:v23 deviceType:a6 productID:v22 productName:v21 color:v20 enclosureColor:v19 coverGlassColor:v18 isVisibleInCC:v28 cachingPolicy:?];

  return v26;
}

+ (NDODevice)deviceWithName:(id)a3 serialNumber:(id)a4 activationDate:(id)a5 deviceType:(unint64_t)a6 productID:(id)a7 productName:(id)a8 isVisibleInCC:(BOOL)a9
{
  v15 = a8;
  v16 = a7;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  BYTE1(v22) = 1;
  LOBYTE(v22) = a9;
  v20 = [[a1 alloc] initWithName:v19 serialNumber:v18 activationDate:v17 deviceType:a6 productID:v16 productName:v15 color:0 enclosureColor:0 coverGlassColor:0 isVisibleInCC:v22 cachingPolicy:?];

  return v20;
}

- (NDODevice)initWithName:(id)a3 serialNumber:(id)a4 activationDate:(id)a5 deviceType:(unint64_t)a6 productID:(id)a7 productName:(id)a8 color:(id)a9 enclosureColor:(id)a10 coverGlassColor:(id)a11 isVisibleInCC:(BOOL)a12 cachingPolicy:(BOOL)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v30.receiver = self;
  v30.super_class = NDODevice;
  v26 = [(NDODevice *)&v30 init];
  v27 = v26;
  if (v26)
  {
    [(NDODevice *)v26 setName:v18];
    [(NDODevice *)v27 setSerialNumber:v19];
    [(NDODevice *)v27 setDeviceType:a6];
    [(NDODevice *)v27 setActivationDate:v20];
    [(NDODevice *)v27 setProductID:v21];
    [(NDODevice *)v27 setProductName:v22];
    [(NDODevice *)v27 setColor:v23];
    [(NDODevice *)v27 setEnclosureColor:v24];
    [(NDODevice *)v27 setCoverGlassColor:v25];
    [(NDODevice *)v27 setIsVisibleInCC:a12];
    [(NDODevice *)v27 setCachingPolicy:a13];
  }

  return v27;
}

+ (NDODevice)deviceWithDeviceListDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"coverageInfo"];
  v5 = [v3 objectForKeyedSubscript:@"deviceInfo"];
  v6 = [v3 objectForKeyedSubscript:@"deviceType"];
  if ([v6 isEqualToString:@"APPLE_ID"])
  {
    v7 = 2;
  }

  else if ([v6 isEqualToString:@"PRIMARY"])
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  v8 = [v3 objectForKeyedSubscript:@"cachePolicy"];
  v9 = [v8 isEqualToString:@"NO_CACHE"];

  v10 = [v5 objectForKeyedSubscript:@"nickName"];
  if (![v10 length])
  {
    v11 = [v5 objectForKeyedSubscript:@"deviceDesc"];

    v10 = v11;
  }

  v12 = [NDODevice alloc];
  v13 = [v5 objectForKeyedSubscript:@"serialNumber"];
  v14 = [v5 objectForKeyedSubscript:@"deviceDesc"];
  BYTE1(v30) = v9 ^ 1;
  LOBYTE(v30) = 1;
  v15 = [(NDODevice *)v12 initWithName:v10 serialNumber:v13 activationDate:0 deviceType:v7 productID:0 productName:v14 color:0 enclosureColor:0 coverGlassColor:0 isVisibleInCC:v30 cachingPolicy:?];

  v16 = [v4 objectForKeyedSubscript:@"acOfferEligible"];
  -[NDODevice setAcOfferEligible:](v15, "setAcOfferEligible:", [v16 BOOLValue]);

  v17 = [v4 objectForKeyedSubscript:@"acOfferEligibleUntil"];
  v18 = [NDOUtilities dateWithEpochNumber:v17];
  [(NDODevice *)v15 setAcOfferEligibleUntil:v18];

  v19 = [v4 objectForKeyedSubscript:@"covered"];
  -[NDODevice setCovered:](v15, "setCovered:", [v19 BOOLValue]);

  v20 = [v4 objectForKeyedSubscript:@"coverageLocalizedLabel"];
  [(NDODevice *)v15 setCoverageLocalizedLabel:v20];

  v21 = [v4 objectForKeyedSubscript:@"acLocalizedOfferStatusLabel"];
  [(NDODevice *)v15 setAcLocalizedOfferStatusLabel:v21];

  v22 = [v4 objectForKeyedSubscript:@"acLocalizedUnlinkedPlanStatusLabel"];
  [(NDODevice *)v15 setAcLocalizedUnlinkedPlanStatusLabel:v22];

  v23 = [v5 objectForKeyedSubscript:@"deviceImageUrl"];
  [(NDODevice *)v15 setDeviceImageUrl:v23];

  v24 = [v5 objectForKeyedSubscript:@"deviceDesc"];
  [(NDODevice *)v15 setDeviceDesc:v24];

  v25 = [v5 objectForKeyedSubscript:@"sgId"];
  [(NDODevice *)v15 setSgId:v25];

  v26 = [v5 objectForKeyedSubscript:@"pfcId"];
  [(NDODevice *)v15 setPfcId:v26];

  v27 = [v5 objectForKeyedSubscript:@"pgfId"];
  [(NDODevice *)v15 setPgfId:v27];

  v28 = [v5 objectForKeyedSubscript:@"parentId"];
  [(NDODevice *)v15 setParentId:v28];

  return v15;
}

+ (NDODevice)deviceWithCBDevice:(id)a3 isVisibleInCC:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 name];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
LABEL_3:
    v9 = v8;
    goto LABEL_54;
  }

  v10 = [v5 productID];
  v11 = v10;
  if (v10 <= 619)
  {
    if (v10 > 569)
    {
      if (v10 > 598)
      {
        if (v10 > 614)
        {
          if (v10 == 615)
          {
            goto LABEL_86;
          }

          if (v10 != 617)
          {
            goto LABEL_141;
          }

          goto LABEL_90;
        }

        if (v10 != 599)
        {
          if (v10 != 613)
          {
            goto LABEL_141;
          }

          goto LABEL_89;
        }
      }

      else if (v10 <= 596 && v10 != 570 && v10 != 571)
      {
        goto LABEL_141;
      }
    }

    else if (v10 > 555)
    {
      if (v10 > 558 && v10 != 569)
      {
        goto LABEL_141;
      }
    }

    else if (v10 > 520)
    {
      if (v10 != 521 && v10 != 522)
      {
        goto LABEL_141;
      }
    }

    else
    {
      if (!v10)
      {
LABEL_64:
        [v5 deviceType];
        v8 = CBDeviceTypeToNSLocalizedString();
        goto LABEL_3;
      }

      if (v10 != 520)
      {
        goto LABEL_141;
      }
    }

    v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v14 = v13;
    v15 = @"apple_wireless_keyboard";
    goto LABEL_52;
  }

  if (v10 <= 799)
  {
    if (v10 > 776)
    {
      if (v10 <= 780)
      {
        if (v10 == 777)
        {
          v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v14 = v13;
          v15 = @"apple_wireless_mouse";
          goto LABEL_52;
        }

        if (v10 != 780)
        {
          goto LABEL_141;
        }

        v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v14 = v13;
        v15 = @"apple_mighty_mouse";
LABEL_52:
        v16 = [v13 localizedStringForKey:v15 value:&stru_286D686B8 table:@"CBLocalizable"];
        goto LABEL_53;
      }

      if (v10 != 781)
      {
        if (v10 != 782)
        {
          goto LABEL_141;
        }

        goto LABEL_89;
      }

      goto LABEL_90;
    }

    if (v10 <= 667)
    {
      if (v10 == 620)
      {
        v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v14 = v13;
        v15 = @"apple_magic_keyboard_keypad";
        goto LABEL_52;
      }

      if (v10 != 666)
      {
        goto LABEL_141;
      }

      goto LABEL_29;
    }

    if (v10 == 668)
    {
LABEL_86:
      v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
      v14 = v13;
      v15 = @"apple_magic_keyboard";
      goto LABEL_52;
    }

    if (v10 != 671)
    {
      goto LABEL_141;
    }

    goto LABEL_85;
  }

  if (v10 <= 803)
  {
    if (v10 <= 801)
    {
      if (v10 != 800)
      {
LABEL_29:
        v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v14 = v13;
        v15 = @"apple_magic_keyboard_touch";
        goto LABEL_52;
      }

      goto LABEL_86;
    }

    if (v10 != 802)
    {
LABEL_90:
      v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
      v14 = v13;
      v15 = @"apple_magic_mouse";
      goto LABEL_52;
    }

LABEL_85:
    v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v14 = v13;
    v15 = @"apple_magic_keyboard_touch_keypad";
    goto LABEL_52;
  }

  if (v10 <= 8215)
  {
    if (v10 != 804)
    {
      v12 = 8213;
      goto LABEL_44;
    }

LABEL_89:
    v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v14 = v13;
    v15 = @"apple_magic_trackpad";
    goto LABEL_52;
  }

  if (v10 == 8216 || v10 == 8220)
  {
    goto LABEL_45;
  }

  v12 = 8233;
LABEL_44:
  if (v10 == v12)
  {
LABEL_45:
    v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v14 = v13;
    v15 = @"apple_airpods_case";
    goto LABEL_52;
  }

LABEL_141:
  v14 = [MEMORY[0x277CBE070] productInfoWithProductID:v10];
  v16 = [v14 productName];
LABEL_53:
  v9 = v16;

  if (!v9)
  {
    goto LABEL_64;
  }

LABEL_54:

  v17 = [v5 serialNumber];
  v18 = MEMORY[0x277CCACA8];
  v19 = [v5 productID];
  if (v19 > 21759)
  {
    if (v19 > 28943)
    {
      if (v19 <= 29714)
      {
        if (v19 == 28944)
        {
          v20 = "AudioAccessory1,2";
          goto LABEL_134;
        }

        if (v19 == 29455)
        {
          v20 = "AppleTV11,1";
          goto LABEL_134;
        }
      }

      else
      {
        switch(v19)
        {
          case 29715:
            v20 = "AudioAccessory5,1";
            goto LABEL_134;
          case 65533:
            v20 = "HeGn";
            goto LABEL_134;
          case 65534:
            v20 = "ApGn";
            goto LABEL_134;
        }
      }
    }

    else if (v19 <= 28419)
    {
      if (v19 == 21760)
      {
        v20 = "Device1,21760";
        goto LABEL_134;
      }

      if (v19 == 22034)
      {
        v20 = "Device1,22034";
        goto LABEL_134;
      }
    }

    else
    {
      switch(v19)
      {
        case 28420:
          v20 = "AppleTV5,3";
          goto LABEL_134;
        case 28936:
          v20 = "AppleTV6,2";
          goto LABEL_134;
        case 28943:
          v20 = "AudioAccessory1,1";
          goto LABEL_134;
      }
    }

LABEL_133:
    v20 = "?";
    goto LABEL_134;
  }

  if (v19 <= 8193)
  {
    switch(v19)
    {
      case 0:
        v20 = "Invalid";
        goto LABEL_134;
      case 614:
        v20 = "ATVRemote1,1";
        goto LABEL_134;
      case 621:
        v20 = "ATVRemote1,2";
        goto LABEL_134;
    }

    goto LABEL_133;
  }

  switch(v19)
  {
    case 8194:
      v20 = "AirPods1,1";
      break;
    case 8195:
      v20 = "PowerBeats3,1";
      break;
    case 8197:
      v20 = "BeatsX1,1";
      break;
    case 8198:
      v20 = "BeatsSolo3,1";
      break;
    case 8201:
      v20 = "BeatsStudio3,2";
      break;
    case 8202:
      v20 = "Device1,8202";
      break;
    case 8203:
      v20 = "PowerbeatsPro1,1";
      break;
    case 8204:
      v20 = "BeatsSoloPro1,1";
      break;
    case 8205:
      v20 = "Powerbeats4,1";
      break;
    case 8206:
      v20 = "AirPodsPro1,1";
      break;
    case 8207:
      v20 = "AirPods1,3";
      break;
    case 8208:
      v20 = "Device1,8208";
      break;
    case 8209:
      v20 = "BeatsStudioBuds1,1";
      break;
    case 8210:
      v20 = "Device1,8210";
      break;
    case 8211:
      v20 = "Device1,8211";
      break;
    case 8212:
      v20 = "Device1,8212";
      break;
    case 8213:
      v20 = "Device1,8213";
      break;
    case 8214:
      v20 = "BeatsStudioBuds1,2";
      break;
    case 8215:
      v20 = "BeatsStudioPro1,1";
      break;
    case 8216:
      v20 = "Device1,8216";
      break;
    case 8217:
      v20 = "Device1,8217";
      break;
    case 8218:
      v20 = "Device1,8218";
      break;
    case 8219:
      v20 = "Device1,8219";
      break;
    case 8220:
      v20 = "Device1,8220";
      break;
    case 8221:
      v20 = "Powerb3,1";
      break;
    case 8222:
      v20 = "Device1,8222";
      break;
    case 8223:
      v20 = "Device1,8223";
      break;
    case 8224:
      v20 = "Device1,8224";
      break;
    case 8228:
      v20 = "Device1,8228";
      break;
    case 8229:
      v20 = "Device1,8229";
      break;
    case 8230:
      v20 = "Device1,8230";
      break;
    case 8231:
      v20 = "AirPods3,4";
      break;
    case 8232:
      v20 = "Device1,8232";
      break;
    case 8233:
      v20 = "Device1,8233";
      break;
    case 8239:
      v20 = "Device1,8239";
      break;
    default:
      goto LABEL_133;
  }

LABEL_134:
  v21 = [v18 stringWithUTF8String:v20];
  v22 = [v5 productName];
  LOBYTE(v26) = a4;
  v23 = [NDODevice deviceWithName:v9 serialNumber:v17 activationDate:0 deviceType:3 productID:v21 productName:v22 isVisibleInCC:v26];

  if ([v5 colorCodeBest])
  {
    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%hhu", objc_msgSend(v5, "colorCodeBest")];
    [v23 setColor:v24];
  }

  return v23;
}

- (NSString)sourceFromDeviceType
{
  v2 = [(NDODevice *)self deviceType];
  if (v2 - 1 > 3)
  {
    return @"DEFAULT";
  }

  else
  {
    return &off_2799762B0[v2 - 1]->isa;
  }
}

- (id)deviceTypeString
{
  v2 = [(NDODevice *)self deviceType];
  if (v2 - 1 > 3)
  {
    return @"Default";
  }

  else
  {
    return off_2799762D0[v2 - 1];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NDODevice *)self name];
  v5 = [(NDODevice *)self serialNumber];
  v6 = [(NDODevice *)self activationDate];
  v7 = [(NDODevice *)self deviceTypeString];
  v8 = [(NDODevice *)self productID];
  v9 = [(NDODevice *)self productName];
  v10 = [v3 stringWithFormat:@"%@ :: (%@) :: (%@) :: %@ - %@ :: (%@) :: %d", v4, v5, v6, v7, v8, v9, -[NDODevice isVisibleInCC](self, "isVisibleInCC")];

  return v10;
}

- (void)updateWithWarranty:(id)a3
{
  v9 = a3;
  -[NDODevice setAcOfferEligible:](self, "setAcOfferEligible:", [v9 acOfferEligible]);
  -[NDODevice setCovered:](self, "setCovered:", [v9 covered]);
  v4 = [v9 coverageLocalizedLabel];
  [(NDODevice *)self setCoverageLocalizedLabel:v4];

  v5 = [v9 acLocalizedOfferStatusLabel];
  [(NDODevice *)self setAcLocalizedOfferStatusLabel:v5];

  v6 = [v9 acLocalizedUnlinkedPlanStatusLabel];
  [(NDODevice *)self setAcLocalizedUnlinkedPlanStatusLabel:v6];

  v7 = [(NDODevice *)self deviceImageUrl];

  if (!v7)
  {
    v8 = [v9 deviceImageUrl];
    [(NDODevice *)self setDeviceImageUrl:v8];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NDODevice *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(NDODevice *)self serialNumber];
  [v4 encodeObject:v6 forKey:@"serialNumber"];

  v7 = [(NDODevice *)self activationDate];
  [v4 encodeObject:v7 forKey:@"activationDate"];

  [v4 encodeInteger:-[NDODevice deviceType](self forKey:{"deviceType"), @"deviceType"}];
  v8 = [(NDODevice *)self color];
  [v4 encodeObject:v8 forKey:@"color"];

  v9 = [(NDODevice *)self enclosureColor];
  [v4 encodeObject:v9 forKey:@"enclosureColor"];

  v10 = [(NDODevice *)self coverGlassColor];
  [v4 encodeObject:v10 forKey:@"coverGlassColor"];

  v11 = [(NDODevice *)self productID];
  [v4 encodeObject:v11 forKey:@"productID"];

  v12 = [(NDODevice *)self productName];
  [v4 encodeObject:v12 forKey:@"productName"];

  [v4 encodeBool:-[NDODevice isActiveWatch](self forKey:{"isActiveWatch"), @"isActiveWatch"}];
  [v4 encodeBool:-[NDODevice isVisibleInCC](self forKey:{"isVisibleInCC"), @"isVisibleInCC"}];
  [v4 encodeBool:-[NDODevice acOfferEligible](self forKey:{"acOfferEligible"), @"acOfferEligible"}];
  [v4 encodeBool:-[NDODevice covered](self forKey:{"covered"), @"covered"}];
  v13 = [(NDODevice *)self coverageLocalizedLabel];
  [v4 encodeObject:v13 forKey:@"coverageLocalizedLabel"];

  v14 = [(NDODevice *)self acLocalizedOfferStatusLabel];
  [v4 encodeObject:v14 forKey:@"acLocalizedOfferStatusLabel"];

  v15 = [(NDODevice *)self acLocalizedUnlinkedPlanStatusLabel];
  [v4 encodeObject:v15 forKey:@"acLocalizedUnlinkedPlanStatusLabel"];

  v16 = [(NDODevice *)self deviceImageUrl];
  [v4 encodeObject:v16 forKey:@"deviceImageUrl"];

  v17 = [(NDODevice *)self deviceDesc];
  [v4 encodeObject:v17 forKey:@"deviceDesc"];

  v18 = [(NDODevice *)self sgId];
  [v4 encodeObject:v18 forKey:@"sgId"];

  v19 = [(NDODevice *)self pfcId];
  [v4 encodeObject:v19 forKey:@"pfcId"];

  v20 = [(NDODevice *)self pgfId];
  [v4 encodeObject:v20 forKey:@"pgfId"];

  v21 = [(NDODevice *)self parentId];
  [v4 encodeObject:v21 forKey:@"parentId"];

  v22 = [(NDODevice *)self acOfferEligibleUntil];
  [v4 encodeObject:v22 forKey:@"acOfferEligibleUntil"];
}

- (NDODevice)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = NDODevice;
  v5 = [(NDODevice *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(NDODevice *)v5 setName:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    [(NDODevice *)v5 setSerialNumber:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activationDate"];
    [(NDODevice *)v5 setActivationDate:v8];

    -[NDODevice setDeviceType:](v5, "setDeviceType:", [v4 decodeIntegerForKey:@"deviceType"]);
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    [(NDODevice *)v5 setColor:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enclosureColor"];
    [(NDODevice *)v5 setEnclosureColor:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coverGlassColor"];
    [(NDODevice *)v5 setCoverGlassColor:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productID"];
    [(NDODevice *)v5 setProductID:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productName"];
    [(NDODevice *)v5 setProductName:v13];

    -[NDODevice setIsActiveWatch:](v5, "setIsActiveWatch:", [v4 decodeBoolForKey:@"isActiveWatch"]);
    -[NDODevice setIsVisibleInCC:](v5, "setIsVisibleInCC:", [v4 decodeBoolForKey:@"isVisibleInCC"]);
    -[NDODevice setAcOfferEligible:](v5, "setAcOfferEligible:", [v4 decodeBoolForKey:@"acOfferEligible"]);
    -[NDODevice setCovered:](v5, "setCovered:", [v4 decodeBoolForKey:@"covered"]);
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coverageLocalizedLabel"];
    [(NDODevice *)v5 setCoverageLocalizedLabel:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acLocalizedOfferStatusLabel"];
    [(NDODevice *)v5 setAcLocalizedOfferStatusLabel:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acLocalizedUnlinkedPlanStatusLabel"];
    [(NDODevice *)v5 setAcLocalizedUnlinkedPlanStatusLabel:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceImageUrl"];
    [(NDODevice *)v5 setDeviceImageUrl:v17];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceDesc"];
    [(NDODevice *)v5 setDeviceDesc:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sgId"];
    [(NDODevice *)v5 setSgId:v19];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pfcId"];
    [(NDODevice *)v5 setPfcId:v20];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pgfId"];
    [(NDODevice *)v5 setPgfId:v21];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentId"];
    [(NDODevice *)v5 setParentId:v22];

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"acOfferEligibleUntil"];
    [(NDODevice *)v5 setAcOfferEligibleUntil:v23];
  }

  return v5;
}

@end