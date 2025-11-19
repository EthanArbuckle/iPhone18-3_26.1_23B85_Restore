@interface CRVehicle
+ (id)vehicleForMessagingVehicle:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)requiresBonjour;
- (BOOL)setHomeScreenStyle:(id)a3 forDisplayWithID:(id)a4;
- (BOOL)setWallpaper:(id)a3 forDisplayWithID:(id)a4 requiresDarkAppearance:(BOOL)a5;
- (CRSystemWallpaperData)previousSystemWallpaperData;
- (CRSystemWallpaperData)systemWallpaperData;
- (CRVehicle)initWithCoder:(id)a3;
- (CRVehicle)initWithIdentifier:(id)a3 certificateSerial:(id)a4;
- (NSString)_axColorFiltersAnalyticsString;
- (NSString)_axSoundRecognitionAnalyticsString;
- (NSString)wallpaperDescription;
- (id)_axColorFiltersIntensityStringForNumber:(id)a3;
- (id)_enhancedIntegrationDebugDescription;
- (id)_pairingDebugDescription;
- (id)assetDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)displayName;
- (id)homeScreenStyleDataForDisplayWithID:(id)a3;
- (id)wallpaperForDisplayWithID:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)mergeAttributesFromVehicle:(id)a3;
- (void)setClusterAssetIdentifier:(id)a3;
- (void)setPreviousSystemWallpaperData:(id)a3;
- (void)setSystemWallpaperData:(id)a3;
- (void)setViewAreas:(id)a3;
@end

@implementation CRVehicle

- (CRSystemWallpaperData)systemWallpaperData
{
  v3 = [(CRVehicle *)self wallpaperIdentifier];

  if (v3)
  {
    v4 = [CRSystemWallpaperData alloc];
    v5 = [(CRVehicle *)self wallpaperIdentifier];
    v6 = [(CRSystemWallpaperData *)v4 initWithIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(CRVehicle *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (CRVehicle)initWithIdentifier:(id)a3 certificateSerial:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CRVehicle;
  v8 = [(CRVehicle *)&v12 init];
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      [(CRVehicle *)v8 setIdentifier:v6];
    }

    else
    {
      v10 = [MEMORY[0x1E696AFB0] UUID];
      [(CRVehicle *)v9 setIdentifier:v10];
    }

    [(CRVehicle *)v9 setCertificateSerialNumber:v7];
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

- (CRVehicle)initWithCoder:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = CRVehicle;
  v5 = [(CRVehicle *)&v53 init];

  if (!v5)
  {
    goto LABEL_102;
  }

  if ([v4 containsValueForKey:@"identifier"])
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(CRVehicle *)v5 setIdentifier:v6];
  }

  if ([v4 containsValueForKey:@"vehicleName"])
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vehicleName"];
    [(CRVehicle *)v5 setVehicleName:v7];
  }

  if ([v4 containsValueForKey:@"certificateSerialNumber"])
  {
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"certificateSerialNumber"];
    [(CRVehicle *)v5 setCertificateSerialNumber:v8];
  }

  if ([v4 containsValueForKey:@"pairingStatus"])
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingStatus"];
    -[CRVehicle setPairingStatus:](v5, "setPairingStatus:", [v9 integerValue]);
  }

  if ([v4 containsValueForKey:@"enhancedIntegration"])
  {
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enhancedIntegration"];
    -[CRVehicle setEnhancedIntegrationStatus:](v5, "setEnhancedIntegrationStatus:", [v10 integerValue]);
  }

  if ([v4 containsValueForKey:@"supportsEnhancedIntegration"])
  {
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportsEnhancedIntegration"];
    -[CRVehicle setSupportsEnhancedIntegration:](v5, "setSupportsEnhancedIntegration:", [v11 BOOLValue]);
  }

  if ([v4 containsValueForKey:@"supportsStartSessionRequest"])
  {
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportsStartSessionRequest"];
    [(CRVehicle *)v5 setSupportsStartSessionRequest:v12];
  }

  if ([v4 containsValueForKey:@"bluetoothAddress"])
  {
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothAddress"];
    [(CRVehicle *)v5 setBluetoothAddress:v13];
  }

  if ([v4 containsValueForKey:@"carplayWiFiUUID"])
  {
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"carplayWiFiUUID"];
    [(CRVehicle *)v5 setCarplayWiFiUUID:v14];
  }

  if ([v4 containsValueForKey:@"carplayProtocols"])
  {
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"carplayProtocols"];
    [(CRVehicle *)v5 setAccessoryProtocols:v18];
  }

  if ([v4 containsValueForKey:@"lastConnectionTime"])
  {
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastConnectionTime"];
    [(CRVehicle *)v5 setLastConnectedDate:v19];
  }

  if ([v4 containsValueForKey:@"vehicleModelName"])
  {
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vehicleModelName"];
    [(CRVehicle *)v5 setVehicleModelName:v20];
  }

  if ([v4 containsValueForKey:@"ppid"])
  {
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ppid"];
    [(CRVehicle *)v5 setPPID:v21];
  }

  if ([v4 containsValueForKey:@"albumArtUserPreference"])
  {
    -[CRVehicle setAlbumArtUserPreference:](v5, "setAlbumArtUserPreference:", [v4 decodeIntegerForKey:@"albumArtUserPreference"]);
  }

  if ([v4 containsValueForKey:@"supportsUSBCarPlay"])
  {
    v22 = [v4 decodeBoolForKey:@"supportsUSBCarPlay"];
  }

  else
  {
    v23 = [(CRVehicle *)v5 bluetoothAddress];

    if (v23)
    {
      goto LABEL_35;
    }

    v22 = 1;
  }

  [(CRVehicle *)v5 setSupportsUSBCarPlay:v22];
LABEL_35:
  if ([v4 containsValueForKey:@"supportsWirelessCarPlay"])
  {
    v24 = [v4 decodeBoolForKey:@"supportsWirelessCarPlay"];
LABEL_39:
    [(CRVehicle *)v5 setSupportsWirelessCarPlay:v24];
    goto LABEL_40;
  }

  v25 = [(CRVehicle *)v5 bluetoothAddress];

  if (v25)
  {
    v24 = 1;
    goto LABEL_39;
  }

