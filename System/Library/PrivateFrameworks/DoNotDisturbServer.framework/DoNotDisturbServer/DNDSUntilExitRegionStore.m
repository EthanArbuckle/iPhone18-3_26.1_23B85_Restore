@interface DNDSUntilExitRegionStore
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_initWithActiveLifetimeAssertionUUIDs:(id)a3 currentRegion:(id)a4 regionEntered:(id)a5;
- (id)_initWithStore:(id)a3;
- (id)description;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation DNDSUntilExitRegionStore

- (id)_initWithStore:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = DNDSUntilExitRegionStore;
  v5 = [(DNDSUntilExitRegionStore *)&v23 init];
  if (v5)
  {
    v6 = [v4 activeLifetimeAssertionUUIDs];
    v7 = [v6 copy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v5->_activeLifetimeAssertionUUIDs, v9);

    v10 = [v4 hasActiveLifetimes];
    v11 = [v10 copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[NSArray count](v5->_activeLifetimeAssertionUUIDs, "count") != 0}];
    }

    hasActiveLifetimes = v5->_hasActiveLifetimes;
    v5->_hasActiveLifetimes = v13;

    v15 = [v4 currentRegion];
    v16 = [v15 copy];
    currentRegion = v5->_currentRegion;
    v5->_currentRegion = v16;

    v18 = [v4 regionEntered];
    v19 = [v18 copy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = MEMORY[0x277CBEC28];
    }

    objc_storeStrong(&v5->_regionEntered, v21);
  }

  return v5;
}

- (id)_initWithActiveLifetimeAssertionUUIDs:(id)a3 currentRegion:(id)a4 regionEntered:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = DNDSUntilExitRegionStore;
  v12 = [(DNDSUntilExitRegionStore *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activeLifetimeAssertionUUIDs, a3);
    v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "count") != 0}];
    hasActiveLifetimes = v13->_hasActiveLifetimes;
    v13->_hasActiveLifetimes = v14;

    objc_storeStrong(&v13->_currentRegion, a4);
    objc_storeStrong(&v13->_regionEntered, a5);
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(DNDSUntilExitRegionStore *)self activeLifetimeAssertionUUIDs];
  v4 = [v3 hash];
  v5 = [(DNDSUntilExitRegionStore *)self currentRegion];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDSUntilExitRegionStore *)self hasActiveLifetimes];
  v8 = [v7 hash];
  v9 = [(DNDSUntilExitRegionStore *)self regionEntered];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
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
      v7 = [(DNDSUntilExitRegionStore *)self activeLifetimeAssertionUUIDs];
      v8 = [(DNDSUntilExitRegionStore *)v6 activeLifetimeAssertionUUIDs];
      if (v7 != v8)
      {
        v9 = [(DNDSUntilExitRegionStore *)self activeLifetimeAssertionUUIDs];
        if (!v9)
        {
          v13 = 0;
          goto LABEL_50;
        }

        v10 = v9;
        v11 = [(DNDSUntilExitRegionStore *)v6 activeLifetimeAssertionUUIDs];
        if (!v11)
        {
          v13 = 0;
LABEL_49:

          goto LABEL_50;
        }

        v12 = [(DNDSUntilExitRegionStore *)self activeLifetimeAssertionUUIDs];
        v3 = [(DNDSUntilExitRegionStore *)v6 activeLifetimeAssertionUUIDs];
        if (![v12 isEqual:v3])
        {
          v13 = 0;
LABEL_48:

          goto LABEL_49;
        }

        v48 = v3;
        v49 = v12;
        v50 = v11;
        v51 = v10;
      }

      v14 = [(DNDSUntilExitRegionStore *)self currentRegion];
      v15 = [(DNDSUntilExitRegionStore *)v6 currentRegion];
      if (v14 != v15)
      {
        v16 = [(DNDSUntilExitRegionStore *)self currentRegion];
        if (v16)
        {
          v17 = v16;
          v18 = [(DNDSUntilExitRegionStore *)v6 currentRegion];
          if (v18)
          {
            v19 = v18;
            v47 = v14;
            v20 = [(DNDSUntilExitRegionStore *)self currentRegion];
            v3 = [(DNDSUntilExitRegionStore *)v6 currentRegion];
            if (([v20 isEqual:v3] & 1) == 0)
            {

              goto LABEL_38;
            }

            v41 = v20;
            v42 = v19;
            v43 = v17;
            goto LABEL_17;
          }
        }

        goto LABEL_38;
      }

      v47 = v14;
