@interface CCUIPPTRootTest
+ (id)testWithName:(id)name;
@end

@implementation CCUIPPTRootTest

+ (id)testWithName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] _initWithName:nameCopy beginSignpost:0 endSignpost:0];

  return v5;
}

@end