@interface CARSessionConfiguration
+ (id)_descriptionForTransportType:(unint64_t)type;
+ (id)descriptionForCapability:(int64_t)capability;
+ (id)descriptionForUserInterfaceStyle:(int64_t)style;
+ (int64_t)_defaultInterfaceStyleFromAppearanceDefault:(id)default;
+ (unint64_t)_limitableUserInterfacesFromLimitedUIValues:(id)values;
- (CARDisplayInfoProviding)displayInfoProvider;
- (CARSessionConfiguration)initWithSessionStatusOptions:(unint64_t)options propertySupplier:(id)supplier;
- (NSEdgeInsets)dashboardRoundedCorners;
- (NSEdgeInsets)viewAreaInsets;
- (id)description;
- (id)descriptionForLimitableUserInterfaces;
- (id)descriptionForTransportType;
- (id)numberOfScreens;
- (id)primaryDisplayFirstViewAreaSize;
- (id)primaryDisplayPhysicalSize;
- (id)screenInfoForScreenID:(id)d;
- (id)secondaryDisplayFirstViewAreaSize;
- (id)valueForUndefinedKey:(id)key;
- (void)updateCarCapabilities;
@end

@implementation CARSessionConfiguration

- (void)updateCarCapabilities
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = "[CARSessionConfiguration updateCarCapabilities]";
  v5 = 2048;
  selfCopy = self;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1C81FC000, log, OS_LOG_TYPE_DEBUG, "%s: configuration %p updated with car capabilities with %@", &v3, 0x20u);
}

- (id)description
{
  v26 = MEMORY[0x1E696AEC0];
  v28.receiver = self;
  v28.super_class = CARSessionConfiguration;
  v25 = [(CARSessionConfiguration *)&v28 description];
  sessionIdentifier = [(CARSessionConfiguration *)self sessionIdentifier];
  vehicleName = [(CARSessionConfiguration *)self vehicleName];
  vehicleModelName = [(CARSessionConfiguration *)self vehicleModelName];
  vehicleManufacturer = [(CARSessionConfiguration *)self vehicleManufacturer];
  vehicleSerialNumber = [(CARSessionConfiguration *)self vehicleSerialNumber];
  descriptionForTransportType = [(CARSessionConfiguration *)self descriptionForTransportType];
  if ([(CARSessionConfiguration *)self supportsElectronicTollCollection])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v19 = v4;
  if ([(CARSessionConfiguration *)self rightHandDrive])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v18 = v5;
  descriptionForLimitableUserInterfaces = [(CARSessionConfiguration *)self descriptionForLimitableUserInterfaces];
  manufacturerIconLabel = [(CARSessionConfiguration *)self manufacturerIconLabel];
  if ([(CARSessionConfiguration *)self manufacturerIconVisible])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v16 = v7;
  if ([(CARSessionConfiguration *)self nightModeSupported])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(CARSessionConfiguration *)self supportsACBack])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  screens = [(CARSessionConfiguration *)self screens];
  v14 = [CARSessionConfiguration descriptionForCapability:[(CARSessionConfiguration *)self nowPlayingAlbumArtMode]];
  v13 = [CARSessionConfiguration descriptionForUserInterfaceStyle:[(CARSessionConfiguration *)self userInterfaceStyle]];
  [(CARSessionConfiguration *)self viewAreaInsets];
  v10 = [CARSessionConfiguration descriptionForEdgeInsets:?];
  [(CARSessionConfiguration *)self dashboardRoundedCorners];
  v11 = [CARSessionConfiguration descriptionForEdgeInsets:?];
  v27 = [v26 stringWithFormat:@"[%@ session: %@, name: %@, modelName: %@, manufacturer: %@, serialNumber: %@, transport: %@, ETC supported: %@, right hand drive: %@, limitableUserInterfaces: (%@), manufacturerIconLabel: %@, manufacturerIconVisible: %@, night mode supported: %@, supports AC_BACK: %@, screens: %@], [CC] Now Playing Album Art Mode: %@, [CC] User Interface Style: %@, [CC] Additional Safe Area Insets %@, [CC] Dashboard rounded corners: %@", v25, sessionIdentifier, vehicleName, vehicleModelName, vehicleManufacturer, vehicleSerialNumber, descriptionForTransportType, v19, v18, descriptionForLimitableUserInterfaces, manufacturerIconLabel, v16, v8, v9, screens, v14, v13, v10, v11];

  return v27;
}

- (id)descriptionForTransportType
{
  v3 = objc_opt_class();
  transportType = [(CARSessionConfiguration *)self transportType];

  return [v3 _descriptionForTransportType:transportType];
}

