@interface CalDAVOccurrenceChange
+ (id)changeWithItem:(id)item;
+ (id)changeWithOccurrenceID:(id)d;
- (BOOL)dateTimeChanged;
- (BOOL)didParameterChange:(id)change onProperty:(id)property;
- (BOOL)didPropertyChange:(id)change;
- (BOOL)timeZoneChanged;
- (CalDAVOccurrenceChange)init;
- (CalDAVOccurrenceChange)initWithOccurrenceID:(id)d;
- (void)addChangedParameter:(id)parameter ofProperty:(id)property;
- (void)addChangedProperty:(id)property;
@end

@implementation CalDAVOccurrenceChange

- (CalDAVOccurrenceChange)init
{
  v6.receiver = self;
  v6.super_class = CalDAVOccurrenceChange;
  v2 = [(CalDAVOccurrenceChange *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(CalDAVOccurrenceChange *)v2 setIsMaster:0];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(CalDAVOccurrenceChange *)v3 setChanges:dictionary];
  }

  return v3;
}

- (CalDAVOccurrenceChange)initWithOccurrenceID:(id)d
{
  dCopy = d;
  v5 = [(CalDAVOccurrenceChange *)self init];
  if (v5)
  {
    if ([dCopy length])
    {
      v6 = objc_alloc(MEMORY[0x277D7F0E8]);
      v7 = [MEMORY[0x277D7F100] dateFromICSString:dCopy];
      v8 = [v6 initWithValue:v7];
      [(CalDAVOccurrenceChange *)v5 setRecurrenceID:v8];
    }

    else
    {
      [(CalDAVOccurrenceChange *)v5 setIsMaster:1];
    }
  }

  return v5;
}

+ (id)changeWithOccurrenceID:(id)d
{
  dCopy = d;
  v4 = [[CalDAVOccurrenceChange alloc] initWithOccurrenceID:dCopy];

  return v4;
}

+ (id)changeWithItem:(id)item
{
  v40 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if ([itemCopy isMaster])
  {
    trimWhiteSpace = 0;
  }

  else
  {
    recurrenceID = [itemCopy recurrenceID];
    payloadAsString = [recurrenceID payloadAsString];
    trimWhiteSpace = [payloadAsString trimWhiteSpace];
  }

  if (([itemCopy isMaster] & 1) != 0 || objc_msgSend(trimWhiteSpace, "length"))
  {
    v27 = trimWhiteSpace;
    if ([itemCopy isMaster])
    {
      v7 = 0;
    }

    else
    {
      v7 = trimWhiteSpace;
    }

    v8 = [CalDAVOccurrenceChange changeWithOccurrenceID:v7];
    v9 = scheduleChangesLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(CalDAVOccurrenceChange *)v8 changeWithItem:v9];
    }

    v28 = itemCopy;
    changes = [itemCopy changes];
    changedProperties = [changes changedProperties];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = changedProperties;
    v12 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          nameAttribute = [v16 nameAttribute];
          [v8 addChangedProperty:nameAttribute];
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          changedParameters = [v16 changedParameters];
          v19 = [changedParameters countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v31;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v31 != v21)
                {
                  objc_enumerationMutation(changedParameters);
                }

                nameAttribute2 = [*(*(&v30 + 1) + 8 * j) nameAttribute];
                [v8 addChangedParameter:nameAttribute2 ofProperty:nameAttribute];
              }

              v20 = [changedParameters countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v20);
          }
        }

        v13 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v13);
    }

    v24 = obj;

    trimWhiteSpace = v27;
    itemCopy = v28;
  }

  else
  {
    v24 = scheduleChangesLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [CalDAVOccurrenceChange changeWithItem:v24];
    }

    v8 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)addChangedProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy length] && !-[CalDAVOccurrenceChange didPropertyChange:](self, "didPropertyChange:", propertyCopy))
  {
    v5 = scheduleChangesLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(CalDAVOccurrenceChange *)propertyCopy addChangedProperty:v5];
    }

    null = [MEMORY[0x277CBEB68] null];
    changes = [(CalDAVOccurrenceChange *)self changes];
    [changes setObject:null forKeyedSubscript:propertyCopy];
  }
}

- (void)addChangedParameter:(id)parameter ofProperty:(id)property
{
  parameterCopy = parameter;
  propertyCopy = property;
  if ([parameterCopy length] && objc_msgSend(propertyCopy, "length"))
  {
    changes = [(CalDAVOccurrenceChange *)self changes];
    v9 = [changes objectForKeyedSubscript:propertyCopy];

    if (!v9 || ([MEMORY[0x277CBEB68] null], v10 = objc_claimAutoreleasedReturnValue(), v10, v9 == v10))
    {
      v11 = [MEMORY[0x277CBEB18] arrayWithObject:parameterCopy];
      changes2 = [(CalDAVOccurrenceChange *)self changes];
      [changes2 setObject:v11 forKeyedSubscript:propertyCopy];
    }

    else
    {
      [v9 addObject:parameterCopy];
    }

    v13 = scheduleChangesLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(CalDAVOccurrenceChange *)parameterCopy addChangedParameter:propertyCopy ofProperty:v13];
    }
  }
}

- (BOOL)didPropertyChange:(id)change
{
  if (!change)
  {
    return 0;
  }

  changeCopy = change;
  changes = [(CalDAVOccurrenceChange *)self changes];
  v6 = [changes objectForKeyedSubscript:changeCopy];

  v7 = v6 != 0;
  return v7;
}

- (BOOL)didParameterChange:(id)change onProperty:(id)property
{
  changeCopy = change;
  propertyCopy = property;
  if ([changeCopy length] && objc_msgSend(propertyCopy, "length"))
  {
    changes = [(CalDAVOccurrenceChange *)self changes];
    v9 = [changes objectForKeyedSubscript:propertyCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 containsObject:changeCopy];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)dateTimeChanged
{
  if ([(CalDAVOccurrenceChange *)self startTimeChanged])
  {
    return 1;
  }

  return [(CalDAVOccurrenceChange *)self endTimeChanged];
}

- (BOOL)timeZoneChanged
{
  v3 = *MEMORY[0x277D7F1D0];
  if ([(CalDAVOccurrenceChange *)self didParameterChange:*MEMORY[0x277D7F1D0] onProperty:*MEMORY[0x277D7F190]])
  {
    return 1;
  }

  v5 = *MEMORY[0x277D7F188];

  return [(CalDAVOccurrenceChange *)self didParameterChange:v3 onProperty:v5];
}

+ (void)changeWithItem:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v3 = a1;
  v9 = *MEMORY[0x277D85DE8];
  v4 = [a1 isMaster];
  if (v4)
  {
    v5 = @"MASTER";
  }

  else
  {
    v3 = [v3 recurrenceID];
    v5 = [v3 value];
  }

  v7 = 138412290;
  v8 = v5;
  _os_log_debug_impl(&dword_242742000, a2, OS_LOG_TYPE_DEBUG, ":: ------- %@", &v7, 0xCu);
  if (!v4)
  {
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addChangedProperty:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_242742000, a2, OS_LOG_TYPE_DEBUG, ":: changed property %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)addChangedParameter:(os_log_t)log ofProperty:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_242742000, log, OS_LOG_TYPE_DEBUG, ":: :: changed parameter %@ of %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end