@interface NTKBundleComplication
+ (id)_revertedBundleComplicationFromJSONDictionary:(id)dictionary;
+ (id)bundledComplicationWithBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier complicationDescriptor:(id)descriptor;
+ (id)bundledComplicationWithComplication:(id)complication;
- (NTKBundleComplication)initWithCoder:(id)coder;
- (id)_generateUniqueIdentifier;
- (id)_initWithComplicationType:(unint64_t)type JSONDictionary:(id)dictionary;
- (id)_migrateToFamily:(int64_t)family withAllowedComplications:(id)complications;
- (id)analyticsIdentifier;
- (id)appIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customDailySnapshotKeyForFamily:(int64_t)family device:(id)device;
- (id)description;
- (id)localizedKeylineLabelText;
- (id)ntk_sectionIdentifier;
- (void)_addKeysToJSONDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKBundleComplication

- (id)ntk_sectionIdentifier
{
  complication = [(NTKBundleComplication *)self complication];
  bundleIdentifier = [complication bundleIdentifier];
  v4 = +[NTKBundleComplicationManager sharedManager];
  v5 = [v4 sectionIdentifierForBundleIdentifier:bundleIdentifier];

  return v5;
}

+ (id)bundledComplicationWithBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier complicationDescriptor:(id)descriptor
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  descriptorCopy = descriptor;
  v11 = +[NTKBundleComplicationManager sharedManager];
  v12 = [v11 bundleComplicationExistsForAppBundleIdentifier:bundleIdentifierCopy];

  if (v12)
  {
    v13 = [MEMORY[0x277CFA700] complicationWithBundleIdentifier:identifierCopy appBundleIdentifier:bundleIdentifierCopy complicationDescriptor:descriptorCopy];
    v14 = [self bundledComplicationWithComplication:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)bundledComplicationWithComplication:(id)complication
{
  complicationCopy = complication;
  v4 = [(NTKComplication *)[NTKBundleComplication alloc] initWithComplicationType:48];
  complication = v4->_complication;
  v4->_complication = complicationCopy;
  v6 = complicationCopy;

  _generateUniqueIdentifier = [(NTKBundleComplication *)v4 _generateUniqueIdentifier];
  uniqueIdentifier = v4->super._uniqueIdentifier;
  v4->super._uniqueIdentifier = _generateUniqueIdentifier;

  return v4;
}

- (id)_generateUniqueIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NTKComplication complicationType](self, "complicationType")}];
  stringValue = [v4 stringValue];
  appBundleIdentifier = [(CLKCBundleComplication *)self->_complication appBundleIdentifier];
  bundleIdentifier = [(CLKCBundleComplication *)self->_complication bundleIdentifier];
  v8 = [v3 stringWithFormat:@"%@-%@-%@", stringValue, appBundleIdentifier, bundleIdentifier];

  complicationDescriptor = [(CLKCBundleComplication *)self->_complication complicationDescriptor];

  if (complicationDescriptor)
  {
    complicationDescriptor2 = [(CLKCBundleComplication *)self->_complication complicationDescriptor];
    identifier = [complicationDescriptor2 identifier];
    v12 = [v8 stringByAppendingFormat:@"-%@", identifier];

    v8 = v12;
  }

  return v8;
}

- (id)analyticsIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NTKReportingValueForComplication(self);
  v5 = [v3 stringWithFormat:@"%@:", v4];

  complicationDescriptor = [(CLKCBundleComplication *)self->_complication complicationDescriptor];

  if (complicationDescriptor)
  {
    complicationDescriptor2 = [(CLKCBundleComplication *)self->_complication complicationDescriptor];
    identifier = [complicationDescriptor2 identifier];
    v9 = [v5 stringByAppendingFormat:@"%@", identifier];

    v5 = v9;
  }

  return v5;
}

