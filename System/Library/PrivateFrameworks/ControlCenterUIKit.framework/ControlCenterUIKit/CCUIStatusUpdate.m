@interface CCUIStatusUpdate
+ (id)statusUpdateWithMessage:(id)a3 type:(unint64_t)a4;
- (id)_initWithMessage:(id)a3 type:(unint64_t)a4;
@end

@implementation CCUIStatusUpdate

+ (id)statusUpdateWithMessage:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] _initWithMessage:v6 type:a4];

  return v7;
}

- (id)_initWithMessage:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CCUIStatusUpdate;
  v7 = [(CCUIStatusUpdate *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    message = v7->_message;
    v7->_message = v8;

    v7->_type = a4;
  }

  return v7;
}

@end