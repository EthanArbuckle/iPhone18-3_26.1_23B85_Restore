@interface NTKRemoteComplication
+ (id)_allComplicationConfigurationsWithType:(unint64_t)type;
+ (id)_remoteStocksComplicationDescriptorWithIdentifier:(id)identifier forDevice:(id)device;
+ (id)_remoteStocksComplicationWithIdentifier:(id)identifier forDevice:(id)device;
+ (id)complicationWithClientIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier complicationDescriptor:(id)descriptor;
- (NTKRemoteComplication)initWithCoder:(id)coder;
- (NTKRemoteComplication)initWithComplicationType:(unint64_t)type;
- (id)_generateUniqueIdentifier;
- (id)_initWithComplicationType:(unint64_t)type JSONDictionary:(id)dictionary;
- (id)analyticsIdentifier;
- (id)companionLocalizedKeylineLabelText;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customDailySnapshotKeyForFamily:(int64_t)family device:(id)device;
- (id)description;
- (id)ntk_localizedNameWithOptions:(unint64_t)options forRichComplicationSlot:(BOOL)slot;
- (id)watchLocalizedKeylineLabelText;
- (void)_addKeysToJSONDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
- (void)resetComplicationDescriptor;
@end

@implementation NTKRemoteComplication

- (id)ntk_localizedNameWithOptions:(unint64_t)options forRichComplicationSlot:(BOOL)slot
{
  if (options <= 1)
  {
    optionsCopy = 1;
  }

  else
  {
    optionsCopy = options;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2;
  v31 = __Block_byref_object_dispose__2;
  v32 = 0;
  v6 = NTKClockFaceLocalizedString(@"COMPLICATION_JOINED_DESCRIPTORS", @"%@: %@");
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __99__NTKRemoteComplication_NTKComplicationItem__ntk_localizedNameWithOptions_forRichComplicationSlot___block_invoke;
  v24 = &unk_27877E710;
  v26 = &v27;
  v7 = v6;
  v25 = v7;
  v8 = _Block_copy(&v21);
  if ((optionsCopy & 2) != 0)
  {
    v9 = [(NTKComplication *)self localizedSectionHeaderName:v21];
    v8[2](v8, v9);
  }

  if (optionsCopy)
  {
    complicationDescriptor = [(NTKRemoteComplication *)self complicationDescriptor];
    displayName = [complicationDescriptor displayName];
    localizedLowercaseString = [v28[5] localizedLowercaseString];
    localizedLowercaseString2 = [displayName localizedLowercaseString];
    v14 = NTKEqualObjects(localizedLowercaseString, localizedLowercaseString2);

    if ((v14 & 1) == 0)
    {
      v8[2](v8, displayName);
    }
  }

  if (![v28[5] length])
  {
    v15 = NTKSharedRemoteComplicationProvider();
    clientIdentifier = [(NTKRemoteComplication *)self clientIdentifier];
    v17 = [v15 localizedAppNameForClientIdentifier:clientIdentifier];
    v18 = v28[5];
    v28[5] = v17;
  }

  v19 = [v28[5] copy];

  _Block_object_dispose(&v27, 8);

  return v19;
}

void __99__NTKRemoteComplication_NTKComplicationItem__ntk_localizedNameWithOptions_forRichComplicationSlot___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 length])
  {
    if ([*(*(*(a1 + 40) + 8) + 40) length])
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:*(a1 + 32), *(*(*(a1 + 40) + 8) + 40), v8];
      v4 = *(*(a1 + 40) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;
    }

    else
    {
      v6 = *(*(a1 + 40) + 8);
      v7 = v8;
      v5 = *(v6 + 40);
      *(v6 + 40) = v7;
    }
  }
}

