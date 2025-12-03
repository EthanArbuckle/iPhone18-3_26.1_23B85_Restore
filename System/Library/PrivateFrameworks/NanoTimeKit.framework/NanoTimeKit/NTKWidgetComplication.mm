@interface NTKWidgetComplication
+ (NTKWidgetComplication)complicationWithDescriptor:(id)descriptor;
- (BOOL)isEqual:(id)equal;
- (BOOL)snapshotContext:(id)context isStaleRelativeToContext:(id)toContext;
- (INIntent)intent;
- (NTKWidgetComplication)initWithCoder:(id)coder;
- (id)_createUniqueIdentifier;
- (id)_initWithComplicationType:(unint64_t)type JSONDictionary:(id)dictionary;
- (id)analyticsIdentifier;
- (id)appIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customDailySnapshotKeyForFamily:(int64_t)family device:(id)device;
- (id)description;
- (id)ntk_localizedNameWithOptions:(unint64_t)options forRichComplicationSlot:(BOOL)slot;
- (void)_addKeysToJSONDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKWidgetComplication

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
  if ((optionsCopy & 2) != 0)
  {
    v9 = [(NTKComplication *)self localizedSectionHeaderName:v27];
    v8[2](v8, v9);
  }

  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  v11 = NTKSharedWidgetComplicationProvider(currentDevice);
  descriptor = [(NTKWidgetComplication *)self descriptor];
  v13 = [v11 infoForDescriptor:descriptor];

  if (optionsCopy)
  {
    localizedDisplayName = [v13 localizedDisplayName];
    localizedLowercaseString = [v34[5] localizedLowercaseString];
    localizedLowercaseString2 = [localizedDisplayName localizedLowercaseString];
    v17 = NTKEqualObjects(localizedLowercaseString, localizedLowercaseString2);

    if ((v17 & 1) == 0)
    {
      v8[2](v8, localizedDisplayName);
    }
  }

  if (![v34[5] length])
  {
    localizedAppName = [v13 localizedAppName];
    v19 = v34[5];
    v34[5] = localizedAppName;

    v20 = v34[5];
    descriptor2 = [(NTKWidgetComplication *)self descriptor];
    containerBundleIdentifier = [descriptor2 containerBundleIdentifier];
    LOBYTE(v20) = NTKEqualObjects(v20, containerBundleIdentifier);

    v23 = v20 ^ 1;
    if ((optionsCopy & 1) == 0)
    {
      v23 = 1;
    }

    if ((v23 & 1) == 0)
    {
      localizedSectionHeaderName = [(NTKComplication *)self localizedSectionHeaderName];
      if ([localizedSectionHeaderName length])
      {
        objc_storeStrong(v34 + 5, localizedSectionHeaderName);
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

+ (NTKWidgetComplication)complicationWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = [[self alloc] initWithComplicationType:56];
  v6 = [descriptorCopy copy];

  v7 = v5[4];
  v5[4] = v6;

  _createUniqueIdentifier = [v5 _createUniqueIdentifier];
  [v5 setUniqueIdentifier:_createUniqueIdentifier];

  return v5;
}

- (id)customDailySnapshotKeyForFamily:(int64_t)family device:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isRunningNapiliGMOrLater])
  {
    uniqueIdentifier = [(NTKComplication *)self uniqueIdentifier];
  }

  else
  {
    v8 = [NTKCompanionWidgetComplicationManager instanceForDevice:deviceCopy];
    descriptor = [(NTKWidgetComplication *)self descriptor];
    v10 = [v8 sampleTemplateForWidget:descriptor family:family];

    creationDate = [v10 creationDate];
    [creationDate timeIntervalSinceReferenceDate];
    v13 = v12;

    v14 = MEMORY[0x277CCACA8];
    uniqueIdentifier2 = [(NTKComplication *)self uniqueIdentifier];
    uniqueIdentifier = [v14 stringWithFormat:@"%@, %ld", uniqueIdentifier2, v13];
  }

  return uniqueIdentifier;
}

- (id)analyticsIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NTKReportingValueForComplication(self);
  descriptor = [(NTKWidgetComplication *)self descriptor];
  extensionBundleIdentifier = [descriptor extensionBundleIdentifier];
  descriptor2 = [(NTKWidgetComplication *)self descriptor];
  kind = [descriptor2 kind];
  v9 = [v3 stringWithFormat:@"%@:%@:%@", v4, extensionBundleIdentifier, kind];

  return v9;
}