LABEL_40:
  if ([v4 containsValueForKey:@"wallpaperIdentifierUserPreference"])
  {
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wallpaperIdentifierUserPreference"];
    [(CRVehicle *)v5 setWallpaperIdentifier:v26];
  }

  if ([v4 containsValueForKey:@"previousWallpaperIdentifierUserPreference"])
  {
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previousWallpaperIdentifierUserPreference"];
    [(CRVehicle *)v5 setPreviousWallpaperIdentifier:v27];
  }

  if ([v4 containsValueForKey:@"displayScaleModeUserPreference"])
  {
    -[CRVehicle setDisplayScaleMode:](v5, "setDisplayScaleMode:", [v4 decodeIntegerForKey:@"displayScaleModeUserPreference"]);
  }

  if ([v4 containsValueForKey:@"appearanceModeUserPreference"])
  {
    -[CRVehicle setAppearanceModePreference:](v5, "setAppearanceModePreference:", [v4 decodeIntegerForKey:@"appearanceModeUserPreference"]);
  }

  if ([v4 containsValueForKey:@"mapsAppearancePreference"])
  {
    -[CRVehicle setMapsAppearancePreference:](v5, "setMapsAppearancePreference:", [v4 decodeIntegerForKey:@"mapsAppearancePreference"]);
  }

  if ([v4 containsValueForKey:@"colorFilterPreference"])
  {
    -[CRVehicle setColorFilterPreference:](v5, "setColorFilterPreference:", [v4 decodeIntegerForKey:@"colorFilterPreference"]);
  }

  if ([v4 containsValueForKey:@"colorFilterIntensityPreference"])
  {
    v28 = objc_opt_class();
    v29 = [v4 decodeDictionaryWithKeysOfClass:v28 objectsOfClass:objc_opt_class() forKey:@"colorFilterIntensityPreference"];
    [(CRVehicle *)v5 setColorFilterIntensityPreference:v29];
  }

  if ([v4 containsValueForKey:@"boldTextPreference"])
  {
    -[CRVehicle setBoldTextPreference:](v5, "setBoldTextPreference:", [v4 decodeIntegerForKey:@"boldTextPreference"]);
  }

  if ([v4 containsValueForKey:@"soundRecognitionPreference"])
  {
    -[CRVehicle setSoundRecognitionPreference:](v5, "setSoundRecognitionPreference:", [v4 decodeIntegerForKey:@"soundRecognitionPreference"]);
  }

  if ([v4 containsValueForKey:@"voiceControlPreference"])
  {
    -[CRVehicle setVoiceControlPreference:](v5, "setVoiceControlPreference:", [v4 decodeIntegerForKey:@"voiceControlPreference"]);
  }

  if ([v4 containsValueForKey:@"textSizePreference"])
  {
    -[CRVehicle setTextSizePreference:](v5, "setTextSizePreference:", [v4 decodeIntegerForKey:@"textSizePreference"]);
  }

  if ([v4 containsValueForKey:@"disabledFeaturesPreference"])
  {
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"disabledFeaturesPreference"];
    [(CRVehicle *)v5 setDisabledFeaturesPreference:v30];
  }

  if ([v4 containsValueForKey:@"supportsBluetoothLE"])
  {
    -[CRVehicle setSupportsBluetoothLE:](v5, "setSupportsBluetoothLE:", [v4 decodeBoolForKey:@"supportsBluetoothLE"]);
  }

  if ([v4 containsValueForKey:@"supportsThemeAssets"])
  {
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportsThemeAssets"];
    [(CRVehicle *)v5 setSupportsThemeAssets:v31];
  }

  if ([v4 containsValueForKey:@"clusterAssetIdentifier"])
  {
    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clusterAssetIdentifier"];
    [(CRVehicle *)v5 setClusterAssetIdentifier:v32];
  }

  if ([v4 containsValueForKey:@"clusterAssetiOSContentVersion"])
  {
    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clusterAssetiOSContentVersion"];
    [(CRVehicle *)v5 setClusterAssetiOSContentVersion:v33];
  }

  if ([v4 containsValueForKey:@"clusterAssetVersion"])
  {
    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clusterAssetVersion"];
    [(CRVehicle *)v5 setClusterAssetVersion:v34];
  }

  if ([v4 containsValueForKey:@"SDKVersion"])
  {
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SDKVersion"];
    [(CRVehicle *)v5 setSDKVersion:v35];
  }

  if ([v4 containsValueForKey:@"clusterAssetURL"])
  {
    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clusterAssetURL"];
    [(CRVehicle *)v5 setClusterAssetURL:v36];
  }

  if ([v4 containsValueForKey:@"stagedClusterAssetiOSContentVersion"])
  {
    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagedClusterAssetiOSContentVersion"];
    [(CRVehicle *)v5 setStagedClusterAssetiOSContentVersion:v37];
  }

  if ([v4 containsValueForKey:@"stagedClusterAssetVersion"])
  {
    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagedClusterAssetVersion"];
    [(CRVehicle *)v5 setStagedClusterAssetVersion:v38];
  }

  if ([v4 containsValueForKey:@"stagedClusterAssetURL"])
  {
    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagedClusterAssetURL"];
    [(CRVehicle *)v5 setStagedClusterAssetURL:v39];
  }

  if ([v4 containsValueForKey:@"displayThemeData"])
  {
    v40 = objc_opt_class();
    v41 = [v4 decodeDictionaryWithKeysOfClass:v40 objectsOfClass:objc_opt_class() forKey:@"displayThemeData"];
    [(CRVehicle *)v5 setDisplayThemeData:v41];
  }

  if ([v4 containsValueForKey:@"hasGaugeClusterScreen"])
  {
    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasGaugeClusterScreen"];
    [(CRVehicle *)v5 setHasGaugeClusterScreen:v42];
  }

  if ([v4 containsValueForKey:@"finishedWelcome"])
  {
    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"finishedWelcome"];
    [(CRVehicle *)v5 setFinishedWelcome:v43];
  }

  if ([v4 containsValueForKey:@"oemPunchThroughsAsApp"])
  {
    v44 = objc_opt_class();
    v45 = [v4 decodeDictionaryWithKeysOfClass:v44 objectsOfClass:objc_opt_class() forKey:@"oemPunchThroughsAsApp"];
    [(CRVehicle *)v5 setOemPunchThroughsAsApp:v45];
  }

  if ([v4 containsValueForKey:@"internalNotes"])
  {
    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"internalNotes"];
    [(CRVehicle *)v5 setInternalNotes:v46];
  }

  if ([v4 containsValueForKey:@"isSiriBargeInDisabled"])
  {
    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isSiriBargeInDisabled"];
    -[CRVehicle setSiriBargeInDisabled:](v5, "setSiriBargeInDisabled:", [v47 BOOLValue]);
  }

  if ([v4 containsValueForKey:@"supportsMixableAudio"])
  {
    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportsMixableAudio"];
    -[CRVehicle setSupportsMixableAudio:](v5, "setSupportsMixableAudio:", [v48 BOOLValue]);
  }

  if ([v4 containsValueForKey:@"homeScreenStyleData"])
  {
    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeScreenStyleData"];
    [(CRVehicle *)v5 setHomeScreenStyleData:v49];
  }

  if ([v4 containsValueForKey:@"viewAreas"])
  {
    v50 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"viewAreas"];
    [(CRVehicle *)v5 setViewAreas:v50];
  }

