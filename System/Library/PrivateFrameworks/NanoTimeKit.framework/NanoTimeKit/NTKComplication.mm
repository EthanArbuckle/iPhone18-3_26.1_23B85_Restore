@interface NTKComplication
+ (Class)_complicationClassForType:(unint64_t)type;
+ (NTKComplication)complicationWithJSONObjectRepresentation:(id)representation;
+ (id)_allComplicationConfigurationsWithType:(unint64_t)type;
+ (id)activityTimelineComplication;
+ (id)allComplicationsOfType:(unint64_t)type;
+ (id)anyComplicationOfType:(unint64_t)type;
+ (id)calendarTimelineComplication;
+ (id)compassBearingComplication;
+ (id)compassComplication;
+ (id)dailyStepDistanceComplication;
+ (id)depthComplication;
+ (id)elevationComplication;
+ (id)elevationInclineComplication;
+ (id)humidityComplication;
+ (id)levelComplication;
+ (id)monthlyCyclingDistanceComplication;
+ (id)monthlyHikingDistanceComplication;
+ (id)musicRecognitionComplication;
+ (id)noiseComplication;
+ (id)nullComplication;
+ (id)rainComplication;
+ (id)satelliteComplication;
+ (id)stateOfMindComplication;
+ (id)swellComplication;
+ (id)tidesComplication;
+ (id)timerComplicationWithDuration:(double)duration;
+ (id)translateComplication;
+ (id)vitalsComplication;
+ (id)waterTemperatureComplication;
+ (id)waypointsComplication;
+ (id)weatherLocationComplication;
- (BOOL)isEqual:(id)equal;
- (BOOL)snapshotContext:(id)context isStaleRelativeToContext:(id)toContext;
- (NSString)description;
- (NTKComplication)initWithCoder:(id)coder;
- (NTKComplication)initWithComplicationType:(unint64_t)type;
- (id)JSONObjectRepresentation;
- (id)_generateAppIdentifier;
- (id)_migrateToFamily:(int64_t)family withAllowedComplications:(id)complications;
- (id)awakeAfterUsingCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customDailySnapshotKeyForFamily:(int64_t)family device:(id)device;
- (id)localizedSectionHeaderName;
- (id)ntk_localizedNameWithOptions:(unint64_t)options forRichComplicationSlot:(BOOL)slot;
- (unint64_t)ntk_itemType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKComplication

- (id)ntk_localizedNameWithOptions:(unint64_t)options forRichComplicationSlot:(BOOL)slot
{
  optionsCopy = options;
  v6 = NTKLocalizedTitleForComplication(self, slot);
  if ((optionsCopy & 2) != 0)
  {
    localizedSectionHeaderName = [(NTKComplication *)self localizedSectionHeaderName];
    localizedLowercaseString = [localizedSectionHeaderName localizedLowercaseString];
    localizedLowercaseString2 = [v6 localizedLowercaseString];
    v10 = NTKEqualObjects(localizedLowercaseString, localizedLowercaseString2);

    if ((v10 & 1) == 0)
    {
      v11 = NTKClockFaceLocalizedString(@"COMPLICATION_JOINED_DESCRIPTORS", @"%@: %@");
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:v11, localizedSectionHeaderName, v6];

      v6 = v12;
    }
  }

  return v6;
}

