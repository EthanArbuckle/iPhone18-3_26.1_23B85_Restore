@interface HKClinicalProviderSearchResultsPage
- (HKClinicalProviderSearchResultsPage)initWithCoder:(id)a3;
- (HKClinicalProviderSearchResultsPage)initWithSearchResults:(id)a3 from:(int64_t)a4 nextFrom:(int64_t)a5 size:(int64_t)a6;
- (id)copyWithSearchResults:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKClinicalProviderSearchResultsPage

- (HKClinicalProviderSearchResultsPage)initWithSearchResults:(id)a3 from:(int64_t)a4 nextFrom:(int64_t)a5 size:(int64_t)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = HKClinicalProviderSearchResultsPage;
  v11 = [(HKClinicalProviderSearchResultsPage *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    searchResults = v11->_searchResults;
    v11->_searchResults = v12;

    v11->_from = a4;
    v11->_nextFrom = a5;
    v11->_size = a6;
  }

  return v11;
}

- (id)copyWithSearchResults:(id)a3
{
  v4 = a3;
  v5 = [[HKClinicalProviderSearchResultsPage alloc] initWithSearchResults:v4 from:self->_from nextFrom:self->_nextFrom size:self->_size];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(HKClinicalProviderSearchResultsPage *)self searchResults];
  [v5 encodeObject:v4 forKey:@"SearchResultsKey"];

  [v5 encodeInteger:-[HKClinicalProviderSearchResultsPage from](self forKey:{"from"), @"FromKey"}];
  [v5 encodeInteger:-[HKClinicalProviderSearchResultsPage nextFrom](self forKey:{"nextFrom"), @"NextFromKey"}];
  [v5 encodeInteger:-[HKClinicalProviderSearchResultsPage size](self forKey:{"size"), @"SizeKey"}];
}

- (HKClinicalProviderSearchResultsPage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"SearchResultsKey"];
  if (v6 && [v4 containsValueForKey:@"FromKey"] && objc_msgSend(v4, "containsValueForKey:", @"NextFromKey") && (objc_msgSend(v4, "containsValueForKey:", @"SizeKey") & 1) != 0)
  {
    self = -[HKClinicalProviderSearchResultsPage initWithSearchResults:from:nextFrom:size:](self, "initWithSearchResults:from:nextFrom:size:", v6, [v4 decodeIntegerForKey:@"FromKey"], objc_msgSend(v4, "decodeIntegerForKey:", @"NextFromKey"), objc_msgSend(v4, "decodeIntegerForKey:", @"SizeKey"));
    v7 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v7 = 0;
  }

  return v7;
}

@end