@interface CLSInvestigation
+ (id)investigationWithProfiles:(id)a3 clueDates:(id)a4 clueLocations:(id)a5 cluePeoples:(id)a6 helper:(id)a7;
+ (id)investigationWithProfiles:(id)a3 helper:(id)a4;
- (CLSInvestigation)initWithClueCollection:(id)a3 profiles:(id)a4 helper:(id)a5;
- (CLSInvestigation)initWithFeeder:(id)a3 profiles:(id)a4 helper:(id)a5;
- (CLSInvestigation)initWithHelper:(id)a3;
- (CLSInvestigation)initWithProfiles:(id)a3 helper:(id)a4;
- (CLSInvestigationDelegate)delegate;
- (CLSInvestigationInterviewDelegate)interviewDelegate;
- (id)_traceStringForType:(unint64_t)a3;
- (id)description:(BOOL)a3;
- (id)sampleOfItems;
- (id)tracesDescription;
- (unint64_t)numberOfItems;
- (void)_didEndInvestigation:(BOOL)a3;
- (void)_willBeginInvestigation:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setInterviewDelegate:(id)a3;
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
  v4 = self;
  objc_sync_enter(v4);
  p_isa = &v4->super.isa;
  if ([(NSMutableDictionary *)v4->_tracesLogsByURIs count])
  {
    [v3 appendFormat:@"<Traces>"];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v4->_tracesLogsURIs;
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

- (id)_traceStringForType:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return 0;
  }

  else
  {
    return off_2788A7D38[a3 - 1];
  }
}

- (id)sampleOfItems
{
  if ((*&self->_investigationFlags & 8) != 0 && (WeakRetained = objc_loadWeakRetained(&self->_interviewDelegate)) != 0)
  {
    v4 = WeakRetained;
    v5 = [WeakRetained sampleOfItemsInInvestigation:self];
  }

  else
  {
    v5 = [MEMORY[0x277CCAB58] indexSet];
    v6 = [(CLSInvestigation *)self numberOfItems];
    if (v6)
    {
      v7 = v6;
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
      if (v6 / v13 > v12)
      {
        v13 = v6 / v12;
      }

      for (i = 0; i < v7; i += v13)
      {
        [v5 addIndex:i];
      }
    }
  }

  return v5;
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

- (void)_didEndInvestigation:(BOOL)a3
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

- (void)_willBeginInvestigation:(id)a3
{
  obj = a3;
  v4 = self;
  objc_sync_enter(v4);
  objc_storeWeak(&v4->_inspector, obj);
  if (*&v4->_investigationFlags)
  {
    WeakRetained = objc_loadWeakRetained(&v4->_delegate);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained investigationWillBegin:v4];
    }
  }

  objc_sync_exit(v4);
}

- (id)description:(BOOL)a3
{
  v3 = a3;
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

  if (v3)
  {
    v15 = [(CLSInvestigation *)self tracesDescription];
    v16 = [v15 cls_indentBy:1];
    [v5 appendFormat:@"\n\n%@", v16];
  }

  return v5;
}

- (void)setInterviewDelegate:(id)a3
{
  obj = a3;
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

- (void)setDelegate:(id)a3
{
  obj = a3;
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

- (CLSInvestigation)initWithProfiles:(id)a3 helper:(id)a4
{
  v6 = a3;
  v7 = [(CLSInvestigation *)self initWithHelper:a4];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
    profiles = v7->_profiles;
    v7->_profiles = v8;
  }

  return v7;
}

- (CLSInvestigation)initWithHelper:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = CLSInvestigation;
  v6 = [(CLSInvestigation *)&v22 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] cls_generateUUID];
    uuid = v6->_uuid;
    v6->_uuid = v7;

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
    v13 = [v5 serviceManager];
    v14 = [(CLSClueCollection *)v12 initWithServiceManager:v13];
    clueCollection = v6->_clueCollection;
    v6->_clueCollection = v14;

    informants = v6->_informants;
    v6->_precision = 2;
    v6->_informants = 0;

    objc_storeStrong(&v6->_helper, a3);
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

- (CLSInvestigation)initWithFeeder:(id)a3 profiles:(id)a4 helper:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(CLSInvestigation *)self initWithHelper:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_feeder, a3);
    v13 = [MEMORY[0x277CBEB18] arrayWithArray:v10];
    profiles = v12->_profiles;
    v12->_profiles = v13;

    [(CLSInvestigation *)v12 setInterviewDelegate:v9];
  }

  return v12;
}

- (CLSInvestigation)initWithClueCollection:(id)a3 profiles:(id)a4 helper:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(CLSInvestigation *)self initWithHelper:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_clueCollection, a3);
    v13 = [MEMORY[0x277CBEB18] arrayWithArray:v10];
    profiles = v12->_profiles;
    v12->_profiles = v13;
  }

  return v12;
}

+ (id)investigationWithProfiles:(id)a3 clueDates:(id)a4 clueLocations:(id)a5 cluePeoples:(id)a6 helper:(id)a7
{
  v27[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a3;
  v16 = [[CLSInvestigation alloc] initWithProfiles:v15 helper:v14];

  v17 = objc_opt_new();
  if (v11 && [v11 count])
  {
    v18 = [v14 serviceManager];
    v19 = [CLSInputTimeClue clueWithDates:v11 serviceManager:v18];
    v27[0] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [v17 addObjectsFromArray:v20];
  }

  if (v12 && [v12 count])
  {
    v21 = [v14 locationCache];
    v22 = [CLSInputLocationClue cluesWithLocations:v12 locationCache:v21];
    [v17 addObjectsFromArray:v22];
  }

  if (v13 && [v13 count])
  {
    v23 = [v14 serviceManager];
    v24 = [CLSInputPeopleClue cluesWithPeoples:v13 serviceManager:v23];
    [v17 addObjectsFromArray:v24];
  }

  v25 = [(CLSInvestigation *)v16 clueCollection];
  [v25 mergeClues:v17];

  return v16;
}

+ (id)investigationWithProfiles:(id)a3 helper:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CLSInvestigation alloc] initWithProfiles:v6 helper:v5];

  return v7;
}

@end