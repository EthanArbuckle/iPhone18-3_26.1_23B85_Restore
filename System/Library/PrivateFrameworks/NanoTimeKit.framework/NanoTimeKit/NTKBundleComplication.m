@interface NTKBundleComplication
+ (id)_revertedBundleComplicationFromJSONDictionary:(id)a3;
+ (id)bundledComplicationWithBundleIdentifier:(id)a3 appBundleIdentifier:(id)a4 complicationDescriptor:(id)a5;
+ (id)bundledComplicationWithComplication:(id)a3;
- (NTKBundleComplication)initWithCoder:(id)a3;
- (id)_generateUniqueIdentifier;
- (id)_initWithComplicationType:(unint64_t)a3 JSONDictionary:(id)a4;
- (id)_migrateToFamily:(int64_t)a3 withAllowedComplications:(id)a4;
- (id)analyticsIdentifier;
- (id)appIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)customDailySnapshotKeyForFamily:(int64_t)a3 device:(id)a4;
- (id)description;
- (id)localizedKeylineLabelText;
- (id)ntk_sectionIdentifier;
- (void)_addKeysToJSONDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKBundleComplication

- (id)ntk_sectionIdentifier
{
  v2 = [(NTKBundleComplication *)self complication];
  v3 = [v2 bundleIdentifier];
  v4 = +[NTKBundleComplicationManager sharedManager];
  v5 = [v4 sectionIdentifierForBundleIdentifier:v3];

  return v5;
}

+ (id)bundledComplicationWithBundleIdentifier:(id)a3 appBundleIdentifier:(id)a4 complicationDescriptor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NTKBundleComplicationManager sharedManager];
  v12 = [v11 bundleComplicationExistsForAppBundleIdentifier:v9];

  if (v12)
  {
    v13 = [MEMORY[0x277CFA700] complicationWithBundleIdentifier:v8 appBundleIdentifier:v9 complicationDescriptor:v10];
    v14 = [a1 bundledComplicationWithComplication:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)bundledComplicationWithComplication:(id)a3
{
  v3 = a3;
  v4 = [(NTKComplication *)[NTKBundleComplication alloc] initWithComplicationType:48];
  complication = v4->_complication;
  v4->_complication = v3;
  v6 = v3;

  v7 = [(NTKBundleComplication *)v4 _generateUniqueIdentifier];
  uniqueIdentifier = v4->super._uniqueIdentifier;
  v4->super._uniqueIdentifier = v7;

  return v4;
}

- (id)_generateUniqueIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NTKComplication complicationType](self, "complicationType")}];
  v5 = [v4 stringValue];
  v6 = [(CLKCBundleComplication *)self->_complication appBundleIdentifier];
  v7 = [(CLKCBundleComplication *)self->_complication bundleIdentifier];
  v8 = [v3 stringWithFormat:@"%@-%@-%@", v5, v6, v7];

  v9 = [(CLKCBundleComplication *)self->_complication complicationDescriptor];

  if (v9)
  {
    v10 = [(CLKCBundleComplication *)self->_complication complicationDescriptor];
    v11 = [v10 identifier];
    v12 = [v8 stringByAppendingFormat:@"-%@", v11];

    v8 = v12;
  }

  return v8;
}

- (id)analyticsIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NTKReportingValueForComplication(self);
  v5 = [v3 stringWithFormat:@"%@:", v4];

  v6 = [(CLKCBundleComplication *)self->_complication complicationDescriptor];

  if (v6)
  {
    v7 = [(CLKCBundleComplication *)self->_complication complicationDescriptor];
    v8 = [v7 identifier];
    v9 = [v5 stringByAppendingFormat:@"%@", v8];

    v5 = v9;
  }

  return v5;
}

- (id)appIdentifier
{
  v3 = +[NTKBundleComplicationManager sharedManager];
  v4 = [(CLKCBundleComplication *)self->_complication bundleIdentifier];
  v5 = [v3 groupIdentifierForBundleIdentifier:v4];

  if (v5)
  {
    v6 = v5;
LABEL_5:
    v8 = v6;
    goto LABEL_6;
  }

  v7 = [(CLKCBundleComplication *)self->_complication appBundleIdentifier];

  if (v7)
  {
    v6 = [(CLKCBundleComplication *)self->_complication appBundleIdentifier];
    goto LABEL_5;
  }

  v8 = @"com.apple.nanotimekit.internal";
LABEL_6:

  return v8;
}

- (id)customDailySnapshotKeyForFamily:(int64_t)a3 device:(id)a4
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [(NTKComplication *)self uniqueIdentifier:a3];
  v6 = [v4 stringWithFormat:@"%lx", objc_msgSend(v5, "hash")];

  return v6;
}

- (id)description
{
  v3 = [(CLKCBundleComplication *)self->_complication bundleIdentifier];
  v4 = [(CLKCBundleComplication *)self->_complication appBundleIdentifier];
  v5 = [(CLKCBundleComplication *)self->_complication complicationDescriptor];
  v6 = [v5 identifier];

  v7 = @"_";
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = @"_";
  }

  if (v6)
  {
    v7 = v6;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"CLKCB: %@-%@-%@", v3, v8, v7];

  return v9;
}

