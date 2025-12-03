@interface HKClinicalProviderSearchResultsPage
- (HKClinicalProviderSearchResultsPage)initWithCoder:(id)coder;
- (HKClinicalProviderSearchResultsPage)initWithSearchResults:(id)results from:(int64_t)from nextFrom:(int64_t)nextFrom size:(int64_t)size;
- (id)copyWithSearchResults:(id)results;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalProviderSearchResultsPage

- (HKClinicalProviderSearchResultsPage)initWithSearchResults:(id)results from:(int64_t)from nextFrom:(int64_t)nextFrom size:(int64_t)size
{
  resultsCopy = results;
  v15.receiver = self;
  v15.super_class = HKClinicalProviderSearchResultsPage;
  v11 = [(HKClinicalProviderSearchResultsPage *)&v15 init];
  if (v11)
  {
    v12 = [resultsCopy copy];
    searchResults = v11->_searchResults;
    v11->_searchResults = v12;

    v11->_from = from;
    v11->_nextFrom = nextFrom;
    v11->_size = size;
  }

  return v11;
}

- (id)copyWithSearchResults:(id)results
{
  resultsCopy = results;
  v5 = [[HKClinicalProviderSearchResultsPage alloc] initWithSearchResults:resultsCopy from:self->_from nextFrom:self->_nextFrom size:self->_size];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  searchResults = [(HKClinicalProviderSearchResultsPage *)self searchResults];
  [coderCopy encodeObject:searchResults forKey:@"SearchResultsKey"];

  [coderCopy encodeInteger:-[HKClinicalProviderSearchResultsPage from](self forKey:{"from"), @"FromKey"}];
  [coderCopy encodeInteger:-[HKClinicalProviderSearchResultsPage nextFrom](self forKey:{"nextFrom"), @"NextFromKey"}];
  [coderCopy encodeInteger:-[HKClinicalProviderSearchResultsPage size](self forKey:{"size"), @"SizeKey"}];
}

- (HKClinicalProviderSearchResultsPage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"SearchResultsKey"];
  if (v6 && [coderCopy containsValueForKey:@"FromKey"] && objc_msgSend(coderCopy, "containsValueForKey:", @"NextFromKey") && (objc_msgSend(coderCopy, "containsValueForKey:", @"SizeKey") & 1) != 0)
  {
    self = -[HKClinicalProviderSearchResultsPage initWithSearchResults:from:nextFrom:size:](self, "initWithSearchResults:from:nextFrom:size:", v6, [coderCopy decodeIntegerForKey:@"FromKey"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"NextFromKey"), objc_msgSend(coderCopy, "decodeIntegerForKey:", @"SizeKey"));
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

@end