- (NTKRemoteComplication)initWithComplicationType:(unint64_t)type
{
  v14.receiver = self;
  v14.super_class = NTKRemoteComplication;
  v4 = [(NTKComplication *)&v14 initWithComplicationType:31];
  if (type == 9)
  {
    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    if ([currentDevice pdrDeviceVersion] >> 16 <= 6)
    {
      v6 = @"com.apple.stocks.watchapp.watchextension";
    }

    else
    {
      v6 = @"com.apple.stocks.watchapp";
    }

    objc_storeStrong(&v4->_clientIdentifier, v6);

    appBundleIdentifier = v4->_appBundleIdentifier;
    v4->_appBundleIdentifier = @"com.apple.stocks.watchapp";

    v8 = *MEMORY[0x277CBB688];
    currentDevice2 = [MEMORY[0x277CBBAE8] currentDevice];
    v10 = [NTKRemoteComplication _remoteStocksComplicationDescriptorWithIdentifier:v8 forDevice:currentDevice2];
    complicationDescriptor = v4->_complicationDescriptor;
    v4->_complicationDescriptor = v10;
  }

  _generateUniqueIdentifier = [(NTKRemoteComplication *)v4 _generateUniqueIdentifier];
  [(NTKComplication *)v4 setUniqueIdentifier:_generateUniqueIdentifier];

  return v4;
}

+ (id)complicationWithClientIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier complicationDescriptor:(id)descriptor
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  descriptorCopy = descriptor;
  v11 = [[self alloc] initWithComplicationType:31];
  v12 = v11[4];
  v11[4] = identifierCopy;
  v13 = identifierCopy;

  v14 = v11[5];
  v11[5] = bundleIdentifierCopy;
  v15 = bundleIdentifierCopy;

  v16 = v11[6];
  v11[6] = descriptorCopy;

  _generateUniqueIdentifier = [v11 _generateUniqueIdentifier];
  [v11 setUniqueIdentifier:_generateUniqueIdentifier];

  return v11;
}

- (id)analyticsIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NTKReportingValueForComplication(self);
  appBundleIdentifier = [(NTKRemoteComplication *)self appBundleIdentifier];
  identifier = [(CLKComplicationDescriptor *)self->_complicationDescriptor identifier];
  v7 = [v3 stringWithFormat:@"%@:%@:%@", v4, appBundleIdentifier, identifier];

  return v7;
}

- (id)_generateUniqueIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NTKComplication complicationType](self, "complicationType")}];
  stringValue = [v4 stringValue];
  appBundleIdentifier = [(NTKRemoteComplication *)self appBundleIdentifier];
  identifier = [(CLKComplicationDescriptor *)self->_complicationDescriptor identifier];
  v8 = [v3 stringWithFormat:@"%@-%@-%@", stringValue, appBundleIdentifier, identifier];

  return v8;
}

