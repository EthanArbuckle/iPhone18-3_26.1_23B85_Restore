@interface MRUOutputDeviceAsset
+ (MRUOutputDeviceAsset)inCallAsset;
+ (MRUOutputDeviceAsset)sharingAsset;
+ (MRUOutputDeviceAsset)speakerAsset;
- (BOOL)isEqual:(id)equal;
- (CCUICAPackageDescription)packageDescription;
- (MRUOutputDeviceAsset)initWithOutputDeviceRoute:(id)route;
- (MRUOutputDeviceAsset)initWithPackageAsset:(id)asset symbolName:(id)name image:(id)image type:(int64_t)type deviceCount:(unint64_t)count;
- (id)localizedDisplayTitleForAssetType:(int64_t)type deviceCount:(unint64_t)count;
- (int64_t)kind;
- (int64_t)outputDeviceAssetTypeForOutputDeviceRoute:(id)route;
@end

@implementation MRUOutputDeviceAsset

- (CCUICAPackageDescription)packageDescription
{
  packageAsset = [(MRUAsset *)self packageAsset];
  packageDescription = [packageAsset packageDescription];

  return packageDescription;
}

+ (MRUOutputDeviceAsset)speakerAsset
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (+[MRUFeatureFlagProvider isNewControlsEnabled])
  {
    v5 = userInterfaceLayoutDirection == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = @"VolumeSemiboldRTL";
  }

  else
  {
    v6 = +[MRUFeatureFlagProvider isNewControlsEnabled];
    v7 = @"Volume";
    if (userInterfaceLayoutDirection == 1)
    {
      v7 = @"VolumeRTL";
    }

    if (v6)
    {
      v8 = @"VolumeSemibold";
    }

    else
    {
      v8 = v7;
    }
  }

  v9 = [MRUCAPackageAsset packageNamed:v8];
  v10 = [[self alloc] initWithPackageAsset:v9 symbolName:0 image:0 type:0 deviceCount:1];

  return v10;
}

+ (MRUOutputDeviceAsset)inCallAsset
{
  v2 = [self alloc];
  v3 = +[MRUAssetsProvider phone];
  v4 = [v2 initWithPackageAsset:0 symbolName:0 image:v3 type:1 deviceCount:1];

  return v4;
}

- (MRUOutputDeviceAsset)initWithPackageAsset:(id)asset symbolName:(id)name image:(id)image type:(int64_t)type deviceCount:(unint64_t)count
{
  v14.receiver = self;
  v14.super_class = MRUOutputDeviceAsset;
  v9 = [(MRUAsset *)&v14 initWithPackageAsset:asset symbolName:name image:image];
  v10 = v9;
  if (v9)
  {
    v9->_type = type;
    v11 = [(MRUOutputDeviceAsset *)v9 localizedDisplayTitleForAssetType:type deviceCount:count];
    localizedDisplayTitle = v10->_localizedDisplayTitle;
    v10->_localizedDisplayTitle = v11;
  }

  return v10;
}

- (MRUOutputDeviceAsset)initWithOutputDeviceRoute:(id)route
{
  v18 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v5 = [(MRUOutputDeviceAsset *)self outputDeviceAssetTypeForOutputDeviceRoute:routeCopy];
  if (v5)
  {
    v6 = v5;
    outputDevices = [routeCopy outputDevices];
    v8 = [MEMORY[0x1E69B09B8] symbolNameForOutputDevices:outputDevices];
    v9 = MCLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543874;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v8;
      v16 = 2114;
      v17 = outputDevices;
      _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ output devices symbol: %{public}@ | routes: %{public}@", &v12, 0x20u);
    }

    self = -[MRUOutputDeviceAsset initWithPackageAsset:symbolName:image:type:deviceCount:](self, "initWithPackageAsset:symbolName:image:type:deviceCount:", 0, v8, 0, v6, [outputDevices count]);
    selfCopy = self;
  }

  else
  {
    selfCopy = [objc_opt_class() speakerAsset];
  }

  return selfCopy;
}

+ (MRUOutputDeviceAsset)sharingAsset
{
  v2 = [self alloc];
  v3 = +[MRUAssetsProvider sharing];
  v4 = [v2 initWithPackageAsset:0 symbolName:0 image:v3 type:2 deviceCount:1];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v13.receiver = self;
      v13.super_class = MRUOutputDeviceAsset;
      v6 = [(MRUAsset *)&v13 isEqual:v5];
      if ([(MRUOutputDeviceAsset *)v5 type]== self->_type)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      localizedDisplayTitle = [(MRUOutputDeviceAsset *)v5 localizedDisplayTitle];
      v9 = localizedDisplayTitle;
      if (localizedDisplayTitle == self->_localizedDisplayTitle)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(NSString *)localizedDisplayTitle isEqual:?];
      }

      v11 = v7 & v10;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (int64_t)kind
{
  packageAsset = [(MRUAsset *)self packageAsset];
  v3 = packageAsset == 0;

  return v3;
}

