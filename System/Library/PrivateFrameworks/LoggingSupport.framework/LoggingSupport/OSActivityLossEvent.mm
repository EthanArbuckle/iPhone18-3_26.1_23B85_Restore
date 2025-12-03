@interface OSActivityLossEvent
- (OSActivityLossEvent)initWithEntry:(os_activity_stream_entry_s *)entry;
- (void)_addProperties:(id)properties;
@end

@implementation OSActivityLossEvent

- (void)_addProperties:(id)properties
{
  v9.receiver = self;
  v9.super_class = OSActivityLossEvent;
  propertiesCopy = properties;
  [(OSActivityEvent *)&v9 _addProperties:propertiesCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSActivityLossEvent startMachTimestamp](self, "startMachTimestamp", v9.receiver, v9.super_class)}];
  [propertiesCopy setObject:v5 forKey:@"startMachTimestamp"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSActivityLossEvent endMachTimestamp](self, "endMachTimestamp")}];
  [propertiesCopy setObject:v6 forKey:@"endMachTimestamp"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[OSActivityLossEvent count](self, "count")}];
  [propertiesCopy setObject:v7 forKey:@"count"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[OSActivityLossEvent saturated](self, "saturated")}];
  [propertiesCopy setObject:v8 forKey:@"saturated"];
}

- (OSActivityLossEvent)initWithEntry:(os_activity_stream_entry_s *)entry
{
  v13 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = OSActivityLossEvent;
  v4 = [(OSActivityLossEvent *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_startMachTimestamp = *(&entry->var8.var12.var9 + 1);
    v6 = *(&entry->var8.var12.var10 + 4);
    v4->_endMachTimestamp = v6;
    var11_high = HIDWORD(entry->var8.var12.var11);
    v4->_count = var11_high;
    v4->_saturated = var11_high == 63;
    v8 = &_CTF_NULLSTR;
    if (var11_high == 63)
    {
      v8 = ">=";
    }

    snprintf(__str, 0x100uLL, "lost %s%u unreliable messages from %llu-%llu (Mach continuous exact start-approx. end)", v8, var11_high, v4->_startMachTimestamp, v6);
    [(OSActivityEvent *)v5 fillFromStreamEntry:entry eventMessage:__str persisted:1];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

@end