- (id)descriptionForLimitableUserInterfaces
{
  limitableUserInterfaces = [(CARSessionConfiguration *)self limitableUserInterfaces];
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (limitableUserInterfaces)
  {
    [array addObject:@"Keyboard"];
    if ((limitableUserInterfaces & 2) == 0)
    {
LABEL_3:
      if ((limitableUserInterfaces & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((limitableUserInterfaces & 2) == 0)
  {
    goto LABEL_3;
  }

  [v4 addObject:@"Phone Keypad"];
  if ((limitableUserInterfaces & 4) == 0)
  {
LABEL_4:
    if ((limitableUserInterfaces & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v4 addObject:@"Non-Music Lists"];
  if ((limitableUserInterfaces & 8) == 0)
  {
LABEL_5:
    if ((limitableUserInterfaces & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v4 addObject:@"Music Lists"];
  if ((limitableUserInterfaces & 0x10) == 0)
  {
LABEL_6:
    if ((limitableUserInterfaces & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v4 addObject:@"Japan Maps"];
  if ((limitableUserInterfaces & 0x20) == 0)
  {
LABEL_7:
    if ((limitableUserInterfaces & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v4 addObject:@"Automaker Settings"];
  if ((limitableUserInterfaces & 0x40) == 0)
  {
LABEL_8:
    if ((limitableUserInterfaces & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v4 addObject:@"Paired Devices"];
  if ((limitableUserInterfaces & 0x80) == 0)
  {
LABEL_9:
    if ((limitableUserInterfaces & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  [v4 addObject:@"Theme Customization"];
  if ((limitableUserInterfaces & 0x100) != 0)
  {
LABEL_10:
    [v4 addObject:@"Automaker Settings Info Button"];
  }

LABEL_11:
  v5 = [v4 componentsJoinedByString:{@", "}];

  return v5;
}

- (NSEdgeInsets)viewAreaInsets
{
  top = self->_viewAreaInsets.top;
  left = self->_viewAreaInsets.left;
  bottom = self->_viewAreaInsets.bottom;
  right = self->_viewAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (NSEdgeInsets)dashboardRoundedCorners
{
  top = self->_dashboardRoundedCorners.top;
  left = self->_dashboardRoundedCorners.left;
  bottom = self->_dashboardRoundedCorners.bottom;
  right = self->_dashboardRoundedCorners.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

+ (id)_descriptionForTransportType:(unint64_t)type
{
  if (type - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E82FCD78[type - 1];
  }
}

+ (id)descriptionForCapability:(int64_t)capability
{
  v3 = @"Unknown";
  if (capability == 2)
  {
    v3 = @"Unrestricted";
  }

  if (capability == 1)
  {
    return @"Restricted";
  }

  else
  {
    return v3;
  }
}

+ (id)descriptionForUserInterfaceStyle:(int64_t)style
{
  if (style > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E82FCD90[style];
  }
}

+ (unint64_t)_limitableUserInterfacesFromLimitedUIValues:(id)values
{
  v16 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [valuesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(valuesCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isEqualToString:@"softKeyboard"])
        {
          v6 |= 1uLL;
        }

        else if ([v9 isEqualToString:@"softPhoneKeypad"])
        {
          v6 |= 2uLL;
        }

        else if ([v9 isEqualToString:@"nonMusicLists"])
        {
          v6 |= 4uLL;
        }

        else if ([v9 isEqualToString:@"musicLists"])
        {
          v6 |= 8uLL;
        }

        else if ([v9 isEqualToString:@"japanMaps"])
        {
          v6 |= 0x10uLL;
        }

        else if ([v9 isEqualToString:@"automakerSettings"])
        {
          v6 |= 0x20uLL;
        }

        else if ([v9 isEqualToString:@"pairedDevices"])
        {
          v6 |= 0x40uLL;
        }

        else if ([v9 isEqualToString:@"themeCustomization"])
        {
          v6 |= 0x80uLL;
        }

        else if ([v9 isEqualToString:@"automakerSettingsInfoButton"])
        {
          v6 |= 0x100uLL;
        }
      }

      v5 = [valuesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)_defaultInterfaceStyleFromAppearanceDefault:(id)default
{
  v9 = *MEMORY[0x1E69E9840];
  defaultCopy = default;
  v4 = CarGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = defaultCopy;
    _os_log_impl(&dword_1C81FC000, v4, OS_LOG_TYPE_DEFAULT, "CARSessionConfiguration INFO appearanceDefault=%@", &v7, 0xCu);
  }

  if (defaultCopy)
  {
    v5 = [defaultCopy isEqualToString:@"automatic"] - 1;
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (CARSessionConfiguration)initWithSessionStatusOptions:(unint64_t)options propertySupplier:(id)supplier
{
  optionsCopy = options;
  v209[5] = *MEMORY[0x1E69E9840];
  supplierCopy = supplier;
  v206.receiver = self;
  v206.super_class = CARSessionConfiguration;
  v6 = [(CARSessionConfiguration *)&v206 init];

  if (v6)
  {
    v7 = supplierCopy[2](supplierCopy, *MEMORY[0x1E69620F8]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    endpointIdentifier = v6->_endpointIdentifier;
    v6->_endpointIdentifier = v8;

    v10 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962260]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    sessionIdentifier = v6->_sessionIdentifier;
    v6->_sessionIdentifier = v11;

    v13 = supplierCopy[2](supplierCopy, *MEMORY[0x1E69621E8]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    name = v6->_name;
    v6->_name = v14;

    v16 = supplierCopy[2](supplierCopy, *MEMORY[0x1E69621D8]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    modelName = v6->_modelName;
    v6->_modelName = v17;

    v19 = supplierCopy[2](supplierCopy, *MEMORY[0x1E69621B8]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    manufacturerName = v6->_manufacturerName;
    v6->_manufacturerName = v20;

    v22 = supplierCopy[2](supplierCopy, *MEMORY[0x1E69622F0]);
    v187 = v22;
    if (v22)
    {
      v23 = v22;
      if ([v22 isEqualToString:*MEMORY[0x1E6962688]] & 1) != 0 || (objc_msgSend(v23, "isEqualToString:", *MEMORY[0x1E69626A0]))
      {
        v24 = 3;
      }

      else if ([v23 isEqualToString:*MEMORY[0x1E6962690]])
      {
        v24 = 2;
      }

      else
      {
        v24 = [v23 isEqualToString:*MEMORY[0x1E6962698]];
      }
    }

    else
    {
      v24 = 0;
    }

    v6->_transportType = v24;
    v25 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962230]);
    if (v25)
    {
      objc_opt_class();
      v26 = v25;
      if (objc_opt_isKindOfClass())
      {
        v26 = v26;

        bOOLValue = [v26 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }
    }

    else
    {
      bOOLValue = 0;
    }

    v6->_rightHandDrive = bOOLValue;
    v28 = supplierCopy[2](supplierCopy, *MEMORY[0x1E69621A0]);
    objc_opt_class();
    v29 = v28;
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v6->_limitableUserInterfaces = [CARSessionConfiguration _limitableUserInterfacesFromLimitedUIValues:v30];
    v31 = supplierCopy[2](supplierCopy, *MEMORY[0x1E69621F0]);
    v6->_nightModeSupported = v31 != 0;

    v32 = (supplierCopy)[2](supplierCopy, @"EndpointInfo");
    v33 = v32;
    if ((optionsCopy & 8) != 0)
    {
      if ((optionsCopy & 0x10) != 0)
      {
        v39 = [v32 copy];
        infoResponse = v6->_infoResponse;
        v6->_infoResponse = v39;
      }

      else
      {
        infoResponse = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v32];
        v35 = *MEMORY[0x1E69621F8];
        v209[0] = *MEMORY[0x1E6962208];
        v209[1] = v35;
        v209[2] = @"oemIcon";
        v209[3] = @"oemIcons";
        v209[4] = @"oemIconLabel";
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v209 count:5];
        [infoResponse removeObjectsForKeys:v36];

        v37 = [infoResponse copy];
        v38 = v6->_infoResponse;
        v6->_infoResponse = v37;
      }
    }

    v186 = v30;
    v40 = [v33 objectForKeyedSubscript:@"altScreenSuggestUIURLs"];
    altScreenSuggestUIURLs = v6->_altScreenSuggestUIURLs;
    v6->_altScreenSuggestUIURLs = v40;

    v42 = [v33 objectForKeyedSubscript:@"uiContextLastOnDisplayURLs"];
    lastOnDisplayUIContextURLs = v6->_lastOnDisplayUIContextURLs;
    v6->_lastOnDisplayUIContextURLs = v42;

    v44 = [v33 objectForKeyedSubscript:@"uiContextNowOnDisplayURLs"];
    nowOnDisplayUIContextURLs = v6->_nowOnDisplayUIContextURLs;
    v6->_nowOnDisplayUIContextURLs = v44;

    v46 = [v33 objectForKeyedSubscript:@"deviceID"];
    deviceIdentifier = v6->_deviceIdentifier;
    v6->_deviceIdentifier = v46;

    v185 = [v33 objectForKeyedSubscript:@"appearanceDefault"];
    v6->_defaultUserInterfaceStyle = [CARSessionConfiguration _defaultInterfaceStyleFromAppearanceDefault:?];
    v6->_userInterfaceStyle = -1;
    v48 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962070]);
    [(CARSessionConfiguration *)v6 setExtendedFeatures:v48];

    [(CARSessionConfiguration *)v6 updateCarCapabilities];
    v49 = [v33 objectForKeyedSubscript:@"enhancedSiriInfo"];
    objc_opt_class();
    v50 = v49;
    if (objc_opt_isKindOfClass())
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    if (v51)
    {
      v52 = [v51 objectForKeyedSubscript:@"enhancedSiriVoice"];
      if (v52)
      {
        objc_opt_class();
        v53 = v52;
        if (objc_opt_isKindOfClass())
        {
          v53 = v53;

          bOOLValue2 = [v53 BOOLValue];
        }

        else
        {
          bOOLValue2 = 0;
        }
      }

      else
      {
        bOOLValue2 = 0;
      }

      v6->_supportsSiriZLL = bOOLValue2;
      v55 = [v51 objectForKeyedSubscript:@"enhancedSiriButton"];
      if (v55)
      {
        objc_opt_class();
        v56 = v55;
        if (objc_opt_isKindOfClass())
        {
          v56 = v56;

          bOOLValue3 = [v56 BOOLValue];
        }

        else
        {
          bOOLValue3 = 0;
        }
      }

      else
      {
        bOOLValue3 = 0;
      }

      v6->_supportsSiriZLLButton = bOOLValue3;
      v58 = [v51 objectForKey:@"enhancedSiriNotMixable"];

      if (v58)
      {
        v59 = [v51 objectForKeyedSubscript:@"enhancedSiriNotMixable"];
        if (v59)
        {
          objc_opt_class();
          v60 = v59;
          if (objc_opt_isKindOfClass())
          {
            v60 = v60;

            v61 = [v60 BOOLValue] ^ 1;
          }

          else
          {
            v61 = 1;
          }
        }

        else
        {
          v61 = 1;
        }

        v6->_supportsSiriMixable = v61;
      }

      else
      {
        v6->_supportsSiriMixable = 1;
      }
    }

    else
    {
      *&v6->_supportsSiriZLL = 0;
      v6->_supportsSiriMixable = 0;
    }

    v62 = [v33 objectForKeyedSubscript:@"videoPlaybackInfo"];
    v6->_videoPlaybackSupported = v62 != 0;

    extendedFeatures = [(CARSessionConfiguration *)v6 extendedFeatures];
    v6->_supportsACBack = [extendedFeatures containsObject:*MEMORY[0x1E6962680]];

    v64 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962330]);
    if (v64)
    {
      objc_opt_class();
      v65 = v64;
      if (objc_opt_isKindOfClass())
      {
        v65 = v65;

        integerValue = [v65 integerValue];
      }

      else
      {
        integerValue = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      integerValue = 0x7FFFFFFFFFFFFFFFLL;
    }

    if ((integerValue - 3) < 0xFFFFFFFFFFFFFFFCLL || integerValue == 0)
    {
      v68 = -1;
    }

    else
    {
      v68 = integerValue;
    }

    v6->_voiceTriggerMode = v68;
    v184 = v51;
    if ((optionsCopy & 2) != 0)
    {
      v69 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962328]);
      v70 = v69;
      if (v69)
      {
        v71 = [v69 objectForKeyedSubscript:*MEMORY[0x1E69626F8]];
        objc_opt_class();
        v72 = v71;
        if (objc_opt_isKindOfClass())
        {
          v73 = v72;
        }

        else
        {
          v73 = 0;
        }

        if (v73)
        {
          v74 = [v73 objectForKeyedSubscript:@"active"];
          v6->_supportsElectronicTollCollection = v74 != 0;
        }
      }
    }

    v75 = [v33 objectForKey:@"vehicleStateProtocolInfo"];
    objc_opt_class();
    v76 = v75;
    if (objc_opt_isKindOfClass())
    {
      v77 = v76;
    }

    else
    {
      v77 = 0;
    }

    v183 = v77;
    if (!v77)
    {
      v6->_supportsVehicleData = 0;
      v6->_vehicleDataPluginCount = 0;
      goto LABEL_104;
    }

    v6->_supportsVehicleData = 1;
    v78 = [v77 objectForKey:@"protocolVersion"];
    objc_opt_class();
    v79 = v78;
    if (objc_opt_isKindOfClass())
    {
      v80 = v79;
    }

    else
    {
      v80 = 0;
    }

    vehicleDataProtocolVersion = v6->_vehicleDataProtocolVersion;
    v6->_vehicleDataProtocolVersion = v80;

    v82 = [v77 objectForKey:@"pluginCount"];
    objc_opt_class();
    v83 = v82;
    if (objc_opt_isKindOfClass())
    {
      v84 = v83;
    }

    else
    {
      v84 = 0;
    }

    if (v84)
    {
      unsignedIntegerValue = [v84 unsignedIntegerValue];
      v6->_vehicleDataPluginCount = unsignedIntegerValue;
      if (unsignedIntegerValue)
      {
LABEL_103:

LABEL_104:
        v94 = [v33 objectForKey:@"fileTransferInfo"];
        v6->_supportsFileTransfer = v94 != 0;

        v95 = [v33 objectForKey:@"logTransferInfo"];
        v6->_supportsLogTransfer = v95 != 0;

        array = [MEMORY[0x1E695DF70] array];
        array2 = [MEMORY[0x1E695DF70] array];
        v189 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962240]);
        v98 = [v33 objectForKey:@"displayPanels"];
        objc_opt_class();
        v99 = v98;
        if (objc_opt_isKindOfClass())
        {
          v100 = v99;
        }

        else
        {
          v100 = 0;
        }

        v101 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v102 = v101;
        if (v100)
        {
          v204[0] = MEMORY[0x1E69E9820];
          v204[1] = 3221225472;
          v204[2] = __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke;
          v204[3] = &unk_1E82FCC00;
          v103 = &v205;
          v205 = v101;
          v104 = v204;
          v105 = v100;
        }

        else
        {
          v202[0] = MEMORY[0x1E69E9820];
          v202[1] = 3221225472;
          v202[2] = __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_605;
          v202[3] = &unk_1E82FCC00;
          v103 = &v203;
          v203 = v101;
          v104 = v202;
          v105 = v189;
        }

        [v105 enumerateObjectsUsingBlock:v104];

        v181 = v102;
        v106 = [v102 copy];
        displays = v6->_displays;
        v6->_displays = v106;

        v108 = [v33 objectForKey:@"displays"];
        v188 = v33;
        v182 = v100;
        if ((optionsCopy & 4) != 0)
        {
          v110 = +[CRCarPlayCapabilities capabilitiesIdentifier];
          v109 = [CRCarPlayCapabilities fetchCarCapabilitiesWithIdentifier:v110];

          v33 = v188;
        }

        else
        {
          v109 = 0;
        }

        v196[0] = MEMORY[0x1E69E9820];
        v196[1] = 3221225472;
        v196[2] = __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_610;
        v196[3] = &unk_1E82FCCA0;
        v179 = v108;
        v197 = v179;
        v111 = v6;
        v198 = v111;
        v177 = v109;
        v199 = v177;
        v112 = array;
        v200 = v112;
        v113 = array2;
        v201 = v113;
        [v189 enumerateObjectsUsingBlock:v196];
        v180 = v112;
        v114 = [v112 copy];
        screens = v111->_screens;
        v111->_screens = v114;

        v178 = v113;
        v116 = [v113 copy];
        screenIDs = v111->_screenIDs;
        v111->_screenIDs = v116;

        v111->_hasGaugeClusterScreen = [(NSArray *)v6->_displays bs_containsObjectPassingTest:&__block_literal_global_620];
        if ((optionsCopy & 2) != 0)
        {
          v118 = supplierCopy[2](supplierCopy, *MEMORY[0x1E69621F8]);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v119 = v118;
          }

          else
          {
            v119 = 0;
          }

          manufacturerIconLabel = v111->_manufacturerIconLabel;
          v111->_manufacturerIconLabel = v119;

          v121 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962200]);
          if (v121)
          {
            objc_opt_class();
            v122 = v121;
            if (objc_opt_isKindOfClass())
            {
              v122 = v122;

              bOOLValue4 = [v122 BOOLValue];
            }

            else
            {
              bOOLValue4 = 0;
            }
          }

          else
          {
            bOOLValue4 = 0;
          }

          v111->_manufacturerIconVisible = bOOLValue4;
          v124 = supplierCopy[2](supplierCopy, *MEMORY[0x1E6962208]);
          v125 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v194[0] = MEMORY[0x1E69E9820];
          v194[1] = 3221225472;
          v194[2] = __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_6;
          v194[3] = &unk_1E82FCA80;
          v126 = v125;
          v195 = v126;
          [v124 enumerateObjectsUsingBlock:v194];
          objc_storeStrong(&v111->_manufacturerIcons, v125);
        }

        v127 = [v33 objectForKeyedSubscript:@"buttonInfo"];
        objc_opt_class();
        v128 = v127;
        if (objc_opt_isKindOfClass())
        {
          v129 = v128;

          if (v129)
          {
            array3 = [MEMORY[0x1E695DF70] array];
            v192[0] = MEMORY[0x1E69E9820];
            v192[1] = 3221225472;
            v192[2] = __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_7;
            v192[3] = &unk_1E82FCA80;
            v131 = array3;
            v193 = v131;
            [v129 enumerateObjectsUsingBlock:v192];
            v132 = [MEMORY[0x1E695DEC8] arrayWithArray:v131];
            vehicleButtons = v111->_vehicleButtons;
            v111->_vehicleButtons = v132;

LABEL_131:
            v175 = v129;

LABEL_133:
            v134 = [v33 objectForKey:{@"sessionManagementInfo", v175}];
            objc_opt_class();
            v135 = v134;
            if (objc_opt_isKindOfClass())
            {
              v136 = v135;
            }

            else
            {
              v136 = 0;
            }

            if (v136)
            {
              v137 = [v136 objectForKey:@"stopSession"];
              if (v137)
              {
                objc_opt_class();
                v138 = v137;
                if (objc_opt_isKindOfClass())
                {
                  v138 = v138;

                  integerValue2 = [v138 integerValue];
                }

                else
                {
                  integerValue2 = 0x7FFFFFFFFFFFFFFFLL;
                }
              }

              else
              {
                integerValue2 = 0x7FFFFFFFFFFFFFFFLL;
              }

              v111->_supportsStopSession = integerValue2;
              if (v111->_supportsStopSession)
              {
                v140 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v141 = v140;
                if (v111->_supportsStopSession)
                {
                  [v140 addObject:&unk_1F47F26A0];
                }

                if (v141)
                {
                  v142 = [MEMORY[0x1E695DFD8] setWithArray:v141];
                  supportedStopSessionDisconnectReasons = v111->_supportedStopSessionDisconnectReasons;
                  v111->_supportedStopSessionDisconnectReasons = v142;
                }
              }
            }

            v144 = +[CRVehicleAccessoryManager sharedInstance];
            connectedVehicleAccessories = [v144 connectedVehicleAccessories];
            anyObject = [connectedVehicleAccessories anyObject];
            v191 = v128;
            if (anyObject)
            {
              v147 = anyObject;
              v111->_hasAccessory = 1;
LABEL_151:
              vehicleAccessoryInfoKeys = [v147 vehicleAccessoryInfoKeys];
              v149 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"name"];
              vehicleName = v111->_vehicleName;
              v111->_vehicleName = v149;

              v151 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"modelName"];
              vehicleModelName = v111->_vehicleModelName;
              v111->_vehicleModelName = v151;

              v153 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"manufacturer"];
              vehicleManufacturer = v111->_vehicleManufacturer;
              v111->_vehicleManufacturer = v153;

              v155 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"serialNumber"];
              vehicleSerialNumber = v111->_vehicleSerialNumber;
              v111->_vehicleSerialNumber = v155;

              v157 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"firmwareVersion"];
              vehicleFirmwareVersion = v111->_vehicleFirmwareVersion;
              v111->_vehicleFirmwareVersion = v157;

              v159 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"hardwareVersion"];
              vehicleHardwareVersion = v111->_vehicleHardwareVersion;
              v111->_vehicleHardwareVersion = v159;

              v161 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"engineTypeGasoline"];
              v111->_vehicleSupportsGasoline = [v161 BOOLValue];

              v162 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"engineTypeElectric"];
              v111->_vehicleSupportsElectric = [v162 BOOLValue];

              v163 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"engineTypeDiesel"];
              v111->_vehicleSupportsDiesel = [v163 BOOLValue];

              v164 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"engineTypeCNG"];
              v111->_vehicleSupportsCNG = [v164 BOOLValue];

              v165 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"ppid"];
              PPID = v111->_PPID;
              v111->_PPID = v165;

              v167 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"destinationSharing"];
              v111->_vehicleSupportsDestinationSharing = [v167 BOOLValue];

LABEL_152:
              goto LABEL_153;
            }

            v170 = +[CRCarPlayCapabilities capabilitiesIdentifier];
            if (v170)
            {
              v171 = v170;
              v172 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v170 options:0];
              connectedVehicleAccessories2 = [v144 connectedVehicleAccessories];
              v147 = [v144 vehicleAccessoryForCertificateSerial:v172];

              v111->_hasAccessory = v147 != 0;
              if (v147)
              {
                goto LABEL_151;
              }
            }

            else
            {
              v111->_hasAccessory = 0;
            }

            v147 = CarGeneralLogging();
            if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
            {
              connectedAccessories = [v144 connectedAccessories];
              *buf = 138412290;
              v208 = connectedAccessories;
              _os_log_impl(&dword_1C81FC000, v147, OS_LOG_TYPE_DEFAULT, "Configuration created without an accessory. Connected accessories: %@", buf, 0xCu);
            }

            goto LABEL_152;
          }
        }

        else
        {

          if (v128)
          {
            v131 = CarGeneralLogging();
            if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
            {
              [CARSessionConfiguration initWithSessionStatusOptions:propertySupplier:];
            }

            v129 = 0;
            goto LABEL_131;
          }
        }

        v175 = 0;
        goto LABEL_133;
      }
    }

    else
    {
      v6->_vehicleDataPluginCount = 0;
    }

    v86 = CarGeneralLogging();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      [(CARSessionConfiguration *)v86 initWithSessionStatusOptions:v87 propertySupplier:v88, v89, v90, v91, v92, v93];
    }

    goto LABEL_103;
  }

