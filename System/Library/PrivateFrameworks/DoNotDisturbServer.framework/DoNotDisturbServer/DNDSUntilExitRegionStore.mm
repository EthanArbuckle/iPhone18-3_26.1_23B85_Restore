@interface DNDSUntilExitRegionStore
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (id)_initWithActiveLifetimeAssertionUUIDs:(id)ds currentRegion:(id)region regionEntered:(id)entered;
- (id)_initWithStore:(id)store;
- (id)description;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation DNDSUntilExitRegionStore

- (id)_initWithStore:(id)store
{
  storeCopy = store;
  v23.receiver = self;
  v23.super_class = DNDSUntilExitRegionStore;
  v5 = [(DNDSUntilExitRegionStore *)&v23 init];
  if (v5)
  {
    activeLifetimeAssertionUUIDs = [storeCopy activeLifetimeAssertionUUIDs];
    v7 = [activeLifetimeAssertionUUIDs copy];
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

    hasActiveLifetimes = [storeCopy hasActiveLifetimes];
    v11 = [hasActiveLifetimes copy];
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

    currentRegion = [storeCopy currentRegion];
    v16 = [currentRegion copy];
    currentRegion = v5->_currentRegion;
    v5->_currentRegion = v16;

    regionEntered = [storeCopy regionEntered];
    v19 = [regionEntered copy];
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

- (id)_initWithActiveLifetimeAssertionUUIDs:(id)ds currentRegion:(id)region regionEntered:(id)entered
{
  dsCopy = ds;
  regionCopy = region;
  enteredCopy = entered;
  v17.receiver = self;
  v17.super_class = DNDSUntilExitRegionStore;
  v12 = [(DNDSUntilExitRegionStore *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activeLifetimeAssertionUUIDs, ds);
    v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(dsCopy, "count") != 0}];
    hasActiveLifetimes = v13->_hasActiveLifetimes;
    v13->_hasActiveLifetimes = v14;

    objc_storeStrong(&v13->_currentRegion, region);
    objc_storeStrong(&v13->_regionEntered, entered);
  }

  return v13;
}

