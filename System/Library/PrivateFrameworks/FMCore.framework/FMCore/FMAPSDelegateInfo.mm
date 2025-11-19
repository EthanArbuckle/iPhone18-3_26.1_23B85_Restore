@interface FMAPSDelegateInfo
- (FMAPSDelegate)delegate;
@end

@implementation FMAPSDelegateInfo

- (FMAPSDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end