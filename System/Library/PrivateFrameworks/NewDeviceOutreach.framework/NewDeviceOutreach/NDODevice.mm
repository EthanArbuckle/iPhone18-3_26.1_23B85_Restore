@interface NDODevice
+ (NDODevice)deviceWithCBDevice:(id)device isVisibleInCC:(BOOL)c;
+ (NDODevice)deviceWithDeviceListDevice:(id)device;
+ (NDODevice)deviceWithName:(id)name serialNumber:(id)number activationDate:(id)date deviceType:(unint64_t)type;
+ (NDODevice)deviceWithName:(id)name serialNumber:(id)number activationDate:(id)date deviceType:(unint64_t)type productID:(id)d productName:(id)productName;
+ (NDODevice)deviceWithName:(id)name serialNumber:(id)number activationDate:(id)date deviceType:(unint64_t)type productID:(id)d productName:(id)productName color:(id)color enclosureColor:(id)self0 coverGlassColor:(id)self1;
+ (NDODevice)deviceWithName:(id)name serialNumber:(id)number activationDate:(id)date deviceType:(unint64_t)type productID:(id)d productName:(id)productName isVisibleInCC:(BOOL)c;
- (NDODevice)initWithCoder:(id)coder;
- (NDODevice)initWithName:(id)name serialNumber:(id)number activationDate:(id)date deviceType:(unint64_t)type productID:(id)d productName:(id)productName color:(id)color enclosureColor:(id)self0 coverGlassColor:(id)self1 isVisibleInCC:(BOOL)self2 cachingPolicy:(BOOL)self3;
- (NSString)description;
- (NSString)sourceFromDeviceType;
- (id)deviceTypeString;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithWarranty:(id)warranty;
@end

@implementation NDODevice

+ (NDODevice)deviceWithName:(id)name serialNumber:(id)number activationDate:(id)date deviceType:(unint64_t)type
{
  dateCopy = date;
  numberCopy = number;
  nameCopy = name;
  LOWORD(v15) = 257;
  v13 = [[self alloc] initWithName:nameCopy serialNumber:numberCopy activationDate:dateCopy deviceType:type productID:0 productName:0 color:0 enclosureColor:0 coverGlassColor:0 isVisibleInCC:v15 cachingPolicy:?];

  return v13;
}

+ (NDODevice)deviceWithName:(id)name serialNumber:(id)number activationDate:(id)date deviceType:(unint64_t)type productID:(id)d productName:(id)productName
{
  productNameCopy = productName;
  dCopy = d;
  dateCopy = date;
  numberCopy = number;
  nameCopy = name;
  LOWORD(v21) = 257;
  v19 = [[self alloc] initWithName:nameCopy serialNumber:numberCopy activationDate:dateCopy deviceType:type productID:dCopy productName:productNameCopy color:0 enclosureColor:0 coverGlassColor:0 isVisibleInCC:v21 cachingPolicy:?];

  return v19;
}

+ (NDODevice)deviceWithName:(id)name serialNumber:(id)number activationDate:(id)date deviceType:(unint64_t)type productID:(id)d productName:(id)productName color:(id)color enclosureColor:(id)self0 coverGlassColor:(id)self1
{
  glassColorCopy = glassColor;
  enclosureColorCopy = enclosureColor;
  colorCopy = color;
  productNameCopy = productName;
  dCopy = d;
  dateCopy = date;
  numberCopy = number;
  nameCopy = name;
  LOWORD(v28) = 257;
  v26 = [[self alloc] initWithName:nameCopy serialNumber:numberCopy activationDate:dateCopy deviceType:type productID:dCopy productName:productNameCopy color:colorCopy enclosureColor:enclosureColorCopy coverGlassColor:glassColorCopy isVisibleInCC:v28 cachingPolicy:?];

  return v26;
}