LABEL_17:
      v21 = [(DNDSUntilExitRegionStore *)self hasActiveLifetimes];
      v46 = [(DNDSUntilExitRegionStore *)v6 hasActiveLifetimes];
      if (v21 == v46)
      {
        v44 = v21;
        v45 = v3;
        goto LABEL_25;
      }

      v22 = [(DNDSUntilExitRegionStore *)self hasActiveLifetimes];
      if (v22)
      {
        v23 = v22;
        v24 = [(DNDSUntilExitRegionStore *)v6 hasActiveLifetimes];
        if (v24)
        {
          v45 = v3;
          v40 = v24;
          v25 = [(DNDSUntilExitRegionStore *)self hasActiveLifetimes];
          v26 = [(DNDSUntilExitRegionStore *)v6 hasActiveLifetimes];
          if ([v25 isEqual:v26])
          {
            v37 = v26;
            v38 = v25;
            v39 = v23;
            v44 = v21;
LABEL_25:
            v27 = [(DNDSUntilExitRegionStore *)self regionEntered];
            v28 = [(DNDSUntilExitRegionStore *)v6 regionEntered];
            v29 = v28;
            if (v27 == v28)
            {

              v13 = 1;
            }

            else
            {
              v30 = [(DNDSUntilExitRegionStore *)self regionEntered];
              if (v30)
              {
                v36 = v30;
                v31 = [(DNDSUntilExitRegionStore *)v6 regionEntered];
                if (v31)
                {
                  v35 = v31;
                  v32 = [(DNDSUntilExitRegionStore *)self regionEntered];
                  v33 = [(DNDSUntilExitRegionStore *)v6 regionEntered];
                  v13 = [v32 isEqual:v33];

                  v31 = v35;
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
            }

            if (v44 != v46)
            {
            }

            if (v47 != v15)
            {
            }

LABEL_47:
            v11 = v50;
            v10 = v51;
            v12 = v49;
            v3 = v48;
            if (v7 != v8)
            {
              goto LABEL_48;
            }

LABEL_50:

            goto LABEL_51;
          }

          v24 = v40;
          v3 = v45;
        }
      }

      if (v47 != v15)
      {
      }

LABEL_38:
      v13 = 0;
      goto LABEL_47;
    }

    v13 = 0;
  }

LABEL_51:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DNDSUntilExitRegionStore *)self activeLifetimeAssertionUUIDs];
  v6 = [(DNDSUntilExitRegionStore *)self hasActiveLifetimes];
  v7 = [(DNDSUntilExitRegionStore *)self currentRegion];
  v8 = [(DNDSUntilExitRegionStore *)self regionEntered];
  v9 = [v3 stringWithFormat:@"<%@: %p activeAssertionUUIDs: %@; hasActiveLifetimes: %@; currentRegion: %@; regionEntered: %@>", v4, self, v5, v6, v7, v8];;

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableUntilExitRegionStore alloc];

  return [(DNDSUntilExitRegionStore *)v4 _initWithStore:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [v5 bs_safeObjectForKey:@"activeLifetimeAssertionUUIDs" ofType:objc_opt_class()];
  v7 = [v6 bs_mapNoNulls:&__block_literal_global_376];
  v8 = [v5 bs_safeObjectForKey:@"currentRegion" ofType:objc_opt_class()];
  if (v8)
  {
    v9 = [v8 bs_safeObjectForKey:@"regionIdentifier" ofType:objc_opt_class()];
    v10 = [v8 bs_safeObjectForKey:@"regionCenterLatitude" ofType:objc_opt_class()];
    [v10 doubleValue];
    v12 = v11;

    v13 = [v8 bs_safeObjectForKey:@"regionCenterLongitude" ofType:objc_opt_class()];
    [v13 doubleValue];
    v15 = v14;

    v16 = CLLocationCoordinate2DMake(v12, v15);
    v17 = [v8 bs_safeObjectForKey:@"regionRadius" ofType:objc_opt_class()];
    [v17 doubleValue];
    v19 = v18;

    v20 = [objc_alloc(MEMORY[0x277CBFBC8]) initWithCenter:v9 radius:v16.latitude identifier:{v16.longitude, v19}];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v5 bs_safeObjectForKey:@"regionEntered" ofType:objc_opt_class()];
  v22 = [[a1 alloc] _initWithActiveLifetimeAssertionUUIDs:v7 currentRegion:v20 regionEntered:v21];

  return v22;
}

id __68__DNDSUntilExitRegionStore_newWithDictionaryRepresentation_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v19[4] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(NSArray *)self->_activeLifetimeAssertionUUIDs bs_mapNoNulls:&__block_literal_global_393];
  currentRegion = self->_currentRegion;
  if (currentRegion)
  {
    v7 = [(CLRegion *)currentRegion identifier];
    [(CLRegion *)self->_currentRegion center];
    v9 = v8;
    v11 = v10;
    [(CLRegion *)self->_currentRegion radius];
    v19[0] = v7;
    v18[0] = @"regionIdentifier";
    v18[1] = @"regionRadius";
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v19[1] = v12;
    v18[2] = @"regionCenterLatitude";
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v19[2] = v13;
    v18[3] = @"regionCenterLongitude";
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    v19[3] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  }

  else
  {
    v15 = 0;
  }

  [v4 setObject:v5 forKeyedSubscript:@"activeLifetimeAssertionUUIDs"];
  [v4 setObject:v15 forKeyedSubscript:@"currentRegion"];
  [v4 setObject:self->_regionEntered forKeyedSubscript:@"regionEntered"];

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

@end