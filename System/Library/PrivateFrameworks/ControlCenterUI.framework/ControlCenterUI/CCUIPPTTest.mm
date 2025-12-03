@interface CCUIPPTTest
+ (id)testWithName:(id)name beginSignpost:(unint64_t)signpost endSignpost:(unint64_t)endSignpost;
- (id)_initWithName:(id)name beginSignpost:(unint64_t)signpost endSignpost:(unint64_t)endSignpost;
@end

@implementation CCUIPPTTest

+ (id)testWithName:(id)name beginSignpost:(unint64_t)signpost endSignpost:(unint64_t)endSignpost
{
  nameCopy = name;
  v9 = [[self alloc] _initWithName:nameCopy beginSignpost:signpost endSignpost:endSignpost];

  return v9;
}

- (id)_initWithName:(id)name beginSignpost:(unint64_t)signpost endSignpost:(unint64_t)endSignpost
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = CCUIPPTTest;
  v9 = [(CCUIPPTTest *)&v13 init];
  if (v9)
  {
    v10 = [nameCopy copy];
    name = v9->_name;
    v9->_name = v10;

    v9->_beginSignpost = signpost;
    v9->_endSignpost = endSignpost;
  }

  return v9;
}

@end