+ (NDODevice)deviceWithName:(id)name serialNumber:(id)number activationDate:(id)date deviceType:(unint64_t)type productID:(id)d productName:(id)productName isVisibleInCC:(BOOL)c
{
  productNameCopy = productName;
  dCopy = d;
  dateCopy = date;
  numberCopy = number;
  nameCopy = name;
  BYTE1(v22) = 1;
  LOBYTE(v22) = c;
  v20 = [[self alloc] initWithName:nameCopy serialNumber:numberCopy activationDate:dateCopy deviceType:type productID:dCopy productName:productNameCopy color:0 enclosureColor:0 coverGlassColor:0 isVisibleInCC:v22 cachingPolicy:?];

  return v20;
}

- (NDODevice)initWithName:(id)name serialNumber:(id)number activationDate:(id)date deviceType:(unint64_t)type productID:(id)d productName:(id)productName color:(id)color enclosureColor:(id)self0 coverGlassColor:(id)self1 isVisibleInCC:(BOOL)self2 cachingPolicy:(BOOL)self3
{
  nameCopy = name;
  numberCopy = number;
  dateCopy = date;
  dCopy = d;
  productNameCopy = productName;
  colorCopy = color;
  enclosureColorCopy = enclosureColor;
  glassColorCopy = glassColor;
  v30.receiver = self;
  v30.super_class = NDODevice;
  v26 = [(NDODevice *)&v30 init];
  v27 = v26;
  if (v26)
  {
    [(NDODevice *)v26 setName:nameCopy];
    [(NDODevice *)v27 setSerialNumber:numberCopy];
    [(NDODevice *)v27 setDeviceType:type];
    [(NDODevice *)v27 setActivationDate:dateCopy];
    [(NDODevice *)v27 setProductID:dCopy];
    [(NDODevice *)v27 setProductName:productNameCopy];
    [(NDODevice *)v27 setColor:colorCopy];
    [(NDODevice *)v27 setEnclosureColor:enclosureColorCopy];
    [(NDODevice *)v27 setCoverGlassColor:glassColorCopy];
    [(NDODevice *)v27 setIsVisibleInCC:c];
    [(NDODevice *)v27 setCachingPolicy:policy];
  }

  return v27;
}

