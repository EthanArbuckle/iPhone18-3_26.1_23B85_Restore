@interface SUUISwooshViewController
- (CGRect)frameForItemAtIndex:(int64_t)index;
- (SUUISwooshViewControllerDelegate)delegate;
@end

@implementation SUUISwooshViewController

- (CGRect)frameForItemAtIndex:(int64_t)index
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (SUUISwooshViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end