@interface NTKRemoteComplication
+ (id)_allComplicationConfigurationsWithType:(unint64_t)a3;
+ (id)_remoteStocksComplicationDescriptorWithIdentifier:(id)a3 forDevice:(id)a4;
+ (id)_remoteStocksComplicationWithIdentifier:(id)a3 forDevice:(id)a4;
+ (id)complicationWithClientIdentifier:(id)a3 appBundleIdentifier:(id)a4 complicationDescriptor:(id)a5;
- (NTKRemoteComplication)initWithCoder:(id)a3;
- (NTKRemoteComplication)initWithComplicationType:(unint64_t)a3;
- (id)_generateUniqueIdentifier;
- (id)_initWithComplicationType:(unint64_t)a3 JSONDictionary:(id)a4;
- (id)analyticsIdentifier;
- (id)companionLocalizedKeylineLabelText;
- (id)copyWithZone:(_NSZone *)a3;
- (id)customDailySnapshotKeyForFamily:(int64_t)a3 device:(id)a4;
- (id)description;
- (id)ntk_localizedNameWithOptions:(unint64_t)a3 forRichComplicationSlot:(BOOL)a4;
- (id)watchLocalizedKeylineLabelText;
- (void)_addKeysToJSONDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)resetComplicationDescriptor;
@end

@implementation NTKRemoteComplication

- (id)ntk_localizedNameWithOptions:(unint64_t)a3 forRichComplicationSlot:(BOOL)a4
{
  if (a3 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a3;
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
  if ((v5 & 2) != 0)
  {
    v9 = [(NTKComplication *)self localizedSectionHeaderName:v21];
    v8[2](v8, v9);
  }

  if (v5)
  {
    v10 = [(NTKRemoteComplication *)self complicationDescriptor];
    v11 = [v10 displayName];
    v12 = [v28[5] localizedLowercaseString];
    v13 = [v11 localizedLowercaseString];
    v14 = NTKEqualObjects(v12, v13);

    if ((v14 & 1) == 0)
    {
      v8[2](v8, v11);
    }
  }

  if (![v28[5] length])
  {
    v15 = NTKSharedRemoteComplicationProvider();
    v16 = [(NTKRemoteComplication *)self clientIdentifier];
    v17 = [v15 localizedAppNameForClientIdentifier:v16];
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

- (NTKRemoteComplication)initWithComplicationType:(unint64_t)a3
{
  v14.receiver = self;
  v14.super_class = NTKRemoteComplication;
  v4 = [(NTKComplication *)&v14 initWithComplicationType:31];
  if (a3 == 9)
  {
    v5 = [MEMORY[0x277CBBAE8] currentDevice];
    if ([v5 pdrDeviceVersion] >> 16 <= 6)
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
    v9 = [MEMORY[0x277CBBAE8] currentDevice];
    v10 = [NTKRemoteComplication _remoteStocksComplicationDescriptorWithIdentifier:v8 forDevice:v9];
    complicationDescriptor = v4->_complicationDescriptor;
    v4->_complicationDescriptor = v10;
  }

  v12 = [(NTKRemoteComplication *)v4 _generateUniqueIdentifier];
  [(NTKComplication *)v4 setUniqueIdentifier:v12];

  return v4;
}

+ (id)complicationWithClientIdentifier:(id)a3 appBundleIdentifier:(id)a4 complicationDescriptor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithComplicationType:31];
  v12 = v11[4];
  v11[4] = v8;
  v13 = v8;

  v14 = v11[5];
  v11[5] = v9;
  v15 = v9;

  v16 = v11[6];
  v11[6] = v10;

  v17 = [v11 _generateUniqueIdentifier];
  [v11 setUniqueIdentifier:v17];

  return v11;
}

- (id)analyticsIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NTKReportingValueForComplication(self);
  v5 = [(NTKRemoteComplication *)self appBundleIdentifier];
  v6 = [(CLKComplicationDescriptor *)self->_complicationDescriptor identifier];
  v7 = [v3 stringWithFormat:@"%@:%@:%@", v4, v5, v6];

  return v7;
}

- (id)_generateUniqueIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NTKComplication complicationType](self, "complicationType")}];
  v5 = [v4 stringValue];
  v6 = [(NTKRemoteComplication *)self appBundleIdentifier];
  v7 = [(CLKComplicationDescriptor *)self->_complicationDescriptor identifier];
  v8 = [v3 stringWithFormat:@"%@-%@-%@", v5, v6, v7];

  return v8;
}

