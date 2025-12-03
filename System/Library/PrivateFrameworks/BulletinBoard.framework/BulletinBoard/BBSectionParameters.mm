@interface BBSectionParameters
- (BBSectionParameters)init;
- (BBSectionParameters)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)allSubtypes;
- (id)parametersForSubtype:(int64_t)subtype;
- (id)replacementObjectForCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBSectionParameters

- (BBSectionParameters)init
{
  v9.receiver = self;
  v9.super_class = BBSectionParameters;
  v2 = [(BBSectionParameters *)&v9 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(BBSectionParameters *)v2 setUUID:uUID];

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

- (id)parametersForSubtype:(int64_t)subtype
{
  v5 = self->_allSubtypeParameters;
  objc_sync_enter(v5);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:subtype];
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
  allKeys = [(NSMutableDictionary *)self->_allSubtypeParameters allKeys];
  objc_sync_exit(v3);

  return allKeys;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      uUID = [(BBSectionParameters *)self UUID];
      uUID2 = [(BBSectionParameters *)v5 UUID];

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
  uUID = [(BBSectionParameters *)self UUID];
  v3 = [uUID hash];

  return v3;
}

- (BBSectionParameters)initWithCoder:(id)coder
{
  v30[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = BBSectionParameters;
  v5 = [(BBSectionParameters *)&v28 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    [(BBSectionParameters *)v5 setUUID:v6];

    v7 = v5;
    bb_objectCache = [v7 bb_objectCache];
    v5 = [bb_objectCache cacheObject:v7];

    if (v5 == v7)
    {
      -[BBSectionParameters setShowsSubtitle:](v5, "setShowsSubtitle:", [coderCopy decodeBoolForKey:@"showsSubtitle"]);
      -[BBSectionParameters setMessageNumberOfLines:](v5, "setMessageNumberOfLines:", [coderCopy decodeIntegerForKey:@"messageNumberOfLines"]);
      -[BBSectionParameters setUsesVariableLayout:](v5, "setUsesVariableLayout:", [coderCopy decodeBoolForKey:@"usesVariableLayout"]);
      -[BBSectionParameters setOrderSectionUsingRecencyDate:](v5, "setOrderSectionUsingRecencyDate:", [coderCopy decodeBoolForKey:@"orderSectionUsingRecencyDate"]);
      -[BBSectionParameters setShowsDateInFloatingLockScreenAlert:](v5, "setShowsDateInFloatingLockScreenAlert:", [coderCopy decodeBoolForKey:@"showsDateInFloatingLockScreenAlert"]);
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultSubtypeParameters"];
      [(BBSectionParameters *)v5 setDefaultSubtypeParameters:v9];

      v10 = MEMORY[0x277CBEB98];
      v30[0] = objc_opt_class();
      v30[1] = objc_opt_class();
      v30[2] = objc_opt_class();
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
      v12 = [v10 setWithArray:v11];
      v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"allSubtypeParameters"];
      [(BBSectionParameters *)v5 setAllSubtypeParameters:v13];

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
      [(BBSectionParameters *)v5 setDisplayName:v14];

      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = self->_allSubtypeParameters;
  objc_sync_enter(v4);
  uUID = [(BBSectionParameters *)self UUID];
  [coderCopy encodeObject:uUID forKey:@"UUID"];

  defaultSubtypeParameters = [(BBSectionParameters *)self defaultSubtypeParameters];
  [coderCopy encodeObject:defaultSubtypeParameters forKey:@"defaultSubtypeParameters"];

  allSubtypeParameters = [(BBSectionParameters *)self allSubtypeParameters];
  [coderCopy encodeObject:allSubtypeParameters forKey:@"allSubtypeParameters"];

  displayName = [(BBSectionParameters *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  icon = [(BBSectionParameters *)self icon];
  [coderCopy encodeObject:icon forKey:@"icon"];

  [coderCopy encodeBool:-[BBSectionParameters showsSubtitle](self forKey:{"showsSubtitle"), @"showsSubtitle"}];
  [coderCopy encodeInteger:-[BBSectionParameters messageNumberOfLines](self forKey:{"messageNumberOfLines"), @"messageNumberOfLines"}];
  [coderCopy encodeBool:-[BBSectionParameters usesVariableLayout](self forKey:{"usesVariableLayout"), @"usesVariableLayout"}];
  [coderCopy encodeBool:-[BBSectionParameters orderSectionUsingRecencyDate](self forKey:{"orderSectionUsingRecencyDate"), @"orderSectionUsingRecencyDate"}];
  [coderCopy encodeBool:-[BBSectionParameters showsDateInFloatingLockScreenAlert](self forKey:{"showsDateInFloatingLockScreenAlert"), @"showsDateInFloatingLockScreenAlert"}];
  objc_sync_exit(v4);
}

- (id)replacementObjectForCoder:(id)coder
{
  bb_objectCache = [self bb_objectCache];
  v5 = [bb_objectCache cacheObject:self];

  return v5;
}

@end