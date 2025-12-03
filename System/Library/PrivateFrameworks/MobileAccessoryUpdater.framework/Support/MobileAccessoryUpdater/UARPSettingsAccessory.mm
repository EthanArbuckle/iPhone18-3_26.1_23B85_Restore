@interface UARPSettingsAccessory
- (BOOL)isEqual:(id)equal;
- (BOOL)isFusingEqual:(id)equal;
- (UARPSettingsAccessory)initWithCoder:(id)coder;
- (UARPSettingsAccessory)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsChangedDictionary;
- (id)encodeAsDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPSettingsAccessory

- (UARPSettingsAccessory)initWithDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = UARPSettingsAccessory;
  v4 = [(UARPSettingsAccessory *)&v6 init];
  if (v4)
  {
    v4->_name = [objc_msgSend(dictionary objectForKeyedSubscript:{@"name", "copy"}];
    v4->_serialNumber = [objc_msgSend(dictionary objectForKeyedSubscript:{@"serialNumber", "copy"}];
    v4->_modelNumber = [objc_msgSend(dictionary objectForKeyedSubscript:{@"modelNumber", "copy"}];
    v4->_mobileAssetModelNumber = [objc_msgSend(dictionary objectForKeyedSubscript:{@"mobileAssetModelNumber", "copy"}];
    v4->_hwFusing = [objc_msgSend(dictionary objectForKeyedSubscript:{@"fusing", "copy"}];
    v4->_activeVersion = [objc_msgSend(dictionary objectForKeyedSubscript:{@"activeVersion", "copy"}];
    v4->_hwRevision = [objc_msgSend(dictionary objectForKeyedSubscript:{@"hwRevision", "copy"}];
    v4->_partnerSerialNumbers = [objc_msgSend(dictionary objectForKeyedSubscript:{@"partnerSerialNumbers", "copy"}];
    v4->_assetLocation = [objc_msgSend(dictionary objectForKeyedSubscript:{@"assetLocation", "copy"}];
    v4->_customTrain = [objc_msgSend(dictionary objectForKeyedSubscript:{@"basejumperTrain", "copy"}];
    v4->_customBuild = [objc_msgSend(dictionary objectForKeyedSubscript:{@"basejumperBuild", "copy"}];
    v4->_supplementalAssetLocation = [objc_msgSend(dictionary objectForKeyedSubscript:{@"supplementalAssetLocation", "copy"}];
    v4->_supplementalCustomTrain = [objc_msgSend(dictionary objectForKeyedSubscript:{@"supplementalBasejumperTrain", "copy"}];
    v4->_supplementalCustomBuild = [objc_msgSend(dictionary objectForKeyedSubscript:{@"supplementalBasejumperBuild", "copy"}];
    v4->_otaDisabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"isOTADisabled", "BOOLValue"}];
    v4->_authListingEnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"authListingEnabled", "BOOLValue"}];
    v4->_personalizationRequired = [objc_msgSend(dictionary objectForKeyedSubscript:{@"personalizationRequired", "BOOLValue"}];
    v4->_accessoryReachable = [objc_msgSend(dictionary objectForKeyedSubscript:{@"accessoryReachable", "BOOLValue"}];
    v4->_supportsDeveloperSettings = [objc_msgSend(dictionary objectForKeyedSubscript:{@"SupportsDeveloperSettings", "BOOLValue"}];
    v4->_downloadedVersion = [objc_msgSend(dictionary objectForKeyedSubscript:{@"downloadedVersion", "copy"}];
    v4->_dropboxVersion = [objc_msgSend(dictionary objectForKeyedSubscript:{@"dropboxVersion", "copy"}];
    v4->_assetURLOverride = [objc_msgSend(dictionary objectForKeyedSubscript:{@"assetURLOverride", "copy"}];
    v4->_pallasSupportEnabled = [objc_msgSend(dictionary objectForKeyedSubscript:{@"pallasSupportEnabled", "BOOLValue"}];
    v4->_pallasInternalAssetVariant = [objc_msgSend(dictionary objectForKeyedSubscript:{@"pallasInternalAsset", "BOOLValue"}];
    v4->_pallasAudience = [objc_msgSend(dictionary objectForKeyedSubscript:{@"pallasAudience", "integerValue"}];
    v4->_pallasAudienceOverride = [objc_msgSend(dictionary objectForKeyedSubscript:{@"pallasAudienceOverride", "copy"}];
    v4->_originalSettings = [(UARPSettingsAccessory *)v4 encodeAsDictionary];
  }

  return v4;
}

- (UARPSettingsAccessory)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UARPSettingsAccessory;
  v4 = [(UARPSettingsAccessory *)&v6 init];
  if (v4)
  {
    v4->_name = [coder decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v4->_serialNumber = [coder decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    v4->_modelNumber = [coder decodeObjectOfClass:objc_opt_class() forKey:@"modelNumber"];
    v4->_mobileAssetModelNumber = [coder decodeObjectOfClass:objc_opt_class() forKey:@"mobileAssetModelNumber"];
    v4->_hwFusing = [coder decodeObjectOfClass:objc_opt_class() forKey:@"fusing"];
    v4->_activeVersion = [coder decodeObjectOfClass:objc_opt_class() forKey:@"activeVersion"];
    v4->_hwRevision = [coder decodeObjectOfClass:objc_opt_class() forKey:@"hwRevision"];
    v4->_partnerSerialNumbers = [coder decodeObjectOfClass:objc_opt_class() forKey:@"partnerSerialNumbers"];
    v4->_assetLocation = [coder decodeObjectOfClass:objc_opt_class() forKey:@"assetLocation"];
    v4->_customTrain = [coder decodeObjectOfClass:objc_opt_class() forKey:@"basejumperTrain"];
    v4->_customBuild = [coder decodeObjectOfClass:objc_opt_class() forKey:@"basejumperBuild"];
    v4->_supplementalAssetLocation = [coder decodeObjectOfClass:objc_opt_class() forKey:@"supplementalAssetLocation"];
    v4->_supplementalCustomTrain = [coder decodeObjectOfClass:objc_opt_class() forKey:@"supplementalBasejumperTrain"];
    v4->_supplementalCustomBuild = [coder decodeObjectOfClass:objc_opt_class() forKey:@"supplementalBasejumperBuild"];
    v4->_otaDisabled = [coder decodeBoolForKey:@"isOTADisabled"];
    v4->_authListingEnabled = [coder decodeBoolForKey:@"authListingEnabled"];
    v4->_personalizationRequired = [coder decodeBoolForKey:@"personalizationRequired"];
    v4->_accessoryReachable = [coder decodeBoolForKey:@"accessoryReachable"];
    v4->_supportsDeveloperSettings = [coder decodeBoolForKey:@"SupportsDeveloperSettings"];
    v4->_downloadedVersion = [coder decodeObjectOfClass:objc_opt_class() forKey:@"downloadedVersion"];
    v4->_dropboxVersion = [coder decodeObjectOfClass:objc_opt_class() forKey:@"dropboxVersion"];
    v4->_assetURLOverride = [coder decodeObjectOfClass:objc_opt_class() forKey:@"assetURLOverride"];
    v4->_pallasAudience = [coder decodeIntegerForKey:@"pallasAudience"];
    v4->_pallasSupportEnabled = [coder decodeBoolForKey:@"pallasSupportEnabled"];
    v4->_pallasInternalAssetVariant = [coder decodeBoolForKey:@"pallasInternalAsset"];
    v4->_pallasAudienceOverride = [coder decodeObjectOfClass:objc_opt_class() forKey:@"pallasAudienceOverride"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_name forKey:@"name"];
  [coder encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [coder encodeObject:self->_modelNumber forKey:@"modelNumber"];
  [coder encodeObject:self->_mobileAssetModelNumber forKey:@"mobileAssetModelNumber"];
  [coder encodeObject:self->_hwFusing forKey:@"fusing"];
  [coder encodeObject:self->_activeVersion forKey:@"activeVersion"];
  [coder encodeObject:self->_hwRevision forKey:@"hwRevision"];
  [coder encodeObject:self->_partnerSerialNumbers forKey:@"partnerSerialNumbers"];
  [coder encodeObject:self->_assetLocation forKey:@"assetLocation"];
  [coder encodeObject:self->_customTrain forKey:@"basejumperTrain"];
  [coder encodeObject:self->_customBuild forKey:@"basejumperBuild"];
  [coder encodeObject:self->_supplementalAssetLocation forKey:@"supplementalAssetLocation"];
  [coder encodeObject:self->_supplementalCustomTrain forKey:@"supplementalBasejumperTrain"];
  [coder encodeObject:self->_supplementalCustomBuild forKey:@"supplementalBasejumperBuild"];
  [coder encodeBool:self->_otaDisabled forKey:@"isOTADisabled"];
  [coder encodeBool:self->_authListingEnabled forKey:@"authListingEnabled"];
  [coder encodeBool:self->_personalizationRequired forKey:@"personalizationRequired"];
  [coder encodeBool:self->_accessoryReachable forKey:@"accessoryReachable"];
  [coder encodeBool:self->_supportsDeveloperSettings forKey:@"SupportsDeveloperSettings"];
  [coder encodeObject:self->_downloadedVersion forKey:@"downloadedVersion"];
  [coder encodeObject:self->_dropboxVersion forKey:@"dropboxVersion"];
  [coder encodeObject:self->_assetURLOverride forKey:@"assetURLOverride"];
  [coder encodeInteger:self->_pallasAudience forKey:@"pallasAudience"];
  [coder encodeBool:self->_pallasSupportEnabled forKey:@"pallasSupportEnabled"];
  [coder encodeBool:self->_pallasInternalAssetVariant forKey:@"pallasInternalAsset"];
  pallasAudienceOverride = self->_pallasAudienceOverride;

  [coder encodeObject:pallasAudienceOverride forKey:@"pallasAudienceOverride"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  encodeAsDictionary = [(UARPSettingsAccessory *)self encodeAsDictionary];
  v4 = [UARPSettingsAccessory alloc];

  return [(UARPSettingsAccessory *)v4 initWithDictionary:encodeAsDictionary];
}

- (BOOL)isFusingEqual:(id)equal
{
  hwFusing = self->_hwFusing;
  if (hwFusing)
  {
    LOBYTE(v4) = [(NSString *)hwFusing caseInsensitiveCompare:equal]== NSOrderedSame;
  }

  else
  {
    return equal == 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (self == equal)
  {
    return 1;
  }

  encodeAsDictionary = [(UARPSettingsAccessory *)self encodeAsDictionary];
  encodeAsDictionary2 = [equal encodeAsDictionary];

  return [encodeAsDictionary isEqualToDictionary:encodeAsDictionary2];
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
  encodeAsDictionary = [(UARPSettingsAccessory *)self encodeAsDictionary];
  v4 = objc_opt_new();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000023C4;
  v8[3] = &unk_100080CD8;
  v8[4] = self;
  v8[5] = v4;
  [encodeAsDictionary enumerateKeysAndObjectsUsingBlock:v8];
  originalSettings = self->_originalSettings;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000024C4;
  v7[3] = &unk_100080CD8;
  v7[4] = encodeAsDictionary;
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