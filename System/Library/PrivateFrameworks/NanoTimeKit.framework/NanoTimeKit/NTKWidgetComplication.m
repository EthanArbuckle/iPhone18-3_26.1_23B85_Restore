@interface NTKWidgetComplication
+ (NTKWidgetComplication)complicationWithDescriptor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4;
- (INIntent)intent;
- (NTKWidgetComplication)initWithCoder:(id)a3;
- (id)_createUniqueIdentifier;
- (id)_initWithComplicationType:(unint64_t)a3 JSONDictionary:(id)a4;
- (id)analyticsIdentifier;
- (id)appIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)customDailySnapshotKeyForFamily:(int64_t)a3 device:(id)a4;
- (id)description;
- (id)ntk_localizedNameWithOptions:(unint64_t)a3 forRichComplicationSlot:(BOOL)a4;
- (void)_addKeysToJSONDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKWidgetComplication

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

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  v38 = 0;
  v6 = NTKClockFaceLocalizedString(@"COMPLICATION_JOINED_DESCRIPTORS", @"%@: %@");
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __99__NTKWidgetComplication_NTKComplicationItem__ntk_localizedNameWithOptions_forRichComplicationSlot___block_invoke;
  v30 = &unk_27877E710;
  v32 = &v33;
  v7 = v6;
  v31 = v7;
  v8 = _Block_copy(&v27);
  if ((v5 & 2) != 0)
  {
    v9 = [(NTKComplication *)self localizedSectionHeaderName:v27];
    v8[2](v8, v9);
  }

  v10 = [MEMORY[0x277CBBAE8] currentDevice];
  v11 = NTKSharedWidgetComplicationProvider(v10);
  v12 = [(NTKWidgetComplication *)self descriptor];
  v13 = [v11 infoForDescriptor:v12];

  if (v5)
  {
    v14 = [v13 localizedDisplayName];
    v15 = [v34[5] localizedLowercaseString];
    v16 = [v14 localizedLowercaseString];
    v17 = NTKEqualObjects(v15, v16);

    if ((v17 & 1) == 0)
    {
      v8[2](v8, v14);
    }
  }

  if (![v34[5] length])
  {
    v18 = [v13 localizedAppName];
    v19 = v34[5];
    v34[5] = v18;

    v20 = v34[5];
    v21 = [(NTKWidgetComplication *)self descriptor];
    v22 = [v21 containerBundleIdentifier];
    LOBYTE(v20) = NTKEqualObjects(v20, v22);

    v23 = v20 ^ 1;
    if ((v5 & 1) == 0)
    {
      v23 = 1;
    }

    if ((v23 & 1) == 0)
    {
      v24 = [(NTKComplication *)self localizedSectionHeaderName];
      if ([v24 length])
      {
        objc_storeStrong(v34 + 5, v24);
      }
    }
  }

  v25 = [v34[5] copy];

  _Block_object_dispose(&v33, 8);

  return v25;
}

void __99__NTKWidgetComplication_NTKComplicationItem__ntk_localizedNameWithOptions_forRichComplicationSlot___block_invoke(uint64_t a1, void *a2)
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

+ (NTKWidgetComplication)complicationWithDescriptor:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithComplicationType:56];
  v6 = [v4 copy];

  v7 = v5[4];
  v5[4] = v6;

  v8 = [v5 _createUniqueIdentifier];
  [v5 setUniqueIdentifier:v8];

  return v5;
}

- (id)customDailySnapshotKeyForFamily:(int64_t)a3 device:(id)a4
{
  v6 = a4;
  if ([v6 isRunningNapiliGMOrLater])
  {
    v7 = [(NTKComplication *)self uniqueIdentifier];
  }

  else
  {
    v8 = [NTKCompanionWidgetComplicationManager instanceForDevice:v6];
    v9 = [(NTKWidgetComplication *)self descriptor];
    v10 = [v8 sampleTemplateForWidget:v9 family:a3];

    v11 = [v10 creationDate];
    [v11 timeIntervalSinceReferenceDate];
    v13 = v12;

    v14 = MEMORY[0x277CCACA8];
    v15 = [(NTKComplication *)self uniqueIdentifier];
    v7 = [v14 stringWithFormat:@"%@, %ld", v15, v13];
  }

  return v7;
}

