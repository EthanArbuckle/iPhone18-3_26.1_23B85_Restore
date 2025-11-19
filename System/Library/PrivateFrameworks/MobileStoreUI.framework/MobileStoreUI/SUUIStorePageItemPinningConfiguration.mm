@interface SUUIStorePageItemPinningConfiguration
- (UIEdgeInsets)pinningContentInset;
- (void)invalidatePinningContentInset;
@end

@implementation SUUIStorePageItemPinningConfiguration

- (void)invalidatePinningContentInset
{
  v2 = *(MEMORY[0x277D768C8] + 16);
  *&self->_pinningContentInset.top = *MEMORY[0x277D768C8];
  *&self->_pinningContentInset.bottom = v2;
  self->_hasValidPinningContentInset = 0;
}

- (UIEdgeInsets)pinningContentInset
{
  top = self->_pinningContentInset.top;
  left = self->_pinningContentInset.left;
  bottom = self->_pinningContentInset.bottom;
  right = self->_pinningContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end