- (int64_t)outputDeviceAssetTypeForOutputDeviceRoute:(id)route
{
  routeCopy = route;
  if ([routeCopy isAirpodsRoute])
  {
    v4 = 8;
  }

  else if ([routeCopy isBeatsSoloRoute])
  {
    v4 = 10;
  }

  else if ([routeCopy isB419Route])
  {
    v4 = 11;
  }

  else if ([routeCopy isBeatsStudioRoute])
  {
    v4 = 12;
  }

  else if ([routeCopy isBeatsXRoute])
  {
    v4 = 13;
  }

  else if ([routeCopy isB494Route])
  {
    v4 = 17;
  }

  else
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && ([routeCopy isB498Route])
    {
      goto LABEL_23;
    }

    if ([routeCopy isB507Route])
    {
      v4 = 16;
      goto LABEL_24;
    }

    if (objc_opt_respondsToSelector() & 1) != 0 && ([routeCopy isB607Route])
    {
      v4 = 18;
      goto LABEL_24;
    }

    if ([routeCopy isPowerbeatsRoute] & 1) != 0 || (objc_msgSend(routeCopy, "isB444Route") & 1) != 0 || (objc_msgSend(routeCopy, "isB364Route"))
    {
LABEL_23:
      v4 = 14;
      goto LABEL_24;
    }

    if ([routeCopy isB372Route])
    {
      v4 = 15;
    }

    else if ([routeCopy isBeatsLegacyRoute])
    {
      v4 = 9;
    }

    else if ([routeCopy isCarplayRoute])
    {
      v4 = 3;
    }

    else if ([routeCopy isHearingDeviceRoute])
    {
      v4 = 4;
    }

    else
    {
      if (([routeCopy isDeviceSpeakerRoute] & 1) == 0)
      {
        if ([routeCopy isJ327Route])
        {
          v4 = 7;
          goto LABEL_24;
        }

        if ([routeCopy isAirPlayRoute] & 1) != 0 || (objc_msgSend(routeCopy, "isClusterRoute") & 1) != 0 || (objc_msgSend(routeCopy, "isMacRoute"))
        {
          v4 = 19;
          goto LABEL_24;
        }

        routeSubtype = [routeCopy routeSubtype];
        if ((routeSubtype - 2) <= 0x13)
        {
          v4 = qword_1A23077D8[routeSubtype - 2];
          goto LABEL_24;
        }
      }

      v4 = 0;
    }
  }

LABEL_24:

  return v4;
}

- (id)localizedDisplayTitleForAssetType:(int64_t)type deviceCount:(unint64_t)count
{
  v4 = &stru_1F1445548;
  switch(type)
  {
    case 0:
      v4 = +[MRUStringsProvider volumeSpeaker];
      break;
    case 2:
      v4 = +[MRUStringsProvider volumeSharing];
      break;
    case 3:
      v4 = +[MRUStringsProvider volumeCarplay];
      break;
    case 4:
      v4 = +[MRUStringsProvider volumeHearingDevice];
      break;
    case 5:
      v4 = +[MRUStringsProvider volumeHeadphones];
      break;
    case 6:
      v4 = +[MRUStringsProvider volumeBluetooth];
      break;
    case 8:
      v4 = +[MRUStringsProvider volumeAirPods];
      break;
    case 9:
      v4 = +[MRUStringsProvider volumeBeats];
      break;
    case 10:
      v4 = +[MRUStringsProvider volumeBeatsSolo];
      break;
    case 11:
      v4 = +[MRUStringsProvider volumeBeatsSoloPro];
      break;
    case 12:
    case 16:
    case 18:
      v4 = +[MRUStringsProvider volumeBeatsStudio];
      break;
    case 13:
      v4 = +[MRUStringsProvider volumeBeatsX];
      break;
    case 14:
      v4 = +[MRUStringsProvider volumePowerbeats];
      break;
    case 15:
      v4 = +[MRUStringsProvider volumeBeatsFlex];
      break;
    case 17:
      v4 = +[MRUStringsProvider volumeB494];
      break;
    case 19:
      v4 = +[MRUStringsProvider volumeAirPlay];
      break;
    case 20:
      v4 = +[MRUStringsProvider volumeAppleTV];
      break;
    case 21:
      v4 = [MRUStringsProvider volumeTVWithDeviceCount:count];
      break;
    case 22:
      v4 = +[MRUStringsProvider volumeHomePod];
      break;
    default:
      break;
  }

  return v4;
}

@end