LABEL_153:
  v168 = v6;

  return v168;
}

void __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"displayPlugins"];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  v7 = v3;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    if (!v6)
    {
      goto LABEL_12;
    }

    v8 = 0;
LABEL_11:
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_2;
    v12[3] = &unk_1E82FCBD8;
    v13 = v8;
    v14 = *(a1 + 32);
    v10 = v8;
    [v6 enumerateObjectsUsingBlock:v12];

    goto LABEL_18;
  }

  v8 = v7;
  if (v6)
  {
    goto LABEL_11;
  }

  if (v7)
  {
    v9 = [[CARDisplayInfo alloc] initWithPhysicalScreenDictionary:v7];
    if (v9)
    {
      [*(a1 + 32) addObject:v9];
    }

    else
    {
      v11 = CarGeneralLogging();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_cold_1();
      }
    }

    v10 = v7;
    goto LABEL_18;
  }

LABEL_12:
  v10 = CarGeneralLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_cold_2();
  }

LABEL_18:
}

void __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && *(a1 + 32))
  {
    v6 = [[CARDisplayInfo alloc] initWithPhysicalScreenDictionary:*(a1 + 32) displayPluginDictionary:v5];
    if (v6)
    {
      [*(a1 + 40) addObject:v6];
    }

    else
    {
      v7 = CarGeneralLogging();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_2_cold_2();
      }
    }
  }

  else
  {
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
    {
      __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_2_cold_1();
    }
  }
}