- (id)localizedKeylineLabelText
{
  v3 = [(NTKBundleComplication *)self complication];
  v4 = [v3 complicationDescriptor];
  v5 = [v4 displayName];
  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v7 = +[NTKBundleComplicationManager sharedManager];
    v8 = [(CLKCBundleComplication *)self->_complication bundleIdentifier];
    v6 = [v7 localizedComplicationNameForBundleIdentifier:v8];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NTKBundleComplication;
  v4 = [(NTKComplication *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 4, self->_complication);
  return v4;
}

+ (id)_revertedBundleComplicationFromJSONDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"bundle identifier"];
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

- (id)_initWithComplicationType:(unint64_t)a3 JSONDictionary:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = NTKBundleComplication;
  v7 = [(NTKComplication *)&v17 _initWithComplicationType:a3 JSONDictionary:v6];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"bundle identifier"];
    v9 = [v6 objectForKeyedSubscript:@"bundle app identifier"];
    v10 = [v6 objectForKeyedSubscript:@"bundle app complication descriptor"];
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

    v14 = [v7 _generateUniqueIdentifier];
    v15 = v7[1];
    v7[1] = v14;
  }

  return v7;
}

- (NTKBundleComplication)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NTKBundleComplication;
  v5 = [(NTKComplication *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ComplicationBundleIdentifierKey"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ComplicationBundleAppIdentifierKey"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ComplicationBundleComplicationDescriptorKey"];
    v9 = [MEMORY[0x277CFA700] complicationWithBundleIdentifier:v6 appBundleIdentifier:v7 complicationDescriptor:v8];
    complication = v5->_complication;
    v5->_complication = v9;

    if (!v5->_complication)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ cannot have nil complication", objc_opt_class()}];
    }

    v11 = [(NTKBundleComplication *)v5 _generateUniqueIdentifier];
    uniqueIdentifier = v5->super._uniqueIdentifier;
    v5->super._uniqueIdentifier = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = NTKBundleComplication;
  v4 = a3;
  [(NTKComplication *)&v8 encodeWithCoder:v4];
  v5 = [(CLKCBundleComplication *)self->_complication bundleIdentifier:v8.receiver];
  [v4 encodeObject:v5 forKey:@"_ComplicationBundleIdentifierKey"];

  v6 = [(CLKCBundleComplication *)self->_complication appBundleIdentifier];
  [v4 encodeObject:v6 forKey:@"_ComplicationBundleAppIdentifierKey"];

  v7 = [(CLKCBundleComplication *)self->_complication complicationDescriptor];
  [v4 encodeObject:v7 forKey:@"_ComplicationBundleComplicationDescriptorKey"];
}

- (void)_addKeysToJSONDictionary:(id)a3
{
  v14.receiver = self;
  v14.super_class = NTKBundleComplication;
  v4 = a3;
  [(NTKComplication *)&v14 _addKeysToJSONDictionary:v4];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(CLKCBundleComplication *)self->_complication bundleIdentifier];

  if (v6)
  {
    v7 = [(CLKCBundleComplication *)self->_complication bundleIdentifier];
    [v5 setObject:v7 forKey:@"bundle identifier"];
  }

  v8 = [(CLKCBundleComplication *)self->_complication appBundleIdentifier];

  if (v8)
  {
    v9 = [(CLKCBundleComplication *)self->_complication appBundleIdentifier];
    [v5 setObject:v9 forKey:@"bundle app identifier"];
  }

  v10 = [(CLKCBundleComplication *)self->_complication complicationDescriptor];

  if (v10)
  {
    v11 = [(CLKCBundleComplication *)self->_complication complicationDescriptor];
    v12 = [v11 JSONObjectRepresentation];

    [v5 setObject:v12 forKey:@"bundle app complication descriptor"];
  }

  v13 = [v5 copy];
  [v4 addEntriesFromDictionary:v13];
}

- (id)_migrateToFamily:(int64_t)a3 withAllowedComplications:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!NTKIsRichComplicationFamily(a3))
  {
    v10 = 0;
    goto LABEL_26;
  }

  v7 = [(NTKBundleComplication *)self complication];
  v8 = [v7 bundleIdentifier];

  if (a3 == 11)
  {
    if (![v8 isEqualToString:@"com.apple.NanoCompass.complications.altitude"])
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  if (a3 != 8)
  {
    goto LABEL_24;
  }

  if ([v8 isEqualToString:@"com.apple.NanoCompass.complications.compass"])
  {
LABEL_9:
    v20 = v8;
    v9 = @"com.apple.NanoCompass.complications.compass.bearing";
    goto LABEL_10;
  }

  if ([v8 isEqualToString:@"com.apple.NanoCompass.complications.altitude"])
  {
    v20 = v8;
    v9 = @"com.apple.NanoCompass.complications.altitude.incline";
LABEL_10:
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v6;
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
            v17 = [v10 complication];
            v18 = [v17 bundleIdentifier];

            LOBYTE(v17) = [v18 isEqualToString:v9];
            if (v17)
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
    v8 = v20;

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
LABEL_25:

LABEL_26:

  return v10;
}

@end