LABEL_102:
  v51 = v5;

  return v51;
}

- (void)encodeWithCoder:(id)a3
{
  v70 = a3;
  v4 = [(CRVehicle *)self identifier];

  if (v4)
  {
    v5 = [(CRVehicle *)self identifier];
    [v70 encodeObject:v5 forKey:@"identifier"];
  }

  v6 = [(CRVehicle *)self vehicleName];

  if (v6)
  {
    v7 = [(CRVehicle *)self vehicleName];
    [v70 encodeObject:v7 forKey:@"vehicleName"];
  }

  v8 = [(CRVehicle *)self certificateSerialNumber];

  if (v8)
  {
    v9 = [(CRVehicle *)self certificateSerialNumber];
    [v70 encodeObject:v9 forKey:@"certificateSerialNumber"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CRVehicle pairingStatus](self, "pairingStatus")}];
  [v70 encodeObject:v10 forKey:@"pairingStatus"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CRVehicle enhancedIntegrationStatus](self, "enhancedIntegrationStatus")}];
  [v70 encodeObject:v11 forKey:@"enhancedIntegration"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[CRVehicle supportsEnhancedIntegration](self, "supportsEnhancedIntegration")}];
  [v70 encodeObject:v12 forKey:@"supportsEnhancedIntegration"];

  v13 = [(CRVehicle *)self supportsStartSessionRequest];

  if (v13)
  {
    v14 = [(CRVehicle *)self supportsStartSessionRequest];
    [v70 encodeObject:v14 forKey:@"supportsStartSessionRequest"];
  }

  [v70 encodeInt:-[CRVehicle albumArtUserPreference](self forKey:{"albumArtUserPreference"), @"albumArtUserPreference"}];
  [v70 encodeBool:-[CRVehicle supportsUSBCarPlay](self forKey:{"supportsUSBCarPlay"), @"supportsUSBCarPlay"}];
  [v70 encodeBool:-[CRVehicle supportsWirelessCarPlay](self forKey:{"supportsWirelessCarPlay"), @"supportsWirelessCarPlay"}];
  v15 = [(CRVehicle *)self bluetoothAddress];

  if (v15)
  {
    v16 = [(CRVehicle *)self bluetoothAddress];
    [v70 encodeObject:v16 forKey:@"bluetoothAddress"];
  }

  v17 = [(CRVehicle *)self carplayWiFiUUID];

  if (v17)
  {
    v18 = [(CRVehicle *)self carplayWiFiUUID];
    [v70 encodeObject:v18 forKey:@"carplayWiFiUUID"];
  }

  v19 = [(CRVehicle *)self accessoryProtocols];

  if (v19)
  {
    v20 = [(CRVehicle *)self accessoryProtocols];
    [v70 encodeObject:v20 forKey:@"carplayProtocols"];
  }

  v21 = [(CRVehicle *)self lastConnectedDate];

  if (v21)
  {
    v22 = [(CRVehicle *)self lastConnectedDate];
    [v70 encodeObject:v22 forKey:@"lastConnectionTime"];
  }

  v23 = [(CRVehicle *)self vehicleModelName];

  if (v23)
  {
    v24 = [(CRVehicle *)self vehicleModelName];
    [v70 encodeObject:v24 forKey:@"vehicleModelName"];
  }

  v25 = [(CRVehicle *)self PPID];

  if (v25)
  {
    v26 = [(CRVehicle *)self PPID];
    [v70 encodeObject:v26 forKey:@"ppid"];
  }

  v27 = [(CRVehicle *)self wallpaperIdentifier];

  if (v27)
  {
    v28 = [(CRVehicle *)self wallpaperIdentifier];
    [v70 encodeObject:v28 forKey:@"wallpaperIdentifierUserPreference"];
  }

  v29 = [(CRVehicle *)self previousWallpaperIdentifier];

  if (v29)
  {
    v30 = [(CRVehicle *)self previousWallpaperIdentifier];
    [v70 encodeObject:v30 forKey:@"previousWallpaperIdentifierUserPreference"];
  }

  v31 = [(CRVehicle *)self colorFilterIntensityPreference];

  if (v31)
  {
    v32 = [(CRVehicle *)self colorFilterIntensityPreference];
    [v70 encodeObject:v32 forKey:@"colorFilterIntensityPreference"];
  }

  [v70 encodeInteger:-[CRVehicle displayScaleMode](self forKey:{"displayScaleMode"), @"displayScaleModeUserPreference"}];
  [v70 encodeInteger:-[CRVehicle appearanceModePreference](self forKey:{"appearanceModePreference"), @"appearanceModeUserPreference"}];
  [v70 encodeInteger:-[CRVehicle mapsAppearancePreference](self forKey:{"mapsAppearancePreference"), @"mapsAppearancePreference"}];
  [v70 encodeInteger:-[CRVehicle colorFilterPreference](self forKey:{"colorFilterPreference"), @"colorFilterPreference"}];
  [v70 encodeInteger:-[CRVehicle boldTextPreference](self forKey:{"boldTextPreference"), @"boldTextPreference"}];
  [v70 encodeInteger:-[CRVehicle soundRecognitionPreference](self forKey:{"soundRecognitionPreference"), @"soundRecognitionPreference"}];
  [v70 encodeInteger:-[CRVehicle voiceControlPreference](self forKey:{"voiceControlPreference"), @"voiceControlPreference"}];
  [v70 encodeInteger:-[CRVehicle textSizePreference](self forKey:{"textSizePreference"), @"textSizePreference"}];
  v33 = [(CRVehicle *)self disabledFeaturesPreference];

  if (v33)
  {
    v34 = [(CRVehicle *)self disabledFeaturesPreference];
    [v70 encodeObject:v34 forKey:@"disabledFeaturesPreference"];
  }

  [v70 encodeBool:-[CRVehicle supportsBluetoothLE](self forKey:{"supportsBluetoothLE"), @"supportsBluetoothLE"}];
  v35 = [(CRVehicle *)self supportsThemeAssets];

  if (v35)
  {
    v36 = [(CRVehicle *)self supportsThemeAssets];
    [v70 encodeObject:v36 forKey:@"supportsThemeAssets"];
  }

  v37 = [(CRVehicle *)self clusterAssetIdentifier];

  if (v37)
  {
    v38 = [(CRVehicle *)self clusterAssetIdentifier];
    [v70 encodeObject:v38 forKey:@"clusterAssetIdentifier"];
  }

  v39 = [(CRVehicle *)self clusterAssetiOSContentVersion];

  if (v39)
  {
    v40 = [(CRVehicle *)self clusterAssetiOSContentVersion];
    [v70 encodeObject:v40 forKey:@"clusterAssetiOSContentVersion"];
  }

  v41 = [(CRVehicle *)self clusterAssetVersion];

  if (v41)
  {
    v42 = [(CRVehicle *)self clusterAssetVersion];
    [v70 encodeObject:v42 forKey:@"clusterAssetVersion"];
  }

  v43 = [(CRVehicle *)self SDKVersion];

  if (v43)
  {
    v44 = [(CRVehicle *)self SDKVersion];
    [v70 encodeObject:v44 forKey:@"SDKVersion"];
  }

  v45 = [(CRVehicle *)self clusterAssetURL];

  if (v45)
  {
    v46 = [(CRVehicle *)self clusterAssetURL];
    [v70 encodeObject:v46 forKey:@"clusterAssetURL"];
  }

  v47 = [(CRVehicle *)self stagedClusterAssetiOSContentVersion];

  if (v47)
  {
    v48 = [(CRVehicle *)self stagedClusterAssetiOSContentVersion];
    [v70 encodeObject:v48 forKey:@"stagedClusterAssetiOSContentVersion"];
  }

  v49 = [(CRVehicle *)self stagedClusterAssetVersion];

  if (v49)
  {
    v50 = [(CRVehicle *)self stagedClusterAssetVersion];
    [v70 encodeObject:v50 forKey:@"stagedClusterAssetVersion"];
  }

  v51 = [(CRVehicle *)self stagedClusterAssetURL];

  if (v51)
  {
    v52 = [(CRVehicle *)self stagedClusterAssetURL];
    [v70 encodeObject:v52 forKey:@"stagedClusterAssetURL"];
  }

  v53 = [(CRVehicle *)self displayThemeData];

  if (v53)
  {
    v54 = [(CRVehicle *)self displayThemeData];
    [v70 encodeObject:v54 forKey:@"displayThemeData"];
  }

  v55 = [(CRVehicle *)self hasGaugeClusterScreen];

  if (v55)
  {
    v56 = [(CRVehicle *)self hasGaugeClusterScreen];
    [v70 encodeObject:v56 forKey:@"hasGaugeClusterScreen"];
  }

  v57 = [(CRVehicle *)self finishedWelcome];

  if (v57)
  {
    v58 = [(CRVehicle *)self finishedWelcome];
    [v70 encodeObject:v58 forKey:@"finishedWelcome"];
  }

  v59 = [(CRVehicle *)self oemPunchThroughsAsApp];

  if (v59)
  {
    v60 = [(CRVehicle *)self oemPunchThroughsAsApp];
    [v70 encodeObject:v60 forKey:@"oemPunchThroughsAsApp"];
  }

  v61 = [(CRVehicle *)self internalNotes];

  if (v61)
  {
    v62 = [(CRVehicle *)self internalNotes];
    [v70 encodeObject:v62 forKey:@"internalNotes"];
  }

  if ([(CRVehicle *)self isSiriBargeInDisabled])
  {
    v63 = [MEMORY[0x1E696AD98] numberWithBool:{-[CRVehicle isSiriBargeInDisabled](self, "isSiriBargeInDisabled")}];
    [v70 encodeObject:v63 forKey:@"isSiriBargeInDisabled"];
  }

  if ([(CRVehicle *)self supportsMixableAudio])
  {
    v64 = [MEMORY[0x1E696AD98] numberWithBool:{-[CRVehicle supportsMixableAudio](self, "supportsMixableAudio")}];
    [v70 encodeObject:v64 forKey:@"supportsMixableAudio"];
  }

  v65 = [(CRVehicle *)self homeScreenStyleData];

  if (v65)
  {
    v66 = [(CRVehicle *)self homeScreenStyleData];
    [v70 encodeObject:v66 forKey:@"homeScreenStyleData"];
  }

  v67 = [(CRVehicle *)self viewAreas];

  v68 = v70;
  if (v67)
  {
    v69 = [(CRVehicle *)self viewAreas];
    [v70 encodeObject:v69 forKey:@"viewAreas"];

    v68 = v70;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CRVehicle allocWithZone:?];
  v6 = [(NSUUID *)self->_identifier copyWithZone:a3];
  v7 = [(NSData *)self->_certificateSerialNumber copyWithZone:a3];
  v8 = [(CRVehicle *)v5 initWithIdentifier:v6 certificateSerial:v7];

  v9 = [(NSString *)self->_vehicleName copyWithZone:a3];
  v10 = *(v8 + 24);
  *(v8 + 24) = v9;

  *(v8 + 192) = self->_pairingStatus;
  *(v8 + 40) = self->_enhancedIntegrationStatus;
  *(v8 + 8) = self->_supportsEnhancedIntegration;
  v11 = [(NSNumber *)self->_supportsStartSessionRequest copyWithZone:a3];
  v12 = *(v8 + 248);
  *(v8 + 248) = v11;

  *(v8 + 264) = self->_albumArtUserPreference;
  *(v8 + 9) = self->_supportsUSBCarPlay;
  *(v8 + 10) = self->_supportsWirelessCarPlay;
  v13 = [(NSString *)self->_bluetoothAddress copyWithZone:a3];
  v14 = *(v8 + 200);
  *(v8 + 200) = v13;

  v15 = [(NSString *)self->_carplayWiFiUUID copyWithZone:a3];
  v16 = *(v8 + 208);
  *(v8 + 208) = v15;

  v17 = [(NSSet *)self->_accessoryProtocols copyWithZone:a3];
  v18 = *(v8 + 32);
  *(v8 + 32) = v17;

  v19 = [(NSDate *)self->_lastConnectedDate copyWithZone:a3];
  v20 = *(v8 + 216);
  *(v8 + 216) = v19;

  v21 = [(NSString *)self->_vehicleModelName copyWithZone:a3];
  v22 = *(v8 + 224);
  *(v8 + 224) = v21;

  v23 = [(NSString *)self->_PPID copyWithZone:a3];
  v24 = *(v8 + 232);
  *(v8 + 232) = v23;

  v25 = [(NSString *)self->_wallpaperIdentifier copyWithZone:a3];
  v26 = *(v8 + 272);
  *(v8 + 272) = v25;

  v27 = [(NSString *)self->_previousWallpaperIdentifier copyWithZone:a3];
  v28 = *(v8 + 280);
  *(v8 + 280) = v27;

  *(v8 + 288) = self->_displayScaleMode;
  *(v8 + 296) = self->_appearanceModePreference;
  *(v8 + 304) = self->_mapsAppearancePreference;
  *(v8 + 312) = self->_colorFilterPreference;
  v29 = [(NSDictionary *)self->_colorFilterIntensityPreference copyWithZone:a3];
  v30 = *(v8 + 320);
  *(v8 + 320) = v29;

  *(v8 + 328) = self->_boldTextPreference;
  *(v8 + 336) = self->_soundRecognitionPreference;
  *(v8 + 344) = self->_voiceControlPreference;
  *(v8 + 352) = self->_textSizePreference;
  v31 = [(NSNumber *)self->_disabledFeaturesPreference copyWithZone:a3];
  v32 = *(v8 + 256);
  *(v8 + 256) = v31;

  *(v8 + 11) = self->_supportsBluetoothLE;
  v33 = [(NSNumber *)self->_supportsThemeAssets copyWithZone:a3];
  v34 = *(v8 + 48);
  *(v8 + 48) = v33;

  v35 = [(NSString *)self->_clusterAssetiOSContentVersion copyWithZone:a3];
  v36 = *(v8 + 64);
  *(v8 + 64) = v35;

  v37 = [(NSString *)self->_clusterAssetIdentifier copyWithZone:a3];
  v38 = *(v8 + 56);
  *(v8 + 56) = v37;

  v39 = [(NSNumber *)self->_clusterAssetVersion copyWithZone:a3];
  v40 = *(v8 + 72);
  *(v8 + 72) = v39;

  v41 = [(NSString *)self->_SDKVersion copyWithZone:a3];
  v42 = *(v8 + 80);
  *(v8 + 80) = v41;

  v43 = [(NSURL *)self->_clusterAssetURL copyWithZone:a3];
  v44 = *(v8 + 88);
  *(v8 + 88) = v43;

  v45 = [(NSString *)self->_stagedClusterAssetiOSContentVersion copyWithZone:a3];
  v46 = *(v8 + 96);
  *(v8 + 96) = v45;

  v47 = [(NSNumber *)self->_stagedClusterAssetVersion copyWithZone:a3];
  v48 = *(v8 + 104);
  *(v8 + 104) = v47;

  v49 = [(NSURL *)self->_stagedClusterAssetURL copyWithZone:a3];
  v50 = *(v8 + 112);
  *(v8 + 112) = v49;

  v51 = [(NSDictionary *)self->_displayThemeData copyWithZone:a3];
  v52 = *(v8 + 120);
  *(v8 + 120) = v51;

  v53 = [(NSNumber *)self->_hasGaugeClusterScreen copyWithZone:a3];
  v54 = *(v8 + 128);
  *(v8 + 128) = v53;

  v55 = [(NSNumber *)self->_finishedWelcome copyWithZone:a3];
  v56 = *(v8 + 136);
  *(v8 + 136) = v55;

  v57 = [(NSDictionary *)self->_oemPunchThroughsAsApp copyWithZone:a3];
  v58 = *(v8 + 152);
  *(v8 + 152) = v57;

  v59 = [(NSString *)self->_internalNotes copyWithZone:a3];
  v60 = *(v8 + 240);
  *(v8 + 240) = v59;

  *(v8 + 12) = self->_siriBargeInDisabled;
  *(v8 + 13) = self->_supportsMixableAudio;
  v61 = [(NSArray *)self->_viewAreas copyWithZone:a3];
  v62 = *(v8 + 160);
  *(v8 + 160) = v61;

  v63 = [(CRHomeScreenStyleData *)self->_homeScreenStyleData copyWithZone:a3];
  v64 = *(v8 + 144);
  *(v8 + 144) = v63;

  v65 = [(CRSubtitleSettings *)self->_subtitleSettings copyWithZone:a3];
  v66 = *(v8 + 168);
  *(v8 + 168) = v65;

  v67 = [(NSNumber *)self->_videoDiagnosticsEnabled copyWithZone:a3];
  v68 = *(v8 + 176);
  *(v8 + 176) = v67;

  return v8;
}

