@interface CRVehicle
+ (id)vehicleForMessagingVehicle:(id)vehicle;
- (BOOL)isEqual:(id)equal;
- (BOOL)requiresBonjour;
- (BOOL)setHomeScreenStyle:(id)style forDisplayWithID:(id)d;
- (BOOL)setWallpaper:(id)wallpaper forDisplayWithID:(id)d requiresDarkAppearance:(BOOL)appearance;
- (CRSystemWallpaperData)previousSystemWallpaperData;
- (CRSystemWallpaperData)systemWallpaperData;
- (CRVehicle)initWithCoder:(id)coder;
- (CRVehicle)initWithIdentifier:(id)identifier certificateSerial:(id)serial;
- (NSString)_axColorFiltersAnalyticsString;
- (NSString)_axSoundRecognitionAnalyticsString;
- (NSString)wallpaperDescription;
- (id)_axColorFiltersIntensityStringForNumber:(id)number;
- (id)_enhancedIntegrationDebugDescription;
- (id)_pairingDebugDescription;
- (id)assetDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)displayName;
- (id)homeScreenStyleDataForDisplayWithID:(id)d;
- (id)wallpaperForDisplayWithID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)mergeAttributesFromVehicle:(id)vehicle;
- (void)setClusterAssetIdentifier:(id)identifier;
- (void)setPreviousSystemWallpaperData:(id)data;
- (void)setSystemWallpaperData:(id)data;
- (void)setViewAreas:(id)areas;
@end

@implementation CRVehicle

- (CRSystemWallpaperData)systemWallpaperData
{
  wallpaperIdentifier = [(CRVehicle *)self wallpaperIdentifier];

  if (wallpaperIdentifier)
  {
    v4 = [CRSystemWallpaperData alloc];
    wallpaperIdentifier2 = [(CRVehicle *)self wallpaperIdentifier];
    v6 = [(CRSystemWallpaperData *)v4 initWithIdentifier:wallpaperIdentifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  identifier = [(CRVehicle *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (CRVehicle)initWithIdentifier:(id)identifier certificateSerial:(id)serial
{
  identifierCopy = identifier;
  serialCopy = serial;
  v12.receiver = self;
  v12.super_class = CRVehicle;
  v8 = [(CRVehicle *)&v12 init];
  v9 = v8;
  if (v8)
  {
    if (identifierCopy)
    {
      [(CRVehicle *)v8 setIdentifier:identifierCopy];
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      [(CRVehicle *)v9 setIdentifier:uUID];
    }

    [(CRVehicle *)v9 setCertificateSerialNumber:serialCopy];
    [(CRVehicle *)v9 setPairingStatus:0];
    [(CRVehicle *)v9 setEnhancedIntegrationStatus:0];
    [(CRVehicle *)v9 setAlbumArtUserPreference:0];
    [(CRVehicle *)v9 setAppearanceModePreference:-1];
    [(CRVehicle *)v9 setMapsAppearancePreference:-1];
    [(CRVehicle *)v9 setColorFilterPreference:0];
    [(CRVehicle *)v9 setBoldTextPreference:0];
    [(CRVehicle *)v9 setSoundRecognitionPreference:0];
    [(CRVehicle *)v9 setVoiceControlPreference:0];
    [(CRVehicle *)v9 setTextSizePreference:0];
    [(CRVehicle *)v9 setDisplayScaleMode:2];
  }

  return v9;
}

- (CRVehicle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v53.receiver = self;
  v53.super_class = CRVehicle;
  v5 = [(CRVehicle *)&v53 init];

  if (!v5)
  {
    goto LABEL_102;
  }

  if ([coderCopy containsValueForKey:@"identifier"])
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(CRVehicle *)v5 setIdentifier:v6];
  }

  if ([coderCopy containsValueForKey:@"vehicleName"])
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vehicleName"];
    [(CRVehicle *)v5 setVehicleName:v7];
  }

  if ([coderCopy containsValueForKey:@"certificateSerialNumber"])
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"certificateSerialNumber"];
    [(CRVehicle *)v5 setCertificateSerialNumber:v8];
  }

  if ([coderCopy containsValueForKey:@"pairingStatus"])
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingStatus"];
    -[CRVehicle setPairingStatus:](v5, "setPairingStatus:", [v9 integerValue]);
  }

  if ([coderCopy containsValueForKey:@"enhancedIntegration"])
  {
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enhancedIntegration"];
    -[CRVehicle setEnhancedIntegrationStatus:](v5, "setEnhancedIntegrationStatus:", [v10 integerValue]);
  }

  if ([coderCopy containsValueForKey:@"supportsEnhancedIntegration"])
  {
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsEnhancedIntegration"];
    -[CRVehicle setSupportsEnhancedIntegration:](v5, "setSupportsEnhancedIntegration:", [v11 BOOLValue]);
  }

  if ([coderCopy containsValueForKey:@"supportsStartSessionRequest"])
  {
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsStartSessionRequest"];
    [(CRVehicle *)v5 setSupportsStartSessionRequest:v12];
  }

  if ([coderCopy containsValueForKey:@"bluetoothAddress"])
  {
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothAddress"];
    [(CRVehicle *)v5 setBluetoothAddress:v13];
  }

  if ([coderCopy containsValueForKey:@"carplayWiFiUUID"])
  {
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"carplayWiFiUUID"];
    [(CRVehicle *)v5 setCarplayWiFiUUID:v14];
  }

  if ([coderCopy containsValueForKey:@"carplayProtocols"])
  {
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"carplayProtocols"];
    [(CRVehicle *)v5 setAccessoryProtocols:v18];
  }

  if ([coderCopy containsValueForKey:@"lastConnectionTime"])
  {
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastConnectionTime"];
    [(CRVehicle *)v5 setLastConnectedDate:v19];
  }

  if ([coderCopy containsValueForKey:@"vehicleModelName"])
  {
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vehicleModelName"];
    [(CRVehicle *)v5 setVehicleModelName:v20];
  }

  if ([coderCopy containsValueForKey:@"ppid"])
  {
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ppid"];
    [(CRVehicle *)v5 setPPID:v21];
  }

  if ([coderCopy containsValueForKey:@"albumArtUserPreference"])
  {
    -[CRVehicle setAlbumArtUserPreference:](v5, "setAlbumArtUserPreference:", [coderCopy decodeIntegerForKey:@"albumArtUserPreference"]);
  }

  if ([coderCopy containsValueForKey:@"supportsUSBCarPlay"])
  {
    v22 = [coderCopy decodeBoolForKey:@"supportsUSBCarPlay"];
  }

  else
  {
    bluetoothAddress = [(CRVehicle *)v5 bluetoothAddress];

    if (bluetoothAddress)
    {
      goto LABEL_35;
    }

    v22 = 1;
  }

  [(CRVehicle *)v5 setSupportsUSBCarPlay:v22];
LABEL_35:
  if ([coderCopy containsValueForKey:@"supportsWirelessCarPlay"])
  {
    v24 = [coderCopy decodeBoolForKey:@"supportsWirelessCarPlay"];
LABEL_39:
    [(CRVehicle *)v5 setSupportsWirelessCarPlay:v24];
    goto LABEL_40;
  }

  bluetoothAddress2 = [(CRVehicle *)v5 bluetoothAddress];

  if (bluetoothAddress2)
  {
    v24 = 1;
    goto LABEL_39;
  }

