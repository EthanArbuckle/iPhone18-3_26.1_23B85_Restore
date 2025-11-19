@interface LACServiceLocator
- (LACServiceLocator)init;
@end

@implementation LACServiceLocator

- (LACServiceLocator)init
{
  v6.receiver = self;
  v6.super_class = LACServiceLocator;
  v2 = [(LACServiceLocator *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    services = v2->_services;
    v2->_services = v3;
  }

  return v2;
}

@end