void __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_605(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    if (v6)
    {
      v7 = [[CARDisplayInfo alloc] initWithLogicalScreenDictionary:v6 isPrimaryDisplay:a3 == 0];
      if (v7)
      {
        [*(a1 + 32) addObject:v7];
      }

      else
      {
        v9 = CarGeneralLogging();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_605_cold_1();
        }
      }

      v8 = v6;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_605_cold_2();
  }

LABEL_12:
}

void __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_610(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__2;
  v34 = __Block_byref_object_dispose__2;
  v35 = 0;
  v6 = [v5 objectForKey:@"ScreenID"];
  v7 = *(a1 + 32);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_614;
  v27[3] = &unk_1E82FCC28;
  v8 = v6;
  v28 = v8;
  v29 = &v30;
  [v7 enumerateObjectsUsingBlock:v27];
  v9 = *(*(a1 + 40) + 120);
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_2_615;
  v25 = &unk_1E82FCC78;
  v10 = v8;
  v26 = v10;
  v11 = [v9 bs_firstObjectPassingTest:&v22];
  v12 = [CARScreenInfo alloc];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_4;
  v20 = &unk_1E82FCAA8;
  v13 = v5;
  v21 = v13;
  v14 = [(CARScreenInfo *)v12 initWithPropertySupplier:&v17 screenType:a3 != 0 additionalInsets:v31[5] displayDictionary:v11 physicalDisplay:*(a1 + 48) carCapabilities:*(*(a1 + 40) + 328), *(*(a1 + 40) + 336), *(*(a1 + 40) + 344), *(*(a1 + 40) + 352)];
  if (v14)
  {
    [*(a1 + 56) addObject:{v14, v17, v18, v19, v20, v21, v22, v23, v24, v25}];
    v15 = *(a1 + 64);
    v16 = [(CARScreenInfo *)v14 identifier];
    [v15 addObject:v16];
  }

  _Block_object_dispose(&v30, 8);
}

