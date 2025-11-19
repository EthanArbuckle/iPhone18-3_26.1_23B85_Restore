@interface DNDSApplicationConfigurationRecord
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithMinimumBreakthroughUrgency:(id)a3 allowedThreads:(id)a4 deniedThreads:(id)a5;
- (id)_initWithRecord:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation DNDSApplicationConfigurationRecord

- (id)_initWithRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 minimumBreakthroughUrgency];
  v6 = [v4 allowedThreads];
  v7 = [v4 deniedThreads];

  v8 = [(DNDSApplicationConfigurationRecord *)self _initWithMinimumBreakthroughUrgency:v5 allowedThreads:v6 deniedThreads:v7];
  return v8;
}

- (id)_initWithMinimumBreakthroughUrgency:(id)a3 allowedThreads:(id)a4 deniedThreads:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = DNDSApplicationConfigurationRecord;
  v11 = [(DNDSApplicationConfigurationRecord *)&v19 init];
  if (v11)
  {
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = objc_opt_new();
    }

    allowedThreads = v11->_allowedThreads;
    v11->_allowedThreads = v12;

    if (v10)
    {
      v14 = v10;
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

    if (v8)
    {
      v17 = v8;
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
  v3 = [(DNDSApplicationConfigurationRecord *)self minimumBreakthroughUrgency];
  v4 = [v3 hash];
  v5 = [(DNDSApplicationConfigurationRecord *)self allowedThreads];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDSApplicationConfigurationRecord *)self deniedThreads];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDSApplicationConfigurationRecord *)self minimumBreakthroughUrgency];
      v8 = [(DNDSApplicationConfigurationRecord *)v6 minimumBreakthroughUrgency];
      if (v7 != v8)
      {
        v9 = [(DNDSApplicationConfigurationRecord *)self minimumBreakthroughUrgency];
        if (!v9)
        {
          v13 = 0;
          goto LABEL_37;
        }

        v10 = v9;
        v11 = [(DNDSApplicationConfigurationRecord *)v6 minimumBreakthroughUrgency];
        if (!v11)
        {
          v13 = 0;
LABEL_36:

          goto LABEL_37;
        }

        v12 = [(DNDSApplicationConfigurationRecord *)self minimumBreakthroughUrgency];
        v3 = [(DNDSApplicationConfigurationRecord *)v6 minimumBreakthroughUrgency];
        if (![v12 isEqual:v3])
        {
          v13 = 0;
LABEL_35:

          goto LABEL_36;
        }

        v36 = v3;
        v37 = v12;
        v38 = v11;
        v39 = v10;
      }

      v14 = [(DNDSApplicationConfigurationRecord *)self allowedThreads];
      v15 = [(DNDSApplicationConfigurationRecord *)v6 allowedThreads];
      if (v14 != v15)
      {
        v16 = [(DNDSApplicationConfigurationRecord *)self allowedThreads];
        if (v16)
        {
          v17 = v16;
          v18 = [(DNDSApplicationConfigurationRecord *)v6 allowedThreads];
          if (v18)
          {
            v35 = v14;
            v19 = [(DNDSApplicationConfigurationRecord *)self allowedThreads];
            v3 = [(DNDSApplicationConfigurationRecord *)v6 allowedThreads];
            if ([v19 isEqual:v3])
            {
              v31 = v19;
              v32 = v18;
              v33 = v17;
LABEL_17:
              v20 = [(DNDSApplicationConfigurationRecord *)self deniedThreads];
              v21 = [(DNDSApplicationConfigurationRecord *)v6 deniedThreads];
              v22 = v21;
              if (v20 == v21)
              {

                v13 = 1;
                v27 = v35;
              }

              else
              {
                v34 = v3;
                v23 = [(DNDSApplicationConfigurationRecord *)self deniedThreads];
                if (v23)
                {
                  v24 = v23;
                  v25 = [(DNDSApplicationConfigurationRecord *)v6 deniedThreads];
                  if (v25)
                  {
                    v30 = v25;
                    v29 = [(DNDSApplicationConfigurationRecord *)self deniedThreads];
                    v26 = [(DNDSApplicationConfigurationRecord *)v6 deniedThreads];
                    v13 = [v29 isEqual:v26];

                    v25 = v30;
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

                v3 = v34;
                v27 = v35;
              }

              if (v27 != v15)
              {
              }

LABEL_34:
              v11 = v38;
              v10 = v39;
              v3 = v36;
              v12 = v37;
              if (v7 != v8)
              {
                goto LABEL_35;
              }

LABEL_37:

              goto LABEL_38;
            }

            v14 = v35;
          }
        }

        v13 = 0;
        goto LABEL_34;
      }

      v35 = v14;
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
  v5 = [(DNDSApplicationConfigurationRecord *)self minimumBreakthroughUrgency];
  v6 = [(DNDSApplicationConfigurationRecord *)self allowedThreads];
  v7 = [(DNDSApplicationConfigurationRecord *)self deniedThreads];
  v8 = [v3 stringWithFormat:@"<%@: %p minimumBreakthroughUrgency: %@; ; allowedThreads: %@; ; deniedThreads: %@; >", v4, self, v5, v6, v7];;

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableApplicationConfigurationRecord alloc];

  return [(DNDSApplicationConfigurationRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [v5 bs_safeObjectForKey:@"minimumBreakthroughUrgency" ofType:objc_opt_class()];
  v7 = MEMORY[0x277CBEB98];
  v8 = [v5 bs_safeArrayForKey:@"allowedThreads"];
  v9 = [v7 setWithArray:v8];

  v10 = MEMORY[0x277CBEB98];
  v11 = [v5 bs_safeArrayForKey:@"deniedThreads"];

  v12 = [v10 setWithArray:v11];

  v13 = [[a1 alloc] _initWithMinimumBreakthroughUrgency:v6 allowedThreads:v9 deniedThreads:v12];
  return v13;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v4 = [a3 healingSource];
  v5 = [v4 mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
  }

  v8 = v7;

  v9 = [(DNDSApplicationConfigurationRecord *)self minimumBreakthroughUrgency];
  [v8 bs_setSafeObject:v9 forKey:@"minimumBreakthroughUrgency"];

  v10 = [(DNDSApplicationConfigurationRecord *)self allowedThreads];
  v11 = [v10 allObjects];
  [v8 bs_setSafeObject:v11 forKey:@"allowedThreads"];

  v12 = [(DNDSApplicationConfigurationRecord *)self deniedThreads];
  v13 = [v12 allObjects];
  [v8 bs_setSafeObject:v13 forKey:@"deniedThreads"];

  return v8;
}

@end