- (id)analyticsIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NTKReportingValueForComplication(self);
  v5 = [(NTKWidgetComplication *)self descriptor];
  v6 = [v5 extensionBundleIdentifier];
  v7 = [(NTKWidgetComplication *)self descriptor];
  v8 = [v7 kind];
  v9 = [v3 stringWithFormat:@"%@:%@:%@", v4, v6, v8];

  return v9;
}

- (id)_createUniqueIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NTKWidgetComplication *)self descriptor];
  v5 = [v4 containerBundleIdentifier];
  v6 = [(NTKWidgetComplication *)self descriptor];
  v7 = [v6 extensionBundleIdentifier];
  v8 = [(NTKWidgetComplication *)self descriptor];
  v9 = [v8 kind];
  v10 = [(NTKWidgetComplication *)self descriptor];
  v11 = [v10 intentReference];
  v12 = [v3 stringWithFormat:@"%@-%@-%@-%li", v5, v7, v9, objc_msgSend(v11, "indexingHash")];

  return v12;
}

- (id)appIdentifier
{
  v2 = [(NTKWidgetComplication *)self descriptor];
  v3 = [v2 containerBundleIdentifier];

  return v3;
}

- (BOOL)snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4
{
  v5.receiver = self;
  v5.super_class = NTKWidgetComplication;
  return [(NTKComplication *)&v5 snapshotContext:a3 isStaleRelativeToContext:a4];
}

- (INIntent)intent
{
  v2 = [(CLKWidgetComplicationDescriptor *)self->_descriptor intentReference];
  v3 = [v2 intent];

  return v3;
}

- (NTKWidgetComplication)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NTKWidgetComplication;
  v5 = [(NTKComplication *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v6;

    v8 = [(NTKWidgetComplication *)v5 _createUniqueIdentifier];
    [(NTKComplication *)v5 setUniqueIdentifier:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKWidgetComplication;
  v4 = a3;
  [(NTKThirdPartyComplication *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_descriptor forKey:{@"descriptor", v5.receiver, v5.super_class}];
}

- (id)_initWithComplicationType:(unint64_t)a3 JSONDictionary:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = NTKWidgetComplication;
  v7 = [(NTKComplication *)&v14 _initWithComplicationType:a3 JSONDictionary:v6];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"descriptor"];
    v9 = MEMORY[0x277CCA2A8];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [MEMORY[0x277CBEAD8] raise:*v9 format:@"CLKWidgetComplicationDescriptor dictionary is nil or not a dictionary"];
    }

    v10 = [objc_alloc(MEMORY[0x277CBBBD0]) initWithJSONObjectRepresentation:v8];
    v11 = v7[4];
    v7[4] = v10;

    if (!v7[4] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [MEMORY[0x277CBEAD8] raise:*v9 format:@"CLKWidgetComplicationDescriptor is not defined or an incorrect class"];
    }

    v12 = [v7 _createUniqueIdentifier];
    [v7 setUniqueIdentifier:v12];
  }

  return v7;
}

- (void)_addKeysToJSONDictionary:(id)a3
{
  v9.receiver = self;
  v9.super_class = NTKWidgetComplication;
  v4 = a3;
  [(NTKThirdPartyComplication *)&v9 _addKeysToJSONDictionary:v4];
  v5 = [(NTKWidgetComplication *)self descriptor:v9.receiver];
  v6 = [v5 containerBundleIdentifier];
  [v4 setObject:v6 forKeyedSubscript:@"app"];

  v7 = [(NTKWidgetComplication *)self descriptor];
  v8 = [v7 JSONObjectRepresentation];
  [v4 setObject:v8 forKeyedSubscript:@"descriptor"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = NTKWidgetComplication;
  v4 = [(NTKComplication *)&v10 description];
  v5 = [(CLKWidgetComplicationDescriptor *)self->_descriptor extensionBundleIdentifier];
  v6 = [(CLKWidgetComplicationDescriptor *)self->_descriptor kind];
  v7 = [(CLKWidgetComplicationDescriptor *)self->_descriptor intentReference];
  v8 = [v3 stringWithFormat:@"%@ (%@, %@, %lli)", v4, v5, v6, objc_msgSend(v7, "indexingHash")];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NTKWidgetComplication;
  v4 = [(NTKComplication *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 4, self->_descriptor);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[NTKWidgetComplication descriptor](self, "descriptor"), v5 = objc_claimAutoreleasedReturnValue(), [v4 descriptor], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v7))
  {
    v10.receiver = self;
    v10.super_class = NTKWidgetComplication;
    v8 = [(NTKComplication *)&v10 isEqual:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end