+ (id)vehicleForMessagingVehicle:(id)a3
{
  v3 = a3;
  v4 = [v3 certificateSerialNumber];
  if (v4)
  {
    v5 = [CRVehicle alloc];
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [(CRVehicle *)v5 initWithIdentifier:v6 certificateSerial:v4];

    v8 = [v3 vehicleName];
    [(CRVehicle *)v7 setVehicleName:v8];

    v9 = [v3 bluetoothAddress];
    [(CRVehicle *)v7 setBluetoothAddress:v9];

    v10 = MEMORY[0x1E695DFD8];
    v11 = [v3 accessoryProtocols];
    v12 = [v10 setWithArray:v11];
    [(CRVehicle *)v7 setAccessoryProtocols:v12];

    -[CRVehicle setSupportsEnhancedIntegration:](v7, "setSupportsEnhancedIntegration:", [v3 supportsEnhancedIntegration]);
    if ([v3 transportType] != 3)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "supportsCarPlayConnectionRequest")}];
      [(CRVehicle *)v7 setSupportsStartSessionRequest:v13];
    }

    -[CRVehicle setSupportsBluetoothLE:](v7, "setSupportsBluetoothLE:", [v3 supportsBluetoothLE]);
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "supportsThemeAssets")}];
    [(CRVehicle *)v7 setSupportsThemeAssets:v14];

    -[CRVehicle setSupportsUSBCarPlay:](v7, "setSupportsUSBCarPlay:", [v3 supportsUSBCarPlay]);
    -[CRVehicle setSupportsWirelessCarPlay:](v7, "setSupportsWirelessCarPlay:", [v3 supportsWirelessCarPlay]);
    v15 = [v3 PPID];
    [(CRVehicle *)v7 setPPID:v15];

    if (CRIsInternalInstall())
    {
      v16 = [MEMORY[0x1E695DF00] date];
      [(CRVehicle *)v7 setLastConnectedDate:v16];
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
  v2 = [(CRVehicle *)self pairingStatus];
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E82FC8D8[v2];
  }
}