+ (id)_allComplicationConfigurationsWithType:(unint64_t)type
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (type == 9)
  {
    v4 = *MEMORY[0x277CBB688];
    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    v6 = [self _remoteStocksComplicationWithIdentifier:v4 forDevice:currentDevice];
    v9[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (void)resetComplicationDescriptor
{
  supportedFamilies = [(CLKComplicationDescriptor *)self->_complicationDescriptor supportedFamilies];
  v3 = [MEMORY[0x277CBB718] legacyComplicationDescriptorWithSupportedFamilies:supportedFamilies];
  complicationDescriptor = self->_complicationDescriptor;
  self->_complicationDescriptor = v3;
}

- (id)watchLocalizedKeylineLabelText
{
  complicationDescriptor = [(NTKRemoteComplication *)self complicationDescriptor];
  displayName = [complicationDescriptor displayName];
  if (![displayName length])
  {
    v5 = NTKSharedRemoteComplicationProvider();
    clientIdentifier = [(NTKRemoteComplication *)self clientIdentifier];
    v7 = [v5 localizedAppNameForClientIdentifier:clientIdentifier];

    displayName = v7;
  }

  return displayName;
}

- (id)companionLocalizedKeylineLabelText
{
  complicationDescriptor = [(NTKRemoteComplication *)self complicationDescriptor];
  displayName = [complicationDescriptor displayName];
  if (![displayName length])
  {
    v5 = NTKSharedRemoteComplicationProvider();
    clientIdentifier = [(NTKRemoteComplication *)self clientIdentifier];
    v7 = [v5 localizedAppNameForClientIdentifier:clientIdentifier];

    displayName = v7;
  }

  return displayName;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = NTKRemoteComplication;
  v4 = [(NTKComplication *)&v9 description];
  clientIdentifier = [(NTKRemoteComplication *)self clientIdentifier];
  identifier = [(CLKComplicationDescriptor *)self->_complicationDescriptor identifier];
  v7 = [v3 stringWithFormat:@"%@ (%@, %@)", v4, clientIdentifier, identifier];

  return v7;
}

+ (id)_remoteStocksComplicationDescriptorWithIdentifier:(id)identifier forDevice:(id)device
{
  deviceCopy = device;
  identifierCopy = identifier;
  if ([deviceCopy isRunningGraceOrLater])
  {
    v7 = [&unk_28418AFA8 arrayByAddingObject:&unk_284182E78];
  }

  else
  {
    v7 = &unk_28418AFA8;
  }

  if ([deviceCopy supportsPDRCapability:1675361835])
  {
    v8 = [v7 arrayByAddingObject:&unk_284182E90];

    v7 = v8;
  }

  v9 = objc_alloc(MEMORY[0x277CBB718]);
  v10 = [v9 initWithIdentifier:identifierCopy displayName:&stru_284110E98 supportedFamilies:v7 userInfo:MEMORY[0x277CBEC10]];

  return v10;
}

+ (id)_remoteStocksComplicationWithIdentifier:(id)identifier forDevice:(id)device
{
  v6 = MEMORY[0x277CBBAE8];
  deviceCopy = device;
  identifierCopy = identifier;
  currentDevice = [v6 currentDevice];
  if ([currentDevice pdrDeviceVersion] >> 16 <= 6)
  {
    v10 = @"com.apple.stocks.watchapp.watchextension";
  }

  else
  {
    v10 = @"com.apple.stocks.watchapp";
  }

  v11 = v10;
  v12 = [self _remoteStocksComplicationDescriptorWithIdentifier:identifierCopy forDevice:deviceCopy];

  v13 = [self complicationWithClientIdentifier:v11 appBundleIdentifier:@"com.apple.stocks.watchapp" complicationDescriptor:v12];

  return v13;
}

- (id)customDailySnapshotKeyForFamily:(int64_t)family device:(id)device
{
  v6 = [NTKCompanionComplicationCollectionManager sharedComplicationCollectionForDevice:device];
  clientIdentifier = [(NTKRemoteComplication *)self clientIdentifier];
  complicationDescriptor = self->_complicationDescriptor;
  appBundleIdentifier = [(NTKRemoteComplication *)self appBundleIdentifier];
  v10 = [v6 sampleTemplateForClientIdentifier:clientIdentifier descriptor:complicationDescriptor applicationID:appBundleIdentifier family:family];

  creationDate = [v10 creationDate];
  [creationDate timeIntervalSinceReferenceDate];
  v13 = v12;

  v14 = MEMORY[0x277CCACA8];
  appBundleIdentifier2 = [(NTKRemoteComplication *)self appBundleIdentifier];
  identifier = [(CLKComplicationDescriptor *)self->_complicationDescriptor identifier];
  v17 = [v14 stringWithFormat:@"%@, %@, %lx", appBundleIdentifier2, identifier, v13];

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = NTKRemoteComplication;
  v4 = [(NTKComplication *)&v10 copyWithZone:zone];
  clientIdentifier = [(NTKRemoteComplication *)self clientIdentifier];
  v6 = *(v4 + 4);
  *(v4 + 4) = clientIdentifier;

  appBundleIdentifier = [(NTKRemoteComplication *)self appBundleIdentifier];
  v8 = *(v4 + 5);
  *(v4 + 5) = appBundleIdentifier;

  objc_storeStrong(v4 + 6, self->_complicationDescriptor);
  return v4;
}

- (NTKRemoteComplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = NTKRemoteComplication;
  v5 = [(NTKComplication *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RemoteComplicationClientIdentifierKey"];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;

    clientIdentifier = [(NTKRemoteComplication *)v5 clientIdentifier];

    if (!clientIdentifier)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ cannot have nil client identifier", objc_opt_class()}];
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RemoteComplicationAppBundleIdentifierKey"];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v9;

    appBundleIdentifier = [(NTKRemoteComplication *)v5 appBundleIdentifier];

    if (!appBundleIdentifier)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ cannot have nil app bundle identifier", objc_opt_class()}];
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RemoteComplicationComplicationDescriptorKey"];
    complicationDescriptor = v5->_complicationDescriptor;
    v5->_complicationDescriptor = v12;

    if (!v5->_complicationDescriptor)
    {
      legacyComplicationDescriptor = [MEMORY[0x277CBB718] legacyComplicationDescriptor];
      v15 = v5->_complicationDescriptor;
      v5->_complicationDescriptor = legacyComplicationDescriptor;
    }

    _generateUniqueIdentifier = [(NTKRemoteComplication *)v5 _generateUniqueIdentifier];
    [(NTKComplication *)v5 setUniqueIdentifier:_generateUniqueIdentifier];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = NTKRemoteComplication;
  [(NTKThirdPartyComplication *)&v3 encodeWithCoder:coder];
}

- (void)_addKeysToJSONDictionary:(id)dictionary
{
  v3.receiver = self;
  v3.super_class = NTKRemoteComplication;
  [(NTKThirdPartyComplication *)&v3 _addKeysToJSONDictionary:dictionary];
}

- (id)_initWithComplicationType:(unint64_t)type JSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = NTKRemoteComplication;
  v7 = [(NTKComplication *)&v28 _initWithComplicationType:31 JSONDictionary:dictionaryCopy];
  v8 = v7;
  if (v7)
  {
    if (type == 9)
    {
      v9 = v7[5];
      v7[5] = @"com.apple.stocks.watchapp";

      currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
      if ([currentDevice pdrDeviceVersion] >> 16 <= 6)
      {
        v11 = @"com.apple.stocks.watchapp.watchextension";
      }

      else
      {
        v11 = @"com.apple.stocks.watchapp";
      }

      objc_storeStrong(v8 + 4, v11);

      v12 = *MEMORY[0x277CBB688];
      currentDevice2 = [MEMORY[0x277CBBAE8] currentDevice];
      v14 = [NTKRemoteComplication _remoteStocksComplicationDescriptorWithIdentifier:v12 forDevice:currentDevice2];
      v15 = v8[6];
      v8[6] = v14;
    }

    else
    {
      v16 = [dictionaryCopy objectForKeyedSubscript:@"app"];
      v17 = v8[5];
      v8[5] = v16;

      v18 = [dictionaryCopy objectForKeyedSubscript:@"extension"];
      if (!v18)
      {
        v19 = MEMORY[0x277CBEAD8];
        appBundleIdentifier = [v8 appBundleIdentifier];
        [v19 raise:@"NTKFaceBundleException" format:{@"complication of type '%@' missing value for key '%@'", appBundleIdentifier, @"extension"}];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = MEMORY[0x277CBEAD8];
        appBundleIdentifier2 = [v8 appBundleIdentifier];
        [v21 raise:@"NTKFaceBundleException" format:{@"complication of type '%@' value for key '%@' must be a string - invalid value: %@", appBundleIdentifier2, @"extension", v18}];
      }

      v23 = v8[4];
      v8[4] = v18;
      v15 = v18;

      currentDevice2 = [dictionaryCopy objectForKeyedSubscript:@"complication descriptor"];
      if (currentDevice2)
      {
        legacyComplicationDescriptor = [objc_alloc(MEMORY[0x277CBB718]) initWithJSONObjectRepresentation:currentDevice2];
      }

      else
      {
        legacyComplicationDescriptor = [MEMORY[0x277CBB718] legacyComplicationDescriptor];
      }

      v25 = v8[6];
      v8[6] = legacyComplicationDescriptor;
    }

    _generateUniqueIdentifier = [v8 _generateUniqueIdentifier];
    [v8 setUniqueIdentifier:_generateUniqueIdentifier];
  }

  return v8;
}

@end