@interface CCUIStatusUpdate
+ (id)statusUpdateWithMessage:(id)message type:(unint64_t)type;
- (id)_initWithMessage:(id)message type:(unint64_t)type;
@end

@implementation CCUIStatusUpdate

+ (id)statusUpdateWithMessage:(id)message type:(unint64_t)type
{
  messageCopy = message;
  v7 = [[self alloc] _initWithMessage:messageCopy type:type];

  return v7;
}

- (id)_initWithMessage:(id)message type:(unint64_t)type
{
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = CCUIStatusUpdate;
  v7 = [(CCUIStatusUpdate *)&v11 init];
  if (v7)
  {
    v8 = [messageCopy copy];
    message = v7->_message;
    v7->_message = v8;

    v7->_type = type;
  }

  return v7;
}

@end