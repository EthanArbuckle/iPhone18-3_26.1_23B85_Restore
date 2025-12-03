@interface _HDLocationInsertionJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (_HDLocationInsertionJournalEntry)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)initWithSeriesPersistentID:(void *)d locationData:;
@end

@implementation _HDLocationInsertionJournalEntry

- (void)initWithSeriesPersistentID:(void *)d locationData:
{
  v5 = a2;
  dCopy = d;
  if (self)
  {
    v12.receiver = self;
    v12.super_class = _HDLocationInsertionJournalEntry;
    self = objc_msgSendSuper2(&v12, sel_init);
    if (self)
    {
      v7 = [v5 copy];
      v8 = self[1];
      self[1] = v7;

      v9 = [dCopy copy];
      v10 = self[2];
      self[2] = v9;
    }
  }

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@ - insert %lld location datums into %@", v5, -[NSArray count](self->_data, "count"), self->_seriesIdentifier];

  return v6;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v39 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = entriesCopy;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v7)
  {
    v8 = *v31;
    do
    {
      v9 = 0;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        if (v10)
        {
          v11 = *(v10 + 16);
          v12 = *(v10 + 8);
        }

        else
        {
          v11 = 0;
          v12 = 0;
        }

        v13 = v12;
        v29 = 0;
        v14 = [HDLocationSeriesSampleEntity insertLocationData:v11 seriesIdentifier:v13 assertion:0 profile:profileCopy error:&v29];
        v15 = v29;

        if (!v14)
        {
          _HKInitializeLogging();
          v16 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            if (v10)
            {
              v24 = *(v10 + 8);
            }

            else
            {
              v24 = 0;
            }

            *buf = 138412546;
            v35 = v24;
            v36 = 2114;
            v37 = v15;
            v25 = v16;
            _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "Failed to insert journaled location series data: %@ %{public}@", buf, 0x16u);
          }

          if ([v15 hk_isTransactionInterruptedError])
          {

            goto LABEL_25;
          }

          v17 = MEMORY[0x277CCACA8];
          v18 = objc_opt_class();
          if (v10)
          {
            v19 = *(v10 + 8);
          }

          else
          {
            v19 = 0;
          }

          v20 = v19;
          v21 = [v17 stringWithFormat:@"%@-%@", v18, v20];

          daemon = [profileCopy daemon];
          autoBugCaptureReporter = [daemon autoBugCaptureReporter];
          [autoBugCaptureReporter reportJournalFailureWithErrorDescription:v21 provenance:0 error:v15];
        }

        ++v9;
      }

      while (v7 != v9);
      v26 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
      v7 = v26;
    }

    while (v26);
  }

LABEL_25:

  v27 = *MEMORY[0x277D85DE8];
}

- (_HDLocationInsertionJournalEntry)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
  v6 = MEMORY[0x277CBEB98];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"data"];

  v10 = [(_HDLocationInsertionJournalEntry *)self initWithSeriesPersistentID:v5 locationData:v9];
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_seriesIdentifier forKey:@"sid"];
  [coderCopy encodeObject:self->_data forKey:@"data"];
}

@end