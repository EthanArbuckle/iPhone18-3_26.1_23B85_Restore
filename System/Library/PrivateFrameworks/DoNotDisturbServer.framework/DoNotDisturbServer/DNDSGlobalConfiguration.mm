@interface DNDSGlobalConfiguration
+ (id)backingStoreWithFileURL:(id)l;
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (DNDSGlobalConfiguration)initWithPreventAutoReply:(unint64_t)reply bypassSettings:(id)settings modesCanImpactAvailability:(unint64_t)availability lastModified:(id)modified automaticallyGenerated:(BOOL)generated;
- (NSString)description;
- (id)_initWithConfiguration:(id)configuration;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mergeWithGlobalConfiguration:(id)configuration;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation DNDSGlobalConfiguration

+ (id)backingStoreWithFileURL:(id)l
{
  lCopy = l;
  v5 = [[DNDSJSONBackingStore alloc] initWithRecordClass:self fileURL:lCopy versionNumber:1];

  return v5;
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  contextCopy = context;
  v7 = [representationCopy bs_safeObjectForKey:@"preventAutoReply" ofType:objc_opt_class()];
  v8 = v7;
  if (v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v9 = [representationCopy bs_safeDictionaryForKey:@"bypassSettings"];
  v25 = contextCopy;
  if (v9)
  {
    v10 = [DNDSBypassSettingsRecord newWithDictionaryRepresentation:v9 context:contextCopy];
    v11 = [MEMORY[0x277D058D8] settingsForRecord:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [representationCopy bs_safeObjectForKey:@"modesCanImpactAvailability" ofType:objc_opt_class()];
  v13 = v12;
  if (v12)
  {
    unsignedIntegerValue2 = [v12 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 0;
  }

  v15 = [representationCopy bs_safeObjectForKey:@"lastModified" ofType:objc_opt_class()];
  v16 = MEMORY[0x277CBEAA8];
  [v15 doubleValue];
  v17 = [v16 dateWithTimeIntervalSince1970:?];
  v18 = [representationCopy bs_safeObjectForKey:@"automaticallyGenerated" ofType:objc_opt_class()];
  v19 = v18;
  if (v18)
  {
    bOOLValue = [v18 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v21 = [[self alloc] initWithPreventAutoReply:unsignedIntegerValue bypassSettings:v11 modesCanImpactAvailability:unsignedIntegerValue2 lastModified:v17 automaticallyGenerated:bOOLValue];

  return v21;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  contextCopy = context;
  bypassSettings = [(DNDSGlobalConfiguration *)self bypassSettings];
  makeRecord = [bypassSettings makeRecord];

  v7 = [makeRecord dictionaryRepresentationWithContext:contextCopy];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDSGlobalConfiguration preventAutoReply](self, "preventAutoReply")}];
  [dictionary setObject:v9 forKeyedSubscript:@"preventAutoReply"];

  [dictionary setObject:v7 forKeyedSubscript:@"bypassSettings"];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDSGlobalConfiguration modesCanImpactAvailability](self, "modesCanImpactAvailability")}];
  [dictionary setObject:v10 forKeyedSubscript:@"modesCanImpactAvailability"];

  v11 = MEMORY[0x277CCABB0];
  lastModified = [(DNDSGlobalConfiguration *)self lastModified];
  [lastModified timeIntervalSince1970];
  v13 = [v11 numberWithDouble:?];
  [dictionary setObject:v13 forKeyedSubscript:@"lastModified"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSGlobalConfiguration isAutomaticallyGenerated](self, "isAutomaticallyGenerated")}];
  [dictionary setObject:v14 forKeyedSubscript:@"automaticallyGenerated"];

  return dictionary;
}

- (DNDSGlobalConfiguration)initWithPreventAutoReply:(unint64_t)reply bypassSettings:(id)settings modesCanImpactAvailability:(unint64_t)availability lastModified:(id)modified automaticallyGenerated:(BOOL)generated
{
  settingsCopy = settings;
  modifiedCopy = modified;
  v21.receiver = self;
  v21.super_class = DNDSGlobalConfiguration;
  v14 = [(DNDSGlobalConfiguration *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_preventAutoReply = reply;
    v16 = [settingsCopy copy];
    bypassSettings = v15->_bypassSettings;
    v15->_bypassSettings = v16;

    v15->_modesCanImpactAvailability = availability;
    v18 = [modifiedCopy copy];
    lastModified = v15->_lastModified;
    v15->_lastModified = v18;

    v15->_automaticallyGenerated = generated;
  }

  return v15;
}

- (id)_initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  preventAutoReply = [configurationCopy preventAutoReply];
  bypassSettings = [configurationCopy bypassSettings];
  modesCanImpactAvailability = [configurationCopy modesCanImpactAvailability];
  lastModified = [configurationCopy lastModified];
  date = lastModified;
  if (!lastModified)
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  v10 = -[DNDSGlobalConfiguration initWithPreventAutoReply:bypassSettings:modesCanImpactAvailability:lastModified:automaticallyGenerated:](self, "initWithPreventAutoReply:bypassSettings:modesCanImpactAvailability:lastModified:automaticallyGenerated:", preventAutoReply, bypassSettings, modesCanImpactAvailability, date, [configurationCopy isAutomaticallyGenerated]);
  if (!lastModified)
  {
  }

  return v10;
}

