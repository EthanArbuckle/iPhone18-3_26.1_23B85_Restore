@interface CLSInvestigation
+ (id)investigationWithProfiles:(id)profiles clueDates:(id)dates clueLocations:(id)locations cluePeoples:(id)peoples helper:(id)helper;
+ (id)investigationWithProfiles:(id)profiles helper:(id)helper;
- (CLSInvestigation)initWithClueCollection:(id)collection profiles:(id)profiles helper:(id)helper;
- (CLSInvestigation)initWithFeeder:(id)feeder profiles:(id)profiles helper:(id)helper;
- (CLSInvestigation)initWithHelper:(id)helper;
- (CLSInvestigation)initWithProfiles:(id)profiles helper:(id)helper;
- (CLSInvestigationDelegate)delegate;
- (CLSInvestigationInterviewDelegate)interviewDelegate;
- (id)_traceStringForType:(unint64_t)type;
- (id)description:(BOOL)description;
- (id)sampleOfItems;
- (id)tracesDescription;
- (unint64_t)numberOfItems;
- (void)_didEndInvestigation:(BOOL)investigation;
- (void)_willBeginInvestigation:(id)investigation;
- (void)setDelegate:(id)delegate;
- (void)setInterviewDelegate:(id)delegate;
@end

@implementation CLSInvestigation

- (CLSInvestigationInterviewDelegate)interviewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interviewDelegate);

  return WeakRetained;
}

- (CLSInvestigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)tracesDescription
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_isa = &selfCopy->super.isa;
  if ([(NSMutableDictionary *)selfCopy->_tracesLogsByURIs count])
  {
    [v3 appendFormat:@"<Traces>"];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = selfCopy->_tracesLogsURIs;
    v20 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v20)
    {
      v19 = *v28;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v27 + 1) + 8 * i);
          [v3 appendFormat:@"\n\t<%@>", v5];
          [v3 appendFormat:@"\n"];
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v6 = [p_isa[11] objectForKey:v5];
          v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v7)
          {
            v8 = *v24;
            do
            {
              for (j = 0; j != v7; ++j)
              {
                if (*v24 != v8)
                {
                  objc_enumerationMutation(v6);
                }

                v10 = *(*(&v23 + 1) + 8 * j);
                v11 = MEMORY[0x277CCACA8];
                v12 = [v10 objectForKey:@"type"];
                v13 = [p_isa _traceStringForType:{objc_msgSend(v12, "unsignedIntegerValue")}];
                v14 = [v10 objectForKey:@"description"];
                v15 = [v11 stringWithFormat:@"<%@> %@", v13, v14];
                v16 = [v15 cls_indentBy:2];
                [v3 appendString:v16];

                [v3 appendFormat:@"\n"];
              }

              v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v7);
          }
        }

        v20 = [(NSMutableArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v20);
    }
  }

  objc_sync_exit(p_isa);

  return v3;
}

- (id)_traceStringForType:(unint64_t)type
{
  if (type - 1 > 4)
  {
    return 0;
  }

  else
  {
    return off_2788A7D38[type - 1];
  }
}

- (id)sampleOfItems
{
  if ((*&self->_investigationFlags & 8) != 0 && (WeakRetained = objc_loadWeakRetained(&self->_interviewDelegate)) != 0)
  {
    v4 = WeakRetained;
    indexSet = [WeakRetained sampleOfItemsInInvestigation:self];
  }

  else
  {
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    numberOfItems = [(CLSInvestigation *)self numberOfItems];
    if (numberOfItems)
    {
      v7 = numberOfItems;
      precision = self->_precision;
      v9 = 0.2;
      v10 = 0.5;
      v11 = 25;
      if (precision == 1)
      {
        v10 = 1.0;
        v11 = 1000;
      }

      if (precision == 3)
      {
        v12 = 10;
      }

      else
      {
        v9 = v10;
        v12 = v11;
      }

      v13 = vcvtmd_u64_f64(1.0 / v9);
      if (numberOfItems / v13 > v12)
      {
        v13 = numberOfItems / v12;
      }

      for (i = 0; i < v7; i += v13)
      {
        [indexSet addIndex:i];
      }
    }
  }

  return indexSet;
}

- (unint64_t)numberOfItems
{
  if ((*&self->_investigationFlags & 4) == 0)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_interviewDelegate);
  if (!WeakRetained)
  {
    return 0;
  }

  v4 = WeakRetained;
  v5 = [WeakRetained numberOfItemsInInvestigation:self];

  return v5;
}

- (void)_didEndInvestigation:(BOOL)investigation
{
  obj = self;
  objc_sync_enter(obj);
  v3 = obj;
  if ((*&obj->_investigationFlags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&obj->_delegate);
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained investigationDidEnd:obj];
    }

    v3 = obj;
  }

  objc_sync_exit(v3);
}

- (void)_willBeginInvestigation:(id)investigation
{
  obj = investigation;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeWeak(&selfCopy->_inspector, obj);
  if (*&selfCopy->_investigationFlags)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained investigationWillBegin:selfCopy];
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)description:(BOOL)description
{
  descriptionCopy = description;
  v23 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAB68] stringWithFormat:@"\n<Investigation> [%@]", self->_uuid];
  [v5 appendFormat:@"\n\n\tprofiles:"];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_profiles;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * i) description];
        v12 = [v11 cls_indentBy:2];
        [v5 appendFormat:@"\n%@", v12];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v13 = [(CLSClueCollection *)self->_clueCollection description];
  v14 = [v13 cls_indentBy:1];
  [v5 appendFormat:@"\n\n%@", v14];

  if (descriptionCopy)
  {
    tracesDescription = [(CLSInvestigation *)self tracesDescription];
    v16 = [tracesDescription cls_indentBy:1];
    [v5 appendFormat:@"\n\n%@", v16];
  }

  return v5;
}

