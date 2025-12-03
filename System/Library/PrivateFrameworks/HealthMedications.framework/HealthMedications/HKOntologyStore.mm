@interface HKOntologyStore
- (void)_markShardRequiredWithIdentifier:(void *)identifier completion:;
@end

@implementation HKOntologyStore

- (void)_markShardRequiredWithIdentifier:(void *)identifier completion:
{
  v11 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v10 = a2;
    v5 = MEMORY[0x277CBEA60];
    identifierCopy = identifier;
    v7 = a2;
    v8 = [v5 arrayWithObjects:&v10 count:1];

    [self markShardsWithIdentifiers:v8 options:5 completion:{identifierCopy, v10, v11}];
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end