LABEL_40:
  if ([coderCopy containsValueForKey:@"wallpaperIdentifierUserPreference"])
  {
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wallpaperIdentifierUserPreference"];
    [(CRVehicle *)v5 setWallpaperIdentifier:v26];
  }

  if ([coderCopy containsValueForKey:@"previousWallpaperIdentifierUserPreference"])
  {
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previousWallpaperIdentifierUserPreference"];
    [(CRVehicle *)v5 setPreviousWallpaperIdentifier:v27];
  }

  if ([coderCopy containsValueForKey:@"displayScaleModeUserPreference"])
  {
    -[CRVehicle setDisplayScaleMode:](v5, "setDisplayScaleMode:", [coderCopy decodeIntegerForKey:@"displayScaleModeUserPreference"]);
  }

  if ([coderCopy containsValueForKey:@"appearanceModeUserPreference"])
  {
    -[CRVehicle setAppearanceModePreference:](v5, "setAppearanceModePreference:", [coderCopy decodeIntegerForKey:@"appearanceModeUserPreference"]);
  }

  if ([coderCopy containsValueForKey:@"mapsAppearancePreference"])
  {
    -[CRVehicle setMapsAppearancePreference:](v5, "setMapsAppearancePreference:", [coderCopy decodeIntegerForKey:@"mapsAppearancePreference"]);
  }

  if ([coderCopy containsValueForKey:@"colorFilterPreference"])
  {
    -[CRVehicle setColorFilterPreference:](v5, "setColorFilterPreference:", [coderCopy decodeIntegerForKey:@"colorFilterPreference"]);
  }

  if ([coderCopy containsValueForKey:@"colorFilterIntensityPreference"])
  {
    v28 = objc_opt_class();
    v29 = [coderCopy decodeDictionaryWithKeysOfClass:v28 objectsOfClass:objc_opt_class() forKey:@"colorFilterIntensityPreference"];
    [(CRVehicle *)v5 setColorFilterIntensityPreference:v29];
  }

  if ([coderCopy containsValueForKey:@"boldTextPreference"])
  {
    -[CRVehicle setBoldTextPreference:](v5, "setBoldTextPreference:", [coderCopy decodeIntegerForKey:@"boldTextPreference"]);
  }

  if ([coderCopy containsValueForKey:@"soundRecognitionPreference"])
  {
    -[CRVehicle setSoundRecognitionPreference:](v5, "setSoundRecognitionPreference:", [coderCopy decodeIntegerForKey:@"soundRecognitionPreference"]);
  }

  if ([coderCopy containsValueForKey:@"voiceControlPreference"])
  {
    -[CRVehicle setVoiceControlPreference:](v5, "setVoiceControlPreference:", [coderCopy decodeIntegerForKey:@"voiceControlPreference"]);
  }

  if ([coderCopy containsValueForKey:@"textSizePreference"])
  {
    -[CRVehicle setTextSizePreference:](v5, "setTextSizePreference:", [coderCopy decodeIntegerForKey:@"textSizePreference"]);
  }

  if ([coderCopy containsValueForKey:@"disabledFeaturesPreference"])
  {
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disabledFeaturesPreference"];
    [(CRVehicle *)v5 setDisabledFeaturesPreference:v30];
  }

  if ([coderCopy containsValueForKey:@"supportsBluetoothLE"])
  {
    -[CRVehicle setSupportsBluetoothLE:](v5, "setSupportsBluetoothLE:", [coderCopy decodeBoolForKey:@"supportsBluetoothLE"]);
  }

  if ([coderCopy containsValueForKey:@"supportsThemeAssets"])
  {
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsThemeAssets"];
    [(CRVehicle *)v5 setSupportsThemeAssets:v31];
  }

  if ([coderCopy containsValueForKey:@"clusterAssetIdentifier"])
  {
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clusterAssetIdentifier"];
    [(CRVehicle *)v5 setClusterAssetIdentifier:v32];
  }

  if ([coderCopy containsValueForKey:@"clusterAssetiOSContentVersion"])
  {
    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clusterAssetiOSContentVersion"];
    [(CRVehicle *)v5 setClusterAssetiOSContentVersion:v33];
  }

  if ([coderCopy containsValueForKey:@"clusterAssetVersion"])
  {
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clusterAssetVersion"];
    [(CRVehicle *)v5 setClusterAssetVersion:v34];
  }

  if ([coderCopy containsValueForKey:@"SDKVersion"])
  {
    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SDKVersion"];
    [(CRVehicle *)v5 setSDKVersion:v35];
  }

  if ([coderCopy containsValueForKey:@"clusterAssetURL"])
  {
    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clusterAssetURL"];
    [(CRVehicle *)v5 setClusterAssetURL:v36];
  }

  if ([coderCopy containsValueForKey:@"stagedClusterAssetiOSContentVersion"])
  {
    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagedClusterAssetiOSContentVersion"];
    [(CRVehicle *)v5 setStagedClusterAssetiOSContentVersion:v37];
  }

  if ([coderCopy containsValueForKey:@"stagedClusterAssetVersion"])
  {
    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagedClusterAssetVersion"];
    [(CRVehicle *)v5 setStagedClusterAssetVersion:v38];
  }

  if ([coderCopy containsValueForKey:@"stagedClusterAssetURL"])
  {
    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagedClusterAssetURL"];
    [(CRVehicle *)v5 setStagedClusterAssetURL:v39];
  }

  if ([coderCopy containsValueForKey:@"displayThemeData"])
  {
    v40 = objc_opt_class();
    v41 = [coderCopy decodeDictionaryWithKeysOfClass:v40 objectsOfClass:objc_opt_class() forKey:@"displayThemeData"];
    [(CRVehicle *)v5 setDisplayThemeData:v41];
  }

  if ([coderCopy containsValueForKey:@"hasGaugeClusterScreen"])
  {
    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasGaugeClusterScreen"];
    [(CRVehicle *)v5 setHasGaugeClusterScreen:v42];
  }

  if ([coderCopy containsValueForKey:@"finishedWelcome"])
  {
    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"finishedWelcome"];
    [(CRVehicle *)v5 setFinishedWelcome:v43];
  }

  if ([coderCopy containsValueForKey:@"oemPunchThroughsAsApp"])
  {
    v44 = objc_opt_class();
    v45 = [coderCopy decodeDictionaryWithKeysOfClass:v44 objectsOfClass:objc_opt_class() forKey:@"oemPunchThroughsAsApp"];
    [(CRVehicle *)v5 setOemPunchThroughsAsApp:v45];
  }

  if ([coderCopy containsValueForKey:@"internalNotes"])
  {
    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"internalNotes"];
    [(CRVehicle *)v5 setInternalNotes:v46];
  }

  if ([coderCopy containsValueForKey:@"isSiriBargeInDisabled"])
  {
    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isSiriBargeInDisabled"];
    -[CRVehicle setSiriBargeInDisabled:](v5, "setSiriBargeInDisabled:", [v47 BOOLValue]);
  }

  if ([coderCopy containsValueForKey:@"supportsMixableAudio"])
  {
    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsMixableAudio"];
    -[CRVehicle setSupportsMixableAudio:](v5, "setSupportsMixableAudio:", [v48 BOOLValue]);
  }

  if ([coderCopy containsValueForKey:@"homeScreenStyleData"])
  {
    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeScreenStyleData"];
    [(CRVehicle *)v5 setHomeScreenStyleData:v49];
  }

  if ([coderCopy containsValueForKey:@"viewAreas"])
  {
    v50 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"viewAreas"];
    [(CRVehicle *)v5 setViewAreas:v50];
  }