- (void)setInterviewDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_interviewDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_interviewDelegate, obj);
    if (objc_opt_respondsToSelector())
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    *&self->_investigationFlags = *&self->_investigationFlags & 0xFB | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    *&self->_investigationFlags = *&self->_investigationFlags & 0xF7 | v6;
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_investigationFlags = *&self->_investigationFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_investigationFlags = *&self->_investigationFlags & 0xFD | v5;
  }
}

- (CLSInvestigation)initWithProfiles:(id)profiles helper:(id)helper
{
  profilesCopy = profiles;
  v7 = [(CLSInvestigation *)self initWithHelper:helper];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithArray:profilesCopy];
    profiles = v7->_profiles;
    v7->_profiles = v8;
  }

  return v7;
}

- (CLSInvestigation)initWithHelper:(id)helper
{
  helperCopy = helper;
  v22.receiver = self;
  v22.super_class = CLSInvestigation;
  v6 = [(CLSInvestigation *)&v22 init];
  if (v6)
  {
    cls_generateUUID = [MEMORY[0x277CCACA8] cls_generateUUID];
    uuid = v6->_uuid;
    v6->_uuid = cls_generateUUID;

    feeder = v6->_feeder;
    v6->_feeder = 0;

    profiles = v6->_profiles;
    v6->_profiles = 0;

    objc_storeWeak(&v6->_delegate, 0);
    objc_storeWeak(&v6->_interviewDelegate, 0);
    context = v6->_context;
    v6->_context = 0;

    objc_storeWeak(&v6->_inspector, 0);
    v12 = [CLSClueCollection alloc];
    serviceManager = [helperCopy serviceManager];
    v14 = [(CLSClueCollection *)v12 initWithServiceManager:serviceManager];
    clueCollection = v6->_clueCollection;
    v6->_clueCollection = v14;

    informants = v6->_informants;
    v6->_precision = 2;
    v6->_informants = 0;

    objc_storeStrong(&v6->_helper, helper);
    v17 = objc_opt_new();
    tracesLogsByURIs = v6->_tracesLogsByURIs;
    v6->_tracesLogsByURIs = v17;

    v19 = objc_opt_new();
    tracesLogsURIs = v6->_tracesLogsURIs;
    v6->_tracesLogsURIs = v19;

    v6->_enableDebuggingClues = 0;
    v6->_investigationFlags = 0;
  }

  return v6;
}

- (CLSInvestigation)initWithFeeder:(id)feeder profiles:(id)profiles helper:(id)helper
{
  feederCopy = feeder;
  profilesCopy = profiles;
  v11 = [(CLSInvestigation *)self initWithHelper:helper];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_feeder, feeder);
    v13 = [MEMORY[0x277CBEB18] arrayWithArray:profilesCopy];
    profiles = v12->_profiles;
    v12->_profiles = v13;

    [(CLSInvestigation *)v12 setInterviewDelegate:feederCopy];
  }

  return v12;
}

- (CLSInvestigation)initWithClueCollection:(id)collection profiles:(id)profiles helper:(id)helper
{
  collectionCopy = collection;
  profilesCopy = profiles;
  v11 = [(CLSInvestigation *)self initWithHelper:helper];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_clueCollection, collection);
    v13 = [MEMORY[0x277CBEB18] arrayWithArray:profilesCopy];
    profiles = v12->_profiles;
    v12->_profiles = v13;
  }

  return v12;
}

+ (id)investigationWithProfiles:(id)profiles clueDates:(id)dates clueLocations:(id)locations cluePeoples:(id)peoples helper:(id)helper
{
  v27[1] = *MEMORY[0x277D85DE8];
  datesCopy = dates;
  locationsCopy = locations;
  peoplesCopy = peoples;
  helperCopy = helper;
  profilesCopy = profiles;
  v16 = [[CLSInvestigation alloc] initWithProfiles:profilesCopy helper:helperCopy];

  v17 = objc_opt_new();
  if (datesCopy && [datesCopy count])
  {
    serviceManager = [helperCopy serviceManager];
    v19 = [CLSInputTimeClue clueWithDates:datesCopy serviceManager:serviceManager];
    v27[0] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [v17 addObjectsFromArray:v20];
  }

  if (locationsCopy && [locationsCopy count])
  {
    locationCache = [helperCopy locationCache];
    v22 = [CLSInputLocationClue cluesWithLocations:locationsCopy locationCache:locationCache];
    [v17 addObjectsFromArray:v22];
  }

  if (peoplesCopy && [peoplesCopy count])
  {
    serviceManager2 = [helperCopy serviceManager];
    v24 = [CLSInputPeopleClue cluesWithPeoples:peoplesCopy serviceManager:serviceManager2];
    [v17 addObjectsFromArray:v24];
  }

  clueCollection = [(CLSInvestigation *)v16 clueCollection];
  [clueCollection mergeClues:v17];

  return v16;
}

+ (id)investigationWithProfiles:(id)profiles helper:(id)helper
{
  helperCopy = helper;
  profilesCopy = profiles;
  v7 = [[CLSInvestigation alloc] initWithProfiles:profilesCopy helper:helperCopy];

  return v7;
}

@end