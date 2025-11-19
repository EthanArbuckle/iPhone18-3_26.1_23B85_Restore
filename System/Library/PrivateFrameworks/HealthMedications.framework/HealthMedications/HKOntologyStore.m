@interface HKOntologyStore
- (void)_markShardRequiredWithIdentifier:(void *)a3 completion:;
@end

@implementation HKOntologyStore

- (void)_markShardRequiredWithIdentifier:(void *)a3 completion:
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v10 = a2;
    v5 = MEMORY[0x277CBEA60];
    v6 = a3;
    v7 = a2;
    v8 = [v5 arrayWithObjects:&v10 count:1];

    [a1 markShardsWithIdentifiers:v8 options:5 completion:{v6, v10, v11}];
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end