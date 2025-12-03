@interface _CNAutocompleteQueryCacheMissAggdLogging
- (_CNAutocompleteQueryCacheMissAggdLogging)init;
- (_CNAutocompleteQueryCacheMissAggdLogging)initWithProbe:(id)probe;
- (void)didReturnCacheFalseNegatives:(id)negatives;
- (void)didReturnCacheFalsePositives:(id)positives;
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

- (_CNAutocompleteQueryCacheMissAggdLogging)initWithProbe:(id)probe
{
  probeCopy = probe;
  v10.receiver = self;
  v10.super_class = _CNAutocompleteQueryCacheMissAggdLogging;
  v6 = [(_CNAutocompleteQueryCacheMissAggdLogging *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_probe, probe);
    v8 = v7;
  }

  return v7;
}

- (void)didReturnCacheFalseNegatives:(id)negatives
{
  negativesCopy = negatives;
  if ([negativesCopy count])
  {
    probe = [(_CNAutocompleteQueryCacheMissAggdLogging *)self probe];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(negativesCopy, "count")}];
    [probe recordAddValue:v5 forKey:@"false-negatives"];

    probe2 = [(_CNAutocompleteQueryCacheMissAggdLogging *)self probe];
    [probe2 sendData];
  }
}

- (void)didReturnCacheFalsePositives:(id)positives
{
  positivesCopy = positives;
  if ([positivesCopy count])
  {
    probe = [(_CNAutocompleteQueryCacheMissAggdLogging *)self probe];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(positivesCopy, "count")}];
    [probe recordAddValue:v5 forKey:@"false-positives"];

    probe2 = [(_CNAutocompleteQueryCacheMissAggdLogging *)self probe];
    [probe2 sendData];
  }
}

@end