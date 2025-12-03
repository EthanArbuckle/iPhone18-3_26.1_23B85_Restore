@interface OSActivityUserActionEvent
- (OSActivityUserActionEvent)initWithEntry:(os_activity_stream_entry_s *)entry;
- (void)_addProperties:(id)properties;
@end

@implementation OSActivityUserActionEvent

- (void)_addProperties:(id)properties
{
  v6.receiver = self;
  v6.super_class = OSActivityUserActionEvent;
  propertiesCopy = properties;
  [(OSActivityEvent *)&v6 _addProperties:propertiesCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[OSActivityUserActionEvent senderProgramCounter](self, "senderProgramCounter", v6.receiver, v6.super_class)}];
  [propertiesCopy setObject:v5 forKey:@"senderProgramCounter"];
}

- (OSActivityUserActionEvent)initWithEntry:(os_activity_stream_entry_s *)entry
{
  if (*(&entry->var8.var12.var9 + 1))
  {
    v7.receiver = self;
    v7.super_class = OSActivityUserActionEvent;
    v4 = [(OSActivityUserActionEvent *)&v7 init];
    v5 = v4;
    if (v4)
    {
      [(OSActivityEvent *)v4 fillFromStreamEntry:entry eventMessage:*(&entry->var8.var12.var9 + 1) persisted:entry->var8.var8.var10[8]];
      v5->_senderProgramCounter = *&entry->var8.var12.var6.tz_dsttime;
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end