- (id)_enhancedIntegrationDebugDescription
{
  v2 = [(CRVehicle *)self enhancedIntegrationStatus];
  v3 = @"unknown";
  if (v2 == 1)
  {
    v3 = @"declined";
  }

  if (v2 == 2)
  {
    return @"accepted";
  }

  else
  {
    return v3;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CRVehicle *)self identifier];
    v6 = [v4 identifier];
    v7 = [v5 isEqual:v6];
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
  v3 = [(CRVehicle *)self vehicleName];
  v4 = @"<unnamed>";
  v37 = v3;
  if (v3)
  {
    v4 = v3;
  }

  v31 = v4;
  v36 = [(CRVehicle *)self identifier];
  v5 = [v36 UUIDString];
  v6 = [(CRVehicle *)self PPID];
  v38 = [(CRVehicle *)self _pairingDebugDescription];
  v35 = [(CRVehicle *)self supportsStartSessionRequest];
  if (v35)
  {
    v22 = [(CRVehicle *)self supportsStartSessionRequest];
    if ([v22 BOOLValue])
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

  v32 = [(CRVehicle *)self supportsThemeAssets];
  v39 = v6;
  v40 = v5;
  if (v32)
  {
    v21 = [(CRVehicle *)self supportsThemeAssets];
    if ([v21 BOOLValue])
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

  v28 = [(CRVehicle *)self clusterAssetIdentifier];
  v9 = [(CRVehicle *)self clusterAssetiOSContentVersion];
  v27 = [(CRVehicle *)self clusterAssetVersion];
  v26 = [(CRVehicle *)self _enhancedIntegrationDebugDescription];
  v10 = [(CRVehicle *)self disabledFeaturesPreference];
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
  v13 = [(CRVehicle *)self bluetoothAddress];
  v14 = [(CRVehicle *)self carplayWiFiUUID];
  v15 = [(CRVehicle *)self accessoryProtocols];
  v16 = [(CRVehicle *)self lastConnectedDate];
  v17 = [(CRVehicle *)self vehicleModelName];
  v18 = [(CRVehicle *)self homeScreenStyleData];
  v19 = [(CRVehicle *)self viewAreas];
  v34 = [v33 stringWithFormat:@"%@ (identifier: %@, PPID: %@, pairing: %@, startSessionRequest: %@, cluster{supported: %@ id: %@ versions{ %@, %@}, enhancedIntegration: %@, disabledFeatures: %@, isSiriBargeInDisabled: %@, supportsMixableAudio: %@, albumArtUserPreference: %@, %@: %@, %@: %@, %@: %@, %@: %@, %@: %@, %@: %@, %@: %@)", v31, v40, v39, v38, v30, v29, v28, v9, v27, v26, v10, v25, v24, v23, @"bluetoothAddress", v13, @"carplayWiFiUUID", v14, @"carplayProtocols", v15, @"lastConnectionTime", v16, @"vehicleModelName", v17, @"homeScreenStyleData", v18, @"viewAreas", v19];

  if (v32)
  {
  }

  if (v35)
  {
  }

  return v34;
}

- (void)mergeAttributesFromVehicle:(id)a3
{
  v65 = a3;
  v4 = [v65 certificateSerialNumber];

  if (v4)
  {
    v5 = [v65 certificateSerialNumber];
    [(CRVehicle *)self setCertificateSerialNumber:v5];
  }

  v6 = [v65 vehicleName];

  if (v6)
  {
    v7 = [v65 vehicleName];
    [(CRVehicle *)self setVehicleName:v7];
  }

  if ([v65 pairingStatus])
  {
    -[CRVehicle setPairingStatus:](self, "setPairingStatus:", [v65 pairingStatus]);
  }

  if ([v65 enhancedIntegrationStatus])
  {
    -[CRVehicle setEnhancedIntegrationStatus:](self, "setEnhancedIntegrationStatus:", [v65 enhancedIntegrationStatus]);
  }

  v8 = [v65 supportsStartSessionRequest];

  if (v8)
  {
    v9 = [v65 supportsStartSessionRequest];
    [(CRVehicle *)self setSupportsStartSessionRequest:v9];
  }

  -[CRVehicle setSupportsWirelessCarPlay:](self, "setSupportsWirelessCarPlay:", [v65 supportsWirelessCarPlay]);
  -[CRVehicle setSupportsUSBCarPlay:](self, "setSupportsUSBCarPlay:", [v65 supportsUSBCarPlay]);
  v10 = [v65 bluetoothAddress];

  if (v10)
  {
    v11 = [v65 bluetoothAddress];
    [(CRVehicle *)self setBluetoothAddress:v11];
  }

  v12 = [v65 carplayWiFiUUID];

  if (v12)
  {
    v13 = [v65 carplayWiFiUUID];
    [(CRVehicle *)self setCarplayWiFiUUID:v13];
  }

  v14 = [v65 accessoryProtocols];

  if (v14)
  {
    v15 = [v65 accessoryProtocols];
    [(CRVehicle *)self setAccessoryProtocols:v15];
  }

  v16 = [v65 lastConnectedDate];

  if (v16)
  {
    v17 = [v65 lastConnectedDate];
    [(CRVehicle *)self setLastConnectedDate:v17];
  }

  v18 = [v65 vehicleModelName];

  if (v18)
  {
    v19 = [v65 vehicleModelName];
    [(CRVehicle *)self setVehicleModelName:v19];
  }

  v20 = [v65 PPID];

  if (v20)
  {
    v21 = [v65 PPID];
    [(CRVehicle *)self setPPID:v21];
  }

  -[CRVehicle setAlbumArtUserPreference:](self, "setAlbumArtUserPreference:", [v65 albumArtUserPreference]);
  v22 = [v65 wallpaperIdentifier];

  if (v22)
  {
    v23 = [v65 wallpaperIdentifier];
    [(CRVehicle *)self setWallpaperIdentifier:v23];
  }

  v24 = [v65 previousWallpaperIdentifier];

  if (v24)
  {
    v25 = [v65 previousWallpaperIdentifier];
    [(CRVehicle *)self setPreviousWallpaperIdentifier:v25];
  }

  -[CRVehicle setDisplayScaleMode:](self, "setDisplayScaleMode:", [v65 displayScaleMode]);
  if ([v65 appearanceModePreference] != -1)
  {
    -[CRVehicle setAppearanceModePreference:](self, "setAppearanceModePreference:", [v65 appearanceModePreference]);
  }

  if ([v65 mapsAppearancePreference] != -1)
  {
    -[CRVehicle setMapsAppearancePreference:](self, "setMapsAppearancePreference:", [v65 mapsAppearancePreference]);
  }

  if ([v65 colorFilterPreference])
  {
    -[CRVehicle setColorFilterPreference:](self, "setColorFilterPreference:", [v65 colorFilterPreference]);
  }

  v26 = [v65 colorFilterIntensityPreference];

  if (v26)
  {
    v27 = [v65 colorFilterIntensityPreference];
    [(CRVehicle *)self setColorFilterIntensityPreference:v27];
  }

  if ([v65 boldTextPreference])
  {
    -[CRVehicle setBoldTextPreference:](self, "setBoldTextPreference:", [v65 boldTextPreference]);
  }

  -[CRVehicle setSoundRecognitionPreference:](self, "setSoundRecognitionPreference:", [v65 soundRecognitionPreference]);
  -[CRVehicle setVoiceControlPreference:](self, "setVoiceControlPreference:", [v65 voiceControlPreference]);
  if ([v65 textSizePreference])
  {
    -[CRVehicle setTextSizePreference:](self, "setTextSizePreference:", [v65 textSizePreference]);
  }

  v28 = [v65 disabledFeaturesPreference];

  if (v28)
  {
    v29 = [v65 disabledFeaturesPreference];
    [(CRVehicle *)self setDisabledFeaturesPreference:v29];
  }

  -[CRVehicle setSupportsBluetoothLE:](self, "setSupportsBluetoothLE:", [v65 supportsBluetoothLE]);
  v30 = [v65 supportsThemeAssets];

  if (v30)
  {
    v31 = [v65 supportsThemeAssets];
    [(CRVehicle *)self setSupportsThemeAssets:v31];
  }

  v32 = [v65 clusterAssetIdentifier];

  if (v32)
  {
    v33 = [v65 clusterAssetIdentifier];
    [(CRVehicle *)self setClusterAssetIdentifier:v33];
  }

  v34 = [v65 clusterAssetiOSContentVersion];

  if (v34)
  {
    v35 = [v65 clusterAssetiOSContentVersion];
    [(CRVehicle *)self setClusterAssetiOSContentVersion:v35];
  }

  v36 = [v65 clusterAssetVersion];

  if (v36)
  {
    v37 = [v65 clusterAssetVersion];
    [(CRVehicle *)self setClusterAssetVersion:v37];
  }

  v38 = [v65 SDKVersion];

  if (v38)
  {
    v39 = [v65 SDKVersion];
    [(CRVehicle *)self setSDKVersion:v39];
  }

  v40 = [v65 clusterAssetURL];

  if (v40)
  {
    v41 = [v65 clusterAssetURL];
    [(CRVehicle *)self setClusterAssetURL:v41];
  }

  v42 = [v65 stagedClusterAssetiOSContentVersion];

  if (v42)
  {
    v43 = [v65 stagedClusterAssetiOSContentVersion];
    [(CRVehicle *)self setStagedClusterAssetiOSContentVersion:v43];
  }

  v44 = [v65 stagedClusterAssetVersion];

  if (v44)
  {
    v45 = [v65 stagedClusterAssetVersion];
    [(CRVehicle *)self setStagedClusterAssetVersion:v45];
  }

  v46 = [v65 stagedClusterAssetURL];

  if (v46)
  {
    v47 = [v65 stagedClusterAssetURL];
    [(CRVehicle *)self setStagedClusterAssetURL:v47];
  }

  v48 = [v65 displayThemeData];

  if (v48)
  {
    v49 = [v65 displayThemeData];
    [(CRVehicle *)self setDisplayThemeData:v49];
  }

  v50 = [v65 hasGaugeClusterScreen];

  if (v50)
  {
    v51 = [v65 hasGaugeClusterScreen];
    [(CRVehicle *)self setHasGaugeClusterScreen:v51];
  }

  v52 = [v65 finishedWelcome];

  if (v52)
  {
    v53 = [v65 finishedWelcome];
    [(CRVehicle *)self setFinishedWelcome:v53];
  }

  v54 = [v65 oemPunchThroughsAsApp];

  if (v54)
  {
    v55 = [v65 oemPunchThroughsAsApp];
    [(CRVehicle *)self setOemPunchThroughsAsApp:v55];
  }

  -[CRVehicle setSiriBargeInDisabled:](self, "setSiriBargeInDisabled:", [v65 isSiriBargeInDisabled]);
  -[CRVehicle setSupportsMixableAudio:](self, "setSupportsMixableAudio:", [v65 supportsMixableAudio]);
  v56 = [v65 subtitleSettings];

  if (v56)
  {
    v57 = [v65 subtitleSettings];
    [(CRVehicle *)self setSubtitleSettings:v57];
  }

  v58 = [v65 videoDiagnosticsEnabled];

  if (v58)
  {
    v59 = [v65 videoDiagnosticsEnabled];
    [(CRVehicle *)self setVideoDiagnosticsEnabled:v59];
  }

  v60 = [v65 internalNotes];

  if (v60)
  {
    v61 = [v65 internalNotes];
    [(CRVehicle *)self setInternalNotes:v61];
  }

  v62 = [v65 homeScreenStyleData];
  [(CRVehicle *)self setHomeScreenStyleData:v62];

  v63 = [v65 viewAreas];

  if (v63)
  {
    v64 = [v65 viewAreas];
    [(CRVehicle *)self setViewAreas:v64];
  }
}

- (void)setClusterAssetIdentifier:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 length])
  {
    objc_storeStrong(&self->_clusterAssetIdentifier, a3);
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
  v3 = [(CRVehicle *)self vehicleName];
  if (![v3 length])
  {
    v4 = [(CRVehicle *)self bluetoothAddress];
    v5 = [v4 length];

    if (v5)
    {
      v6 = [(CRVehicle *)self bluetoothAddress];
    }

    else
    {
      v6 = &stru_1F47DECC0;
    }

    v3 = v6;
  }

  return v3;
}