void __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_614(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 objectForKey:@"uuid"];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_2_615(uint64_t a1, void *a2)
{
  v3 = [a2 streams];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_3;
  v6[3] = &unk_1E82FCC50;
  v7 = *(a1 + 32);
  v4 = [v3 bs_containsObjectPassingTest:v6];

  return v4;
}

uint64_t __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[CARManufacturerIcon alloc] initWithDictionary:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

void __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    if (v4)
    {
      v5 = [v4 objectForKeyedSubscript:@"buttonType"];
      objc_opt_class();
      v6 = v5;
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v9 = [v4 objectForKeyedSubscript:@"buttonLocation"];
      objc_opt_class();
      v10 = v9;
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = [v4 objectForKeyedSubscript:@"buttonPressDuration"];
      objc_opt_class();
      v13 = v12;
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      if (v7 && v11 && v14)
      {
        v15 = -[CARButtonInfo initWithButtonType:buttonLocation:buttonPressDuration:]([CARButtonInfo alloc], "initWithButtonType:buttonLocation:buttonPressDuration:", [v7 unsignedIntegerValue], objc_msgSend(v11, "unsignedIntegerValue"), objc_msgSend(v14, "unsignedIntegerValue"));
        [*(a1 + 32) addObject:v15];
      }

      else
      {
        v16 = CarGeneralLogging();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_7_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
        }
      }

      v8 = v4;
      goto LABEL_23;
    }
  }

  else
  {
  }

  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __73__CARSessionConfiguration_initWithSessionStatusOptions_propertySupplier___block_invoke_7_cold_2();
  }

