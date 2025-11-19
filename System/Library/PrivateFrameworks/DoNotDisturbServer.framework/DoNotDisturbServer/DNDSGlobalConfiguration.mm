@interface DNDSGlobalConfiguration
+ (id)backingStoreWithFileURL:(id)a3;
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (DNDSGlobalConfiguration)initWithPreventAutoReply:(unint64_t)a3 bypassSettings:(id)a4 modesCanImpactAvailability:(unint64_t)a5 lastModified:(id)a6 automaticallyGenerated:(BOOL)a7;
- (NSString)description;
- (id)_initWithConfiguration:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mergeWithGlobalConfiguration:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation DNDSGlobalConfiguration

+ (id)backingStoreWithFileURL:(id)a3
{
  v4 = a3;
  v5 = [[DNDSJSONBackingStore alloc] initWithRecordClass:a1 fileURL:v4 versionNumber:1];

  return v5;
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 bs_safeObjectForKey:@"preventAutoReply" ofType:objc_opt_class()];
  v8 = v7;
  if (v7)
  {
    v23 = [v7 unsignedIntegerValue];
  }

  else
  {
    v23 = 0;
  }

  v9 = [v5 bs_safeDictionaryForKey:@"bypassSettings"];
  v25 = v6;
  if (v9)
  {
    v10 = [DNDSBypassSettingsRecord newWithDictionaryRepresentation:v9 context:v6];
    v11 = [MEMORY[0x277D058D8] settingsForRecord:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v5 bs_safeObjectForKey:@"modesCanImpactAvailability" ofType:objc_opt_class()];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 unsignedIntegerValue];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v5 bs_safeObjectForKey:@"lastModified" ofType:objc_opt_class()];
  v16 = MEMORY[0x277CBEAA8];
  [v15 doubleValue];
  v17 = [v16 dateWithTimeIntervalSince1970:?];
  v18 = [v5 bs_safeObjectForKey:@"automaticallyGenerated" ofType:objc_opt_class()];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 BOOLValue];
  }

  else
  {
    v20 = 0;
  }

  v21 = [[a1 alloc] initWithPreventAutoReply:v23 bypassSettings:v11 modesCanImpactAvailability:v14 lastModified:v17 automaticallyGenerated:v20];

  return v21;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v4 = a3;
  v5 = [(DNDSGlobalConfiguration *)self bypassSettings];
  v6 = [v5 makeRecord];

  v7 = [v6 dictionaryRepresentationWithContext:v4];

  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDSGlobalConfiguration preventAutoReply](self, "preventAutoReply")}];
  [v8 setObject:v9 forKeyedSubscript:@"preventAutoReply"];

  [v8 setObject:v7 forKeyedSubscript:@"bypassSettings"];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DNDSGlobalConfiguration modesCanImpactAvailability](self, "modesCanImpactAvailability")}];
  [v8 setObject:v10 forKeyedSubscript:@"modesCanImpactAvailability"];

  v11 = MEMORY[0x277CCABB0];
  v12 = [(DNDSGlobalConfiguration *)self lastModified];
  [v12 timeIntervalSince1970];
  v13 = [v11 numberWithDouble:?];
  [v8 setObject:v13 forKeyedSubscript:@"lastModified"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSGlobalConfiguration isAutomaticallyGenerated](self, "isAutomaticallyGenerated")}];
  [v8 setObject:v14 forKeyedSubscript:@"automaticallyGenerated"];

  return v8;
}

- (DNDSGlobalConfiguration)initWithPreventAutoReply:(unint64_t)a3 bypassSettings:(id)a4 modesCanImpactAvailability:(unint64_t)a5 lastModified:(id)a6 automaticallyGenerated:(BOOL)a7
{
  v12 = a4;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = DNDSGlobalConfiguration;
  v14 = [(DNDSGlobalConfiguration *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_preventAutoReply = a3;
    v16 = [v12 copy];
    bypassSettings = v15->_bypassSettings;
    v15->_bypassSettings = v16;

    v15->_modesCanImpactAvailability = a5;
    v18 = [v13 copy];
    lastModified = v15->_lastModified;
    v15->_lastModified = v18;

    v15->_automaticallyGenerated = a7;
  }

  return v15;
}

- (id)_initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 preventAutoReply];
  v6 = [v4 bypassSettings];
  v7 = [v4 modesCanImpactAvailability];
  v8 = [v4 lastModified];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x277CBEAA8] date];
  }

  v10 = -[DNDSGlobalConfiguration initWithPreventAutoReply:bypassSettings:modesCanImpactAvailability:lastModified:automaticallyGenerated:](self, "initWithPreventAutoReply:bypassSettings:modesCanImpactAvailability:lastModified:automaticallyGenerated:", v5, v6, v7, v9, [v4 isAutomaticallyGenerated]);
  if (!v8)
  {
  }

  return v10;
}