- (id)appIdentifier
{
  v3 = +[NTKBundleComplicationManager sharedManager];
  bundleIdentifier = [(CLKCBundleComplication *)self->_complication bundleIdentifier];
  v5 = [v3 groupIdentifierForBundleIdentifier:bundleIdentifier];

  if (v5)
  {
    appBundleIdentifier2 = v5;
LABEL_5:
    v8 = appBundleIdentifier2;
    goto LABEL_6;
  }

  appBundleIdentifier = [(CLKCBundleComplication *)self->_complication appBundleIdentifier];

  if (appBundleIdentifier)
  {
    appBundleIdentifier2 = [(CLKCBundleComplication *)self->_complication appBundleIdentifier];
    goto LABEL_5;
  }

  v8 = @"com.apple.nanotimekit.internal";
LABEL_6:

  return v8;
}

- (id)customDailySnapshotKeyForFamily:(int64_t)family device:(id)device
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [(NTKComplication *)self uniqueIdentifier:family];
  v6 = [v4 stringWithFormat:@"%lx", objc_msgSend(v5, "hash")];

  return v6;
}

- (id)description
{
  bundleIdentifier = [(CLKCBundleComplication *)self->_complication bundleIdentifier];
  appBundleIdentifier = [(CLKCBundleComplication *)self->_complication appBundleIdentifier];
  complicationDescriptor = [(CLKCBundleComplication *)self->_complication complicationDescriptor];
  identifier = [complicationDescriptor identifier];

  v7 = @"_";
  if (appBundleIdentifier)
  {
    v8 = appBundleIdentifier;
  }

  else
  {
    v8 = @"_";
  }

  if (identifier)
  {
    v7 = identifier;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"CLKCB: %@-%@-%@", bundleIdentifier, v8, v7];

  return v9;
}

- (id)localizedKeylineLabelText
{
  complication = [(NTKBundleComplication *)self complication];
  complicationDescriptor = [complication complicationDescriptor];
  displayName = [complicationDescriptor displayName];
  if ([displayName length])
  {
    v6 = displayName;
  }

  else
  {
    v7 = +[NTKBundleComplicationManager sharedManager];
    bundleIdentifier = [(CLKCBundleComplication *)self->_complication bundleIdentifier];
    v6 = [v7 localizedComplicationNameForBundleIdentifier:bundleIdentifier];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NTKBundleComplication;
  v4 = [(NTKComplication *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 4, self->_complication);
  return v4;
}

+ (id)_revertedBundleComplicationFromJSONDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"bundle identifier"];
  if ([v3 isEqualToString:@"com.apple.NanoReminders.ComplicationBundle"])
  {
    v4 = 20;
LABEL_5:
    v5 = [[NTKComplication alloc] initWithComplicationType:v4];
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"com.apple.MessagesComplication"])
  {
    v4 = 23;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_initWithComplicationType:(unint64_t)type JSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = NTKBundleComplication;
  v7 = [(NTKComplication *)&v17 _initWithComplicationType:type JSONDictionary:dictionaryCopy];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"bundle identifier"];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"bundle app identifier"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"bundle app complication descriptor"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = [objc_alloc(MEMORY[0x277CBB718]) initWithJSONObjectRepresentation:v10];
    }

    else
    {
      v11 = 0;
    }

    v12 = [MEMORY[0x277CFA700] complicationWithBundleIdentifier:v8 appBundleIdentifier:v9 complicationDescriptor:v11];
    v13 = v7[4];
    v7[4] = v12;

    _generateUniqueIdentifier = [v7 _generateUniqueIdentifier];
    v15 = v7[1];
    v7[1] = _generateUniqueIdentifier;
  }

  return v7;
}