- (id)mergeWithGlobalConfiguration:(id)configuration
{
  configurationCopy = configuration;
  p_isa = &configurationCopy->super.isa;
  if (!configurationCopy)
  {
    goto LABEL_8;
  }

  automaticallyGenerated = configurationCopy->_automaticallyGenerated;
  if (self->_automaticallyGenerated)
  {
    selfCopy2 = configurationCopy;
    if (!configurationCopy->_automaticallyGenerated)
    {
      goto LABEL_9;
    }
  }

  else if (configurationCopy->_automaticallyGenerated)
  {
LABEL_8:
    selfCopy2 = self;
    goto LABEL_9;
  }

  lastModified = self->_lastModified;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  LOBYTE(lastModified) = [(NSDate *)lastModified isEqualToDate:distantPast];

  if (lastModified & 1) != 0 || ([p_isa[4] isEqualToDate:self->_lastModified])
  {
    goto LABEL_8;
  }

  v12 = [p_isa[4] laterDate:self->_lastModified];
  v13 = [v12 isEqualToDate:p_isa[4]];

  if (v13)
  {
    selfCopy2 = p_isa;
  }

  else
  {
    selfCopy2 = self;
  }

LABEL_9:
  v10 = selfCopy2;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      preventAutoReply = [(DNDSGlobalConfiguration *)self preventAutoReply];
      if (preventAutoReply != [(DNDSGlobalConfiguration *)v6 preventAutoReply]|| (v8 = [(DNDSGlobalConfiguration *)self isAutomaticallyGenerated], v8 != [(DNDSGlobalConfiguration *)v6 isAutomaticallyGenerated]) || (v9 = [(DNDSGlobalConfiguration *)self modesCanImpactAvailability], v9 != [(DNDSGlobalConfiguration *)v6 modesCanImpactAvailability]))
      {
        v16 = 0;
LABEL_14:

        goto LABEL_15;
      }

      lastModified = [(DNDSGlobalConfiguration *)self lastModified];
      lastModified2 = [(DNDSGlobalConfiguration *)v6 lastModified];
      if (lastModified != lastModified2)
      {
        lastModified3 = [(DNDSGlobalConfiguration *)self lastModified];
        if (!lastModified3)
        {
          v16 = 0;
LABEL_30:

          goto LABEL_14;
        }

        v3 = lastModified3;
        lastModified4 = [(DNDSGlobalConfiguration *)v6 lastModified];
        if (!lastModified4)
        {
          v16 = 0;
LABEL_29:

          goto LABEL_30;
        }

        lastModified5 = [(DNDSGlobalConfiguration *)self lastModified];
        lastModified6 = [(DNDSGlobalConfiguration *)v6 lastModified];
        if (![lastModified5 isEqual:lastModified6])
        {
          v16 = 0;
LABEL_28:

          goto LABEL_29;
        }

        v27 = lastModified6;
        v28 = lastModified5;
        v29 = lastModified4;
      }

      bypassSettings = [(DNDSGlobalConfiguration *)self bypassSettings];
      bypassSettings2 = [(DNDSGlobalConfiguration *)v6 bypassSettings];
      v20 = bypassSettings2;
      if (bypassSettings == bypassSettings2)
      {

        v16 = 1;
      }

      else
      {
        bypassSettings3 = [(DNDSGlobalConfiguration *)self bypassSettings];
        if (bypassSettings3)
        {
          v22 = bypassSettings3;
          bypassSettings4 = [(DNDSGlobalConfiguration *)v6 bypassSettings];
          if (bypassSettings4)
          {
            bypassSettings5 = [(DNDSGlobalConfiguration *)self bypassSettings];
            [(DNDSGlobalConfiguration *)v6 bypassSettings];
            v24 = v26 = v3;
            v16 = [bypassSettings5 isEqual:v24];

            v3 = v26;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {

          v16 = 0;
        }
      }

      lastModified5 = v28;
      lastModified4 = v29;
      lastModified6 = v27;
      if (lastModified == lastModified2)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    v16 = 0;
  }

LABEL_15:

  return v16;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  preventAutoReply = self->_preventAutoReply;
  v6 = DNDEnabledSettingToString();
  bypassSettings = [(DNDSGlobalConfiguration *)self bypassSettings];
  modesCanImpactAvailability = self->_modesCanImpactAvailability;
  v9 = DNDEnabledSettingToString();
  lastModified = [(DNDSGlobalConfiguration *)self lastModified];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSGlobalConfiguration isAutomaticallyGenerated](self, "isAutomaticallyGenerated")}];
  v12 = [v3 stringWithFormat:@"<%@: %p preventAutoReply: %@; bypassSettings: %@; modesCanImpactAvailability: %@; lastModified: %@; automaticallyGenerated: %@>", v4, self, v6, bypassSettings, v9, lastModified, v11];;

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableGlobalConfiguration alloc];

  return [(DNDSGlobalConfiguration *)v4 _initWithConfiguration:self];
}

@end