- (unint64_t)ntk_itemType
{
  if ([(NTKComplication *)self complicationType])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)localizedSectionHeaderName
{
  v43 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (selfCopy && (isKindOfClass & 1) != 0)
  {
    complication = [(NTKComplication *)selfCopy complication];
    bundleIdentifier = [complication bundleIdentifier];

    v6 = +[NTKBundleComplicationManager sharedManager];
    localizedAppName = [v6 localizedAppNameForBundleIdentifier:bundleIdentifier];

    if ([localizedAppName length])
    {
      goto LABEL_9;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x277CBBAE8];
    v9 = selfCopy;
    currentDevice = [v8 currentDevice];
    v11 = NTKSharedWidgetComplicationProvider(currentDevice);
    descriptor = [(NTKComplication *)v9 descriptor];

    v13 = [v11 infoForDescriptor:descriptor];

    localizedAppName = [v13 localizedAppName];

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bundleIdentifier = NTKSharedRemoteComplicationProvider();
    clientIdentifier = [(NTKComplication *)selfCopy clientIdentifier];
    localizedAppName = [bundleIdentifier localizedAppNameForClientIdentifier:clientIdentifier];

    goto LABEL_9;
  }

  if ([(NTKComplication *)selfCopy complicationType]!= 2)
  {
    ntk_sectionIdentifier = [(NTKComplication *)selfCopy ntk_sectionIdentifier];
    v18 = [ntk_sectionIdentifier isEqualToString:@"com.apple.NanoWorldClock"];

    if (v18)
    {
      v15 = @"EDIT_MODE_LABEL_COMPLICATION_SECTION_WORLD_CLOCK";
      v16 = @"World Clock";
      goto LABEL_16;
    }

    ntk_sectionIdentifier2 = [(NTKComplication *)selfCopy ntk_sectionIdentifier];
    v20 = [ntk_sectionIdentifier2 isEqualToString:@"com.apple.SafetyMonitorApp"];

    if (v20)
    {
      v15 = @"EDIT_MODE_LABEL_COMPLICATION_SECTION_CHECK_IN";
      v16 = @"Check In";
      goto LABEL_16;
    }

    bundleIdentifier = [(NTKComplication *)selfCopy ntk_sectionIdentifier];
    if ([bundleIdentifier isEqual:@"com.apple.nanotimekit.off"])
    {
      v22 = @"COMPLICATION_PICKER_NONE_SECTION_NAME";
      v23 = @"None";
    }

    else if ([bundleIdentifier isEqual:@"com.apple.findmy"])
    {
      v22 = @"COMPLICATION_PICKER_FINDMY_SECTION_NAME";
      v23 = @"Find My";
    }

    else if ([bundleIdentifier isEqual:@"com.apple.nanotimekit.controls"])
    {
      v22 = @"COMPLICATION_PICKER_CONTROLS_SECTION_NAME";
      v23 = @"Controls";
    }

    else if ([bundleIdentifier isEqual:@"com.apple.nanotimekit.battery"])
    {
      v22 = @"COMPLICATION_PICKER_BATTERY_SECTION_NAME";
      v23 = @"Battery";
    }

    else if ([bundleIdentifier isEqual:@"com.apple.nanotimekit.cellular"])
    {
      v22 = @"COMPLICATION_PICKER_CELLULAR_SECTION_NAME";
      v23 = @"Cellular";
    }

    else if ([bundleIdentifier isEqual:@"com.apple.nanotimekit.internal"])
    {
      v22 = @"COMPLICATION_PICKER_INTERNAL_SECTION_NAME";
      v23 = @"Internal";
    }

    else if ([bundleIdentifier isEqual:@"com.apple.nanotimekit.contacts"])
    {
      v22 = @"COMPLICATION_PICKER_CONTACTS_SECTION_NAME";
      v23 = @"Contacts";
    }

    else if ([bundleIdentifier isEqual:@"com.apple.nanotimekit.astronomy"])
    {
      v22 = @"COMPLICATION_PICKER_ASTRONOMY_SECTION_NAME";
      v23 = @"Astronomy";
    }

    else if ([bundleIdentifier isEqual:@"com.apple.nanotimekit.personalization"])
    {
      v22 = @"COMPLICATION_PICKER_PERSONALIZATION_SECTION_NAME";
      v23 = @"Personalization";
    }

    else if ([bundleIdentifier isEqual:@"com.apple.nanotimekit.time"])
    {
      v22 = @"COMPLICATION_PICKER_TIME_SECTION_NAME";
      v23 = @"Time";
    }

    else if ([bundleIdentifier isEqual:@"com.apple.DateComplicationsHost"])
    {
      v22 = @"COMPLICATION_PICKER_DATE_SECTION_NAME";
      v23 = @"Date";
    }

    else if ([bundleIdentifier isEqual:@"com.apple.nanotimekit.siri"])
    {
      v22 = @"COMPLICATION_PICKER_SIRI_SECTION_NAME";
      v23 = @"Siri";
    }

    else
    {
      if (![bundleIdentifier isEqual:@"com.apple.NanoCompass.watchkitapp.waypoints"])
      {
        v24 = [NTKCompanion1stPartyApp appForBundleIdentifier:bundleIdentifier];
        v25 = v24;
        if (v24)
        {
          name = [v24 name];
        }

        else
        {
          v27 = +[NTKBundleComplicationManager sharedManager];
          v28 = [v27 localizedAppNameForBundleIdentifier:bundleIdentifier];

          +[NTKCompanionAppLibrary sharedAppLibrary];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = v41 = 0u;
          allApps = [v37 allApps];
          v30 = [allApps countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v39;
            while (2)
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v39 != v32)
                {
                  objc_enumerationMutation(allApps);
                }

                v34 = *(*(&v38 + 1) + 8 * i);
                watchApplicationIdentifier = [v34 watchApplicationIdentifier];
                v36 = [watchApplicationIdentifier isEqual:bundleIdentifier];

                if (v36)
                {
                  name = [v34 name];

                  goto LABEL_59;
                }
              }

              v31 = [allApps countByEnumeratingWithState:&v38 objects:v42 count:16];
              if (v31)
              {
                continue;
              }

              break;
            }
          }

          name = NTKComplicationTypeLocalizedLabelText([(NTKComplication *)selfCopy complicationType]);
LABEL_59:
        }

        localizedAppName = name;
        goto LABEL_9;
      }

      v22 = @"COMPLICATION_PICKER_COMPASS_WAYPOINTS";
      v23 = @"Compass";
    }

    localizedAppName = NTKClockFaceLocalizedString(v22, v23);
