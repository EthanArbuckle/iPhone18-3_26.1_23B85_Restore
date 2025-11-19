@interface MSPMutableHistoryEntrySearch
- (BOOL)_isUserVisibleDuplicateOfSameClassObject:(id)a3;
- (GEOMapRegion)mapRegion;
- (MSPMutableHistoryEntrySearch)initWithStorage:(id)a3;
- (NSString)languageCode;
- (NSString)locationDisplayString;
- (NSString)query;
- (id)transferToImmutableIfValidWithError:(id *)a3;
- (void)setLanguageCode:(id)a3;
- (void)setLocationDisplayString:(id)a3;
- (void)setMapRegion:(id)a3;
- (void)setQuery:(id)a3;
@end

@implementation MSPMutableHistoryEntrySearch

- (MSPMutableHistoryEntrySearch)initWithStorage:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = objc_alloc_init(MSPHistoryEntryStorage);
    [(MSPHistoryEntryStorage *)v4 setSearchType:1];
    v5 = objc_alloc_init(MSPQuerySearch);
    [(MSPHistoryEntryStorage *)v4 setQuerySearch:v5];
  }

  v9.receiver = self;
  v9.super_class = MSPMutableHistoryEntrySearch;
  v6 = [(MSPMutableHistoryEntry *)&v9 initWithStorage:v4];
  if (!v6)
  {
    goto LABEL_6;
  }

  if ([(MSPHistoryEntryStorage *)v4 searchType]!= 1)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v7 = [(MSPHistoryEntryStorage *)v4 querySearch];

  if (v7)
  {
LABEL_6:
    v7 = v6;
  }

LABEL_8:

  return v7;
}

- (NSString)query
{
  v2 = [(MSPMutableHistoryEntry *)self storage];
  v3 = [v2 querySearch];
  v4 = [v3 query];

  return v4;
}

- (void)setQuery:(id)a3
{
  v4 = a3;
  [(MSPMutableHistoryEntry *)self _noteWillMutate];
  v7 = [v4 copy];

  v5 = [(MSPMutableHistoryEntry *)self storage];
  v6 = [v5 querySearch];
  [v6 setQuery:v7];
}

- (NSString)locationDisplayString
{
  v2 = [(MSPMutableHistoryEntry *)self storage];
  v3 = [v2 querySearch];
  v4 = [v3 locationDisplayString];

  return v4;
}

- (void)setLocationDisplayString:(id)a3
{
  v4 = a3;
  [(MSPMutableHistoryEntry *)self _noteWillMutate];
  v7 = [v4 copy];

  v5 = [(MSPMutableHistoryEntry *)self storage];
  v6 = [v5 querySearch];
  [v6 setLocationDisplayString:v7];
}

- (NSString)languageCode
{
  v2 = [(MSPMutableHistoryEntry *)self storage];
  v3 = [v2 querySearch];
  v4 = [v3 language];

  return v4;
}

- (void)setLanguageCode:(id)a3
{
  v4 = a3;
  [(MSPMutableHistoryEntry *)self _noteWillMutate];
  v7 = [v4 copy];

  v5 = [(MSPMutableHistoryEntry *)self storage];
  v6 = [v5 querySearch];
  [v6 setLanguage:v7];
}

- (GEOMapRegion)mapRegion
{
  v2 = [(MSPMutableHistoryEntry *)self storage];
  v3 = [v2 querySearch];
  v4 = [v3 mapRegion];

  return v4;
}

- (void)setMapRegion:(id)a3
{
  v4 = a3;
  [(MSPMutableHistoryEntry *)self _noteWillMutate];
  v7 = [v4 copy];

  v5 = [(MSPMutableHistoryEntry *)self storage];
  v6 = [v5 querySearch];
  [v6 setMapRegion:v7];
}

- (id)transferToImmutableIfValidWithError:(id *)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(MSPMutableHistoryEntrySearch *)self query];
  v7 = [v6 length];

  if (!v7)
  {
    [v5 addObject:@"query"];
  }

  if ([v5 count])
  {
    if (a3)
    {
      v8 = MEMORY[0x277CCA9B8];
      v12[0] = @"MSPContainerUntransferableObject";
      v12[1] = @"MSPContainerUnavailableKeys";
      v13[0] = self;
      v13[1] = v5;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
      *a3 = [v8 errorWithDomain:@"com.apple.MapsSupport.MSPContainer" code:1 userInfo:v9];

      a3 = 0;
    }
  }

  else
  {
    [(MSPMutableHistoryEntry *)self _markImmutable];
    a3 = self;
  }

  v10 = *MEMORY[0x277D85DE8];

  return a3;
}

- (BOOL)_isUserVisibleDuplicateOfSameClassObject:(id)a3
{
  v4 = a3;
  v5 = [(MSPMutableHistoryEntrySearch *)self query];
  v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];
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

  v11 = [v4 query];

  v12 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v13 = [v11 stringByTrimmingCharactersInSet:v12];
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