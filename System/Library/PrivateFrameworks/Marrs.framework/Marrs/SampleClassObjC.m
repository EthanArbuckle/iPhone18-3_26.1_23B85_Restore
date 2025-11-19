@interface SampleClassObjC
- (id)getHelloWorld;
@end

@implementation SampleClassObjC

- (id)getHelloWorld
{
  v2 = self;
  v3 = SampleClassObjC.getHelloWorld()();

  return v3;
}

@end