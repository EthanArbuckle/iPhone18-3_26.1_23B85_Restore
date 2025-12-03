@interface COTimerReadResponse
- (COTimerReadResponse)init;
- (COTimerReadResponse)initWithCoder:(id)coder;
- (COTimerReadResponse)initWithFilteredTimers:(id)timers;
- (COTimerReadResponse)initWithSkipInMerge;
- (COTimerReadResponse)initWithTimers:(id)timers;
- (COTimerReadResponse)initWithTimers:(id)timers deletes:(id)deletes;
- (id)initNotModifiedWithDeletes:(id)deletes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COTimerReadResponse

- (COTimerReadResponse)init
{
  v6.receiver = self;
  v6.super_class = COTimerReadResponse;
  v2 = [(COMeshCommand *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
    timers = v2->_timers;
    v2->_timers = v3;
  }

  return v2;
}

- (COTimerReadResponse)initWithTimers:(id)timers
{
  timersCopy = timers;
  v5 = [(COTimerReadResponse *)self init];
  if (v5)
  {
    v6 = [timersCopy copy];
    timers = v5->_timers;
    v5->_timers = v6;
  }

  return v5;
}

- (COTimerReadResponse)initWithFilteredTimers:(id)timers
{
  result = [(COTimerReadResponse *)self initWithTimers:timers];
  if (result)
  {
    result->_filtered = 1;
  }

  return result;
}

- (COTimerReadResponse)initWithTimers:(id)timers deletes:(id)deletes
{
  deletesCopy = deletes;
  v7 = [(COTimerReadResponse *)self initWithTimers:timers];
  if (v7)
  {
    v8 = [deletesCopy copy];
    deletes = v7->_deletes;
    v7->_deletes = v8;
  }

  return v7;
}

- (id)initNotModifiedWithDeletes:(id)deletes
{
  result = [(COTimerReadResponse *)self initWithTimers:MEMORY[0x277CBEBF8] deletes:deletes];
  if (result)
  {
    *(result + 18) = 1;
  }

  return result;
}

- (COTimerReadResponse)initWithSkipInMerge
{
  v2 = [(COTimerReadResponse *)self init];
  v3 = v2;
  if (v2)
  {
    timers = v2->_timers;
    v2->_timers = MEMORY[0x277CBEBF8];

    v3->_skipInMerge = 1;
  }

  return v3;
}

- (COTimerReadResponse)initWithCoder:(id)coder
{
  v30 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = COTimerReadResponse;
  v5 = [(COMeshResponse *)&v28 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = v5;
    v5->_filtered = [coderCopy containsValueForKey:@"filtered"];
    v6->_notModified = [coderCopy containsValueForKey:@"unmodified"];
    v6->_skipInMerge = [coderCopy containsValueForKey:@"skip"];
    if ([coderCopy containsValueForKey:@"deletes"])
    {
      v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"deletes"];
      deletes = v6->_deletes;
      v6->_deletes = v7;
    }

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"timers"];
    timers = v6->_timers;
    v6->_timers = v12;

    v14 = v6->_timers;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v15 = v6->_timers;
      v16 = [(NSArray *)v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v25;
        while (2)
        {
          v19 = 0;
          do
          {
            if (*v25 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v24 + 1) + 8 * v19);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v21 = 0;
              goto LABEL_17;
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [(NSArray *)v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v21 = v6;
    }

    else
    {
      v21 = 0;
      v15 = v6;
    }

LABEL_17:
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = COTimerReadResponse;
  [(COMeshResponse *)&v7 encodeWithCoder:coderCopy];
  timers = [(COTimerReadResponse *)self timers];
  [coderCopy encodeObject:timers forKey:@"timers"];

  if ([(COTimerReadResponse *)self isFiltered])
  {
    [coderCopy encodeObject:MEMORY[0x277CBEC38] forKey:@"filtered"];
  }

  deletes = [(COTimerReadResponse *)self deletes];
  if (deletes)
  {
    [coderCopy encodeObject:deletes forKey:@"deletes"];
  }

  if ([(COTimerReadResponse *)self skipInMerge])
  {
    [coderCopy encodeObject:MEMORY[0x277CBEC38] forKey:@"skip"];
  }

  if ([(COTimerReadResponse *)self notModified])
  {
    [coderCopy encodeObject:MEMORY[0x277CBEC38] forKey:@"unmodified"];
  }
}

@end