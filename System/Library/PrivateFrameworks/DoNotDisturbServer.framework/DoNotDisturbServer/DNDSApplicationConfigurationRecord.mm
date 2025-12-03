@interface DNDSApplicationConfigurationRecord
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithMinimumBreakthroughUrgency:(id)urgency allowedThreads:(id)threads deniedThreads:(id)deniedThreads;
- (id)_initWithRecord:(id)record;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation DNDSApplicationConfigurationRecord

- (id)_initWithRecord:(id)record
{
  recordCopy = record;
  minimumBreakthroughUrgency = [recordCopy minimumBreakthroughUrgency];
  allowedThreads = [recordCopy allowedThreads];
  deniedThreads = [recordCopy deniedThreads];

  v8 = [(DNDSApplicationConfigurationRecord *)self _initWithMinimumBreakthroughUrgency:minimumBreakthroughUrgency allowedThreads:allowedThreads deniedThreads:deniedThreads];
  return v8;
}

- (id)_initWithMinimumBreakthroughUrgency:(id)urgency allowedThreads:(id)threads deniedThreads:(id)deniedThreads
{
  urgencyCopy = urgency;
  threadsCopy = threads;
  deniedThreadsCopy = deniedThreads;
  v19.receiver = self;
  v19.super_class = DNDSApplicationConfigurationRecord;
  v11 = [(DNDSApplicationConfigurationRecord *)&v19 init];
  if (v11)
  {
    if (threadsCopy)
    {
      v12 = threadsCopy;
    }

    else
    {
      v12 = objc_opt_new();
    }

    allowedThreads = v11->_allowedThreads;
    v11->_allowedThreads = v12;

    if (deniedThreadsCopy)
    {
      v14 = deniedThreadsCopy;
    }

    else
    {
      v14 = objc_opt_new();
    }

    deniedThreads = v11->_deniedThreads;
    v11->_deniedThreads = v14;

    v16 = &unk_285C534D8;
    if (![(NSSet *)v11->_allowedThreads count]&& ![(NSSet *)v11->_deniedThreads count])
    {
      v16 = &unk_285C534F0;
    }

    if (urgencyCopy)
    {
      v17 = urgencyCopy;
    }

    else
    {
      v17 = v16;
    }

    objc_storeStrong(&v11->_minimumBreakthroughUrgency, v17);
  }

  return v11;
}