- (BOOL)requiresBonjour
{
  v3 = [(CRVehicle *)self supportsStartSessionRequest];
  if (v3)
  {
    v4 = [(CRVehicle *)self supportsStartSessionRequest];
    v5 = [v4 BOOLValue] ^ 1;
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
  v24 = [(CRVehicle *)self clusterAssetIdentifier];
  v23 = CRNullableDescriptionForString(v24);
  v22 = [(CRVehicle *)self clusterAssetiOSContentVersion];
  v21 = CRNullableDescriptionForString(v22);
  v20 = [(CRVehicle *)self clusterAssetVersion];
  v19 = [(CRVehicle *)self SDKVersion];
  v4 = CRNullableDescriptionForString(v19);
  v16 = [(CRVehicle *)self clusterAssetURL];
  v15 = [v16 absoluteString];
  v5 = CRNullableDescriptionForString(v15);
  v14 = [(CRVehicle *)self stagedClusterAssetiOSContentVersion];
  v6 = CRNullableDescriptionForString(v14);
  v7 = [(CRVehicle *)self stagedClusterAssetVersion];
  v8 = [(CRVehicle *)self stagedClusterAssetURL];
  v9 = [v8 absoluteString];
  v10 = CRNullableDescriptionForString(v9);
  if (v3)
  {
    v11 = [v3 BOOLValue];
    v12 = @"NO";
    if (v11)
    {
      v12 = @"YES";
    }
  }

  else
  {
    v12 = @"unset";
  }

  v18 = [v17 stringWithFormat:@"Asset Identifier: %@\niOS Version: %@\nAccessory Version: %@\nSDK Version: %@\nAsset URL: %@\nStaged Asset iOS Version: %@\nStaged Asset Accessory Version: %@\nStaged Asset URL: %@\nAlways Update Asset preference: %@", v23, v21, v20, v4, v5, v6, v7, v10, v12];

  return v18;
}

- (NSString)wallpaperDescription
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CRVehicle *)self wallpaperIdentifier];
  v5 = [(CRVehicle *)self previousWallpaperIdentifier];
  v6 = [v3 stringWithFormat:@"Wallpaper identifier: %@\nPrevious wallpaper identifier: %@", v4, v5];

  v7 = [(CRVehicle *)self displayThemeData];

  if (v7)
  {

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [(CRVehicle *)self displayThemeData];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v18 + 1) + 8 * v12);
          v15 = [(CRVehicle *)self displayThemeData];
          v16 = [v15 objectForKey:v14];
          v6 = [(__CFString *)v13 stringByAppendingFormat:@"\nDisplay: %@\n\t%@", v14, v16];

          ++v12;
          v13 = v6;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)setSystemWallpaperData:(id)a3
{
  v4 = [a3 identifier];
  [(CRVehicle *)self setWallpaperIdentifier:v4];
}