- (NTKBundleComplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = NTKBundleComplication;
  v5 = [(NTKComplication *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ComplicationBundleIdentifierKey"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ComplicationBundleAppIdentifierKey"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ComplicationBundleComplicationDescriptorKey"];
    v9 = [MEMORY[0x277CFA700] complicationWithBundleIdentifier:v6 appBundleIdentifier:v7 complicationDescriptor:v8];
    complication = v5->_complication;
    v5->_complication = v9;

    if (!v5->_complication)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ cannot have nil complication", objc_opt_class()}];
    }

    _generateUniqueIdentifier = [(NTKBundleComplication *)v5 _generateUniqueIdentifier];
    uniqueIdentifier = v5->super._uniqueIdentifier;
    v5->super._uniqueIdentifier = _generateUniqueIdentifier;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = NTKBundleComplication;
  coderCopy = coder;
  [(NTKComplication *)&v8 encodeWithCoder:coderCopy];
  v5 = [(CLKCBundleComplication *)self->_complication bundleIdentifier:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"_ComplicationBundleIdentifierKey"];

  appBundleIdentifier = [(CLKCBundleComplication *)self->_complication appBundleIdentifier];
  [coderCopy encodeObject:appBundleIdentifier forKey:@"_ComplicationBundleAppIdentifierKey"];

  complicationDescriptor = [(CLKCBundleComplication *)self->_complication complicationDescriptor];
  [coderCopy encodeObject:complicationDescriptor forKey:@"_ComplicationBundleComplicationDescriptorKey"];
}

- (void)_addKeysToJSONDictionary:(id)dictionary
{
  v14.receiver = self;
  v14.super_class = NTKBundleComplication;
  dictionaryCopy = dictionary;
  [(NTKComplication *)&v14 _addKeysToJSONDictionary:dictionaryCopy];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  bundleIdentifier = [(CLKCBundleComplication *)self->_complication bundleIdentifier];

  if (bundleIdentifier)
  {
    bundleIdentifier2 = [(CLKCBundleComplication *)self->_complication bundleIdentifier];
    [dictionary setObject:bundleIdentifier2 forKey:@"bundle identifier"];
  }

  appBundleIdentifier = [(CLKCBundleComplication *)self->_complication appBundleIdentifier];

  if (appBundleIdentifier)
  {
    appBundleIdentifier2 = [(CLKCBundleComplication *)self->_complication appBundleIdentifier];
    [dictionary setObject:appBundleIdentifier2 forKey:@"bundle app identifier"];
  }

  complicationDescriptor = [(CLKCBundleComplication *)self->_complication complicationDescriptor];

  if (complicationDescriptor)
  {
    complicationDescriptor2 = [(CLKCBundleComplication *)self->_complication complicationDescriptor];
    jSONObjectRepresentation = [complicationDescriptor2 JSONObjectRepresentation];

    [dictionary setObject:jSONObjectRepresentation forKey:@"bundle app complication descriptor"];
  }

  v13 = [dictionary copy];
  [dictionaryCopy addEntriesFromDictionary:v13];
}

- (id)_migrateToFamily:(int64_t)family withAllowedComplications:(id)complications
{
  v26 = *MEMORY[0x277D85DE8];
  complicationsCopy = complications;
  if (!NTKIsRichComplicationFamily(family))
  {
    v10 = 0;
    goto LABEL_26;
  }

  complication = [(NTKBundleComplication *)self complication];
  bundleIdentifier = [complication bundleIdentifier];

  if (family == 11)
  {
    if (![bundleIdentifier isEqualToString:@"com.apple.NanoCompass.complications.altitude"])
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  if (family != 8)
  {
    goto LABEL_24;
  }

  if ([bundleIdentifier isEqualToString:@"com.apple.NanoCompass.complications.compass"])
  {
LABEL_9:
    v20 = bundleIdentifier;
    v9 = @"com.apple.NanoCompass.complications.compass.bearing";
    goto LABEL_10;
  }

  if ([bundleIdentifier isEqualToString:@"com.apple.NanoCompass.complications.altitude"])
  {
    v20 = bundleIdentifier;
    v9 = @"com.apple.NanoCompass.complications.altitude.incline";
LABEL_10:
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = complicationsCopy;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if ([v16 isMemberOfClass:objc_opt_class()])
          {
            v10 = v16;
            complication2 = [v10 complication];
            bundleIdentifier2 = [complication2 bundleIdentifier];

            LOBYTE(complication2) = [bundleIdentifier2 isEqualToString:v9];
            if (complication2)
            {
              goto LABEL_23;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    v11 = _NTKLoggingObjectForDomain(17, "NTKLoggingDomainMigration");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [NTKBundleComplication(BlueRidgeMigration) _migrateToFamily:v9 withAllowedComplications:v11];
    }

    v10 = 0;
LABEL_23:
    bundleIdentifier = v20;

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
LABEL_25:

LABEL_26:

  return v10;
}

@end