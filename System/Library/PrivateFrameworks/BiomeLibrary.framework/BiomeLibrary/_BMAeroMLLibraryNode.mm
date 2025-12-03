@interface _BMAeroMLLibraryNode
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMAeroMLLibraryNode

+ (id)sublibraries
{
  v10[4] = *MEMORY[0x1E69E9840];
  dataCorrelations = [self DataCorrelations];
  v10[0] = dataCorrelations;
  insights = [self Insights];
  v10[1] = insights;
  labeledData = [self LabeledData];
  v10[2] = labeledData;
  rawEvent = [self RawEvent];
  v10[3] = rawEvent;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = [v2 copy];

  return v3;
}

@end