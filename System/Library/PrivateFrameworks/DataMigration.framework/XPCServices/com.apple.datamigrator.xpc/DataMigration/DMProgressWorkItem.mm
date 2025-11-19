@interface DMProgressWorkItem
- (DMProgressWorkItem)initWithName:(id)a3 startTimestamp:(unint64_t)a4;
@end

@implementation DMProgressWorkItem

- (DMProgressWorkItem)initWithName:(id)a3 startTimestamp:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = DMProgressWorkItem;
  v7 = [(DMProgressWorkItem *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    name = v7->_name;
    v7->_name = v8;

    v7->_startTimestamp = a4;
  }

  return v7;
}

@end