LABEL_102:
  v51 = v5;

  return v51;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CRVehicle *)self identifier];

  if (identifier)
  {
    identifier2 = [(CRVehicle *)self identifier];
    [coderCopy encodeObject:identifier2 forKey:@"identifier"];
  }

  vehicleName = [(CRVehicle *)self vehicleName];

  if (vehicleName)
  {
    vehicleName2 = [(CRVehicle *)self vehicleName];
    [coderCopy encodeObject:vehicleName2 forKey:@"vehicleName"];
  }

  certificateSerialNumber = [(CRVehicle *)self certificateSerialNumber];

  if (certificateSerialNumber)
  {
    certificateSerialNumber2 = [(CRVehicle *)self certificateSerialNumber];
    [coderCopy encodeObject:certificateSerialNumber2 forKey:@"certificateSerialNumber"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CRVehicle pairingStatus](self, "pairingStatus")}];
  [coderCopy encodeObject:v10 forKey:@"pairingStatus"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CRVehicle enhancedIntegrationStatus](self, "enhancedIntegrationStatus")}];
  [coderCopy encodeObject:v11 forKey:@"enhancedIntegration"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[CRVehicle supportsEnhancedIntegration](self, "supportsEnhancedIntegration")}];
  [coderCopy encodeObject:v12 forKey:@"supportsEnhancedIntegration"];

  supportsStartSessionRequest = [(CRVehicle *)self supportsStartSessionRequest];

  if (supportsStartSessionRequest)
  {
    supportsStartSessionRequest2 = [(CRVehicle *)self supportsStartSessionRequest];
    [coderCopy encodeObject:supportsStartSessionRequest2 forKey:@"supportsStartSessionRequest"];
  }

  [coderCopy encodeInt:-[CRVehicle albumArtUserPreference](self forKey:{"albumArtUserPreference"), @"albumArtUserPreference"}];
  [coderCopy encodeBool:-[CRVehicle supportsUSBCarPlay](self forKey:{"supportsUSBCarPlay"), @"supportsUSBCarPlay"}];
  [coderCopy encodeBool:-[CRVehicle supportsWirelessCarPlay](self forKey:{"supportsWirelessCarPlay"), @"supportsWirelessCarPlay"}];
  bluetoothAddress = [(CRVehicle *)self bluetoothAddress];

  if (bluetoothAddress)
  {
    bluetoothAddress2 = [(CRVehicle *)self bluetoothAddress];
    [coderCopy encodeObject:bluetoothAddress2 forKey:@"bluetoothAddress"];
  }

  carplayWiFiUUID = [(CRVehicle *)self carplayWiFiUUID];

  if (carplayWiFiUUID)
  {
    carplayWiFiUUID2 = [(CRVehicle *)self carplayWiFiUUID];
    [coderCopy encodeObject:carplayWiFiUUID2 forKey:@"carplayWiFiUUID"];
  }

  accessoryProtocols = [(CRVehicle *)self accessoryProtocols];

  if (accessoryProtocols)
  {
    accessoryProtocols2 = [(CRVehicle *)self accessoryProtocols];
    [coderCopy encodeObject:accessoryProtocols2 forKey:@"carplayProtocols"];
  }

  lastConnectedDate = [(CRVehicle *)self lastConnectedDate];

  if (lastConnectedDate)
  {
    lastConnectedDate2 = [(CRVehicle *)self lastConnectedDate];
    [coderCopy encodeObject:lastConnectedDate2 forKey:@"lastConnectionTime"];
  }

  vehicleModelName = [(CRVehicle *)self vehicleModelName];

  if (vehicleModelName)
  {
    vehicleModelName2 = [(CRVehicle *)self vehicleModelName];
    [coderCopy encodeObject:vehicleModelName2 forKey:@"vehicleModelName"];
  }

  pPID = [(CRVehicle *)self PPID];

  if (pPID)
  {
    pPID2 = [(CRVehicle *)self PPID];
    [coderCopy encodeObject:pPID2 forKey:@"ppid"];
  }

  wallpaperIdentifier = [(CRVehicle *)self wallpaperIdentifier];

  if (wallpaperIdentifier)
  {
    wallpaperIdentifier2 = [(CRVehicle *)self wallpaperIdentifier];
    [coderCopy encodeObject:wallpaperIdentifier2 forKey:@"wallpaperIdentifierUserPreference"];
  }

  previousWallpaperIdentifier = [(CRVehicle *)self previousWallpaperIdentifier];

  if (previousWallpaperIdentifier)
  {
    previousWallpaperIdentifier2 = [(CRVehicle *)self previousWallpaperIdentifier];
    [coderCopy encodeObject:previousWallpaperIdentifier2 forKey:@"previousWallpaperIdentifierUserPreference"];
  }

  colorFilterIntensityPreference = [(CRVehicle *)self colorFilterIntensityPreference];

  if (colorFilterIntensityPreference)
  {
    colorFilterIntensityPreference2 = [(CRVehicle *)self colorFilterIntensityPreference];
    [coderCopy encodeObject:colorFilterIntensityPreference2 forKey:@"colorFilterIntensityPreference"];
  }

  [coderCopy encodeInteger:-[CRVehicle displayScaleMode](self forKey:{"displayScaleMode"), @"displayScaleModeUserPreference"}];
  [coderCopy encodeInteger:-[CRVehicle appearanceModePreference](self forKey:{"appearanceModePreference"), @"appearanceModeUserPreference"}];
  [coderCopy encodeInteger:-[CRVehicle mapsAppearancePreference](self forKey:{"mapsAppearancePreference"), @"mapsAppearancePreference"}];
  [coderCopy encodeInteger:-[CRVehicle colorFilterPreference](self forKey:{"colorFilterPreference"), @"colorFilterPreference"}];
  [coderCopy encodeInteger:-[CRVehicle boldTextPreference](self forKey:{"boldTextPreference"), @"boldTextPreference"}];
  [coderCopy encodeInteger:-[CRVehicle soundRecognitionPreference](self forKey:{"soundRecognitionPreference"), @"soundRecognitionPreference"}];
  [coderCopy encodeInteger:-[CRVehicle voiceControlPreference](self forKey:{"voiceControlPreference"), @"voiceControlPreference"}];
  [coderCopy encodeInteger:-[CRVehicle textSizePreference](self forKey:{"textSizePreference"), @"textSizePreference"}];
  disabledFeaturesPreference = [(CRVehicle *)self disabledFeaturesPreference];

  if (disabledFeaturesPreference)
  {
    disabledFeaturesPreference2 = [(CRVehicle *)self disabledFeaturesPreference];
    [coderCopy encodeObject:disabledFeaturesPreference2 forKey:@"disabledFeaturesPreference"];
  }

  [coderCopy encodeBool:-[CRVehicle supportsBluetoothLE](self forKey:{"supportsBluetoothLE"), @"supportsBluetoothLE"}];
  supportsThemeAssets = [(CRVehicle *)self supportsThemeAssets];

  if (supportsThemeAssets)
  {
    supportsThemeAssets2 = [(CRVehicle *)self supportsThemeAssets];
    [coderCopy encodeObject:supportsThemeAssets2 forKey:@"supportsThemeAssets"];
  }

  clusterAssetIdentifier = [(CRVehicle *)self clusterAssetIdentifier];

  if (clusterAssetIdentifier)
  {
    clusterAssetIdentifier2 = [(CRVehicle *)self clusterAssetIdentifier];
    [coderCopy encodeObject:clusterAssetIdentifier2 forKey:@"clusterAssetIdentifier"];
  }

  clusterAssetiOSContentVersion = [(CRVehicle *)self clusterAssetiOSContentVersion];

  if (clusterAssetiOSContentVersion)
  {
    clusterAssetiOSContentVersion2 = [(CRVehicle *)self clusterAssetiOSContentVersion];
    [coderCopy encodeObject:clusterAssetiOSContentVersion2 forKey:@"clusterAssetiOSContentVersion"];
  }

  clusterAssetVersion = [(CRVehicle *)self clusterAssetVersion];

  if (clusterAssetVersion)
  {
    clusterAssetVersion2 = [(CRVehicle *)self clusterAssetVersion];
    [coderCopy encodeObject:clusterAssetVersion2 forKey:@"clusterAssetVersion"];
  }

  sDKVersion = [(CRVehicle *)self SDKVersion];

  if (sDKVersion)
  {
    sDKVersion2 = [(CRVehicle *)self SDKVersion];
    [coderCopy encodeObject:sDKVersion2 forKey:@"SDKVersion"];
  }

  clusterAssetURL = [(CRVehicle *)self clusterAssetURL];

  if (clusterAssetURL)
  {
    clusterAssetURL2 = [(CRVehicle *)self clusterAssetURL];
    [coderCopy encodeObject:clusterAssetURL2 forKey:@"clusterAssetURL"];
  }

  stagedClusterAssetiOSContentVersion = [(CRVehicle *)self stagedClusterAssetiOSContentVersion];

  if (stagedClusterAssetiOSContentVersion)
  {
    stagedClusterAssetiOSContentVersion2 = [(CRVehicle *)self stagedClusterAssetiOSContentVersion];
    [coderCopy encodeObject:stagedClusterAssetiOSContentVersion2 forKey:@"stagedClusterAssetiOSContentVersion"];
  }

  stagedClusterAssetVersion = [(CRVehicle *)self stagedClusterAssetVersion];

  if (stagedClusterAssetVersion)
  {
    stagedClusterAssetVersion2 = [(CRVehicle *)self stagedClusterAssetVersion];
    [coderCopy encodeObject:stagedClusterAssetVersion2 forKey:@"stagedClusterAssetVersion"];
  }

  stagedClusterAssetURL = [(CRVehicle *)self stagedClusterAssetURL];

  if (stagedClusterAssetURL)
  {
    stagedClusterAssetURL2 = [(CRVehicle *)self stagedClusterAssetURL];
    [coderCopy encodeObject:stagedClusterAssetURL2 forKey:@"stagedClusterAssetURL"];
  }

  displayThemeData = [(CRVehicle *)self displayThemeData];

  if (displayThemeData)
  {
    displayThemeData2 = [(CRVehicle *)self displayThemeData];
    [coderCopy encodeObject:displayThemeData2 forKey:@"displayThemeData"];
  }

  hasGaugeClusterScreen = [(CRVehicle *)self hasGaugeClusterScreen];

  if (hasGaugeClusterScreen)
  {
    hasGaugeClusterScreen2 = [(CRVehicle *)self hasGaugeClusterScreen];
    [coderCopy encodeObject:hasGaugeClusterScreen2 forKey:@"hasGaugeClusterScreen"];
  }

  finishedWelcome = [(CRVehicle *)self finishedWelcome];

  if (finishedWelcome)
  {
    finishedWelcome2 = [(CRVehicle *)self finishedWelcome];
    [coderCopy encodeObject:finishedWelcome2 forKey:@"finishedWelcome"];
  }

  oemPunchThroughsAsApp = [(CRVehicle *)self oemPunchThroughsAsApp];

  if (oemPunchThroughsAsApp)
  {
    oemPunchThroughsAsApp2 = [(CRVehicle *)self oemPunchThroughsAsApp];
    [coderCopy encodeObject:oemPunchThroughsAsApp2 forKey:@"oemPunchThroughsAsApp"];
  }

  internalNotes = [(CRVehicle *)self internalNotes];

  if (internalNotes)
  {
    internalNotes2 = [(CRVehicle *)self internalNotes];
    [coderCopy encodeObject:internalNotes2 forKey:@"internalNotes"];
  }

  if ([(CRVehicle *)self isSiriBargeInDisabled])
  {
    v63 = [MEMORY[0x1E696AD98] numberWithBool:{-[CRVehicle isSiriBargeInDisabled](self, "isSiriBargeInDisabled")}];
    [coderCopy encodeObject:v63 forKey:@"isSiriBargeInDisabled"];
  }

  if ([(CRVehicle *)self supportsMixableAudio])
  {
    v64 = [MEMORY[0x1E696AD98] numberWithBool:{-[CRVehicle supportsMixableAudio](self, "supportsMixableAudio")}];
    [coderCopy encodeObject:v64 forKey:@"supportsMixableAudio"];
  }

  homeScreenStyleData = [(CRVehicle *)self homeScreenStyleData];

  if (homeScreenStyleData)
  {
    homeScreenStyleData2 = [(CRVehicle *)self homeScreenStyleData];
    [coderCopy encodeObject:homeScreenStyleData2 forKey:@"homeScreenStyleData"];
  }

  viewAreas = [(CRVehicle *)self viewAreas];

  v68 = coderCopy;
  if (viewAreas)
  {
    viewAreas2 = [(CRVehicle *)self viewAreas];
    [coderCopy encodeObject:viewAreas2 forKey:@"viewAreas"];

    v68 = coderCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CRVehicle allocWithZone:?];
  v6 = [(NSUUID *)self->_identifier copyWithZone:zone];
  v7 = [(NSData *)self->_certificateSerialNumber copyWithZone:zone];
  v8 = [(CRVehicle *)v5 initWithIdentifier:v6 certificateSerial:v7];

  v9 = [(NSString *)self->_vehicleName copyWithZone:zone];
  v10 = *(v8 + 24);
  *(v8 + 24) = v9;

  *(v8 + 192) = self->_pairingStatus;
  *(v8 + 40) = self->_enhancedIntegrationStatus;
  *(v8 + 8) = self->_supportsEnhancedIntegration;
  v11 = [(NSNumber *)self->_supportsStartSessionRequest copyWithZone:zone];
  v12 = *(v8 + 248);
  *(v8 + 248) = v11;

  *(v8 + 264) = self->_albumArtUserPreference;
  *(v8 + 9) = self->_supportsUSBCarPlay;
  *(v8 + 10) = self->_supportsWirelessCarPlay;
  v13 = [(NSString *)self->_bluetoothAddress copyWithZone:zone];
  v14 = *(v8 + 200);
  *(v8 + 200) = v13;

  v15 = [(NSString *)self->_carplayWiFiUUID copyWithZone:zone];
  v16 = *(v8 + 208);
  *(v8 + 208) = v15;

  v17 = [(NSSet *)self->_accessoryProtocols copyWithZone:zone];
  v18 = *(v8 + 32);
  *(v8 + 32) = v17;

  v19 = [(NSDate *)self->_lastConnectedDate copyWithZone:zone];
  v20 = *(v8 + 216);
  *(v8 + 216) = v19;

  v21 = [(NSString *)self->_vehicleModelName copyWithZone:zone];
  v22 = *(v8 + 224);
  *(v8 + 224) = v21;

  v23 = [(NSString *)self->_PPID copyWithZone:zone];
  v24 = *(v8 + 232);
  *(v8 + 232) = v23;

  v25 = [(NSString *)self->_wallpaperIdentifier copyWithZone:zone];
  v26 = *(v8 + 272);
  *(v8 + 272) = v25;

  v27 = [(NSString *)self->_previousWallpaperIdentifier copyWithZone:zone];
  v28 = *(v8 + 280);
  *(v8 + 280) = v27;

  *(v8 + 288) = self->_displayScaleMode;
  *(v8 + 296) = self->_appearanceModePreference;
  *(v8 + 304) = self->_mapsAppearancePreference;
  *(v8 + 312) = self->_colorFilterPreference;
  v29 = [(NSDictionary *)self->_colorFilterIntensityPreference copyWithZone:zone];
  v30 = *(v8 + 320);
  *(v8 + 320) = v29;

  *(v8 + 328) = self->_boldTextPreference;
  *(v8 + 336) = self->_soundRecognitionPreference;
  *(v8 + 344) = self->_voiceControlPreference;
  *(v8 + 352) = self->_textSizePreference;
  v31 = [(NSNumber *)self->_disabledFeaturesPreference copyWithZone:zone];
  v32 = *(v8 + 256);
  *(v8 + 256) = v31;

  *(v8 + 11) = self->_supportsBluetoothLE;
  v33 = [(NSNumber *)self->_supportsThemeAssets copyWithZone:zone];
  v34 = *(v8 + 48);
  *(v8 + 48) = v33;

  v35 = [(NSString *)self->_clusterAssetiOSContentVersion copyWithZone:zone];
  v36 = *(v8 + 64);
  *(v8 + 64) = v35;

  v37 = [(NSString *)self->_clusterAssetIdentifier copyWithZone:zone];
  v38 = *(v8 + 56);
  *(v8 + 56) = v37;

  v39 = [(NSNumber *)self->_clusterAssetVersion copyWithZone:zone];
  v40 = *(v8 + 72);
  *(v8 + 72) = v39;

  v41 = [(NSString *)self->_SDKVersion copyWithZone:zone];
  v42 = *(v8 + 80);
  *(v8 + 80) = v41;

  v43 = [(NSURL *)self->_clusterAssetURL copyWithZone:zone];
  v44 = *(v8 + 88);
  *(v8 + 88) = v43;

  v45 = [(NSString *)self->_stagedClusterAssetiOSContentVersion copyWithZone:zone];
  v46 = *(v8 + 96);
  *(v8 + 96) = v45;

  v47 = [(NSNumber *)self->_stagedClusterAssetVersion copyWithZone:zone];
  v48 = *(v8 + 104);
  *(v8 + 104) = v47;

  v49 = [(NSURL *)self->_stagedClusterAssetURL copyWithZone:zone];
  v50 = *(v8 + 112);
  *(v8 + 112) = v49;

  v51 = [(NSDictionary *)self->_displayThemeData copyWithZone:zone];
  v52 = *(v8 + 120);
  *(v8 + 120) = v51;

  v53 = [(NSNumber *)self->_hasGaugeClusterScreen copyWithZone:zone];
  v54 = *(v8 + 128);
  *(v8 + 128) = v53;

  v55 = [(NSNumber *)self->_finishedWelcome copyWithZone:zone];
  v56 = *(v8 + 136);
  *(v8 + 136) = v55;

  v57 = [(NSDictionary *)self->_oemPunchThroughsAsApp copyWithZone:zone];
  v58 = *(v8 + 152);
  *(v8 + 152) = v57;

  v59 = [(NSString *)self->_internalNotes copyWithZone:zone];
  v60 = *(v8 + 240);
  *(v8 + 240) = v59;

  *(v8 + 12) = self->_siriBargeInDisabled;
  *(v8 + 13) = self->_supportsMixableAudio;
  v61 = [(NSArray *)self->_viewAreas copyWithZone:zone];
  v62 = *(v8 + 160);
  *(v8 + 160) = v61;

  v63 = [(CRHomeScreenStyleData *)self->_homeScreenStyleData copyWithZone:zone];
  v64 = *(v8 + 144);
  *(v8 + 144) = v63;

  v65 = [(CRSubtitleSettings *)self->_subtitleSettings copyWithZone:zone];
  v66 = *(v8 + 168);
  *(v8 + 168) = v65;

  v67 = [(NSNumber *)self->_videoDiagnosticsEnabled copyWithZone:zone];
  v68 = *(v8 + 176);
  *(v8 + 176) = v67;

  return v8;
}