- (unint64_t)hash
{
  minimumBreakthroughUrgency = [(DNDSApplicationConfigurationRecord *)self minimumBreakthroughUrgency];
  v4 = [minimumBreakthroughUrgency hash];
  allowedThreads = [(DNDSApplicationConfigurationRecord *)self allowedThreads];
  v6 = [allowedThreads hash] ^ v4;
  deniedThreads = [(DNDSApplicationConfigurationRecord *)self deniedThreads];
  v8 = [deniedThreads hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      minimumBreakthroughUrgency = [(DNDSApplicationConfigurationRecord *)self minimumBreakthroughUrgency];
      minimumBreakthroughUrgency2 = [(DNDSApplicationConfigurationRecord *)v6 minimumBreakthroughUrgency];
      if (minimumBreakthroughUrgency != minimumBreakthroughUrgency2)
      {
        minimumBreakthroughUrgency3 = [(DNDSApplicationConfigurationRecord *)self minimumBreakthroughUrgency];
        if (!minimumBreakthroughUrgency3)
        {
          v13 = 0;
          goto LABEL_37;
        }

        v10 = minimumBreakthroughUrgency3;
        minimumBreakthroughUrgency4 = [(DNDSApplicationConfigurationRecord *)v6 minimumBreakthroughUrgency];
        if (!minimumBreakthroughUrgency4)
        {
          v13 = 0;
LABEL_36:

          goto LABEL_37;
        }

        minimumBreakthroughUrgency5 = [(DNDSApplicationConfigurationRecord *)self minimumBreakthroughUrgency];
        minimumBreakthroughUrgency6 = [(DNDSApplicationConfigurationRecord *)v6 minimumBreakthroughUrgency];
        if (![minimumBreakthroughUrgency5 isEqual:minimumBreakthroughUrgency6])
        {
          v13 = 0;
LABEL_35:

          goto LABEL_36;
        }

        v36 = minimumBreakthroughUrgency6;
        v37 = minimumBreakthroughUrgency5;
        v38 = minimumBreakthroughUrgency4;
        v39 = v10;
      }

      allowedThreads = [(DNDSApplicationConfigurationRecord *)self allowedThreads];
      allowedThreads2 = [(DNDSApplicationConfigurationRecord *)v6 allowedThreads];
      if (allowedThreads != allowedThreads2)
      {
        allowedThreads3 = [(DNDSApplicationConfigurationRecord *)self allowedThreads];
        if (allowedThreads3)
        {
          v17 = allowedThreads3;
          allowedThreads4 = [(DNDSApplicationConfigurationRecord *)v6 allowedThreads];
          if (allowedThreads4)
          {
            v35 = allowedThreads;
            allowedThreads5 = [(DNDSApplicationConfigurationRecord *)self allowedThreads];
            minimumBreakthroughUrgency6 = [(DNDSApplicationConfigurationRecord *)v6 allowedThreads];
            if ([allowedThreads5 isEqual:minimumBreakthroughUrgency6])
            {
              v31 = allowedThreads5;
              v32 = allowedThreads4;
              v33 = v17;
LABEL_17:
              deniedThreads = [(DNDSApplicationConfigurationRecord *)self deniedThreads];
              deniedThreads2 = [(DNDSApplicationConfigurationRecord *)v6 deniedThreads];
              v22 = deniedThreads2;
              if (deniedThreads == deniedThreads2)
              {

                v13 = 1;
                v27 = v35;
              }

              else
              {
                v34 = minimumBreakthroughUrgency6;
                deniedThreads3 = [(DNDSApplicationConfigurationRecord *)self deniedThreads];
                if (deniedThreads3)
                {
                  v24 = deniedThreads3;
                  deniedThreads4 = [(DNDSApplicationConfigurationRecord *)v6 deniedThreads];
                  if (deniedThreads4)
                  {
                    v30 = deniedThreads4;
                    deniedThreads5 = [(DNDSApplicationConfigurationRecord *)self deniedThreads];
                    deniedThreads6 = [(DNDSApplicationConfigurationRecord *)v6 deniedThreads];
                    v13 = [deniedThreads5 isEqual:deniedThreads6];

                    deniedThreads4 = v30;
                  }

                  else
                  {
                    v13 = 0;
                  }
                }

                else
                {

                  v13 = 0;
                }

                minimumBreakthroughUrgency6 = v34;
                v27 = v35;
              }

              if (v27 != allowedThreads2)
              {
              }

LABEL_34:
              minimumBreakthroughUrgency4 = v38;
              v10 = v39;
              minimumBreakthroughUrgency6 = v36;
              minimumBreakthroughUrgency5 = v37;
              if (minimumBreakthroughUrgency != minimumBreakthroughUrgency2)
              {
                goto LABEL_35;
              }

LABEL_37:

              goto LABEL_38;
            }

            allowedThreads = v35;
          }
        }

        v13 = 0;
        goto LABEL_34;
      }

      v35 = allowedThreads;
      goto LABEL_17;
    }

    v13 = 0;
  }

LABEL_38:

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  minimumBreakthroughUrgency = [(DNDSApplicationConfigurationRecord *)self minimumBreakthroughUrgency];
  allowedThreads = [(DNDSApplicationConfigurationRecord *)self allowedThreads];
  deniedThreads = [(DNDSApplicationConfigurationRecord *)self deniedThreads];
  v8 = [v3 stringWithFormat:@"<%@: %p minimumBreakthroughUrgency: %@; ; allowedThreads: %@; ; deniedThreads: %@; >", v4, self, minimumBreakthroughUrgency, allowedThreads, deniedThreads];;

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableApplicationConfigurationRecord alloc];

  return [(DNDSApplicationConfigurationRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  v6 = [representationCopy bs_safeObjectForKey:@"minimumBreakthroughUrgency" ofType:objc_opt_class()];
  v7 = MEMORY[0x277CBEB98];
  v8 = [representationCopy bs_safeArrayForKey:@"allowedThreads"];
  v9 = [v7 setWithArray:v8];

  v10 = MEMORY[0x277CBEB98];
  v11 = [representationCopy bs_safeArrayForKey:@"deniedThreads"];

  v12 = [v10 setWithArray:v11];

  v13 = [[self alloc] _initWithMinimumBreakthroughUrgency:v6 allowedThreads:v9 deniedThreads:v12];
  return v13;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  healingSource = [context healingSource];
  v5 = [healingSource mutableCopy];
  v6 = v5;
  if (v5)
  {
    dictionary = v5;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = dictionary;

  minimumBreakthroughUrgency = [(DNDSApplicationConfigurationRecord *)self minimumBreakthroughUrgency];
  [v8 bs_setSafeObject:minimumBreakthroughUrgency forKey:@"minimumBreakthroughUrgency"];

  allowedThreads = [(DNDSApplicationConfigurationRecord *)self allowedThreads];
  allObjects = [allowedThreads allObjects];
  [v8 bs_setSafeObject:allObjects forKey:@"allowedThreads"];

  deniedThreads = [(DNDSApplicationConfigurationRecord *)self deniedThreads];
  allObjects2 = [deniedThreads allObjects];
  [v8 bs_setSafeObject:allObjects2 forKey:@"deniedThreads"];

  return v8;
}

@end