LABEL_9:

    goto LABEL_17;
  }

  v15 = @"EDIT_MODE_LABEL_COMPLICATION_SECTION_ALARMS";
  v16 = @"Alarms";
LABEL_16:
  localizedAppName = NTKCompanionClockFaceLocalizedString(v15, v16);
LABEL_17:

  return localizedAppName;
}

+ (id)allComplicationsOfType:(unint64_t)type
{
  v4 = [self _complicationClassForType:?];

  return [v4 _allComplicationConfigurationsWithType:type];
}

+ (id)anyComplicationOfType:(unint64_t)type
{
  v3 = [self allComplicationsOfType:type];
  firstObject = [v3 firstObject];

  return firstObject;
}

+ (id)nullComplication
{
  v2 = [[self alloc] initWithComplicationType:0];

  return v2;
}

- (NTKComplication)initWithComplicationType:(unint64_t)type
{
  v12.receiver = self;
  v12.super_class = NTKComplication;
  v4 = [(NTKComplication *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_complicationType = type;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    stringValue = [v6 stringValue];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = stringValue;

    _generateAppIdentifier = [(NTKComplication *)v5 _generateAppIdentifier];
    appIdentifier = v5->_appIdentifier;
    v5->_appIdentifier = _generateAppIdentifier;
  }

  return v5;
}

- (id)_generateAppIdentifier
{
  complicationType = [(NTKComplication *)self complicationType];
  if (complicationType > 37)
  {
    if ((complicationType - 38) >= 4)
    {
      if (complicationType == 45 || complicationType == 57)
      {
        v4 = @"com.apple.nanotimekit.time";
        goto LABEL_10;
      }

LABEL_18:
      currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
      v7 = NTKComplicationTypesToBundleIDMappingForDevice(currentDevice);
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_complicationType];
      v9 = [v7 objectForKeyedSubscript:v8];

      if (v9)
      {
        v4 = v9;
      }

      else
      {
        v4 = @"com.apple.nanotimekit.internal";
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (complicationType > 12)
  {
    if (complicationType == 13)
    {
      v4 = @"com.apple.nanotimekit.battery";
    }

    else
    {
      if (complicationType != 29)
      {
        goto LABEL_18;
      }

      v4 = @"com.apple.nanotimekit.siri";
    }
  }

  else
  {
    if (complicationType)
    {
      if (complicationType != 11)
      {
        goto LABEL_18;
      }

LABEL_9:
      v4 = @"com.apple.nanotimekit.astronomy";
      goto LABEL_10;
    }

    v4 = @"com.apple.nanotimekit.off";
  }

LABEL_10:

  return v4;
}

+ (Class)_complicationClassForType:(unint64_t)type
{
  v4 = objc_opt_class();

  return v4;
}

+ (id)_allComplicationConfigurationsWithType:(unint64_t)type
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = [[self alloc] initWithComplicationType:type];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

- (id)customDailySnapshotKeyForFamily:(int64_t)family device:(id)device
{
  if (self->_complicationType != 19)
  {
    return 0;
  }

  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  v5 = [currentDevice supportsPDRCapability:710010803];

  if (v5)
  {
    return @"mind";
  }

  else
  {
    return 0;
  }
}

- (BOOL)snapshotContext:(id)context isStaleRelativeToContext:(id)toContext
{
  contextCopy = context;
  toContextCopy = toContext;
  if ([contextCopy localeMatchesContext:toContextCopy])
  {
    v7 = [contextCopy buildVersionMatchesContext:toContextCopy] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (NSString)description
{
  v2 = [MEMORY[0x277CCAA78] indexSetWithIndex:self->_complicationType];
  v3 = NTKComplicationTypeDescription(v2);

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_uniqueIdentifier isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)JSONObjectRepresentation
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    complication = [(NTKComplication *)self complication];
    jSONObjectRepresentation = [complication JSONObjectRepresentation];

    goto LABEL_12;
  }

  complicationType = self->_complicationType;
  if (!complicationType)
  {
    jSONObjectRepresentation = 0;
    goto LABEL_12;
  }

  jSONObjectRepresentation = objc_opt_new();
  if (complicationType == 31)
  {
    goto LABEL_7;
  }

  if (complicationType != 48)
  {
    if (complicationType != 56)
    {
      v6 = NTKFaceBundleStringFromComplicationType(self->_complicationType);
      v7 = NTKFaceBundleComplicationAppKey;
      goto LABEL_10;
    }

LABEL_7:
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_complicationType];
    v7 = NTKFaceBundleComplicationTypeKey;
LABEL_10:
    [jSONObjectRepresentation setObject:v6 forKeyedSubscript:*v7];
  }

  [(NTKComplication *)self _addKeysToJSONDictionary:jSONObjectRepresentation];
LABEL_12:

  return jSONObjectRepresentation;
}

+ (NTKComplication)complicationWithJSONObjectRepresentation:(id)representation
{
  representationCopy = representation;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"object must be dictionary - invalid value: %@", representationCopy}];
  }

  v5 = [representationCopy objectForKeyedSubscript:@"bundle identifier"];
  v6 = [representationCopy objectForKeyedSubscript:@"bundle app identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass())))
  {
    v7 = [representationCopy objectForKeyedSubscript:@"bundle app complication descriptor"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [objc_alloc(MEMORY[0x277CBB718]) initWithJSONObjectRepresentation:v7];
    }

    else
    {
      v8 = 0;
    }

    v12 = [MEMORY[0x277CFA700] complicationWithBundleIdentifier:v5 appBundleIdentifier:v6 complicationDescriptor:v8];
    v13 = [NTKBundleComplication bundledComplicationWithComplication:v12];
  }

  else
  {
    v9 = [representationCopy objectForKeyedSubscript:@"app"];
    if (!v9)
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"missing value for '%@'", @"app"}];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"value for '%@' must be a string - invalid value: %@", @"app", v9}];
    }

    v21 = 0;
    if (!NTKFaceBundleGetComplicationTypeFromString(v9, &v21))
    {
      v10 = [representationCopy objectForKeyedSubscript:@"type"];
      unsignedIntegerValue = [v10 unsignedIntegerValue];
      if (v10)
      {
        if (unsignedIntegerValue == 56 || unsignedIntegerValue == 31)
        {
          v21 = unsignedIntegerValue;
        }

        else
        {
          [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"Disallowed complication type encoded: %lu", unsignedIntegerValue}];
        }
      }

      else
      {
        v21 = 31;
      }
    }

    v14 = [self _complicationClassForType:v21];
    if (v14 != objc_opt_class() || ([NTKBundleComplication _revertedBundleComplicationFromJSONDictionary:representationCopy], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v15 = [v14 alloc];
      v16 = [v15 _initWithComplicationType:v21 JSONDictionary:representationCopy];
    }

    v17 = [representationCopy objectForKeyedSubscript:@"available"];
    v18 = [v17 isEqual:MEMORY[0x277CBEC28]];

    if (v18)
    {
      v19 = [NTKComplicationTombstone tombstoneWithComplication:v16];
    }

    else
    {
      v19 = v16;
    }

    v13 = v19;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4 + 24) = self->_complicationType;
  objc_storeStrong((v4 + 8), self->_uniqueIdentifier);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  complicationType = self->_complicationType;
  coderCopy = coder;
  [coderCopy encodeInteger:complicationType forKey:@"ComplicationTypeKey"];
  [coderCopy encodeInteger:2 forKey:@"ComplicationEncodingVersionKey"];
}