+ (id)vehicleForMessagingVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  certificateSerialNumber = [vehicleCopy certificateSerialNumber];
  if (certificateSerialNumber)
  {
    v5 = [CRVehicle alloc];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v7 = [(CRVehicle *)v5 initWithIdentifier:uUID certificateSerial:certificateSerialNumber];

    vehicleName = [vehicleCopy vehicleName];
    [(CRVehicle *)v7 setVehicleName:vehicleName];

    bluetoothAddress = [vehicleCopy bluetoothAddress];
    [(CRVehicle *)v7 setBluetoothAddress:bluetoothAddress];

    v10 = MEMORY[0x1E695DFD8];
    accessoryProtocols = [vehicleCopy accessoryProtocols];
    v12 = [v10 setWithArray:accessoryProtocols];
    [(CRVehicle *)v7 setAccessoryProtocols:v12];

    -[CRVehicle setSupportsEnhancedIntegration:](v7, "setSupportsEnhancedIntegration:", [vehicleCopy supportsEnhancedIntegration]);
    if ([vehicleCopy transportType] != 3)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(vehicleCopy, "supportsCarPlayConnectionRequest")}];
      [(CRVehicle *)v7 setSupportsStartSessionRequest:v13];
    }

    -[CRVehicle setSupportsBluetoothLE:](v7, "setSupportsBluetoothLE:", [vehicleCopy supportsBluetoothLE]);
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(vehicleCopy, "supportsThemeAssets")}];
    [(CRVehicle *)v7 setSupportsThemeAssets:v14];

    -[CRVehicle setSupportsUSBCarPlay:](v7, "setSupportsUSBCarPlay:", [vehicleCopy supportsUSBCarPlay]);
    -[CRVehicle setSupportsWirelessCarPlay:](v7, "setSupportsWirelessCarPlay:", [vehicleCopy supportsWirelessCarPlay]);
    pPID = [vehicleCopy PPID];
    [(CRVehicle *)v7 setPPID:pPID];

    if (CRIsInternalInstall())
    {
      date = [MEMORY[0x1E695DF00] date];
      [(CRVehicle *)v7 setLastConnectedDate:date];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_pairingDebugDescription
{
  pairingStatus = [(CRVehicle *)self pairingStatus];
  if (pairingStatus > 2)
  {
    return 0;
  }

  else
  {
    return off_1E82FC8D8[pairingStatus];
  }
}

- (id)_enhancedIntegrationDebugDescription
{
  enhancedIntegrationStatus = [(CRVehicle *)self enhancedIntegrationStatus];
  v3 = @"unknown";
  if (enhancedIntegrationStatus == 1)
  {
    v3 = @"declined";
  }

  if (enhancedIntegrationStatus == 2)
  {
    return @"accepted";
  }

  else
  {
    return v3;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(CRVehicle *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = [identifier isEqual:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v33 = MEMORY[0x1E696AEC0];
  vehicleName = [(CRVehicle *)self vehicleName];
  v4 = @"<unnamed>";
  v37 = vehicleName;
  if (vehicleName)
  {
    v4 = vehicleName;
  }

  v31 = v4;
  identifier = [(CRVehicle *)self identifier];
  uUIDString = [identifier UUIDString];
  pPID = [(CRVehicle *)self PPID];
  _pairingDebugDescription = [(CRVehicle *)self _pairingDebugDescription];
  supportsStartSessionRequest = [(CRVehicle *)self supportsStartSessionRequest];
  if (supportsStartSessionRequest)
  {
    supportsStartSessionRequest2 = [(CRVehicle *)self supportsStartSessionRequest];
    if ([supportsStartSessionRequest2 BOOLValue])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v30 = v7;
  }

  else
  {
    v30 = @"unset";
  }

  supportsThemeAssets = [(CRVehicle *)self supportsThemeAssets];
  v39 = pPID;
  v40 = uUIDString;
  if (supportsThemeAssets)
  {
    supportsThemeAssets2 = [(CRVehicle *)self supportsThemeAssets];
    if ([supportsThemeAssets2 BOOLValue])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v29 = v8;
  }

  else
  {
    v29 = @"unset";
  }

  clusterAssetIdentifier = [(CRVehicle *)self clusterAssetIdentifier];
  clusterAssetiOSContentVersion = [(CRVehicle *)self clusterAssetiOSContentVersion];
  clusterAssetVersion = [(CRVehicle *)self clusterAssetVersion];
  _enhancedIntegrationDebugDescription = [(CRVehicle *)self _enhancedIntegrationDebugDescription];
  disabledFeaturesPreference = [(CRVehicle *)self disabledFeaturesPreference];
  if ([(CRVehicle *)self isSiriBargeInDisabled])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v25 = v11;
  if ([(CRVehicle *)self supportsMixableAudio])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v24 = v12;
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CRVehicle albumArtUserPreference](self, "albumArtUserPreference")}];
  bluetoothAddress = [(CRVehicle *)self bluetoothAddress];
  carplayWiFiUUID = [(CRVehicle *)self carplayWiFiUUID];
  accessoryProtocols = [(CRVehicle *)self accessoryProtocols];
  lastConnectedDate = [(CRVehicle *)self lastConnectedDate];
  vehicleModelName = [(CRVehicle *)self vehicleModelName];
  homeScreenStyleData = [(CRVehicle *)self homeScreenStyleData];
  viewAreas = [(CRVehicle *)self viewAreas];
  v34 = [v33 stringWithFormat:@"%@ (identifier: %@, PPID: %@, pairing: %@, startSessionRequest: %@, cluster{supported: %@ id: %@ versions{ %@, %@}, enhancedIntegration: %@, disabledFeatures: %@, isSiriBargeInDisabled: %@, supportsMixableAudio: %@, albumArtUserPreference: %@, %@: %@, %@: %@, %@: %@, %@: %@, %@: %@, %@: %@, %@: %@)", v31, v40, v39, _pairingDebugDescription, v30, v29, clusterAssetIdentifier, clusterAssetiOSContentVersion, clusterAssetVersion, _enhancedIntegrationDebugDescription, disabledFeaturesPreference, v25, v24, v23, @"bluetoothAddress", bluetoothAddress, @"carplayWiFiUUID", carplayWiFiUUID, @"carplayProtocols", accessoryProtocols, @"lastConnectionTime", lastConnectedDate, @"vehicleModelName", vehicleModelName, @"homeScreenStyleData", homeScreenStyleData, @"viewAreas", viewAreas];

  if (supportsThemeAssets)
  {
  }

  if (supportsStartSessionRequest)
  {
  }

  return v34;
}

- (void)mergeAttributesFromVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  certificateSerialNumber = [vehicleCopy certificateSerialNumber];

  if (certificateSerialNumber)
  {
    certificateSerialNumber2 = [vehicleCopy certificateSerialNumber];
    [(CRVehicle *)self setCertificateSerialNumber:certificateSerialNumber2];
  }

  vehicleName = [vehicleCopy vehicleName];

  if (vehicleName)
  {
    vehicleName2 = [vehicleCopy vehicleName];
    [(CRVehicle *)self setVehicleName:vehicleName2];
  }

  if ([vehicleCopy pairingStatus])
  {
    -[CRVehicle setPairingStatus:](self, "setPairingStatus:", [vehicleCopy pairingStatus]);
  }

  if ([vehicleCopy enhancedIntegrationStatus])
  {
    -[CRVehicle setEnhancedIntegrationStatus:](self, "setEnhancedIntegrationStatus:", [vehicleCopy enhancedIntegrationStatus]);
  }

  supportsStartSessionRequest = [vehicleCopy supportsStartSessionRequest];

  if (supportsStartSessionRequest)
  {
    supportsStartSessionRequest2 = [vehicleCopy supportsStartSessionRequest];
    [(CRVehicle *)self setSupportsStartSessionRequest:supportsStartSessionRequest2];
  }

  -[CRVehicle setSupportsWirelessCarPlay:](self, "setSupportsWirelessCarPlay:", [vehicleCopy supportsWirelessCarPlay]);
  -[CRVehicle setSupportsUSBCarPlay:](self, "setSupportsUSBCarPlay:", [vehicleCopy supportsUSBCarPlay]);
  bluetoothAddress = [vehicleCopy bluetoothAddress];

  if (bluetoothAddress)
  {
    bluetoothAddress2 = [vehicleCopy bluetoothAddress];
    [(CRVehicle *)self setBluetoothAddress:bluetoothAddress2];
  }

  carplayWiFiUUID = [vehicleCopy carplayWiFiUUID];

  if (carplayWiFiUUID)
  {
    carplayWiFiUUID2 = [vehicleCopy carplayWiFiUUID];
    [(CRVehicle *)self setCarplayWiFiUUID:carplayWiFiUUID2];
  }

  accessoryProtocols = [vehicleCopy accessoryProtocols];

  if (accessoryProtocols)
  {
    accessoryProtocols2 = [vehicleCopy accessoryProtocols];
    [(CRVehicle *)self setAccessoryProtocols:accessoryProtocols2];
  }

  lastConnectedDate = [vehicleCopy lastConnectedDate];

  if (lastConnectedDate)
  {
    lastConnectedDate2 = [vehicleCopy lastConnectedDate];
    [(CRVehicle *)self setLastConnectedDate:lastConnectedDate2];
  }

  vehicleModelName = [vehicleCopy vehicleModelName];

  if (vehicleModelName)
  {
    vehicleModelName2 = [vehicleCopy vehicleModelName];
    [(CRVehicle *)self setVehicleModelName:vehicleModelName2];
  }

  pPID = [vehicleCopy PPID];

  if (pPID)
  {
    pPID2 = [vehicleCopy PPID];
    [(CRVehicle *)self setPPID:pPID2];
  }

  -[CRVehicle setAlbumArtUserPreference:](self, "setAlbumArtUserPreference:", [vehicleCopy albumArtUserPreference]);
  wallpaperIdentifier = [vehicleCopy wallpaperIdentifier];

  if (wallpaperIdentifier)
  {
    wallpaperIdentifier2 = [vehicleCopy wallpaperIdentifier];
    [(CRVehicle *)self setWallpaperIdentifier:wallpaperIdentifier2];
  }

  previousWallpaperIdentifier = [vehicleCopy previousWallpaperIdentifier];

  if (previousWallpaperIdentifier)
  {
    previousWallpaperIdentifier2 = [vehicleCopy previousWallpaperIdentifier];
    [(CRVehicle *)self setPreviousWallpaperIdentifier:previousWallpaperIdentifier2];
  }

  -[CRVehicle setDisplayScaleMode:](self, "setDisplayScaleMode:", [vehicleCopy displayScaleMode]);
  if ([vehicleCopy appearanceModePreference] != -1)
  {
    -[CRVehicle setAppearanceModePreference:](self, "setAppearanceModePreference:", [vehicleCopy appearanceModePreference]);
  }

  if ([vehicleCopy mapsAppearancePreference] != -1)
  {
    -[CRVehicle setMapsAppearancePreference:](self, "setMapsAppearancePreference:", [vehicleCopy mapsAppearancePreference]);
  }

  if ([vehicleCopy colorFilterPreference])
  {
    -[CRVehicle setColorFilterPreference:](self, "setColorFilterPreference:", [vehicleCopy colorFilterPreference]);
  }

  colorFilterIntensityPreference = [vehicleCopy colorFilterIntensityPreference];

  if (colorFilterIntensityPreference)
  {
    colorFilterIntensityPreference2 = [vehicleCopy colorFilterIntensityPreference];
    [(CRVehicle *)self setColorFilterIntensityPreference:colorFilterIntensityPreference2];
  }

  if ([vehicleCopy boldTextPreference])
  {
    -[CRVehicle setBoldTextPreference:](self, "setBoldTextPreference:", [vehicleCopy boldTextPreference]);
  }

  -[CRVehicle setSoundRecognitionPreference:](self, "setSoundRecognitionPreference:", [vehicleCopy soundRecognitionPreference]);
  -[CRVehicle setVoiceControlPreference:](self, "setVoiceControlPreference:", [vehicleCopy voiceControlPreference]);
  if ([vehicleCopy textSizePreference])
  {
    -[CRVehicle setTextSizePreference:](self, "setTextSizePreference:", [vehicleCopy textSizePreference]);
  }

  disabledFeaturesPreference = [vehicleCopy disabledFeaturesPreference];

  if (disabledFeaturesPreference)
  {
    disabledFeaturesPreference2 = [vehicleCopy disabledFeaturesPreference];
    [(CRVehicle *)self setDisabledFeaturesPreference:disabledFeaturesPreference2];
  }

  -[CRVehicle setSupportsBluetoothLE:](self, "setSupportsBluetoothLE:", [vehicleCopy supportsBluetoothLE]);
  supportsThemeAssets = [vehicleCopy supportsThemeAssets];

  if (supportsThemeAssets)
  {
    supportsThemeAssets2 = [vehicleCopy supportsThemeAssets];
    [(CRVehicle *)self setSupportsThemeAssets:supportsThemeAssets2];
  }

  clusterAssetIdentifier = [vehicleCopy clusterAssetIdentifier];

  if (clusterAssetIdentifier)
  {
    clusterAssetIdentifier2 = [vehicleCopy clusterAssetIdentifier];
    [(CRVehicle *)self setClusterAssetIdentifier:clusterAssetIdentifier2];
  }

  clusterAssetiOSContentVersion = [vehicleCopy clusterAssetiOSContentVersion];

  if (clusterAssetiOSContentVersion)
  {
    clusterAssetiOSContentVersion2 = [vehicleCopy clusterAssetiOSContentVersion];
    [(CRVehicle *)self setClusterAssetiOSContentVersion:clusterAssetiOSContentVersion2];
  }

  clusterAssetVersion = [vehicleCopy clusterAssetVersion];

  if (clusterAssetVersion)
  {
    clusterAssetVersion2 = [vehicleCopy clusterAssetVersion];
    [(CRVehicle *)self setClusterAssetVersion:clusterAssetVersion2];
  }

  sDKVersion = [vehicleCopy SDKVersion];

  if (sDKVersion)
  {
    sDKVersion2 = [vehicleCopy SDKVersion];
    [(CRVehicle *)self setSDKVersion:sDKVersion2];
  }

  clusterAssetURL = [vehicleCopy clusterAssetURL];

  if (clusterAssetURL)
  {
    clusterAssetURL2 = [vehicleCopy clusterAssetURL];
    [(CRVehicle *)self setClusterAssetURL:clusterAssetURL2];
  }

  stagedClusterAssetiOSContentVersion = [vehicleCopy stagedClusterAssetiOSContentVersion];

  if (stagedClusterAssetiOSContentVersion)
  {
    stagedClusterAssetiOSContentVersion2 = [vehicleCopy stagedClusterAssetiOSContentVersion];
    [(CRVehicle *)self setStagedClusterAssetiOSContentVersion:stagedClusterAssetiOSContentVersion2];
  }

  stagedClusterAssetVersion = [vehicleCopy stagedClusterAssetVersion];

  if (stagedClusterAssetVersion)
  {
    stagedClusterAssetVersion2 = [vehicleCopy stagedClusterAssetVersion];
    [(CRVehicle *)self setStagedClusterAssetVersion:stagedClusterAssetVersion2];
  }

  stagedClusterAssetURL = [vehicleCopy stagedClusterAssetURL];

  if (stagedClusterAssetURL)
  {
    stagedClusterAssetURL2 = [vehicleCopy stagedClusterAssetURL];
    [(CRVehicle *)self setStagedClusterAssetURL:stagedClusterAssetURL2];
  }

  displayThemeData = [vehicleCopy displayThemeData];

  if (displayThemeData)
  {
    displayThemeData2 = [vehicleCopy displayThemeData];
    [(CRVehicle *)self setDisplayThemeData:displayThemeData2];
  }

  hasGaugeClusterScreen = [vehicleCopy hasGaugeClusterScreen];

  if (hasGaugeClusterScreen)
  {
    hasGaugeClusterScreen2 = [vehicleCopy hasGaugeClusterScreen];
    [(CRVehicle *)self setHasGaugeClusterScreen:hasGaugeClusterScreen2];
  }

  finishedWelcome = [vehicleCopy finishedWelcome];

  if (finishedWelcome)
  {
    finishedWelcome2 = [vehicleCopy finishedWelcome];
    [(CRVehicle *)self setFinishedWelcome:finishedWelcome2];
  }

  oemPunchThroughsAsApp = [vehicleCopy oemPunchThroughsAsApp];

  if (oemPunchThroughsAsApp)
  {
    oemPunchThroughsAsApp2 = [vehicleCopy oemPunchThroughsAsApp];
    [(CRVehicle *)self setOemPunchThroughsAsApp:oemPunchThroughsAsApp2];
  }

  -[CRVehicle setSiriBargeInDisabled:](self, "setSiriBargeInDisabled:", [vehicleCopy isSiriBargeInDisabled]);
  -[CRVehicle setSupportsMixableAudio:](self, "setSupportsMixableAudio:", [vehicleCopy supportsMixableAudio]);
  subtitleSettings = [vehicleCopy subtitleSettings];

  if (subtitleSettings)
  {
    subtitleSettings2 = [vehicleCopy subtitleSettings];
    [(CRVehicle *)self setSubtitleSettings:subtitleSettings2];
  }

  videoDiagnosticsEnabled = [vehicleCopy videoDiagnosticsEnabled];

  if (videoDiagnosticsEnabled)
  {
    videoDiagnosticsEnabled2 = [vehicleCopy videoDiagnosticsEnabled];
    [(CRVehicle *)self setVideoDiagnosticsEnabled:videoDiagnosticsEnabled2];
  }

  internalNotes = [vehicleCopy internalNotes];

  if (internalNotes)
  {
    internalNotes2 = [vehicleCopy internalNotes];
    [(CRVehicle *)self setInternalNotes:internalNotes2];
  }

  homeScreenStyleData = [vehicleCopy homeScreenStyleData];
  [(CRVehicle *)self setHomeScreenStyleData:homeScreenStyleData];

  viewAreas = [vehicleCopy viewAreas];

  if (viewAreas)
  {
    viewAreas2 = [vehicleCopy viewAreas];
    [(CRVehicle *)self setViewAreas:viewAreas2];
  }
}

