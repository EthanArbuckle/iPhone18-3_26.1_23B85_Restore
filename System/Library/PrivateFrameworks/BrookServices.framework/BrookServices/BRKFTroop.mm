@interface BRKFTroop
- (BRKFTroopDelegate)delegate;
@end

@implementation BRKFTroop

- (BRKFTroopDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end