- (CRSystemWallpaperData)previousSystemWallpaperData
{
  v3 = [(CRVehicle *)self previousWallpaperIdentifier];

  if (v3)
  {
    v4 = [CRSystemWallpaperData alloc];
    v5 = [(CRVehicle *)self previousWallpaperIdentifier];
    v6 = [(CRSystemWallpaperData *)v4 initWithIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setPreviousSystemWallpaperData:(id)a3
{
  v4 = [a3 identifier];
  [(CRVehicle *)self setPreviousWallpaperIdentifier:v4];
}

- (id)wallpaperForDisplayWithID:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CRVehicle *)self displayThemeData];

  if (v4 && v5)
  {
    v6 = [(CRVehicle *)self displayThemeData];
    v7 = [v6 objectForKey:v4];

    v8 = CarGeneralLogging();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_INFO, "Returning wallpaper using themeData for display with id: %@", &v13, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CRVehicle *)v4 wallpaperForDisplayWithID:v9];
    }

    v11 = [v7 currentWallpaper];
  }

  else
  {
    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1C81FC000, v10, OS_LOG_TYPE_INFO, "Returning system wallpaper", &v13, 2u);
    }

    v11 = [(CRVehicle *)self systemWallpaperData];
  }

  return v11;
}

- (BOOL)setWallpaper:(id)a3 forDisplayWithID:(id)a4 requiresDarkAppearance:(BOOL)a5
{
  v5 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(CRVehicle *)self displayThemeData];

  if (v9 && v10)
  {
    v11 = CarGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      v25 = v9;
      _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_INFO, "Set wallpaper using themeData and display id: %@", &v24, 0xCu);
    }

    v12 = [(CRVehicle *)self displayThemeData];
    v13 = [v12 objectForKey:v9];

    if (v13)
    {
      v14 = [v13 themeDataWithCurrentWallpaper:v8];

      v15 = [(CRVehicle *)self displayThemeData];
      v16 = [v15 mutableCopy];

      [v16 setObject:v14 forKey:v9];
      [(CRVehicle *)self setDisplayThemeData:v16];

      if (!v5)
      {
LABEL_15:
        v21 = 1;
        goto LABEL_19;
      }

LABEL_12:
      v19 = CarGeneralLogging();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v8 identifier];
        v24 = 138543362;
        v25 = v20;
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

      v18 = [(CRVehicle *)self systemWallpaperData];
      [(CRVehicle *)self setPreviousSystemWallpaperData:v18];

      [(CRVehicle *)self setSystemWallpaperData:v8];
      if (!v5)
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