+ (id)_allComplicationConfigurationsWithType:(unint64_t)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a3 == 9)
  {
    v4 = *MEMORY[0x277CBB688];
    v5 = [MEMORY[0x277CBBAE8] currentDevice];
    v6 = [a1 _remoteStocksComplicationWithIdentifier:v4 forDevice:v5];
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
  v5 = [(CLKComplicationDescriptor *)self->_complicationDescriptor supportedFamilies];
  v3 = [MEMORY[0x277CBB718] legacyComplicationDescriptorWithSupportedFamilies:v5];
  complicationDescriptor = self->_complicationDescriptor;
  self->_complicationDescriptor = v3;
}

- (id)watchLocalizedKeylineLabelText
{
  v3 = [(NTKRemoteComplication *)self complicationDescriptor];
  v4 = [v3 displayName];
  if (![v4 length])
  {
    v5 = NTKSharedRemoteComplicationProvider();
    v6 = [(NTKRemoteComplication *)self clientIdentifier];
    v7 = [v5 localizedAppNameForClientIdentifier:v6];

    v4 = v7;
  }

  return v4;
}

- (id)companionLocalizedKeylineLabelText
{
  v3 = [(NTKRemoteComplication *)self complicationDescriptor];
  v4 = [v3 displayName];
  if (![v4 length])
  {
    v5 = NTKSharedRemoteComplicationProvider();
    v6 = [(NTKRemoteComplication *)self clientIdentifier];
    v7 = [v5 localizedAppNameForClientIdentifier:v6];

    v4 = v7;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = NTKRemoteComplication;
  v4 = [(NTKComplication *)&v9 description];
  v5 = [(NTKRemoteComplication *)self clientIdentifier];
  v6 = [(CLKComplicationDescriptor *)self->_complicationDescriptor identifier];
  v7 = [v3 stringWithFormat:@"%@ (%@, %@)", v4, v5, v6];

  return v7;
}

+ (id)_remoteStocksComplicationDescriptorWithIdentifier:(id)a3 forDevice:(id)a4
{
  v5 = a4;
  v6 = a3;
  if ([v5 isRunningGraceOrLater])
  {
    v7 = [&unk_28418AFA8 arrayByAddingObject:&unk_284182E78];
  }

  else
  {
    v7 = &unk_28418AFA8;
  }

  if ([v5 supportsPDRCapability:1675361835])
  {
    v8 = [v7 arrayByAddingObject:&unk_284182E90];

    v7 = v8;
  }

  v9 = objc_alloc(MEMORY[0x277CBB718]);
  v10 = [v9 initWithIdentifier:v6 displayName:&stru_284110E98 supportedFamilies:v7 userInfo:MEMORY[0x277CBEC10]];

  return v10;
}

+ (id)_remoteStocksComplicationWithIdentifier:(id)a3 forDevice:(id)a4
{
  v6 = MEMORY[0x277CBBAE8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 currentDevice];
  if ([v9 pdrDeviceVersion] >> 16 <= 6)
  {
    v10 = @"com.apple.stocks.watchapp.watchextension";
  }

  else
  {
    v10 = @"com.apple.stocks.watchapp";
  }

  v11 = v10;
  v12 = [a1 _remoteStocksComplicationDescriptorWithIdentifier:v8 forDevice:v7];

  v13 = [a1 complicationWithClientIdentifier:v11 appBundleIdentifier:@"com.apple.stocks.watchapp" complicationDescriptor:v12];

  return v13;
}

- (id)customDailySnapshotKeyForFamily:(int64_t)a3 device:(id)a4
{
  v6 = [NTKCompanionComplicationCollectionManager sharedComplicationCollectionForDevice:a4];
  v7 = [(NTKRemoteComplication *)self clientIdentifier];
  complicationDescriptor = self->_complicationDescriptor;
  v9 = [(NTKRemoteComplication *)self appBundleIdentifier];
  v10 = [v6 sampleTemplateForClientIdentifier:v7 descriptor:complicationDescriptor applicationID:v9 family:a3];

  v11 = [v10 creationDate];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  v14 = MEMORY[0x277CCACA8];
  v15 = [(NTKRemoteComplication *)self appBundleIdentifier];
  v16 = [(CLKComplicationDescriptor *)self->_complicationDescriptor identifier];
  v17 = [v14 stringWithFormat:@"%@, %@, %lx", v15, v16, v13];

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = NTKRemoteComplication;
  v4 = [(NTKComplication *)&v10 copyWithZone:a3];
  v5 = [(NTKRemoteComplication *)self clientIdentifier];
  v6 = *(v4 + 4);
  *(v4 + 4) = v5;

  v7 = [(NTKRemoteComplication *)self appBundleIdentifier];
  v8 = *(v4 + 5);
  *(v4 + 5) = v7;

  objc_storeStrong(v4 + 6, self->_complicationDescriptor);
  return v4;
}

- (NTKRemoteComplication)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NTKRemoteComplication;
  v5 = [(NTKComplication *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RemoteComplicationClientIdentifierKey"];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;

    v8 = [(NTKRemoteComplication *)v5 clientIdentifier];

    if (!v8)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ cannot have nil client identifier", objc_opt_class()}];
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RemoteComplicationAppBundleIdentifierKey"];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v9;

    v11 = [(NTKRemoteComplication *)v5 appBundleIdentifier];

    if (!v11)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ cannot have nil app bundle identifier", objc_opt_class()}];
    }

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RemoteComplicationComplicationDescriptorKey"];
    complicationDescriptor = v5->_complicationDescriptor;
    v5->_complicationDescriptor = v12;

    if (!v5->_complicationDescriptor)
    {
      v14 = [MEMORY[0x277CBB718] legacyComplicationDescriptor];
      v15 = v5->_complicationDescriptor;
      v5->_complicationDescriptor = v14;
    }

    v16 = [(NTKRemoteComplication *)v5 _generateUniqueIdentifier];
    [(NTKComplication *)v5 setUniqueIdentifier:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = NTKRemoteComplication;
  [(NTKThirdPartyComplication *)&v3 encodeWithCoder:a3];
}

- (void)_addKeysToJSONDictionary:(id)a3
{
  v3.receiver = self;
  v3.super_class = NTKRemoteComplication;
  [(NTKThirdPartyComplication *)&v3 _addKeysToJSONDictionary:a3];
}

- (id)_initWithComplicationType:(unint64_t)a3 JSONDictionary:(id)a4
{
  v6 = a4;
  v28.receiver = self;
  v28.super_class = NTKRemoteComplication;
  v7 = [(NTKComplication *)&v28 _initWithComplicationType:31 JSONDictionary:v6];
  v8 = v7;
  if (v7)
  {
    if (a3 == 9)
    {
      v9 = v7[5];
      v7[5] = @"com.apple.stocks.watchapp";

      v10 = [MEMORY[0x277CBBAE8] currentDevice];
      if ([v10 pdrDeviceVersion] >> 16 <= 6)
      {
        v11 = @"com.apple.stocks.watchapp.watchextension";
      }

      else
      {
        v11 = @"com.apple.stocks.watchapp";
      }

      objc_storeStrong(v8 + 4, v11);

      v12 = *MEMORY[0x277CBB688];
      v13 = [MEMORY[0x277CBBAE8] currentDevice];
      v14 = [NTKRemoteComplication _remoteStocksComplicationDescriptorWithIdentifier:v12 forDevice:v13];
      v15 = v8[6];
      v8[6] = v14;
    }

    else
    {
      v16 = [v6 objectForKeyedSubscript:@"app"];
      v17 = v8[5];
      v8[5] = v16;

      v18 = [v6 objectForKeyedSubscript:@"extension"];
      if (!v18)
      {
        v19 = MEMORY[0x277CBEAD8];
        v20 = [v8 appBundleIdentifier];
        [v19 raise:@"NTKFaceBundleException" format:{@"complication of type '%@' missing value for key '%@'", v20, @"extension"}];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = MEMORY[0x277CBEAD8];
        v22 = [v8 appBundleIdentifier];
        [v21 raise:@"NTKFaceBundleException" format:{@"complication of type '%@' value for key '%@' must be a string - invalid value: %@", v22, @"extension", v18}];
      }

      v23 = v8[4];
      v8[4] = v18;
      v15 = v18;

      v13 = [v6 objectForKeyedSubscript:@"complication descriptor"];
      if (v13)
      {
        v24 = [objc_alloc(MEMORY[0x277CBB718]) initWithJSONObjectRepresentation:v13];
      }

      else
      {
        v24 = [MEMORY[0x277CBB718] legacyComplicationDescriptor];
      }

      v25 = v8[6];
      v8[6] = v24;
    }

    v26 = [v8 _generateUniqueIdentifier];
    [v8 setUniqueIdentifier:v26];
  }

  return v8;
}

@end