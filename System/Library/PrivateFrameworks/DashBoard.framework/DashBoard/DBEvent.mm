@interface DBEvent
+ (id)eventWithType:(unint64_t)a3 context:(id)a4;
- (DBEvent)initWithType:(unint64_t)a3 context:(id)a4;
@end

@implementation DBEvent

+ (id)eventWithType:(unint64_t)a3 context:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(objc_opt_class()) initWithType:a3 context:v5];

  return v6;
}

- (DBEvent)initWithType:(unint64_t)a3 context:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DBEvent;
  v8 = [(DBEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_context, a4);
  }

  return v9;
}

@end