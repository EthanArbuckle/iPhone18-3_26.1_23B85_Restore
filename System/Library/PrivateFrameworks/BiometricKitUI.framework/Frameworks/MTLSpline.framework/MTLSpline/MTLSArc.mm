@interface MTLSArc
- (id).cxx_construct;
@end

@implementation MTLSArc

- (id).cxx_construct
{
  *(self + 18) = 0;
  *(self + 19) = 0;
  *(self + 17) = 0;
  return self;
}

@end