@interface SGMessage
- (id)spotlightReference;
@end

@implementation SGMessage

- (id)spotlightReference
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [(SGMessage *)self spotlightBundleIdentifier];
  v4 = [(SGMessage *)self spotlightUniqueIdentifier];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = MEMORY[0x277D41F80];
    v8 = [(SGMessage *)self spotlightDomainIdentifier];
    v12[0] = v5;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v6 = [v7 referenceWithBundleId:v3 domainId:v8 itemIds:v9];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

@end