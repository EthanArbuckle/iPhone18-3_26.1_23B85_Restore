@interface _BMWalletPaymentsCommerceLibraryNode
+ (id)sublibraries;
+ (id)validKeyPaths;
@end

@implementation _BMWalletPaymentsCommerceLibraryNode

+ (id)sublibraries
{
  v9[3] = *MEMORY[0x1E69E9840];
  financialInsights = [self FinancialInsights];
  foundIn = [self FoundIn];
  v9[1] = foundIn;
  userProofing = [self UserProofing];
  v9[2] = userProofing;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)validKeyPaths
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = [v2 copy];

  return v3;
}

@end