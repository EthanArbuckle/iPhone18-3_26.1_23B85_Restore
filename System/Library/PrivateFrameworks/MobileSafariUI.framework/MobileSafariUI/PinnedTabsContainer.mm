@interface PinnedTabsContainer
+ (PinnedTabsContainer)containerWithActiveProfileIdentifier:(id)identifier;
+ (PinnedTabsContainer)containerWithPrivateBrowsing:(BOOL)browsing;
@end

@implementation PinnedTabsContainer

+ (PinnedTabsContainer)containerWithPrivateBrowsing:(BOOL)browsing
{
  v4 = objc_alloc_init(PinnedTabsContainer);
  v4->_privateBrowsingEnabled = browsing;
  v4->_isInDefaultProfile = 1;
  objc_storeStrong(&v4->_activeProfileIdentifier, *MEMORY[0x277D49BD8]);

  return v4;
}

+ (PinnedTabsContainer)containerWithActiveProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(PinnedTabsContainer);
  v5 = [identifierCopy copy];

  activeProfileIdentifier = v4->_activeProfileIdentifier;
  v4->_activeProfileIdentifier = v5;

  return v4;
}

@end