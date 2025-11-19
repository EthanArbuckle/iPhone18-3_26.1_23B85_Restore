@interface _CNAutocompleteQueryCacheMissAggdLogging
- (_CNAutocompleteQueryCacheMissAggdLogging)init;
- (_CNAutocompleteQueryCacheMissAggdLogging)initWithProbe:(id)a3;
- (void)didReturnCacheFalseNegatives:(id)a3;
- (void)didReturnCacheFalsePositives:(id)a3;
@end

@implementation _CNAutocompleteQueryCacheMissAggdLogging

- (_CNAutocompleteQueryCacheMissAggdLogging)init
{
  v10[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"com.apple.contacts.autocomplete";
  v10[1] = @"performance";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v5 = CNAutocompleteProbeBuildKey(v3, v4);

  v6 = [[CNAutocompleteAggdProbe alloc] initWithKeyPrefix:v5];
  v7 = [(_CNAutocompleteQueryCacheMissAggdLogging *)self initWithProbe:v6];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (_CNAutocompleteQueryCacheMissAggdLogging)initWithProbe:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _CNAutocompleteQueryCacheMissAggdLogging;
  v6 = [(_CNAutocompleteQueryCacheMissAggdLogging *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_probe, a3);
    v8 = v7;
  }

  return v7;
}

- (void)didReturnCacheFalseNegatives:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    v4 = [(_CNAutocompleteQueryCacheMissAggdLogging *)self probe];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
    [v4 recordAddValue:v5 forKey:@"false-negatives"];

    v6 = [(_CNAutocompleteQueryCacheMissAggdLogging *)self probe];
    [v6 sendData];
  }
}

- (void)didReturnCacheFalsePositives:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    v4 = [(_CNAutocompleteQueryCacheMissAggdLogging *)self probe];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
    [v4 recordAddValue:v5 forKey:@"false-positives"];

    v6 = [(_CNAutocompleteQueryCacheMissAggdLogging *)self probe];
    [v6 sendData];
  }
}

@end