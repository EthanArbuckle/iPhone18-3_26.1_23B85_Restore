@interface CCUIPPTTest
+ (id)testWithName:(id)a3 beginSignpost:(unint64_t)a4 endSignpost:(unint64_t)a5;
- (id)_initWithName:(id)a3 beginSignpost:(unint64_t)a4 endSignpost:(unint64_t)a5;
@end

@implementation CCUIPPTTest

+ (id)testWithName:(id)a3 beginSignpost:(unint64_t)a4 endSignpost:(unint64_t)a5
{
  v8 = a3;
  v9 = [[a1 alloc] _initWithName:v8 beginSignpost:a4 endSignpost:a5];

  return v9;
}

- (id)_initWithName:(id)a3 beginSignpost:(unint64_t)a4 endSignpost:(unint64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = CCUIPPTTest;
  v9 = [(CCUIPPTTest *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    name = v9->_name;
    v9->_name = v10;

    v9->_beginSignpost = a4;
    v9->_endSignpost = a5;
  }

  return v9;
}

@end