- (void)setClusterAssetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (identifierCopy && [identifierCopy length])
  {
    objc_storeStrong(&self->_clusterAssetIdentifier, identifier);
  }

  else if (self->_clusterAssetIdentifier)
  {
    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "Reusing current asset identifier", v8, 2u);
    }
  }
}

- (id)displayName
{
  vehicleName = [(CRVehicle *)self vehicleName];
  if (![vehicleName length])
  {
    bluetoothAddress = [(CRVehicle *)self bluetoothAddress];
    v5 = [bluetoothAddress length];

    if (v5)
    {
      bluetoothAddress2 = [(CRVehicle *)self bluetoothAddress];
    }

    else
    {
      bluetoothAddress2 = &stru_1F47DECC0;
    }

    vehicleName = bluetoothAddress2;
  }

  return vehicleName;
}

- (BOOL)requiresBonjour
{
  supportsStartSessionRequest = [(CRVehicle *)self supportsStartSessionRequest];
  if (supportsStartSessionRequest)
  {
    supportsStartSessionRequest2 = [(CRVehicle *)self supportsStartSessionRequest];
    v5 = [supportsStartSessionRequest2 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (id)assetDescription
{
  v3 = CFPreferencesCopyAppValue(@"AlwaysUpdateAsset", CRPreferencesNotMigratedDomain);
  v17 = MEMORY[0x1E696AEC0];
  clusterAssetIdentifier = [(CRVehicle *)self clusterAssetIdentifier];
  v23 = CRNullableDescriptionForString(clusterAssetIdentifier);
  clusterAssetiOSContentVersion = [(CRVehicle *)self clusterAssetiOSContentVersion];
  v21 = CRNullableDescriptionForString(clusterAssetiOSContentVersion);
  clusterAssetVersion = [(CRVehicle *)self clusterAssetVersion];
  sDKVersion = [(CRVehicle *)self SDKVersion];
  v4 = CRNullableDescriptionForString(sDKVersion);
  clusterAssetURL = [(CRVehicle *)self clusterAssetURL];
  absoluteString = [clusterAssetURL absoluteString];
  v5 = CRNullableDescriptionForString(absoluteString);
  stagedClusterAssetiOSContentVersion = [(CRVehicle *)self stagedClusterAssetiOSContentVersion];
  v6 = CRNullableDescriptionForString(stagedClusterAssetiOSContentVersion);
  stagedClusterAssetVersion = [(CRVehicle *)self stagedClusterAssetVersion];
  stagedClusterAssetURL = [(CRVehicle *)self stagedClusterAssetURL];
  absoluteString2 = [stagedClusterAssetURL absoluteString];
  v10 = CRNullableDescriptionForString(absoluteString2);
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
    v12 = @"NO";
    if (bOOLValue)
    {
      v12 = @"YES";
    }
  }

  else
  {
    v12 = @"unset";
  }

  v18 = [v17 stringWithFormat:@"Asset Identifier: %@\niOS Version: %@\nAccessory Version: %@\nSDK Version: %@\nAsset URL: %@\nStaged Asset iOS Version: %@\nStaged Asset Accessory Version: %@\nStaged Asset URL: %@\nAlways Update Asset preference: %@", v23, v21, clusterAssetVersion, v4, v5, v6, stagedClusterAssetVersion, v10, v12];

  return v18;
}

- (NSString)wallpaperDescription
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  wallpaperIdentifier = [(CRVehicle *)self wallpaperIdentifier];
  previousWallpaperIdentifier = [(CRVehicle *)self previousWallpaperIdentifier];
  v6 = [v3 stringWithFormat:@"Wallpaper identifier: %@\nPrevious wallpaper identifier: %@", wallpaperIdentifier, previousWallpaperIdentifier];

  displayThemeData = [(CRVehicle *)self displayThemeData];

  if (displayThemeData)
  {

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    displayThemeData2 = [(CRVehicle *)self displayThemeData];
    v9 = [displayThemeData2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      v6 = @"wallpaper identifier: ";
      do
      {
        v12 = 0;
        v13 = v6;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(displayThemeData2);
          }

          v14 = *(*(&v18 + 1) + 8 * v12);
          displayThemeData3 = [(CRVehicle *)self displayThemeData];
          v16 = [displayThemeData3 objectForKey:v14];
          v6 = [(__CFString *)v13 stringByAppendingFormat:@"\nDisplay: %@\n\t%@", v14, v16];

          ++v12;
          v13 = v6;
        }

        while (v10 != v12);
        v10 = [displayThemeData2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    else
    {
      v6 = @"wallpaper identifier: ";
    }
  }

  return v6;
}

- (void)setSystemWallpaperData:(id)data
{
  identifier = [data identifier];
  [(CRVehicle *)self setWallpaperIdentifier:identifier];
}

- (CRSystemWallpaperData)previousSystemWallpaperData
{
  previousWallpaperIdentifier = [(CRVehicle *)self previousWallpaperIdentifier];

  if (previousWallpaperIdentifier)
  {
    v4 = [CRSystemWallpaperData alloc];
    previousWallpaperIdentifier2 = [(CRVehicle *)self previousWallpaperIdentifier];
    v6 = [(CRSystemWallpaperData *)v4 initWithIdentifier:previousWallpaperIdentifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setPreviousSystemWallpaperData:(id)data
{
  identifier = [data identifier];
  [(CRVehicle *)self setPreviousWallpaperIdentifier:identifier];
}

- (id)wallpaperForDisplayWithID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  displayThemeData = [(CRVehicle *)self displayThemeData];

  if (dCopy && displayThemeData)
  {
    displayThemeData2 = [(CRVehicle *)self displayThemeData];
    v7 = [displayThemeData2 objectForKey:dCopy];

    v8 = CarGeneralLogging();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = dCopy;
        _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_INFO, "Returning wallpaper using themeData for display with id: %@", &v13, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CRVehicle *)dCopy wallpaperForDisplayWithID:v9];
    }

    currentWallpaper = [v7 currentWallpaper];
  }

  else
  {
    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1C81FC000, v10, OS_LOG_TYPE_INFO, "Returning system wallpaper", &v13, 2u);
    }

    currentWallpaper = [(CRVehicle *)self systemWallpaperData];
  }

  return currentWallpaper;
}