- (id)homeScreenStyleDataForDisplayWithID:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CRVehicle *)self displayThemeData];

  if (v4 && v5)
  {
    v6 = [(CRVehicle *)self displayThemeData];
    v7 = [v6 objectForKey:v4];

    v8 = CarGeneralLogging();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_INFO, "Returning home screen style using themeData for display with id: %@", &v13, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CRVehicle *)v4 homeScreenStyleDataForDisplayWithID:v9];
    }

    v11 = [v7 currentHomeScreenStyle];
  }

  else
  {
    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1C81FC000, v10, OS_LOG_TYPE_INFO, "Returning system home screen style data", &v13, 2u);
    }

    v11 = [(CRVehicle *)self homeScreenStyleData];
  }

  return v11;
}

- (BOOL)setHomeScreenStyle:(id)a3 forDisplayWithID:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CRVehicle *)self displayThemeData];

  v9 = CarGeneralLogging();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (!v7 || !v8)
  {
    if (v10)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_INFO, "Set system home screen style", &v19, 2u);
    }

    [(CRVehicle *)self setHomeScreenStyleData:v6];
    goto LABEL_10;
  }

  if (v10)
  {
    v19 = 138412290;
    v20 = v7;
    _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_INFO, "Set home screen style using themeData and display id: %@", &v19, 0xCu);
  }

  v11 = [(CRVehicle *)self displayThemeData];
  v12 = [v11 objectForKey:v7];

  if (v12)
  {
    v13 = [v12 themeDataWithCurrentHomeScreenStyle:v6];

    v14 = [(CRVehicle *)self displayThemeData];
    v15 = [v14 mutableCopy];

    [v15 setObject:v13 forKey:v7];
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

- (void)setViewAreas:(id)a3
{
  v4 = a3;
  viewAreas = self->_viewAreas;
  p_viewAreas = &self->_viewAreas;
  v5 = viewAreas;
  if (!v4 && v5 && CRIsInternalInstall())
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(CRVehicle *)p_viewAreas setViewAreas:v8];
    }
  }

  v9 = [v4 copy];
  v10 = *p_viewAreas;
  *p_viewAreas = v9;
}

- (NSString)_axColorFiltersAnalyticsString
{
  v3 = [(CRVehicle *)self colorFilterIntensityPreference];
  v4 = [(CRVehicle *)self colorFilterPreference];
  if (v4 > 2)
  {
    switch(v4)
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
    v7 = [v3 objectForKeyedSubscript:v6];
    v8 = [(CRVehicle *)self _axColorFiltersIntensityStringForNumber:v7];

    if (v8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v5, v8];

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
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

- (id)_axColorFiltersIntensityStringForNumber:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToNumber:&unk_1F47F2658])
  {
    v4 = @"Low";
  }

  else if ([v3 isEqualToNumber:&unk_1F47F2670])
  {
    v4 = @"Medium";
  }

  else if ([v3 isEqualToNumber:&unk_1F47F2688])
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(CRVehicle *)self soundRecognitionPreference];
  if (v4)
  {
    [v3 addObject:@"Enabled"];
    if ((v4 & 2) != 0)
    {
      [v3 addObject:@"CarHorns"];
    }

    if ((v4 & 4) != 0)
    {
      [v3 addObject:@"Siren"];
    }

    v5 = [v3 componentsJoinedByString:{@", "}];
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