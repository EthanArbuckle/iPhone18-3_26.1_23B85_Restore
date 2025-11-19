@interface MRUOutputDeviceAsset
+ (MRUOutputDeviceAsset)inCallAsset;
+ (MRUOutputDeviceAsset)sharingAsset;
+ (MRUOutputDeviceAsset)speakerAsset;
- (BOOL)isEqual:(id)a3;
- (CCUICAPackageDescription)packageDescription;
- (MRUOutputDeviceAsset)initWithOutputDeviceRoute:(id)a3;
- (MRUOutputDeviceAsset)initWithPackageAsset:(id)a3 symbolName:(id)a4 image:(id)a5 type:(int64_t)a6 deviceCount:(unint64_t)a7;
- (id)localizedDisplayTitleForAssetType:(int64_t)a3 deviceCount:(unint64_t)a4;
- (int64_t)kind;
- (int64_t)outputDeviceAssetTypeForOutputDeviceRoute:(id)a3;
@end

@implementation MRUOutputDeviceAsset

- (CCUICAPackageDescription)packageDescription
{
  v2 = [(MRUAsset *)self packageAsset];
  v3 = [v2 packageDescription];

  return v3;
}

+ (MRUOutputDeviceAsset)speakerAsset
{
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 userInterfaceLayoutDirection];

  if (+[MRUFeatureFlagProvider isNewControlsEnabled])
  {
    v5 = v4 == 1;
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
    if (v4 == 1)
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
  v10 = [[a1 alloc] initWithPackageAsset:v9 symbolName:0 image:0 type:0 deviceCount:1];

  return v10;
}

+ (MRUOutputDeviceAsset)inCallAsset
{
  v2 = [a1 alloc];
  v3 = +[MRUAssetsProvider phone];
  v4 = [v2 initWithPackageAsset:0 symbolName:0 image:v3 type:1 deviceCount:1];

  return v4;
}

- (MRUOutputDeviceAsset)initWithPackageAsset:(id)a3 symbolName:(id)a4 image:(id)a5 type:(int64_t)a6 deviceCount:(unint64_t)a7
{
  v14.receiver = self;
  v14.super_class = MRUOutputDeviceAsset;
  v9 = [(MRUAsset *)&v14 initWithPackageAsset:a3 symbolName:a4 image:a5];
  v10 = v9;
  if (v9)
  {
    v9->_type = a6;
    v11 = [(MRUOutputDeviceAsset *)v9 localizedDisplayTitleForAssetType:a6 deviceCount:a7];
    localizedDisplayTitle = v10->_localizedDisplayTitle;
    v10->_localizedDisplayTitle = v11;
  }

  return v10;
}

- (MRUOutputDeviceAsset)initWithOutputDeviceRoute:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MRUOutputDeviceAsset *)self outputDeviceAssetTypeForOutputDeviceRoute:v4];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 outputDevices];
    v8 = [MEMORY[0x1E69B09B8] symbolNameForOutputDevices:v7];
    v9 = MCLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543874;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = v8;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ output devices symbol: %{public}@ | routes: %{public}@", &v12, 0x20u);
    }

    self = -[MRUOutputDeviceAsset initWithPackageAsset:symbolName:image:type:deviceCount:](self, "initWithPackageAsset:symbolName:image:type:deviceCount:", 0, v8, 0, v6, [v7 count]);
    v10 = self;
  }

  else
  {
    v10 = [objc_opt_class() speakerAsset];
  }

  return v10;
}

+ (MRUOutputDeviceAsset)sharingAsset
{
  v2 = [a1 alloc];
  v3 = +[MRUAssetsProvider sharing];
  v4 = [v2 initWithPackageAsset:0 symbolName:0 image:v3 type:2 deviceCount:1];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

      v8 = [(MRUOutputDeviceAsset *)v5 localizedDisplayTitle];
      v9 = v8;
      if (v8 == self->_localizedDisplayTitle)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(NSString *)v8 isEqual:?];
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
  v2 = [(MRUAsset *)self packageAsset];
  v3 = v2 == 0;

  return v3;
}

- (int64_t)outputDeviceAssetTypeForOutputDeviceRoute:(id)a3
{
  v3 = a3;
  if ([v3 isAirpodsRoute])
  {
    v4 = 8;
  }

  else if ([v3 isBeatsSoloRoute])
  {
    v4 = 10;
  }

  else if ([v3 isB419Route])
  {
    v4 = 11;
  }

  else if ([v3 isBeatsStudioRoute])
  {
    v4 = 12;
  }

  else if ([v3 isBeatsXRoute])
  {
    v4 = 13;
  }

  else if ([v3 isB494Route])
  {
    v4 = 17;
  }

  else
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && ([v3 isB498Route])
    {
      goto LABEL_23;
    }

    if ([v3 isB507Route])
    {
      v4 = 16;
      goto LABEL_24;
    }

    if (objc_opt_respondsToSelector() & 1) != 0 && ([v3 isB607Route])
    {
      v4 = 18;
      goto LABEL_24;
    }

    if ([v3 isPowerbeatsRoute] & 1) != 0 || (objc_msgSend(v3, "isB444Route") & 1) != 0 || (objc_msgSend(v3, "isB364Route"))
    {
LABEL_23:
      v4 = 14;
      goto LABEL_24;
    }

    if ([v3 isB372Route])
    {
      v4 = 15;
    }

    else if ([v3 isBeatsLegacyRoute])
    {
      v4 = 9;
    }

    else if ([v3 isCarplayRoute])
    {
      v4 = 3;
    }

    else if ([v3 isHearingDeviceRoute])
    {
      v4 = 4;
    }

    else
    {
      if (([v3 isDeviceSpeakerRoute] & 1) == 0)
      {
        if ([v3 isJ327Route])
        {
          v4 = 7;
          goto LABEL_24;
        }

        if ([v3 isAirPlayRoute] & 1) != 0 || (objc_msgSend(v3, "isClusterRoute") & 1) != 0 || (objc_msgSend(v3, "isMacRoute"))
        {
          v4 = 19;
          goto LABEL_24;
        }

        v6 = [v3 routeSubtype];
        if ((v6 - 2) <= 0x13)
        {
          v4 = qword_1A23077D8[v6 - 2];
          goto LABEL_24;
        }
      }

      v4 = 0;
    }
  }

LABEL_24:

  return v4;
}

- (id)localizedDisplayTitleForAssetType:(int64_t)a3 deviceCount:(unint64_t)a4
{
  v4 = &stru_1F1445548;
  switch(a3)
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
      v4 = [MRUStringsProvider volumeTVWithDeviceCount:a4];
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