- (id)mergeWithGlobalConfiguration:(id)a3
{
  v4 = a3;
  p_isa = &v4->super.isa;
  if (!v4)
  {
    goto LABEL_8;
  }

  automaticallyGenerated = v4->_automaticallyGenerated;
  if (self->_automaticallyGenerated)
  {
    v7 = v4;
    if (!v4->_automaticallyGenerated)
    {
      goto LABEL_9;
    }
  }

  else if (v4->_automaticallyGenerated)
  {
LABEL_8:
    v7 = self;
    goto LABEL_9;
  }

  lastModified = self->_lastModified;
  v9 = [MEMORY[0x277CBEAA8] distantPast];
  LOBYTE(lastModified) = [(NSDate *)lastModified isEqualToDate:v9];

  if (lastModified & 1) != 0 || ([p_isa[4] isEqualToDate:self->_lastModified])
  {
    goto LABEL_8;
  }

  v12 = [p_isa[4] laterDate:self->_lastModified];
  v13 = [v12 isEqualToDate:p_isa[4]];

  if (v13)
  {
    v7 = p_isa;
  }

  else
  {
    v7 = self;
  }

LABEL_9:
  v10 = v7;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDSGlobalConfiguration *)self preventAutoReply];
      if (v7 != [(DNDSGlobalConfiguration *)v6 preventAutoReply]|| (v8 = [(DNDSGlobalConfiguration *)self isAutomaticallyGenerated], v8 != [(DNDSGlobalConfiguration *)v6 isAutomaticallyGenerated]) || (v9 = [(DNDSGlobalConfiguration *)self modesCanImpactAvailability], v9 != [(DNDSGlobalConfiguration *)v6 modesCanImpactAvailability]))
      {
        v16 = 0;
LABEL_14:

        goto LABEL_15;
      }

      v10 = [(DNDSGlobalConfiguration *)self lastModified];
      v11 = [(DNDSGlobalConfiguration *)v6 lastModified];
      if (v10 != v11)
      {
        v12 = [(DNDSGlobalConfiguration *)self lastModified];
        if (!v12)
        {
          v16 = 0;
LABEL_30:

          goto LABEL_14;
        }

        v3 = v12;
        v13 = [(DNDSGlobalConfiguration *)v6 lastModified];
        if (!v13)
        {
          v16 = 0;
LABEL_29:

          goto LABEL_30;
        }

        v14 = [(DNDSGlobalConfiguration *)self lastModified];
        v15 = [(DNDSGlobalConfiguration *)v6 lastModified];
        if (![v14 isEqual:v15])
        {
          v16 = 0;
LABEL_28:

          goto LABEL_29;
        }

        v27 = v15;
        v28 = v14;
        v29 = v13;
      }

      v18 = [(DNDSGlobalConfiguration *)self bypassSettings];
      v19 = [(DNDSGlobalConfiguration *)v6 bypassSettings];
      v20 = v19;
      if (v18 == v19)
      {

        v16 = 1;
      }

      else
      {
        v21 = [(DNDSGlobalConfiguration *)self bypassSettings];
        if (v21)
        {
          v22 = v21;
          v23 = [(DNDSGlobalConfiguration *)v6 bypassSettings];
          if (v23)
          {
            v25 = [(DNDSGlobalConfiguration *)self bypassSettings];
            [(DNDSGlobalConfiguration *)v6 bypassSettings];
            v24 = v26 = v3;
            v16 = [v25 isEqual:v24];

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

      v14 = v28;
      v13 = v29;
      v15 = v27;
      if (v10 == v11)
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
  v7 = [(DNDSGlobalConfiguration *)self bypassSettings];
  modesCanImpactAvailability = self->_modesCanImpactAvailability;
  v9 = DNDEnabledSettingToString();
  v10 = [(DNDSGlobalConfiguration *)self lastModified];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[DNDSGlobalConfiguration isAutomaticallyGenerated](self, "isAutomaticallyGenerated")}];
  v12 = [v3 stringWithFormat:@"<%@: %p preventAutoReply: %@; bypassSettings: %@; modesCanImpactAvailability: %@; lastModified: %@; automaticallyGenerated: %@>", v4, self, v6, v7, v9, v10, v11];;

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableGlobalConfiguration alloc];

  return [(DNDSGlobalConfiguration *)v4 _initWithConfiguration:self];
}

@end