@interface _HDSeriesFreezeJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (_HDSeriesFreezeJournalEntry)initWithCoder:(id)a3;
- (_HDSeriesFreezeJournalEntry)initWithSeriesUUID:(id)a3 metadata:(id)a4 class:(Class)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HDSeriesFreezeJournalEntry

- (_HDSeriesFreezeJournalEntry)initWithSeriesUUID:(id)a3 metadata:(id)a4 class:(Class)a5
{
  v9 = a3;
  v10 = a4;
  if (!a5)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"_HDSeriesFreezeJournalEntry.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"seriesClass != Nil"}];
  }

  if (([(objc_class *)a5 conformsToProtocol:&unk_283CF4020]& 1) == 0)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_HDSeriesFreezeJournalEntry.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"[seriesClass conformsToProtocol:@protocol(_HDSeriesFreezeJournalEntrySeries)]"}];
  }

  v19.receiver = self;
  v19.super_class = _HDSeriesFreezeJournalEntry;
  v11 = [(_HDSeriesFreezeJournalEntry *)&v19 init];
  if (v11)
  {
    v12 = [v9 copy];
    seriesUUID = v11->_seriesUUID;
    v11->_seriesUUID = v12;

    v14 = [v10 copy];
    metadata = v11->_metadata;
    v11->_metadata = v14;

    objc_storeStrong(&v11->_seriesClass, a5);
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ - freeze %@", v5, self->_seriesUUID];

  return v6;
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [v11 seriesClass];
        v13 = [v11 seriesUUID];
        v14 = [v11 metadata];
        v30 = 0;
        v15 = [v12 freezeSeriesWithIdentifier:v13 metadata:v14 profile:v6 error:&v30];
        v16 = v30;

        if ((v15 & 1) == 0)
        {
          _HKInitializeLogging();
          v17 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            v24 = v17;
            v25 = objc_opt_class();
            v26 = v25;
            v27 = [v11 seriesUUID];
            *buf = 138412802;
            v36 = v25;
            v37 = 2112;
            v38 = v27;
            v39 = 2114;
            v40 = v16;
            _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "%@: *** Failed to freeze series: %@ %{public}@", buf, 0x20u);
          }

          if ([v16 hk_isTransactionInterruptedError])
          {

            goto LABEL_15;
          }

          v18 = MEMORY[0x277CCACA8];
          v19 = objc_opt_class();
          v20 = [v11 seriesUUID];
          v21 = [v18 stringWithFormat:@"%@-%@", v19, v20];

          v22 = [v6 daemon];
          v23 = [v22 autoBugCaptureReporter];
          [v23 reportJournalFailureWithErrorDescription:v21 provenance:0 error:v16];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v28 = *MEMORY[0x277D85DE8];
}

- (_HDSeriesFreezeJournalEntry)initWithCoder:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
  v6 = [MEMORY[0x277CBEAC0] hk_secureCodingClasses];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"meta"];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seriesClass"];

  v9 = NSClassFromString(v8);
  if (v9)
  {
    self = [(_HDSeriesFreezeJournalEntry *)self initWithSeriesUUID:v5 metadata:v7 class:v9];
    v10 = self;
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v8;
      _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "Failed to instantiate series freeze journal entry: unable to find subclass '%{public}@'", &v14, 0xCu);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _HDSeriesFreezeJournalEntry;
  v4 = a3;
  [(HDJournalEntry *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_seriesUUID forKey:{@"sid", v6.receiver, v6.super_class}];
  [v4 encodeObject:self->_metadata forKey:@"meta"];
  v5 = NSStringFromClass(self->_seriesClass);
  [v4 encodeObject:v5 forKey:@"seriesClass"];
}

@end