- (NTKComplication)initWithCoder:(id)coder
{
  v26 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = NTKComplication;
  v5 = [(NTKComplication *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"ComplicationEncodingVersionKey"];
    v7 = [coderCopy decodeIntegerForKey:@"ComplicationTypeKey"];
    v8 = v7;
    if (v6 < 2)
    {
      v10 = NTKComplicationTypeV2fromV1Encoding(v7);
      v9 = v10;
      v5->_complicationType = v10;
      if (v8 && !v10)
      {
        v11 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          complicationType = v5->_complicationType;
          *buf = 134218496;
          v21 = v8;
          v22 = 2048;
          v23 = complicationType;
          v24 = 2048;
          v25 = v6;
          _os_log_error_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_ERROR, "Unable to decode complication type. starting type: (%lu) resulting type: (%lu) version encoding: (%lu)", buf, 0x20u);
        }

        v9 = v5->_complicationType;
      }
    }

    else
    {
      v5->_complicationType = v7;
      v9 = v7;
    }

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
    stringValue = [v12 stringValue];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = stringValue;

    _generateAppIdentifier = [(NTKComplication *)v5 _generateAppIdentifier];
    appIdentifier = v5->_appIdentifier;
    v5->_appIdentifier = _generateAppIdentifier;
  }

  return v5;
}

