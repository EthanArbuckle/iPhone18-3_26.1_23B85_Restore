@interface CADEventCreatedFromSuggestionPredicate
+ (id)predicateForAllSuggestedEvents;
- (BOOL)isEqual:(id)a3;
- (CADEventCreatedFromSuggestionPredicate)initWithCoder:(id)a3;
- (CADEventCreatedFromSuggestionPredicate)initWithOpaqueKey:(id)a3 extractionGroupIdentifier:(id)a4;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)a3;
- (id)defaultPropertiesToLoad;
- (id)predicateFormat;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CADEventCreatedFromSuggestionPredicate

+ (id)predicateForAllSuggestedEvents
{
  v2 = [[a1 alloc] initWithOpaqueKey:0 extractionGroupIdentifier:0];

  return v2;
}

- (id)predicateFormat
{
  v3 = [(CADEventCreatedFromSuggestionPredicate *)self opaqueKey];

  if (v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"CADEventCreatedFromSuggestionPredicate opaqueKey:%@", self->_opaqueKey];
  }

  else
  {
    v5 = [(CADEventCreatedFromSuggestionPredicate *)self extractionGroupIdentifier];

    if (v5)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [(CADEventCreatedFromSuggestionPredicate *)self extractionGroupIdentifier];
      v4 = [v6 stringWithFormat:@"CADEventCreatedFromSuggestionPredicate extractionGroupIdentifier:%@", v7];
    }

    else
    {
      v4 = @"CADEventCreatedFromSuggestionPredicate allSuggestedEvents";
    }
  }

  return v4;
}

- (id)defaultPropertiesToLoad
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = CADEKPersistentEventDefaultPropertiesToLoad();
  v3 = *MEMORY[0x277CF72B0];
  v8[0] = *MEMORY[0x277CF71F0];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5 = [v2 arrayByAddingObjectsFromArray:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (CADEventCreatedFromSuggestionPredicate)initWithOpaqueKey:(id)a3 extractionGroupIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CADEventCreatedFromSuggestionPredicate;
  v8 = [(CADEventCreatedFromSuggestionPredicate *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    opaqueKey = v8->_opaqueKey;
    v8->_opaqueKey = v9;

    v11 = [v7 copy];
    extractionGroupIdentifier = v8->_extractionGroupIdentifier;
    v8->_extractionGroupIdentifier = v11;
  }

  return v8;
}

- (CADEventCreatedFromSuggestionPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CADEventCreatedFromSuggestionPredicate;
  v5 = [(EKPredicate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"opaqueKey"];
    opaqueKey = v5->_opaqueKey;
    v5->_opaqueKey = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extractionGroupIdentifier"];
    extractionGroupIdentifier = v5->_extractionGroupIdentifier;
    v5->_extractionGroupIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CADEventCreatedFromSuggestionPredicate;
  v4 = a3;
  [(EKPredicate *)&v7 encodeWithCoder:v4];
  v5 = [(CADEventCreatedFromSuggestionPredicate *)self opaqueKey:v7.receiver];
  [v4 encodeObject:v5 forKey:@"opaqueKey"];

  v6 = [(CADEventCreatedFromSuggestionPredicate *)self extractionGroupIdentifier];
  [v4 encodeObject:v6 forKey:@"extractionGroupIdentifier"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    opaqueKey = self->_opaqueKey;
    v8 = [(CADEventCreatedFromSuggestionPredicate *)v6 opaqueKey];
    LODWORD(opaqueKey) = CalEqualStrings();

    if (opaqueKey)
    {
      v9 = [(CADEventCreatedFromSuggestionPredicate *)self extractionGroupIdentifier];
      v10 = [(CADEventCreatedFromSuggestionPredicate *)v6 extractionGroupIdentifier];
      v11 = CalEqualStrings();
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [(CADEventCreatedFromSuggestionPredicate *)self opaqueKey];

  if (v4)
  {
    [(CADEventCreatedFromSuggestionPredicate *)self opaqueKey];
LABEL_3:
    v5 = CalDatabaseCopyOfAllEventsCreatedFromSuggestionsInStore();
    goto LABEL_6;
  }

  v6 = [(CADEventCreatedFromSuggestionPredicate *)self extractionGroupIdentifier];

  if (!v6)
  {
    goto LABEL_3;
  }

  v7 = [(CADEventCreatedFromSuggestionPredicate *)self extractionGroupIdentifier];
  v5 = CalDatabaseCopyOfAllEventsCreatedFromSuggestionsWithExtractionGroupIdentifierInStore();

LABEL_6:
  if ([v5 count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          v15 = CalEventOccurrenceCreateForInitialOccurrence();
          [v8 addObject:{v15, v18}];
          CFRelease(v15);
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

@end