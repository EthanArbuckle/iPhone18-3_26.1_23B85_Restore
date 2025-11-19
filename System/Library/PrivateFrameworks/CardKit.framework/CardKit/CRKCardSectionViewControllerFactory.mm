@interface CRKCardSectionViewControllerFactory
@end

@implementation CRKCardSectionViewControllerFactory

uint64_t __55___CRKCardSectionViewControllerFactory__sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(_CRKCardSectionViewControllerFactory);
  v1 = _sharedInstance_sStaticFactory;
  _sharedInstance_sStaticFactory = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end