+ (NDODevice)deviceWithDeviceListDevice:(id)device
{
  deviceCopy = device;
  v4 = [deviceCopy objectForKeyedSubscript:@"coverageInfo"];
  v5 = [deviceCopy objectForKeyedSubscript:@"deviceInfo"];
  v6 = [deviceCopy objectForKeyedSubscript:@"deviceType"];
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

  v8 = [deviceCopy objectForKeyedSubscript:@"cachePolicy"];
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

+ (NDODevice)deviceWithCBDevice:(id)device isVisibleInCC:(BOOL)c
{
  deviceCopy = device;
  name = [deviceCopy name];
  v7 = name;
  if (name)
  {
    v8 = name;
LABEL_3:
    v9 = v8;
    goto LABEL_54;
  }

  productID = [deviceCopy productID];
  v11 = productID;
  if (productID <= 619)
  {
    if (productID > 569)
    {
      if (productID > 598)
      {
        if (productID > 614)
        {
          if (productID == 615)
          {
            goto LABEL_86;
          }

          if (productID != 617)
          {
            goto LABEL_141;
          }

          goto LABEL_90;
        }

        if (productID != 599)
        {
          if (productID != 613)
          {
            goto LABEL_141;
          }

          goto LABEL_89;
        }
      }

      else if (productID <= 596 && productID != 570 && productID != 571)
      {
        goto LABEL_141;
      }
    }

    else if (productID > 555)
    {
      if (productID > 558 && productID != 569)
      {
        goto LABEL_141;
      }
    }

    else if (productID > 520)
    {
      if (productID != 521 && productID != 522)
      {
        goto LABEL_141;
      }
    }

    else
    {
      if (!productID)
      {
LABEL_64:
        [deviceCopy deviceType];
        v8 = CBDeviceTypeToNSLocalizedString();
        goto LABEL_3;
      }

      if (productID != 520)
      {
        goto LABEL_141;
      }
    }

    v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v14 = v13;
    v15 = @"apple_wireless_keyboard";
    goto LABEL_52;
  }

  if (productID <= 799)
  {
    if (productID > 776)
    {
      if (productID <= 780)
      {
        if (productID == 777)
        {
          v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v14 = v13;
          v15 = @"apple_wireless_mouse";
          goto LABEL_52;
        }

        if (productID != 780)
        {
          goto LABEL_141;
        }

        v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v14 = v13;
        v15 = @"apple_mighty_mouse";
LABEL_52:
        productName = [v13 localizedStringForKey:v15 value:&stru_286D686B8 table:@"CBLocalizable"];
        goto LABEL_53;
      }

      if (productID != 781)
      {
        if (productID != 782)
        {
          goto LABEL_141;
        }

        goto LABEL_89;
      }

      goto LABEL_90;
    }

    if (productID <= 667)
    {
      if (productID == 620)
      {
        v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v14 = v13;
        v15 = @"apple_magic_keyboard_keypad";
        goto LABEL_52;
      }

      if (productID != 666)
      {
        goto LABEL_141;
      }

      goto LABEL_29;
    }

    if (productID == 668)
    {
LABEL_86:
      v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
      v14 = v13;
      v15 = @"apple_magic_keyboard";
      goto LABEL_52;
    }

    if (productID != 671)
    {
      goto LABEL_141;
    }

    goto LABEL_85;
  }

  if (productID <= 803)
  {
    if (productID <= 801)
    {
      if (productID != 800)
      {
LABEL_29:
        v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v14 = v13;
        v15 = @"apple_magic_keyboard_touch";
        goto LABEL_52;
      }

      goto LABEL_86;
    }

    if (productID != 802)
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

  if (productID <= 8215)
  {
    if (productID != 804)
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

  if (productID == 8216 || productID == 8220)
  {
    goto LABEL_45;
  }

  v12 = 8233;
LABEL_44:
  if (productID == v12)
  {
LABEL_45:
    v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v14 = v13;
    v15 = @"apple_airpods_case";
    goto LABEL_52;
  }

LABEL_141:
  v14 = [MEMORY[0x277CBE070] productInfoWithProductID:productID];
  productName = [v14 productName];
LABEL_53:
  v9 = productName;

  if (!v9)
  {
    goto LABEL_64;
  }

LABEL_54:

  serialNumber = [deviceCopy serialNumber];
  v18 = MEMORY[0x277CCACA8];
  productID2 = [deviceCopy productID];
  if (productID2 > 21759)
  {
    if (productID2 > 28943)
    {
      if (productID2 <= 29714)
      {
        if (productID2 == 28944)
        {
          v20 = "AudioAccessory1,2";
          goto LABEL_134;
        }

        if (productID2 == 29455)
        {
          v20 = "AppleTV11,1";
          goto LABEL_134;
        }
      }

      else
      {
        switch(productID2)
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

    else if (productID2 <= 28419)
    {
      if (productID2 == 21760)
      {
        v20 = "Device1,21760";
        goto LABEL_134;
      }

      if (productID2 == 22034)
      {
        v20 = "Device1,22034";
        goto LABEL_134;
      }
    }

    else
    {
      switch(productID2)
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

  if (productID2 <= 8193)
  {
    switch(productID2)
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

  switch(productID2)
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
  productName2 = [deviceCopy productName];
  LOBYTE(v26) = c;
  v23 = [NDODevice deviceWithName:v9 serialNumber:serialNumber activationDate:0 deviceType:3 productID:v21 productName:productName2 isVisibleInCC:v26];

  if ([deviceCopy colorCodeBest])
  {
    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%hhu", objc_msgSend(deviceCopy, "colorCodeBest")];
    [v23 setColor:v24];
  }

  return v23;
}

- (NSString)sourceFromDeviceType
{
  deviceType = [(NDODevice *)self deviceType];
  if (deviceType - 1 > 3)
  {
    return @"DEFAULT";
  }

  else
  {
    return &off_2799762B0[deviceType - 1]->isa;
  }
}

- (id)deviceTypeString
{
  deviceType = [(NDODevice *)self deviceType];
  if (deviceType - 1 > 3)
  {
    return @"Default";
  }

  else
  {
    return off_2799762D0[deviceType - 1];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(NDODevice *)self name];
  serialNumber = [(NDODevice *)self serialNumber];
  activationDate = [(NDODevice *)self activationDate];
  deviceTypeString = [(NDODevice *)self deviceTypeString];
  productID = [(NDODevice *)self productID];
  productName = [(NDODevice *)self productName];
  v10 = [v3 stringWithFormat:@"%@ :: (%@) :: (%@) :: %@ - %@ :: (%@) :: %d", name, serialNumber, activationDate, deviceTypeString, productID, productName, -[NDODevice isVisibleInCC](self, "isVisibleInCC")];

  return v10;
}

- (void)updateWithWarranty:(id)warranty
{
  warrantyCopy = warranty;
  -[NDODevice setAcOfferEligible:](self, "setAcOfferEligible:", [warrantyCopy acOfferEligible]);
  -[NDODevice setCovered:](self, "setCovered:", [warrantyCopy covered]);
  coverageLocalizedLabel = [warrantyCopy coverageLocalizedLabel];
  [(NDODevice *)self setCoverageLocalizedLabel:coverageLocalizedLabel];

  acLocalizedOfferStatusLabel = [warrantyCopy acLocalizedOfferStatusLabel];
  [(NDODevice *)self setAcLocalizedOfferStatusLabel:acLocalizedOfferStatusLabel];

  acLocalizedUnlinkedPlanStatusLabel = [warrantyCopy acLocalizedUnlinkedPlanStatusLabel];
  [(NDODevice *)self setAcLocalizedUnlinkedPlanStatusLabel:acLocalizedUnlinkedPlanStatusLabel];

  deviceImageUrl = [(NDODevice *)self deviceImageUrl];

  if (!deviceImageUrl)
  {
    deviceImageUrl2 = [warrantyCopy deviceImageUrl];
    [(NDODevice *)self setDeviceImageUrl:deviceImageUrl2];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(NDODevice *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  serialNumber = [(NDODevice *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"serialNumber"];

  activationDate = [(NDODevice *)self activationDate];
  [coderCopy encodeObject:activationDate forKey:@"activationDate"];

  [coderCopy encodeInteger:-[NDODevice deviceType](self forKey:{"deviceType"), @"deviceType"}];
  color = [(NDODevice *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  enclosureColor = [(NDODevice *)self enclosureColor];
  [coderCopy encodeObject:enclosureColor forKey:@"enclosureColor"];

  coverGlassColor = [(NDODevice *)self coverGlassColor];
  [coderCopy encodeObject:coverGlassColor forKey:@"coverGlassColor"];

  productID = [(NDODevice *)self productID];
  [coderCopy encodeObject:productID forKey:@"productID"];

  productName = [(NDODevice *)self productName];
  [coderCopy encodeObject:productName forKey:@"productName"];

  [coderCopy encodeBool:-[NDODevice isActiveWatch](self forKey:{"isActiveWatch"), @"isActiveWatch"}];
  [coderCopy encodeBool:-[NDODevice isVisibleInCC](self forKey:{"isVisibleInCC"), @"isVisibleInCC"}];
  [coderCopy encodeBool:-[NDODevice acOfferEligible](self forKey:{"acOfferEligible"), @"acOfferEligible"}];
  [coderCopy encodeBool:-[NDODevice covered](self forKey:{"covered"), @"covered"}];
  coverageLocalizedLabel = [(NDODevice *)self coverageLocalizedLabel];
  [coderCopy encodeObject:coverageLocalizedLabel forKey:@"coverageLocalizedLabel"];

  acLocalizedOfferStatusLabel = [(NDODevice *)self acLocalizedOfferStatusLabel];
  [coderCopy encodeObject:acLocalizedOfferStatusLabel forKey:@"acLocalizedOfferStatusLabel"];

  acLocalizedUnlinkedPlanStatusLabel = [(NDODevice *)self acLocalizedUnlinkedPlanStatusLabel];
  [coderCopy encodeObject:acLocalizedUnlinkedPlanStatusLabel forKey:@"acLocalizedUnlinkedPlanStatusLabel"];

  deviceImageUrl = [(NDODevice *)self deviceImageUrl];
  [coderCopy encodeObject:deviceImageUrl forKey:@"deviceImageUrl"];

  deviceDesc = [(NDODevice *)self deviceDesc];
  [coderCopy encodeObject:deviceDesc forKey:@"deviceDesc"];

  sgId = [(NDODevice *)self sgId];
  [coderCopy encodeObject:sgId forKey:@"sgId"];

  pfcId = [(NDODevice *)self pfcId];
  [coderCopy encodeObject:pfcId forKey:@"pfcId"];

  pgfId = [(NDODevice *)self pgfId];
  [coderCopy encodeObject:pgfId forKey:@"pgfId"];

  parentId = [(NDODevice *)self parentId];
  [coderCopy encodeObject:parentId forKey:@"parentId"];

  acOfferEligibleUntil = [(NDODevice *)self acOfferEligibleUntil];
  [coderCopy encodeObject:acOfferEligibleUntil forKey:@"acOfferEligibleUntil"];
}

- (NDODevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = NDODevice;
  v5 = [(NDODevice *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(NDODevice *)v5 setName:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    [(NDODevice *)v5 setSerialNumber:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activationDate"];
    [(NDODevice *)v5 setActivationDate:v8];

    -[NDODevice setDeviceType:](v5, "setDeviceType:", [coderCopy decodeIntegerForKey:@"deviceType"]);
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    [(NDODevice *)v5 setColor:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enclosureColor"];
    [(NDODevice *)v5 setEnclosureColor:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coverGlassColor"];
    [(NDODevice *)v5 setCoverGlassColor:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productID"];
    [(NDODevice *)v5 setProductID:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productName"];
    [(NDODevice *)v5 setProductName:v13];

    -[NDODevice setIsActiveWatch:](v5, "setIsActiveWatch:", [coderCopy decodeBoolForKey:@"isActiveWatch"]);
    -[NDODevice setIsVisibleInCC:](v5, "setIsVisibleInCC:", [coderCopy decodeBoolForKey:@"isVisibleInCC"]);
    -[NDODevice setAcOfferEligible:](v5, "setAcOfferEligible:", [coderCopy decodeBoolForKey:@"acOfferEligible"]);
    -[NDODevice setCovered:](v5, "setCovered:", [coderCopy decodeBoolForKey:@"covered"]);
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coverageLocalizedLabel"];
    [(NDODevice *)v5 setCoverageLocalizedLabel:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acLocalizedOfferStatusLabel"];
    [(NDODevice *)v5 setAcLocalizedOfferStatusLabel:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acLocalizedUnlinkedPlanStatusLabel"];
    [(NDODevice *)v5 setAcLocalizedUnlinkedPlanStatusLabel:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceImageUrl"];
    [(NDODevice *)v5 setDeviceImageUrl:v17];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceDesc"];
    [(NDODevice *)v5 setDeviceDesc:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sgId"];
    [(NDODevice *)v5 setSgId:v19];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pfcId"];
    [(NDODevice *)v5 setPfcId:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pgfId"];
    [(NDODevice *)v5 setPgfId:v21];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentId"];
    [(NDODevice *)v5 setParentId:v22];

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"acOfferEligibleUntil"];
    [(NDODevice *)v5 setAcOfferEligibleUntil:v23];
  }

  return v5;
}

@end