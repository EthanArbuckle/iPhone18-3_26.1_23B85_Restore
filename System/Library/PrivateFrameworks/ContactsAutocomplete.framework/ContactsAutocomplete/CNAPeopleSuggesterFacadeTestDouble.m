@interface CNAPeopleSuggesterFacadeTestDouble
@end

@implementation CNAPeopleSuggesterFacadeTestDouble

id __73___CNAPeopleSuggesterFacadeTestDouble_makeContactWithDisplayName_handle___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CBDB20];
  v3 = *MEMORY[0x277CBD8E0];
  v4 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:a2];
  v5 = [v2 labeledValueWithLabel:v3 value:v4];

  return v5;
}

@end