- (id)_createUniqueIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  descriptor = [(NTKWidgetComplication *)self descriptor];
  containerBundleIdentifier = [descriptor containerBundleIdentifier];
  descriptor2 = [(NTKWidgetComplication *)self descriptor];
  extensionBundleIdentifier = [descriptor2 extensionBundleIdentifier];
  descriptor3 = [(NTKWidgetComplication *)self descriptor];
  kind = [descriptor3 kind];
  descriptor4 = [(NTKWidgetComplication *)self descriptor];
  intentReference = [descriptor4 intentReference];
  v12 = [v3 stringWithFormat:@"%@-%@-%@-%li", containerBundleIdentifier, extensionBundleIdentifier, kind, objc_msgSend(intentReference, "indexingHash")];

  return v12;
}

- (id)appIdentifier
{
  descriptor = [(NTKWidgetComplication *)self descriptor];
  containerBundleIdentifier = [descriptor containerBundleIdentifier];

  return containerBundleIdentifier;
}

- (BOOL)snapshotContext:(id)context isStaleRelativeToContext:(id)toContext
{
  v5.receiver = self;
  v5.super_class = NTKWidgetComplication;
  return [(NTKComplication *)&v5 snapshotContext:context isStaleRelativeToContext:toContext];
}

- (INIntent)intent
{
  intentReference = [(CLKWidgetComplicationDescriptor *)self->_descriptor intentReference];
  intent = [intentReference intent];

  return intent;
}

- (NTKWidgetComplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = NTKWidgetComplication;
  v5 = [(NTKComplication *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v6;

    _createUniqueIdentifier = [(NTKWidgetComplication *)v5 _createUniqueIdentifier];
    [(NTKComplication *)v5 setUniqueIdentifier:_createUniqueIdentifier];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NTKWidgetComplication;
  coderCopy = coder;
  [(NTKThirdPartyComplication *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_descriptor forKey:{@"descriptor", v5.receiver, v5.super_class}];
}

- (id)_initWithComplicationType:(unint64_t)type JSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = NTKWidgetComplication;
  v7 = [(NTKComplication *)&v14 _initWithComplicationType:type JSONDictionary:dictionaryCopy];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"descriptor"];
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

    _createUniqueIdentifier = [v7 _createUniqueIdentifier];
    [v7 setUniqueIdentifier:_createUniqueIdentifier];
  }

  return v7;
}

- (void)_addKeysToJSONDictionary:(id)dictionary
{
  v9.receiver = self;
  v9.super_class = NTKWidgetComplication;
  dictionaryCopy = dictionary;
  [(NTKThirdPartyComplication *)&v9 _addKeysToJSONDictionary:dictionaryCopy];
  v5 = [(NTKWidgetComplication *)self descriptor:v9.receiver];
  containerBundleIdentifier = [v5 containerBundleIdentifier];
  [dictionaryCopy setObject:containerBundleIdentifier forKeyedSubscript:@"app"];

  descriptor = [(NTKWidgetComplication *)self descriptor];
  jSONObjectRepresentation = [descriptor JSONObjectRepresentation];
  [dictionaryCopy setObject:jSONObjectRepresentation forKeyedSubscript:@"descriptor"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = NTKWidgetComplication;
  v4 = [(NTKComplication *)&v10 description];
  extensionBundleIdentifier = [(CLKWidgetComplicationDescriptor *)self->_descriptor extensionBundleIdentifier];
  kind = [(CLKWidgetComplicationDescriptor *)self->_descriptor kind];
  intentReference = [(CLKWidgetComplicationDescriptor *)self->_descriptor intentReference];
  v8 = [v3 stringWithFormat:@"%@ (%@, %@, %lli)", v4, extensionBundleIdentifier, kind, objc_msgSend(intentReference, "indexingHash")];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NTKWidgetComplication;
  v4 = [(NTKComplication *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 4, self->_descriptor);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[NTKWidgetComplication descriptor](self, "descriptor"), v5 = objc_claimAutoreleasedReturnValue(), [equalCopy descriptor], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v7))
  {
    v10.receiver = self;
    v10.super_class = NTKWidgetComplication;
    v8 = [(NTKComplication *)&v10 isEqual:equalCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end