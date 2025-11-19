@interface PinnedTabsContainer
+ (PinnedTabsContainer)containerWithActiveProfileIdentifier:(id)a3;
+ (PinnedTabsContainer)containerWithPrivateBrowsing:(BOOL)a3;
@end

@implementation PinnedTabsContainer

+ (PinnedTabsContainer)containerWithPrivateBrowsing:(BOOL)a3
{
  v4 = objc_alloc_init(PinnedTabsContainer);
  v4->_privateBrowsingEnabled = a3;
  v4->_isInDefaultProfile = 1;
  objc_storeStrong(&v4->_activeProfileIdentifier, *MEMORY[0x277D49BD8]);

  return v4;
}

+ (PinnedTabsContainer)containerWithActiveProfileIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PinnedTabsContainer);
  v5 = [v3 copy];

  activeProfileIdentifier = v4->_activeProfileIdentifier;
  v4->_activeProfileIdentifier = v5;

  return v4;
}

@end