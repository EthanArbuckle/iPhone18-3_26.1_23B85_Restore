@interface SGMessage
- (id)spotlightReference;
@end

@implementation SGMessage

- (id)spotlightReference
{
  v12[1] = *MEMORY[0x277D85DE8];
  spotlightBundleIdentifier = [(SGMessage *)self spotlightBundleIdentifier];
  spotlightUniqueIdentifier = [(SGMessage *)self spotlightUniqueIdentifier];
  v5 = spotlightUniqueIdentifier;
  v6 = 0;
  if (spotlightBundleIdentifier && spotlightUniqueIdentifier)
  {
    v7 = MEMORY[0x277D41F80];
    spotlightDomainIdentifier = [(SGMessage *)self spotlightDomainIdentifier];
    v12[0] = v5;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v6 = [v7 referenceWithBundleId:spotlightBundleIdentifier domainId:spotlightDomainIdentifier itemIds:v9];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

@end