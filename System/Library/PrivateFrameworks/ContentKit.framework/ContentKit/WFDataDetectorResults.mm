@interface WFDataDetectorResults
- (NSArray)URLs;
- (NSArray)dateComponentsResults;
- (NSArray)dates;
- (NSArray)phoneNumbers;
- (NSArray)streetAddresses;
- (WFDataDetectorResults)initWithTextCheckingResults:(id)a3 number:(id)a4 dictionaries:(id)a5 dictionaryType:(id)a6;
@end

@implementation WFDataDetectorResults

- (NSArray)dateComponentsResults
{
  v2 = [(WFDataDetectorResults *)self textCheckingResults];
  v3 = [v2 if_compactMap:&__block_literal_global_13_21721];

  return v3;
}

id __46__WFDataDetectorResults_dateComponentsResults__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 resultType] == 8 && (objc_msgSend(v2, "date"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = [v2 timeZone];
    v6 = [v2 date];
    if (v5)
    {
      [v4 componentsInTimeZone:v5 fromDate:v6];
    }

    else
    {
      [v4 components:-1 fromDate:v6];
    }
    v7 = ;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)dates
{
  v2 = [(WFDataDetectorResults *)self textCheckingResults];
  v3 = [v2 if_compactMap:&__block_literal_global_10_21725];

  return v3;
}

id __30__WFDataDetectorResults_dates__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 resultType] == 8)
  {
    v3 = [v2 date];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)phoneNumbers
{
  v2 = [(WFDataDetectorResults *)self textCheckingResults];
  v3 = [v2 if_compactMap:&__block_literal_global_6_21728];

  return v3;
}

id __37__WFDataDetectorResults_phoneNumbers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 resultType] == 2048)
  {
    v3 = [WFPhoneNumber phoneNumberWithTextCheckingResult:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)streetAddresses
{
  v2 = [(WFDataDetectorResults *)self textCheckingResults];
  v3 = [v2 if_compactMap:&__block_literal_global_3_21732];

  return v3;
}

id __40__WFDataDetectorResults_streetAddresses__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 resultType] == 16)
  {
    v3 = [WFStreetAddress streetAddressWithTextCheckingResult:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)URLs
{
  v2 = [(WFDataDetectorResults *)self textCheckingResults];
  v3 = [v2 if_compactMap:&__block_literal_global_21736];

  return v3;
}

id __29__WFDataDetectorResults_URLs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 resultType] == 32)
  {
    v3 = [v2 URL];
    v4 = WFAppTransportSecuredURL(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (WFDataDetectorResults)initWithTextCheckingResults:(id)a3 number:(id)a4 dictionaries:(id)a5 dictionaryType:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = WFDataDetectorResults;
  v14 = [(WFDataDetectorResults *)&v21 init];
  if (v14)
  {
    v15 = [v10 copy];
    textCheckingResults = v14->_textCheckingResults;
    v14->_textCheckingResults = v15;

    objc_storeStrong(&v14->_number, a4);
    v17 = [v12 copy];
    dictionaries = v14->_dictionaries;
    v14->_dictionaries = v17;

    objc_storeStrong(&v14->_dictionaryType, a6);
    v19 = v14;
  }

  return v14;
}

@end