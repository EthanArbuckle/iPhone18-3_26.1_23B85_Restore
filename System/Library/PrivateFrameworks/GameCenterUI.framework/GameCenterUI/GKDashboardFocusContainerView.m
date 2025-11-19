@interface GKDashboardFocusContainerView
- (id)preferredFocusEnvironments;
@end

@implementation GKDashboardFocusContainerView

- (id)preferredFocusEnvironments
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_focusView)
  {
    v4[0] = self->_focusView;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

@end