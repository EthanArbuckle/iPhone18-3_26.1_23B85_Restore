@interface OSActivityCreateEvent
- (OSActivityCreateEvent)initWithEntry:(os_activity_stream_entry_s *)a3;
- (void)_addProperties:(id)a3;
@end

@implementation OSActivityCreateEvent

- (void)_addProperties:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = OSActivityCreateEvent;
  [(OSActivityEvent *)&v7 _addProperties:v4];
  [v4 setObject:@"OSActivityCreateEvent" forKey:@"eventType"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[OSActivityCreateEvent senderProgramCounter](self, "senderProgramCounter")}];
  [v4 setObject:v5 forKey:@"senderProgramCounter"];

  if ([(OSActivityCreateEvent *)self creatorActivityID])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSActivityCreateEvent creatorActivityID](self, "creatorActivityID")}];
    [v4 setObject:v6 forKey:@"creatorActivityID"];
  }
}

- (OSActivityCreateEvent)initWithEntry:(os_activity_stream_entry_s *)a3
{
  if (*(&a3->var8.var12.var9 + 1))
  {
    v7.receiver = self;
    v7.super_class = OSActivityCreateEvent;
    v4 = [(OSActivityCreateEvent *)&v7 init];
    v5 = v4;
    if (v4)
    {
      [(OSActivityEvent *)v4 fillFromStreamEntry:a3 eventMessage:*(&a3->var8.var12.var9 + 1) persisted:0];
      v5->_creatorActivityID = *(&a3->var8.var12.var10 + 4);
      v5->_creatorProcessUniqueID = *(&a3->var8.var12.var11 + 4);
      v5->_senderProgramCounter = *&a3->var8.var12.var6.tz_dsttime;
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end