LABEL_23:
}

void __48__CARSessionConfiguration_updateCarCapabilities__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 zoomFactor];
  [v3 setZoomFactor:v4];
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  v4 = CarGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(CARSessionConfiguration *)keyCopy valueForUndefinedKey:v4];
  }

  return 0;
}

- (id)screenInfoForScreenID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  screens = [(CARSessionConfiguration *)self screens];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__CARSessionConfiguration_screenInfoForScreenID___block_invoke;
  v9[3] = &unk_1E82FCD10;
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  [screens enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __49__CARSessionConfiguration_screenInfoForScreenID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)primaryDisplayPhysicalSize
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  screens = [(CARSessionConfiguration *)self screens];
  v3 = [screens countByEnumeratingWithState:&v14 objects:v18 count:16];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(screens);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if (![v8 screenType])
        {
          [v8 physicalSize];
          v9 = v10;
          v4 = v11;
          goto LABEL_11;
        }
      }

      v5 = [screens countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0.0;
LABEL_11:

  v21.width = v9;
  v21.height = v4;
  v12 = NSStringFromSize(v21);

  return v12;
}

- (id)numberOfScreens
{
  v2 = MEMORY[0x1E696AD98];
  screens = [(CARSessionConfiguration *)self screens];
  v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(screens, "count")}];
  stringValue = [v4 stringValue];

  return stringValue;
}

