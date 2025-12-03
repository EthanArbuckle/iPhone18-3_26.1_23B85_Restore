@interface MSPMutableHistoryEntrySearch
- (BOOL)_isUserVisibleDuplicateOfSameClassObject:(id)object;
- (GEOMapRegion)mapRegion;
- (MSPMutableHistoryEntrySearch)initWithStorage:(id)storage;
- (NSString)languageCode;
- (NSString)locationDisplayString;
- (NSString)query;
- (id)transferToImmutableIfValidWithError:(id *)error;
- (void)setLanguageCode:(id)code;
- (void)setLocationDisplayString:(id)string;
- (void)setMapRegion:(id)region;
- (void)setQuery:(id)query;
@end

@implementation MSPMutableHistoryEntrySearch

- (MSPMutableHistoryEntrySearch)initWithStorage:(id)storage
{
  storageCopy = storage;
  if (!storageCopy)
  {
    storageCopy = objc_alloc_init(MSPHistoryEntryStorage);
    [(MSPHistoryEntryStorage *)storageCopy setSearchType:1];
    v5 = objc_alloc_init(MSPQuerySearch);
    [(MSPHistoryEntryStorage *)storageCopy setQuerySearch:v5];
  }

  v9.receiver = self;
  v9.super_class = MSPMutableHistoryEntrySearch;
  v6 = [(MSPMutableHistoryEntry *)&v9 initWithStorage:storageCopy];
  if (!v6)
  {
    goto LABEL_6;
  }

  if ([(MSPHistoryEntryStorage *)storageCopy searchType]!= 1)
  {
    querySearch = 0;
    goto LABEL_8;
  }

  querySearch = [(MSPHistoryEntryStorage *)storageCopy querySearch];

  if (querySearch)
  {
LABEL_6:
    querySearch = v6;
  }

LABEL_8:

  return querySearch;
}

- (NSString)query
{
  storage = [(MSPMutableHistoryEntry *)self storage];
  querySearch = [storage querySearch];
  query = [querySearch query];

  return query;
}

- (void)setQuery:(id)query
{
  queryCopy = query;
  [(MSPMutableHistoryEntry *)self _noteWillMutate];
  v7 = [queryCopy copy];

  storage = [(MSPMutableHistoryEntry *)self storage];
  querySearch = [storage querySearch];
  [querySearch setQuery:v7];
}

- (NSString)locationDisplayString
{
  storage = [(MSPMutableHistoryEntry *)self storage];
  querySearch = [storage querySearch];
  locationDisplayString = [querySearch locationDisplayString];

  return locationDisplayString;
}

- (void)setLocationDisplayString:(id)string
{
  stringCopy = string;
  [(MSPMutableHistoryEntry *)self _noteWillMutate];
  v7 = [stringCopy copy];

  storage = [(MSPMutableHistoryEntry *)self storage];
  querySearch = [storage querySearch];
  [querySearch setLocationDisplayString:v7];
}

- (NSString)languageCode
{
  storage = [(MSPMutableHistoryEntry *)self storage];
  querySearch = [storage querySearch];
  language = [querySearch language];

  return language;
}

- (void)setLanguageCode:(id)code
{
  codeCopy = code;
  [(MSPMutableHistoryEntry *)self _noteWillMutate];
  v7 = [codeCopy copy];

  storage = [(MSPMutableHistoryEntry *)self storage];
  querySearch = [storage querySearch];
  [querySearch setLanguage:v7];
}

- (GEOMapRegion)mapRegion
{
  storage = [(MSPMutableHistoryEntry *)self storage];
  querySearch = [storage querySearch];
  mapRegion = [querySearch mapRegion];

  return mapRegion;
}

- (void)setMapRegion:(id)region
{
  regionCopy = region;
  [(MSPMutableHistoryEntry *)self _noteWillMutate];
  v7 = [regionCopy copy];

  storage = [(MSPMutableHistoryEntry *)self storage];
  querySearch = [storage querySearch];
  [querySearch setMapRegion:v7];
}

- (id)transferToImmutableIfValidWithError:(id *)error
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  query = [(MSPMutableHistoryEntrySearch *)self query];
  v7 = [query length];

  if (!v7)
  {
    [v5 addObject:@"query"];
  }

  if ([v5 count])
  {
    if (error)
    {
      v8 = MEMORY[0x277CCA9B8];
      v12[0] = @"MSPContainerUntransferableObject";
      v12[1] = @"MSPContainerUnavailableKeys";
      v13[0] = self;
      v13[1] = v5;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
      *error = [v8 errorWithDomain:@"com.apple.MapsSupport.MSPContainer" code:1 userInfo:v9];

      error = 0;
    }
  }

  else
  {
    [(MSPMutableHistoryEntry *)self _markImmutable];
    error = self;
  }

  v10 = *MEMORY[0x277D85DE8];

  return error;
}

- (BOOL)_isUserVisibleDuplicateOfSameClassObject:(id)object
{
  objectCopy = object;
  query = [(MSPMutableHistoryEntrySearch *)self query];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v7 = [query stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_286950698;
  }

  v10 = v9;

  query2 = [objectCopy query];

  whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v13 = [query2 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_286950698;
  }

  v16 = v15;

  v17 = [(__CFString *)v10 localizedCaseInsensitiveCompare:v16];
  return v17 == 0;
}

@end