- (id)awakeAfterUsingCoder:(id)coder
{
  selfCopy = self;
  v4 = selfCopy;
  if (selfCopy->_complicationType == 9)
  {
    v5 = *MEMORY[0x277CBB688];
    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    v4 = [NTKRemoteComplication _remoteStocksComplicationWithIdentifier:v5 forDevice:currentDevice];
  }

  return v4;
}

- (id)_migrateToFamily:(int64_t)family withAllowedComplications:(id)complications
{
  if (!NTKIsRichComplicationFamily(family))
  {
    goto LABEL_11;
  }

  complicationType = [(NTKComplication *)self complicationType];
  if (complicationType == 16)
  {
    if (family != 11)
    {
      v7 = 1;
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  if (complicationType != 11)
  {
    if (family != 11)
    {
      goto LABEL_11;
    }

    if (complicationType == 36 || complicationType == 10)
    {
      v7 = 22;
      goto LABEL_14;
    }

    if (complicationType != 1)
    {
LABEL_11:
      v8 = 0;
      goto LABEL_15;
    }

LABEL_6:
    v7 = 8;
    goto LABEL_14;
  }

  v7 = 40;
LABEL_14:
  v8 = [NTKComplication anyComplicationOfType:v7];
LABEL_15:

  return v8;
}

+ (id)vitalsComplication
{
  v2 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.NanoHealthBalance.NanoHealthBalanceWidgetExtension" containerBundleIdentifier:@"com.apple.NanoHealthBalance" kind:@"BalanceOneDayWidgetKind" intent:0];
  v3 = [NTKWidgetComplication complicationWithDescriptor:v2];

  return v3;
}

+ (id)translateComplication
{
  v2 = objc_alloc(MEMORY[0x277CD3A70]);
  v3 = [v2 initWithAppBundleIdentifier:@"com.apple.NanoTranslate.Widget" appIntentIdentifier:@"ConfigurationAppIntent" serializedParameters:MEMORY[0x277CBEC10]];
  v4 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.NanoTranslate.Widget" containerBundleIdentifier:@"com.apple.NanoTranslate" kind:@"NanoTranslateWidget" intent:v3];
  v5 = [NTKWidgetComplication complicationWithDescriptor:v4];

  return v5;
}

+ (id)compassComplication
{
  v2 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.NanoCompass.complications.compass" appBundleIdentifier:@"com.apple.NanoCompass.watchkitapp" complicationDescriptor:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NTKComplication nullComplication];
  }

  v5 = v4;

  return v5;
}

+ (id)compassBearingComplication
{
  v2 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.NanoCompass.complications.compass.bearing" appBundleIdentifier:@"com.apple.NanoCompass.watchkitapp" complicationDescriptor:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NTKComplication nullComplication];
  }

  v5 = v4;

  return v5;
}

