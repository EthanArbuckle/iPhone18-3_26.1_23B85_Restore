@interface SampleClassObjC
- (id)getHelloWorld;
@end

@implementation SampleClassObjC

- (id)getHelloWorld
{
  selfCopy = self;
  v3 = SampleClassObjC.getHelloWorld()();

  return v3;
}

@end