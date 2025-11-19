@interface BBSectionParameters
- (BBSectionParameters)init;
- (BBSectionParameters)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)allSubtypes;
- (id)parametersForSubtype:(int64_t)a3;
- (id)replacementObjectForCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBSectionParameters

- (BBSectionParameters)init
{
  v9.receiver = self;
  v9.super_class = BBSectionParameters;
  v2 = [(BBSectionParameters *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    [(BBSectionParameters *)v2 setUUID:v3];

    v4 = [[BBSectionSubtypeParameters alloc] initWithFallbackParameters:0];
    defaultSubtypeParameters = v2->_defaultSubtypeParameters;
    v2->_defaultSubtypeParameters = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    allSubtypeParameters = v2->_allSubtypeParameters;
    v2->_allSubtypeParameters = v6;

    [(BBSectionParameters *)v2 setMessageNumberOfLines:1];
    [(BBSectionSubtypeParameters *)v2->_defaultSubtypeParameters setCanBeSilencedByMenuButtonPress:1];
    [(BBSectionSubtypeParameters *)v2->_defaultSubtypeParameters setAllowsAutomaticRemovalFromLockScreen:1];
    [(BBSectionSubtypeParameters *)v2->_defaultSubtypeParameters setShouldDismissBulletinWhenClosed:1];
  }

  return v2;
}

- (id)parametersForSubtype:(int64_t)a3
{
  v5 = self->_allSubtypeParameters;
  objc_sync_enter(v5);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)self->_allSubtypeParameters objectForKey:v6];
  if (!v7)
  {
    v7 = [[BBSectionSubtypeParameters alloc] initWithFallbackParameters:self->_defaultSubtypeParameters];
    [(NSMutableDictionary *)self->_allSubtypeParameters setObject:v7 forKey:v6];
  }

  objc_sync_exit(v5);

  return v7;
}

- (id)allSubtypes
{
  v3 = self->_allSubtypeParameters;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_allSubtypeParameters allKeys];
  objc_sync_exit(v3);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v6 = [(BBSectionParameters *)self UUID];
      v7 = [(BBSectionParameters *)v5 UUID];

      v8 = BSEqualObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(BBSectionParameters *)self UUID];
  v3 = [v2 hash];

  return v3;
}

- (BBSectionParameters)initWithCoder:(id)a3
{
  v30[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = BBSectionParameters;
  v5 = [(BBSectionParameters *)&v28 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    [(BBSectionParameters *)v5 setUUID:v6];

    v7 = v5;
    v8 = [v7 bb_objectCache];
    v5 = [v8 cacheObject:v7];

    if (v5 == v7)
    {
      -[BBSectionParameters setShowsSubtitle:](v5, "setShowsSubtitle:", [v4 decodeBoolForKey:@"showsSubtitle"]);
      -[BBSectionParameters setMessageNumberOfLines:](v5, "setMessageNumberOfLines:", [v4 decodeIntegerForKey:@"messageNumberOfLines"]);
      -[BBSectionParameters setUsesVariableLayout:](v5, "setUsesVariableLayout:", [v4 decodeBoolForKey:@"usesVariableLayout"]);
      -[BBSectionParameters setOrderSectionUsingRecencyDate:](v5, "setOrderSectionUsingRecencyDate:", [v4 decodeBoolForKey:@"orderSectionUsingRecencyDate"]);
      -[BBSectionParameters setShowsDateInFloatingLockScreenAlert:](v5, "setShowsDateInFloatingLockScreenAlert:", [v4 decodeBoolForKey:@"showsDateInFloatingLockScreenAlert"]);
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultSubtypeParameters"];
      [(BBSectionParameters *)v5 setDefaultSubtypeParameters:v9];

      v10 = MEMORY[0x277CBEB98];
      v30[0] = objc_opt_class();
      v30[1] = objc_opt_class();
      v30[2] = objc_opt_class();
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
      v12 = [v10 setWithArray:v11];
      v13 = [v4 decodeObjectOfClasses:v12 forKey:@"allSubtypeParameters"];
      [(BBSectionParameters *)v5 setAllSubtypeParameters:v13];

      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
      [(BBSectionParameters *)v5 setDisplayName:v14];

      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
      [(BBSectionParameters *)v5 setIcon:v15];

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v16 = v5->_allSubtypeParameters;
      v17 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v25;
        do
        {
          v20 = 0;
          do
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [(NSMutableDictionary *)v5->_allSubtypeParameters objectForKeyedSubscript:*(*(&v24 + 1) + 8 * v20), v24];
            [v21 setFallbackParameters:v5->_defaultSubtypeParameters];

            ++v20;
          }

          while (v18 != v20);
          v18 = [(NSMutableDictionary *)v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v18);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = self->_allSubtypeParameters;
  objc_sync_enter(v4);
  v5 = [(BBSectionParameters *)self UUID];
  [v10 encodeObject:v5 forKey:@"UUID"];

  v6 = [(BBSectionParameters *)self defaultSubtypeParameters];
  [v10 encodeObject:v6 forKey:@"defaultSubtypeParameters"];

  v7 = [(BBSectionParameters *)self allSubtypeParameters];
  [v10 encodeObject:v7 forKey:@"allSubtypeParameters"];

  v8 = [(BBSectionParameters *)self displayName];
  [v10 encodeObject:v8 forKey:@"displayName"];

  v9 = [(BBSectionParameters *)self icon];
  [v10 encodeObject:v9 forKey:@"icon"];

  [v10 encodeBool:-[BBSectionParameters showsSubtitle](self forKey:{"showsSubtitle"), @"showsSubtitle"}];
  [v10 encodeInteger:-[BBSectionParameters messageNumberOfLines](self forKey:{"messageNumberOfLines"), @"messageNumberOfLines"}];
  [v10 encodeBool:-[BBSectionParameters usesVariableLayout](self forKey:{"usesVariableLayout"), @"usesVariableLayout"}];
  [v10 encodeBool:-[BBSectionParameters orderSectionUsingRecencyDate](self forKey:{"orderSectionUsingRecencyDate"), @"orderSectionUsingRecencyDate"}];
  [v10 encodeBool:-[BBSectionParameters showsDateInFloatingLockScreenAlert](self forKey:{"showsDateInFloatingLockScreenAlert"), @"showsDateInFloatingLockScreenAlert"}];
  objc_sync_exit(v4);
}

- (id)replacementObjectForCoder:(id)a3
{
  v4 = [self bb_objectCache];
  v5 = [v4 cacheObject:self];

  return v5;
}

@end