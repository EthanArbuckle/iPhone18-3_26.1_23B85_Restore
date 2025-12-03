@interface DMProgressWorkItem
- (DMProgressWorkItem)initWithName:(id)name startTimestamp:(unint64_t)timestamp;
@end

@implementation DMProgressWorkItem

- (DMProgressWorkItem)initWithName:(id)name startTimestamp:(unint64_t)timestamp
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = DMProgressWorkItem;
  v7 = [(DMProgressWorkItem *)&v11 init];
  if (v7)
  {
    v8 = [nameCopy copy];
    name = v7->_name;
    v7->_name = v8;

    v7->_startTimestamp = timestamp;
  }

  return v7;
}

@end