- (BOOL)setWallpaper:(id)wallpaper forDisplayWithID:(id)d requiresDarkAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  v26 = *MEMORY[0x1E69E9840];
  wallpaperCopy = wallpaper;
  dCopy = d;
  displayThemeData = [(CRVehicle *)self displayThemeData];

  if (dCopy && displayThemeData)
  {
    v11 = CarGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      v25 = dCopy;
      _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_INFO, "Set wallpaper using themeData and display id: %@", &v24, 0xCu);
    }

    displayThemeData2 = [(CRVehicle *)self displayThemeData];
    v13 = [displayThemeData2 objectForKey:dCopy];

    if (v13)
    {
      v14 = [v13 themeDataWithCurrentWallpaper:wallpaperCopy];

      displayThemeData3 = [(CRVehicle *)self displayThemeData];
      v16 = [displayThemeData3 mutableCopy];

      [v16 setObject:v14 forKey:dCopy];
      [(CRVehicle *)self setDisplayThemeData:v16];

      if (!appearanceCopy)
      {
LABEL_15:
        v21 = 1;
        goto LABEL_19;
      }

LABEL_12:
      v19 = CarGeneralLogging();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        identifier = [wallpaperCopy identifier];
        v24 = 138543362;
        v25 = identifier;
        _os_log_impl(&dword_1C81FC000, v19, OS_LOG_TYPE_INFO, "Selected #wallpaper %{public}@ doesn't support dynamic appearance. Locking Appearance to Always Dark", &v24, 0xCu);
      }

      [(CRVehicle *)self setAppearanceModePreference:2];
      goto LABEL_15;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = CarGeneralLogging();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_1C81FC000, v17, OS_LOG_TYPE_INFO, "Set system wallpaper", &v24, 2u);
      }

      systemWallpaperData = [(CRVehicle *)self systemWallpaperData];
      [(CRVehicle *)self setPreviousSystemWallpaperData:systemWallpaperData];

      [(CRVehicle *)self setSystemWallpaperData:wallpaperCopy];
      if (!appearanceCopy)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

  v22 = CarGeneralLogging();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    [CRVehicle setWallpaper:forDisplayWithID:requiresDarkAppearance:];
  }

  v21 = 0;