+ (id)elevationComplication
{
  v2 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.NanoCompass.complications.altitude" appBundleIdentifier:@"com.apple.NanoCompass.watchkitapp" complicationDescriptor:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NTKComplication nullComplication];
  }

  v5 = v4;

  return v5;
}

+ (id)elevationInclineComplication
{
  v2 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.NanoCompass.complications.altitude.incline" appBundleIdentifier:@"com.apple.NanoCompass.watchkitapp" complicationDescriptor:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NTKComplication nullComplication];
  }

  v5 = v4;

  return v5;
}

+ (id)waypointsComplication
{
  v2 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.NanoCompass.complications.waypoint" appBundleIdentifier:@"com.apple.NanoCompass.watchkitapp" complicationDescriptor:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NTKComplication nullComplication];
  }

  v5 = v4;

  return v5;
}

+ (id)waterTemperatureComplication
{
  v2 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.Depth.temperature" appBundleIdentifier:@"com.apple.Depth" complicationDescriptor:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NTKComplication nullComplication];
  }

  v5 = v4;

  return v5;
}

+ (id)depthComplication
{
  v2 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.Depth.depth" appBundleIdentifier:@"com.apple.Depth" complicationDescriptor:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NTKComplication nullComplication];
  }

  v5 = v4;

  return v5;
}

+ (id)tidesComplication
{
  v2 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.boardwalk.watchapp.widgets" containerBundleIdentifier:@"com.apple.boardwalk.watchapp" kind:@"Tides" intent:0];
  v3 = [NTKWidgetComplication complicationWithDescriptor:v2];

  return v3;
}

+ (id)swellComplication
{
  v2 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.boardwalk.watchapp.widgets" containerBundleIdentifier:@"com.apple.boardwalk.watchapp" kind:@"Swell" intent:0];
  v3 = [NTKWidgetComplication complicationWithDescriptor:v2];

  return v3;
}

+ (id)humidityComplication
{
  v2 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.weather.watchapp.widgets" containerBundleIdentifier:@"com.apple.weather.watchapp" kind:@"com.apple.weather.widget.humidity" intent:0];
  v3 = [NTKWidgetComplication complicationWithDescriptor:v2];

  return v3;
}

+ (id)noiseComplication
{
  v2 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.NoiseComplications" appBundleIdentifier:@"com.apple.Noise" complicationDescriptor:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NTKComplication nullComplication];
  }

  v5 = v4;

  return v5;
}

+ (id)rainComplication
{
  v2 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.weather.watchapp.widgets" containerBundleIdentifier:@"com.apple.weather.watchapp" kind:@"com.apple.weather.widget.rain" intent:0];
  v3 = [NTKWidgetComplication complicationWithDescriptor:v2];

  return v3;
}

+ (id)levelComplication
{
  v2 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:@"com.apple.NanoCompass.complications.level" appBundleIdentifier:@"com.apple.NanoCompass.watchkitapp" complicationDescriptor:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NTKComplication nullComplication];
  }

  v5 = v4;

  return v5;
}

+ (id)dailyStepDistanceComplication
{
  v2 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.ActivityMonitorApp.ActivityComplication" containerBundleIdentifier:@"com.apple.ActivityMonitorApp" kind:@"DailyDistanceComplication" intent:0];
  v3 = [NTKWidgetComplication complicationWithDescriptor:v2];

  return v3;
}

+ (id)monthlyCyclingDistanceComplication
{
  v2 = [objc_alloc(MEMORY[0x277CD3A70]) initWithAppBundleIdentifier:@"com.apple.ActivityMonitorApp.ActivityComplication" appIntentIdentifier:@"WorkoutDistanceConfigurationIntent" serializedParameters:&unk_284189DB8];
  v3 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.ActivityMonitorApp.ActivityComplication" containerBundleIdentifier:@"com.apple.ActivityMonitorApp" kind:@"WorkoutDistanceComplication" intent:v2];
  v4 = [NTKWidgetComplication complicationWithDescriptor:v3];

  return v4;
}

+ (id)monthlyHikingDistanceComplication
{
  v2 = [objc_alloc(MEMORY[0x277CD3A70]) initWithAppBundleIdentifier:@"com.apple.ActivityMonitorApp.ActivityComplication" appIntentIdentifier:@"WorkoutDistanceConfigurationIntent" serializedParameters:&unk_284189DE0];
  v3 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.ActivityMonitorApp.ActivityComplication" containerBundleIdentifier:@"com.apple.ActivityMonitorApp" kind:@"WorkoutDistanceComplication" intent:v2];
  v4 = [NTKWidgetComplication complicationWithDescriptor:v3];

  return v4;
}