- (unint64_t)hash
{
  activeLifetimeAssertionUUIDs = [(DNDSUntilExitRegionStore *)self activeLifetimeAssertionUUIDs];
  v4 = [activeLifetimeAssertionUUIDs hash];
  currentRegion = [(DNDSUntilExitRegionStore *)self currentRegion];
  v6 = [currentRegion hash] ^ v4;
  hasActiveLifetimes = [(DNDSUntilExitRegionStore *)self hasActiveLifetimes];
  v8 = [hasActiveLifetimes hash];
  regionEntered = [(DNDSUntilExitRegionStore *)self regionEntered];
  v10 = v8 ^ [regionEntered hash];

  return v6 ^ v10;
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
      activeLifetimeAssertionUUIDs = [(DNDSUntilExitRegionStore *)self activeLifetimeAssertionUUIDs];
      activeLifetimeAssertionUUIDs2 = [(DNDSUntilExitRegionStore *)v6 activeLifetimeAssertionUUIDs];
      if (activeLifetimeAssertionUUIDs != activeLifetimeAssertionUUIDs2)
      {
        activeLifetimeAssertionUUIDs3 = [(DNDSUntilExitRegionStore *)self activeLifetimeAssertionUUIDs];
        if (!activeLifetimeAssertionUUIDs3)
        {
          v13 = 0;
          goto LABEL_50;
        }

        v10 = activeLifetimeAssertionUUIDs3;
        activeLifetimeAssertionUUIDs4 = [(DNDSUntilExitRegionStore *)v6 activeLifetimeAssertionUUIDs];
        if (!activeLifetimeAssertionUUIDs4)
        {
          v13 = 0;
LABEL_49:

          goto LABEL_50;
        }

        activeLifetimeAssertionUUIDs5 = [(DNDSUntilExitRegionStore *)self activeLifetimeAssertionUUIDs];
        activeLifetimeAssertionUUIDs6 = [(DNDSUntilExitRegionStore *)v6 activeLifetimeAssertionUUIDs];
        if (![activeLifetimeAssertionUUIDs5 isEqual:activeLifetimeAssertionUUIDs6])
        {
          v13 = 0;
LABEL_48:

          goto LABEL_49;
        }

        v48 = activeLifetimeAssertionUUIDs6;
        v49 = activeLifetimeAssertionUUIDs5;
        v50 = activeLifetimeAssertionUUIDs4;
        v51 = v10;
      }

      currentRegion = [(DNDSUntilExitRegionStore *)self currentRegion];
      currentRegion2 = [(DNDSUntilExitRegionStore *)v6 currentRegion];
      if (currentRegion != currentRegion2)
      {
        currentRegion3 = [(DNDSUntilExitRegionStore *)self currentRegion];
        if (currentRegion3)
        {
          v17 = currentRegion3;
          currentRegion4 = [(DNDSUntilExitRegionStore *)v6 currentRegion];
          if (currentRegion4)
          {
            v19 = currentRegion4;
            v47 = currentRegion;
            currentRegion5 = [(DNDSUntilExitRegionStore *)self currentRegion];
            activeLifetimeAssertionUUIDs6 = [(DNDSUntilExitRegionStore *)v6 currentRegion];
            if (([currentRegion5 isEqual:activeLifetimeAssertionUUIDs6] & 1) == 0)
            {

              goto LABEL_38;
            }

            v41 = currentRegion5;
            v42 = v19;
            v43 = v17;
            goto LABEL_17;
          }
        }

        goto LABEL_38;
      }

      v47 = currentRegion;
LABEL_17:
      hasActiveLifetimes = [(DNDSUntilExitRegionStore *)self hasActiveLifetimes];
      hasActiveLifetimes2 = [(DNDSUntilExitRegionStore *)v6 hasActiveLifetimes];
      if (hasActiveLifetimes == hasActiveLifetimes2)
      {
        v44 = hasActiveLifetimes;
        v45 = activeLifetimeAssertionUUIDs6;
        goto LABEL_25;
      }

      hasActiveLifetimes3 = [(DNDSUntilExitRegionStore *)self hasActiveLifetimes];
      if (hasActiveLifetimes3)
      {
        v23 = hasActiveLifetimes3;
        hasActiveLifetimes4 = [(DNDSUntilExitRegionStore *)v6 hasActiveLifetimes];
        if (hasActiveLifetimes4)
        {
          v45 = activeLifetimeAssertionUUIDs6;
          v40 = hasActiveLifetimes4;
          hasActiveLifetimes5 = [(DNDSUntilExitRegionStore *)self hasActiveLifetimes];
          hasActiveLifetimes6 = [(DNDSUntilExitRegionStore *)v6 hasActiveLifetimes];
          if ([hasActiveLifetimes5 isEqual:hasActiveLifetimes6])
          {
            v37 = hasActiveLifetimes6;
            v38 = hasActiveLifetimes5;
            v39 = v23;
            v44 = hasActiveLifetimes;
LABEL_25:
            regionEntered = [(DNDSUntilExitRegionStore *)self regionEntered];
            regionEntered2 = [(DNDSUntilExitRegionStore *)v6 regionEntered];
            v29 = regionEntered2;
            if (regionEntered == regionEntered2)
            {

              v13 = 1;
            }

            else
            {
              regionEntered3 = [(DNDSUntilExitRegionStore *)self regionEntered];
              if (regionEntered3)
              {
                v36 = regionEntered3;
                regionEntered4 = [(DNDSUntilExitRegionStore *)v6 regionEntered];
                if (regionEntered4)
                {
                  v35 = regionEntered4;
                  regionEntered5 = [(DNDSUntilExitRegionStore *)self regionEntered];
                  regionEntered6 = [(DNDSUntilExitRegionStore *)v6 regionEntered];
                  v13 = [regionEntered5 isEqual:regionEntered6];

                  regionEntered4 = v35;
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

            if (v44 != hasActiveLifetimes2)
            {
            }

            if (v47 != currentRegion2)
            {
            }

LABEL_47:
            activeLifetimeAssertionUUIDs4 = v50;
            v10 = v51;
            activeLifetimeAssertionUUIDs5 = v49;
            activeLifetimeAssertionUUIDs6 = v48;
            if (activeLifetimeAssertionUUIDs != activeLifetimeAssertionUUIDs2)
            {
              goto LABEL_48;
            }

LABEL_50:

            goto LABEL_51;
          }

          hasActiveLifetimes4 = v40;
          activeLifetimeAssertionUUIDs6 = v45;
        }
      }

      if (v47 != currentRegion2)
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
  activeLifetimeAssertionUUIDs = [(DNDSUntilExitRegionStore *)self activeLifetimeAssertionUUIDs];
  hasActiveLifetimes = [(DNDSUntilExitRegionStore *)self hasActiveLifetimes];
  currentRegion = [(DNDSUntilExitRegionStore *)self currentRegion];
  regionEntered = [(DNDSUntilExitRegionStore *)self regionEntered];
  v9 = [v3 stringWithFormat:@"<%@: %p activeAssertionUUIDs: %@; hasActiveLifetimes: %@; currentRegion: %@; regionEntered: %@>", v4, self, activeLifetimeAssertionUUIDs, hasActiveLifetimes, currentRegion, regionEntered];;

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableUntilExitRegionStore alloc];

  return [(DNDSUntilExitRegionStore *)v4 _initWithStore:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  v6 = [representationCopy bs_safeObjectForKey:@"activeLifetimeAssertionUUIDs" ofType:objc_opt_class()];
  v7 = [v6 bs_mapNoNulls:&__block_literal_global_376];
  v8 = [representationCopy bs_safeObjectForKey:@"currentRegion" ofType:objc_opt_class()];
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

  v21 = [representationCopy bs_safeObjectForKey:@"regionEntered" ofType:objc_opt_class()];
  v22 = [[self alloc] _initWithActiveLifetimeAssertionUUIDs:v7 currentRegion:v20 regionEntered:v21];

  return v22;
}

id __68__DNDSUntilExitRegionStore_newWithDictionaryRepresentation_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  v19[4] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(NSArray *)self->_activeLifetimeAssertionUUIDs bs_mapNoNulls:&__block_literal_global_393];
  currentRegion = self->_currentRegion;
  if (currentRegion)
  {
    identifier = [(CLRegion *)currentRegion identifier];
    [(CLRegion *)self->_currentRegion center];
    v9 = v8;
    v11 = v10;
    [(CLRegion *)self->_currentRegion radius];
    v19[0] = identifier;
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

  [dictionary setObject:v5 forKeyedSubscript:@"activeLifetimeAssertionUUIDs"];
  [dictionary setObject:v15 forKeyedSubscript:@"currentRegion"];
  [dictionary setObject:self->_regionEntered forKeyedSubscript:@"regionEntered"];

  v16 = *MEMORY[0x277D85DE8];

  return dictionary;
}

@end