LABEL_19:

  return v21;
}

- (id)homeScreenStyleDataForDisplayWithID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  displayThemeData = [(CRVehicle *)self displayThemeData];

  if (dCopy && displayThemeData)
  {
    displayThemeData2 = [(CRVehicle *)self displayThemeData];
    v7 = [displayThemeData2 objectForKey:dCopy];

    v8 = CarGeneralLogging();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = dCopy;
        _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_INFO, "Returning home screen style using themeData for display with id: %@", &v13, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CRVehicle *)dCopy homeScreenStyleDataForDisplayWithID:v9];
    }

    currentHomeScreenStyle = [v7 currentHomeScreenStyle];
  }

  else
  {
    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1C81FC000, v10, OS_LOG_TYPE_INFO, "Returning system home screen style data", &v13, 2u);
    }

    currentHomeScreenStyle = [(CRVehicle *)self homeScreenStyleData];
  }

  return currentHomeScreenStyle;
}

- (BOOL)setHomeScreenStyle:(id)style forDisplayWithID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  dCopy = d;
  displayThemeData = [(CRVehicle *)self displayThemeData];

  v9 = CarGeneralLogging();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (!dCopy || !displayThemeData)
  {
    if (v10)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_INFO, "Set system home screen style", &v19, 2u);
    }

    [(CRVehicle *)self setHomeScreenStyleData:styleCopy];
    goto LABEL_10;
  }

  if (v10)
  {
    v19 = 138412290;
    v20 = dCopy;
    _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_INFO, "Set home screen style using themeData and display id: %@", &v19, 0xCu);
  }

  displayThemeData2 = [(CRVehicle *)self displayThemeData];
  v12 = [displayThemeData2 objectForKey:dCopy];

  if (v12)
  {
    v13 = [v12 themeDataWithCurrentHomeScreenStyle:styleCopy];

    displayThemeData3 = [(CRVehicle *)self displayThemeData];
    v15 = [displayThemeData3 mutableCopy];

    [v15 setObject:v13 forKey:dCopy];
    [(CRVehicle *)self setDisplayThemeData:v15];

LABEL_10:
    v16 = 1;
    goto LABEL_11;
  }

  v18 = CarGeneralLogging();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    [CRVehicle setHomeScreenStyle:forDisplayWithID:];
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (void)setViewAreas:(id)areas
{
  areasCopy = areas;
  viewAreas = self->_viewAreas;
  p_viewAreas = &self->_viewAreas;
  v5 = viewAreas;
  if (!areasCopy && v5 && CRIsInternalInstall())
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(CRVehicle *)p_viewAreas setViewAreas:v8];
    }
  }

  v9 = [areasCopy copy];
  v10 = *p_viewAreas;
  *p_viewAreas = v9;
}

