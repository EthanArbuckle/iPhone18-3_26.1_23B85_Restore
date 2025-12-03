@interface DKSystemEvent
- (DKSystemEvent)initWithType:(unsigned __int8)type value:(id)value;
@end

@implementation DKSystemEvent

- (DKSystemEvent)initWithType:(unsigned __int8)type value:(id)value
{
  typeCopy = type;
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = DKSystemEvent;
  v7 = [(DKSystemEvent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(DKSystemEvent *)v7 setType:typeCopy];
    [(DKSystemEvent *)v8 setValue:valueCopy];
  }

  return v8;
}

@end