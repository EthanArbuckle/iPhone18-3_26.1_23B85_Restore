@interface DBEvent
+ (id)eventWithType:(unint64_t)type context:(id)context;
- (DBEvent)initWithType:(unint64_t)type context:(id)context;
@end

@implementation DBEvent

+ (id)eventWithType:(unint64_t)type context:(id)context
{
  contextCopy = context;
  v6 = [objc_alloc(objc_opt_class()) initWithType:type context:contextCopy];

  return v6;
}

- (DBEvent)initWithType:(unint64_t)type context:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = DBEvent;
  v8 = [(DBEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_context, context);
  }

  return v9;
}

@end