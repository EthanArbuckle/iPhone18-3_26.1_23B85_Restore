@interface CSItemSummary
@end

@implementation CSItemSummary

id __51__CSItemSummary_MailUIPredicates___personPredicate__block_invoke_3(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA920];
  v4 = MEMORY[0x277D06E10];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v4 spotlightSenderSearchPredicateForValue:v6 operator:v5];
  v12[0] = v7;
  v8 = [MEMORY[0x277D06E10] spotlightRecipientSearchPredicateForValue:v6 operator:*(a1 + 32)];

  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v10 = [v3 orPredicateWithSubpredicates:v9];

  return v10;
}

@end