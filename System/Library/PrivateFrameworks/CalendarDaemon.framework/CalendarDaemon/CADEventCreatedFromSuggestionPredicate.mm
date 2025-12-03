@interface CADEventCreatedFromSuggestionPredicate
+ (id)predicateForAllSuggestedEvents;
- (BOOL)isEqual:(id)equal;
- (CADEventCreatedFromSuggestionPredicate)initWithCoder:(id)coder;
- (CADEventCreatedFromSuggestionPredicate)initWithOpaqueKey:(id)key extractionGroupIdentifier:(id)identifier;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)defaultPropertiesToLoad;
- (id)predicateFormat;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADEventCreatedFromSuggestionPredicate

+ (id)predicateForAllSuggestedEvents
{
  v2 = [[self alloc] initWithOpaqueKey:0 extractionGroupIdentifier:0];

  return v2;
}

- (id)predicateFormat
{
  opaqueKey = [(CADEventCreatedFromSuggestionPredicate *)self opaqueKey];

  if (opaqueKey)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"CADEventCreatedFromSuggestionPredicate opaqueKey:%@", self->_opaqueKey];
  }

  else
  {
    extractionGroupIdentifier = [(CADEventCreatedFromSuggestionPredicate *)self extractionGroupIdentifier];

    if (extractionGroupIdentifier)
    {
      v6 = MEMORY[0x277CCACA8];
      extractionGroupIdentifier2 = [(CADEventCreatedFromSuggestionPredicate *)self extractionGroupIdentifier];
      v4 = [v6 stringWithFormat:@"CADEventCreatedFromSuggestionPredicate extractionGroupIdentifier:%@", extractionGroupIdentifier2];
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

- (CADEventCreatedFromSuggestionPredicate)initWithOpaqueKey:(id)key extractionGroupIdentifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = CADEventCreatedFromSuggestionPredicate;
  v8 = [(CADEventCreatedFromSuggestionPredicate *)&v14 init];
  if (v8)
  {
    v9 = [keyCopy copy];
    opaqueKey = v8->_opaqueKey;
    v8->_opaqueKey = v9;

    v11 = [identifierCopy copy];
    extractionGroupIdentifier = v8->_extractionGroupIdentifier;
    v8->_extractionGroupIdentifier = v11;
  }

  return v8;
}

- (CADEventCreatedFromSuggestionPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CADEventCreatedFromSuggestionPredicate;
  v5 = [(EKPredicate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"opaqueKey"];
    opaqueKey = v5->_opaqueKey;
    v5->_opaqueKey = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extractionGroupIdentifier"];
    extractionGroupIdentifier = v5->_extractionGroupIdentifier;
    v5->_extractionGroupIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CADEventCreatedFromSuggestionPredicate;
  coderCopy = coder;
  [(EKPredicate *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CADEventCreatedFromSuggestionPredicate *)self opaqueKey:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"opaqueKey"];

  extractionGroupIdentifier = [(CADEventCreatedFromSuggestionPredicate *)self extractionGroupIdentifier];
  [coderCopy encodeObject:extractionGroupIdentifier forKey:@"extractionGroupIdentifier"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    opaqueKey = self->_opaqueKey;
    opaqueKey = [(CADEventCreatedFromSuggestionPredicate *)v6 opaqueKey];
    LODWORD(opaqueKey) = CalEqualStrings();

    if (opaqueKey)
    {
      extractionGroupIdentifier = [(CADEventCreatedFromSuggestionPredicate *)self extractionGroupIdentifier];
      extractionGroupIdentifier2 = [(CADEventCreatedFromSuggestionPredicate *)v6 extractionGroupIdentifier];
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

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  v23 = *MEMORY[0x277D85DE8];
  opaqueKey = [(CADEventCreatedFromSuggestionPredicate *)self opaqueKey];

  if (opaqueKey)
  {
    [(CADEventCreatedFromSuggestionPredicate *)self opaqueKey];
LABEL_3:
    v5 = CalDatabaseCopyOfAllEventsCreatedFromSuggestionsInStore();
    goto LABEL_6;
  }

  extractionGroupIdentifier = [(CADEventCreatedFromSuggestionPredicate *)self extractionGroupIdentifier];

  if (!extractionGroupIdentifier)
  {
    goto LABEL_3;
  }

  extractionGroupIdentifier2 = [(CADEventCreatedFromSuggestionPredicate *)self extractionGroupIdentifier];
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