@interface UARPSettingsAccessory
- (BOOL)isEqual:(id)a3;
- (BOOL)isFusingEqual:(id)a3;
- (UARPSettingsAccessory)initWithCoder:(id)a3;
- (UARPSettingsAccessory)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeAsChangedDictionary;
- (id)encodeAsDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPSettingsAccessory

- (UARPSettingsAccessory)initWithDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = UARPSettingsAccessory;
  v4 = [(UARPSettingsAccessory *)&v6 init];
  if (v4)
  {
    v4->_name = [objc_msgSend(a3 objectForKeyedSubscript:{@"name", "copy"}];
    v4->_serialNumber = [objc_msgSend(a3 objectForKeyedSubscript:{@"serialNumber", "copy"}];
    v4->_modelNumber = [objc_msgSend(a3 objectForKeyedSubscript:{@"modelNumber", "copy"}];
    v4->_mobileAssetModelNumber = [objc_msgSend(a3 objectForKeyedSubscript:{@"mobileAssetModelNumber", "copy"}];
    v4->_hwFusing = [objc_msgSend(a3 objectForKeyedSubscript:{@"fusing", "copy"}];
    v4->_activeVersion = [objc_msgSend(a3 objectForKeyedSubscript:{@"activeVersion", "copy"}];
    v4->_hwRevision = [objc_msgSend(a3 objectForKeyedSubscript:{@"hwRevision", "copy"}];
    v4->_partnerSerialNumbers = [objc_msgSend(a3 objectForKeyedSubscript:{@"partnerSerialNumbers", "copy"}];
    v4->_assetLocation = [objc_msgSend(a3 objectForKeyedSubscript:{@"assetLocation", "copy"}];
    v4->_customTrain = [objc_msgSend(a3 objectForKeyedSubscript:{@"basejumperTrain", "copy"}];
    v4->_customBuild = [objc_msgSend(a3 objectForKeyedSubscript:{@"basejumperBuild", "copy"}];
    v4->_supplementalAssetLocation = [objc_msgSend(a3 objectForKeyedSubscript:{@"supplementalAssetLocation", "copy"}];
    v4->_supplementalCustomTrain = [objc_msgSend(a3 objectForKeyedSubscript:{@"supplementalBasejumperTrain", "copy"}];
    v4->_supplementalCustomBuild = [objc_msgSend(a3 objectForKeyedSubscript:{@"supplementalBasejumperBuild", "copy"}];
    v4->_otaDisabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"isOTADisabled", "BOOLValue"}];
    v4->_authListingEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"authListingEnabled", "BOOLValue"}];
    v4->_personalizationRequired = [objc_msgSend(a3 objectForKeyedSubscript:{@"personalizationRequired", "BOOLValue"}];
    v4->_accessoryReachable = [objc_msgSend(a3 objectForKeyedSubscript:{@"accessoryReachable", "BOOLValue"}];
    v4->_supportsDeveloperSettings = [objc_msgSend(a3 objectForKeyedSubscript:{@"SupportsDeveloperSettings", "BOOLValue"}];
    v4->_downloadedVersion = [objc_msgSend(a3 objectForKeyedSubscript:{@"downloadedVersion", "copy"}];
    v4->_dropboxVersion = [objc_msgSend(a3 objectForKeyedSubscript:{@"dropboxVersion", "copy"}];
    v4->_assetURLOverride = [objc_msgSend(a3 objectForKeyedSubscript:{@"assetURLOverride", "copy"}];
    v4->_pallasSupportEnabled = [objc_msgSend(a3 objectForKeyedSubscript:{@"pallasSupportEnabled", "BOOLValue"}];
    v4->_pallasInternalAssetVariant = [objc_msgSend(a3 objectForKeyedSubscript:{@"pallasInternalAsset", "BOOLValue"}];
    v4->_pallasAudience = [objc_msgSend(a3 objectForKeyedSubscript:{@"pallasAudience", "integerValue"}];
    v4->_pallasAudienceOverride = [objc_msgSend(a3 objectForKeyedSubscript:{@"pallasAudienceOverride", "copy"}];
    v4->_originalSettings = [(UARPSettingsAccessory *)v4 encodeAsDictionary];
  }

  return v4;
}

- (UARPSettingsAccessory)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = UARPSettingsAccessory;
  v4 = [(UARPSettingsAccessory *)&v6 init];
  if (v4)
  {
    v4->_name = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v4->_serialNumber = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    v4->_modelNumber = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"modelNumber"];
    v4->_mobileAssetModelNumber = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"mobileAssetModelNumber"];
    v4->_hwFusing = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"fusing"];
    v4->_activeVersion = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"activeVersion"];
    v4->_hwRevision = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"hwRevision"];
    v4->_partnerSerialNumbers = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"partnerSerialNumbers"];
    v4->_assetLocation = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"assetLocation"];
    v4->_customTrain = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"basejumperTrain"];
    v4->_customBuild = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"basejumperBuild"];
    v4->_supplementalAssetLocation = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"supplementalAssetLocation"];
    v4->_supplementalCustomTrain = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"supplementalBasejumperTrain"];
    v4->_supplementalCustomBuild = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"supplementalBasejumperBuild"];
    v4->_otaDisabled = [a3 decodeBoolForKey:@"isOTADisabled"];
    v4->_authListingEnabled = [a3 decodeBoolForKey:@"authListingEnabled"];
    v4->_personalizationRequired = [a3 decodeBoolForKey:@"personalizationRequired"];
    v4->_accessoryReachable = [a3 decodeBoolForKey:@"accessoryReachable"];
    v4->_supportsDeveloperSettings = [a3 decodeBoolForKey:@"SupportsDeveloperSettings"];
    v4->_downloadedVersion = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"downloadedVersion"];
    v4->_dropboxVersion = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"dropboxVersion"];
    v4->_assetURLOverride = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"assetURLOverride"];
    v4->_pallasAudience = [a3 decodeIntegerForKey:@"pallasAudience"];
    v4->_pallasSupportEnabled = [a3 decodeBoolForKey:@"pallasSupportEnabled"];
    v4->_pallasInternalAssetVariant = [a3 decodeBoolForKey:@"pallasInternalAsset"];
    v4->_pallasAudienceOverride = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"pallasAudienceOverride"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_name forKey:@"name"];
  [a3 encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [a3 encodeObject:self->_modelNumber forKey:@"modelNumber"];
  [a3 encodeObject:self->_mobileAssetModelNumber forKey:@"mobileAssetModelNumber"];
  [a3 encodeObject:self->_hwFusing forKey:@"fusing"];
  [a3 encodeObject:self->_activeVersion forKey:@"activeVersion"];
  [a3 encodeObject:self->_hwRevision forKey:@"hwRevision"];
  [a3 encodeObject:self->_partnerSerialNumbers forKey:@"partnerSerialNumbers"];
  [a3 encodeObject:self->_assetLocation forKey:@"assetLocation"];
  [a3 encodeObject:self->_customTrain forKey:@"basejumperTrain"];
  [a3 encodeObject:self->_customBuild forKey:@"basejumperBuild"];
  [a3 encodeObject:self->_supplementalAssetLocation forKey:@"supplementalAssetLocation"];
  [a3 encodeObject:self->_supplementalCustomTrain forKey:@"supplementalBasejumperTrain"];
  [a3 encodeObject:self->_supplementalCustomBuild forKey:@"supplementalBasejumperBuild"];
  [a3 encodeBool:self->_otaDisabled forKey:@"isOTADisabled"];
  [a3 encodeBool:self->_authListingEnabled forKey:@"authListingEnabled"];
  [a3 encodeBool:self->_personalizationRequired forKey:@"personalizationRequired"];
  [a3 encodeBool:self->_accessoryReachable forKey:@"accessoryReachable"];
  [a3 encodeBool:self->_supportsDeveloperSettings forKey:@"SupportsDeveloperSettings"];
  [a3 encodeObject:self->_downloadedVersion forKey:@"downloadedVersion"];
  [a3 encodeObject:self->_dropboxVersion forKey:@"dropboxVersion"];
  [a3 encodeObject:self->_assetURLOverride forKey:@"assetURLOverride"];
  [a3 encodeInteger:self->_pallasAudience forKey:@"pallasAudience"];
  [a3 encodeBool:self->_pallasSupportEnabled forKey:@"pallasSupportEnabled"];
  [a3 encodeBool:self->_pallasInternalAssetVariant forKey:@"pallasInternalAsset"];
  pallasAudienceOverride = self->_pallasAudienceOverride;

  [a3 encodeObject:pallasAudienceOverride forKey:@"pallasAudienceOverride"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(UARPSettingsAccessory *)self encodeAsDictionary];
  v4 = [UARPSettingsAccessory alloc];

  return [(UARPSettingsAccessory *)v4 initWithDictionary:v3];
}

- (BOOL)isFusingEqual:(id)a3
{
  hwFusing = self->_hwFusing;
  if (hwFusing)
  {
    LOBYTE(v4) = [(NSString *)hwFusing caseInsensitiveCompare:a3]== NSOrderedSame;
  }

  else
  {
    return a3 == 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (self == a3)
  {
    return 1;
  }

  v5 = [(UARPSettingsAccessory *)self encodeAsDictionary];
  v6 = [a3 encodeAsDictionary];

  return [v5 isEqualToDictionary:v6];
}

- (id)encodeAsDictionary
{
  v3 = objc_opt_new();
  if ([(NSString *)self->_name length])
  {
    [v3 setObject:-[NSString copy](self->_name forKeyedSubscript:{"copy"), @"name"}];
  }

  if ([(NSString *)self->_serialNumber length])
  {
    [v3 setObject:-[NSString copy](self->_serialNumber forKeyedSubscript:{"copy"), @"serialNumber"}];
  }

  if ([(NSString *)self->_modelNumber length])
  {
    [v3 setObject:-[NSString copy](self->_modelNumber forKeyedSubscript:{"copy"), @"modelNumber"}];
  }

  if ([(NSString *)self->_mobileAssetModelNumber length])
  {
    [v3 setObject:-[NSString copy](self->_mobileAssetModelNumber forKeyedSubscript:{"copy"), @"mobileAssetModelNumber"}];
  }

  if ([(NSString *)self->_hwFusing length])
  {
    [v3 setObject:-[NSString copy](self->_hwFusing forKeyedSubscript:{"copy"), @"fusing"}];
  }

  if ([(NSString *)self->_activeVersion length])
  {
    [v3 setObject:-[NSString copy](self->_activeVersion forKeyedSubscript:{"copy"), @"activeVersion"}];
  }

  if ([(NSString *)self->_hwRevision length])
  {
    [v3 setObject:-[NSString copy](self->_hwRevision forKeyedSubscript:{"copy"), @"hwRevision"}];
  }

  if ([(NSArray *)self->_partnerSerialNumbers count])
  {
    [v3 setObject:-[NSArray copy](self->_partnerSerialNumbers forKeyedSubscript:{"copy"), @"partnerSerialNumbers"}];
  }

  if ([(NSString *)self->_assetLocation length])
  {
    [v3 setObject:-[NSString copy](self->_assetLocation forKeyedSubscript:{"copy"), @"assetLocation"}];
  }

  if ([(NSString *)self->_customTrain length])
  {
    [v3 setObject:-[NSString copy](self->_customTrain forKeyedSubscript:{"copy"), @"basejumperTrain"}];
  }

  if ([(NSString *)self->_customBuild length])
  {
    [v3 setObject:-[NSString copy](self->_customBuild forKeyedSubscript:{"copy"), @"basejumperBuild"}];
  }

  if ([(NSString *)self->_supplementalAssetLocation length])
  {
    [v3 setObject:-[NSString copy](self->_supplementalAssetLocation forKeyedSubscript:{"copy"), @"supplementalAssetLocation"}];
  }

  if ([(NSString *)self->_supplementalCustomTrain length])
  {
    [v3 setObject:-[NSString copy](self->_supplementalCustomTrain forKeyedSubscript:{"copy"), @"supplementalBasejumperTrain"}];
  }

  if ([(NSString *)self->_supplementalCustomBuild length])
  {
    [v3 setObject:-[NSString copy](self->_supplementalCustomBuild forKeyedSubscript:{"copy"), @"supplementalBasejumperBuild"}];
  }

  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_otaDisabled), @"isOTADisabled"}];
  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_authListingEnabled), @"authListingEnabled"}];
  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_personalizationRequired), @"personalizationRequired"}];
  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_accessoryReachable), @"accessoryReachable"}];
  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_supportsDeveloperSettings), @"SupportsDeveloperSettings"}];
  if ([(NSString *)self->_downloadedVersion length])
  {
    [v3 setObject:-[NSString copy](self->_downloadedVersion forKeyedSubscript:{"copy"), @"downloadedVersion"}];
  }

  if ([(NSString *)self->_dropboxVersion length])
  {
    [v3 setObject:-[NSString copy](self->_dropboxVersion forKeyedSubscript:{"copy"), @"dropboxVersion"}];
  }

  if ([(NSString *)self->_assetURLOverride length])
  {
    [v3 setObject:-[NSString copy](self->_assetURLOverride forKeyedSubscript:{"copy"), @"assetURLOverride"}];
  }

  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_pallasSupportEnabled), @"pallasSupportEnabled"}];
  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", self->_pallasInternalAssetVariant), @"pallasInternalAsset"}];
  [v3 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKeyedSubscript:{"numberWithUnsignedInteger:", self->_pallasAudience), @"pallasAudience"}];
  if ([(NSString *)self->_pallasAudienceOverride length])
  {
    [v3 setObject:-[NSString copy](self->_pallasAudienceOverride forKeyedSubscript:{"copy"), @"pallasAudienceOverride"}];
  }

  return [NSDictionary dictionaryWithDictionary:v3];
}

- (id)encodeAsChangedDictionary
{
  v3 = [(UARPSettingsAccessory *)self encodeAsDictionary];
  v4 = objc_opt_new();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000023C4;
  v8[3] = &unk_100080CD8;
  v8[4] = self;
  v8[5] = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];
  originalSettings = self->_originalSettings;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000024C4;
  v7[3] = &unk_100080CD8;
  v7[4] = v3;
  v7[5] = v4;
  [(NSDictionary *)originalSettings enumerateKeysAndObjectsUsingBlock:v7];
  if ([v4 count])
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

@end