- (id)primaryDisplayFirstViewAreaSize
{
  screens = [(CARSessionConfiguration *)self screens];
  firstObject = [screens firstObject];

  if (firstObject)
  {
    viewAreas = [firstObject viewAreas];
    firstObject2 = [viewAreas firstObject];

    if (firstObject2)
    {
      [firstObject2 visibleFrame];
      v7 = v6;
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = NSStringFromSize(*&v7);
  }

  else
  {
    v13.width = 0.0;
    v13.height = 0.0;
    v10 = NSStringFromSize(v13);
  }

  return v10;
}

- (id)secondaryDisplayFirstViewAreaSize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3010000000;
  v10 = 0;
  v11 = 0;
  v9 = "";
  screens = [(CARSessionConfiguration *)self screens];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__CARSessionConfiguration_secondaryDisplayFirstViewAreaSize__block_invoke;
  v5[3] = &unk_1E82FCD38;
  v5[4] = &v6;
  [screens enumerateObjectsUsingBlock:v5];

  v3 = NSStringFromSize(v7[2]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __60__CARSessionConfiguration_secondaryDisplayFirstViewAreaSize__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a3 == 1)
  {
    v7 = [a2 viewAreas];
    v11 = [v7 firstObject];

    if (!v11)
    {
      *a4 = 1;
    }

    [v11 visibleFrame];
    v8 = *(*(a1 + 32) + 8);
    *(v8 + 32) = v9;
    *(v8 + 40) = v10;
    *a4 = 1;
  }
}

- (CARDisplayInfoProviding)displayInfoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_displayInfoProvider);

  return WeakRetained;
}

- (void)valueForUndefinedKey:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[CARSessionConfiguration valueForUndefinedKey:]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_DEBUG, "%s: key %@", &v2, 0x16u);
}

@end