+ (id)weatherLocationComplication
{
  v2 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.weather.watchapp.widgets" containerBundleIdentifier:@"com.apple.weather.watchapp" kind:@"com.apple.weather.widget.simple" intent:0];
  v3 = [NTKWidgetComplication complicationWithDescriptor:v2];

  return v3;
}

+ (id)stateOfMindComplication
{
  v2 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.Mind.MindComplication" containerBundleIdentifier:@"com.apple.Mind" kind:@"MentalHealthLauncherComplication" intent:0];
  v3 = [NTKWidgetComplication complicationWithDescriptor:v2];

  return v3;
}

+ (id)activityTimelineComplication
{
  v2 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.ActivityMonitorApp.ActivityComplication" containerBundleIdentifier:@"com.apple.ActivityMonitorApp" kind:@"ActivityGraphComplication" intent:0];
  v3 = [NTKWidgetComplication complicationWithDescriptor:v2];

  return v3;
}

+ (id)musicRecognitionComplication
{
  v2 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.nanomusicrecognition.NanoMusicRecognitionWidget" containerBundleIdentifier:@"com.apple.nanomusicrecognition" kind:@"com.apple.nanomusicrecognition.NanoMusicRecognitionWidget" intent:0];
  v3 = [NTKWidgetComplication complicationWithDescriptor:v2];

  return v3;
}

+ (id)calendarTimelineComplication
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/CalendarWidget.framework"];
  v3 = [MEMORY[0x277CD4000] _defaultSchemaForBundle:v2];
  v4 = [v3 intentWithName:@"EKUICalendarsIntent"];
  [v4 _setLaunchId:@"com.apple.NanoCalendar"];
  v5 = MEMORY[0x277CBEC38];
  [v4 setValue:MEMORY[0x277CBEC38] forKey:@"mirrorCalendarApp"];
  [v4 setValue:v5 forKey:@"hideAllDayEvents"];
  v6 = objc_alloc(MEMORY[0x277CBBBD0]);
  v7 = INIntentWithTypedIntent();
  v8 = [v6 initWithExtensionBundleIdentifier:@"com.apple.NanoCalendar.WidgetExtension" containerBundleIdentifier:@"com.apple.NanoCalendar" kind:@"com.apple.CalendarWidget.CalendarTimelineComplication" intent:v7];

  v9 = [NTKWidgetComplication complicationWithDescriptor:v8];

  return v9;
}

+ (id)timerComplicationWithDuration:(double)duration
{
  v4 = +[NTKBundleLoader rootDirectory];
  v5 = MEMORY[0x277CBEBC0];
  v6 = [v4 stringByAppendingString:@"/System/Library/PrivateFrameworks/TimeAppServices.framework"];
  v7 = [v5 fileURLWithPath:v6];

  v8 = [MEMORY[0x277CCA8D8] bundleWithURL:v7];
  v9 = [MEMORY[0x277CD4000] _defaultSchemaForBundle:v8];
  v10 = [v9 intentWithName:@"ConfigurationIntent"];
  [v10 _setLaunchId:@"com.apple.private.NanoTimer"];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  [v10 setValue:v11 forKey:@"duration"];

  v12 = objc_alloc(MEMORY[0x277CBBBD0]);
  v13 = *MEMORY[0x277D296C8];
  v14 = INIntentWithTypedIntent();
  v15 = [v12 initWithExtensionBundleIdentifier:@"com.apple.private.NanoTimer.NanoTimerWidgetExtension" containerBundleIdentifier:@"com.apple.private.NanoTimer" kind:v13 intent:v14];

  v16 = [NTKWidgetComplication complicationWithDescriptor:v15];

  return v16;
}

+ (id)satelliteComplication
{
  v2 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithExtensionBundleIdentifier:@"com.apple.SOSBuddy.SkipperComplication" containerBundleIdentifier:@"com.apple.SOSBuddy" kind:@"SkipperComplication" intent:0];
  v3 = [NTKWidgetComplication complicationWithDescriptor:v2];

  return v3;
}

@end