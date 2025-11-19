@interface DKSystemEvent
- (DKSystemEvent)initWithType:(unsigned __int8)a3 value:(id)a4;
@end

@implementation DKSystemEvent

- (DKSystemEvent)initWithType:(unsigned __int8)a3 value:(id)a4
{
  v4 = a3;
  v6 = a4;
  v10.receiver = self;
  v10.super_class = DKSystemEvent;
  v7 = [(DKSystemEvent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(DKSystemEvent *)v7 setType:v4];
    [(DKSystemEvent *)v8 setValue:v6];
  }

  return v8;
}

@end