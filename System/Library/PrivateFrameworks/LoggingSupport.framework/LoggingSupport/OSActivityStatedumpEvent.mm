@interface OSActivityStatedumpEvent
- (OSActivityStatedumpEvent)initWithEntry:(os_activity_stream_entry_s *)a3;
- (void)_addProperties:(id)a3;
@end

@implementation OSActivityStatedumpEvent

- (void)_addProperties:(id)a3
{
  v4.receiver = self;
  v4.super_class = OSActivityStatedumpEvent;
  v3 = a3;
  [(OSActivityEvent *)&v4 _addProperties:v3];
  [v3 setObject:&unk_2841B8EC8 forKey:{@"eventType", v4.receiver, v4.super_class}];
}

- (OSActivityStatedumpEvent)initWithEntry:(os_activity_stream_entry_s *)a3
{
  if (*(&a3->var8.var12.var10 + 4))
  {
    v7.receiver = self;
    v7.super_class = OSActivityStatedumpEvent;
    v4 = [(OSActivityStatedumpEvent *)&v7 init];
    v5 = v4;
    if (v4)
    {
      [(OSActivityEvent *)v4 fillFromStreamEntry:a3 eventMessage:*(&a3->var8.var12.var9 + 1) persisted:1];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end