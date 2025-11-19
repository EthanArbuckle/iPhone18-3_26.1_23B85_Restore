@interface _UIFocusItemDummy
- (CGRect)frame;
- (NSArray)preferredFocusEnvironments;
- (UIFocusEnvironment)parentFocusEnvironment;
@end

@implementation _UIFocusItemDummy

- (NSArray)preferredFocusEnvironments
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIFocusEnvironment)parentFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_parentFocusEnvironment);

  return WeakRetained;
}

@end