- (NSString)_axColorFiltersAnalyticsString
{
  colorFilterIntensityPreference = [(CRVehicle *)self colorFilterIntensityPreference];
  colorFilterPreference = [(CRVehicle *)self colorFilterPreference];
  if (colorFilterPreference > 2)
  {
    switch(colorFilterPreference)
    {
      case 5:
        v5 = @"BlueYellow";
        v6 = @"CARColorFilterIntensityBlueYellowKey";
        break;
      case 4:
        v5 = @"GreenRed";
        v6 = @"CARColorFilterIntensityGreenRedKey";
        break;
      case 3:
        v5 = @"RedGreen";
        v6 = @"CARColorFilterIntensityRedGreenKey";
        break;
      default:
LABEL_13:
        v9 = @"Undefined";
        goto LABEL_15;
    }

LABEL_11:
    v7 = [colorFilterIntensityPreference objectForKeyedSubscript:v6];
    v8 = [(CRVehicle *)self _axColorFiltersIntensityStringForNumber:v7];

    if (v8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v5, v8];

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (colorFilterPreference != 1)
  {
    if (colorFilterPreference != 2)
    {
      goto LABEL_13;
    }

    v5 = @"Gray";
    v6 = @"CARColorFilterIntensityGrayscaleKey";
    goto LABEL_11;
  }

  v9 = @"Off";
LABEL_15:

  return v9;
}

- (id)_axColorFiltersIntensityStringForNumber:(id)number
{
  numberCopy = number;
  if ([numberCopy isEqualToNumber:&unk_1F47F2658])
  {
    v4 = @"Low";
  }

  else if ([numberCopy isEqualToNumber:&unk_1F47F2670])
  {
    v4 = @"Medium";
  }

  else if ([numberCopy isEqualToNumber:&unk_1F47F2688])
  {
    v4 = @"High";
  }

  else
  {
    v4 = @"Undefined";
  }

  return v4;
}

- (NSString)_axSoundRecognitionAnalyticsString
{
  array = [MEMORY[0x1E695DF70] array];
  soundRecognitionPreference = [(CRVehicle *)self soundRecognitionPreference];
  if (soundRecognitionPreference)
  {
    [array addObject:@"Enabled"];
    if ((soundRecognitionPreference & 2) != 0)
    {
      [array addObject:@"CarHorns"];
    }

    if ((soundRecognitionPreference & 4) != 0)
    {
      [array addObject:@"Siren"];
    }

    v5 = [array componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = @"Off";
  }

  return v5;
}

- (void)wallpaperForDisplayWithID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "Failed to get wallpaper, no display with id: %@", &v2, 0xCu);
}

- (void)homeScreenStyleDataForDisplayWithID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "Failed to get home screen style, no display with id: %@", &v2, 0xCu);
}

- (void)setViewAreas:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_fault_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_FAULT, "Nulling out previously set view areas: %{public}@", &v3, 0xCu);
}

@end