@interface OSActivityLossEvent
- (OSActivityLossEvent)initWithEntry:(os_activity_stream_entry_s *)a3;
- (void)_addProperties:(id)a3;
@end

@implementation OSActivityLossEvent

- (void)_addProperties:(id)a3
{
  v9.receiver = self;
  v9.super_class = OSActivityLossEvent;
  v4 = a3;
  [(OSActivityEvent *)&v9 _addProperties:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSActivityLossEvent startMachTimestamp](self, "startMachTimestamp", v9.receiver, v9.super_class)}];
  [v4 setObject:v5 forKey:@"startMachTimestamp"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSActivityLossEvent endMachTimestamp](self, "endMachTimestamp")}];
  [v4 setObject:v6 forKey:@"endMachTimestamp"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[OSActivityLossEvent count](self, "count")}];
  [v4 setObject:v7 forKey:@"count"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[OSActivityLossEvent saturated](self, "saturated")}];
  [v4 setObject:v8 forKey:@"saturated"];
}

- (OSActivityLossEvent)initWithEntry:(os_activity_stream_entry_s *)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = OSActivityLossEvent;
  v4 = [(OSActivityLossEvent *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_startMachTimestamp = *(&a3->var8.var12.var9 + 1);
    v6 = *(&a3->var8.var12.var10 + 4);
    v4->_endMachTimestamp = v6;
    var11_high = HIDWORD(a3->var8.var12.var11);
    v4->_count = var11_high;
    v4->_saturated = var11_high == 63;
    v8 = &_CTF_NULLSTR;
    if (var11_high == 63)
    {
      v8 = ">=";
    }

    snprintf(__str, 0x100uLL, "lost %s%u unreliable messages from %llu-%llu (Mach continuous exact start-approx. end)", v8, var11_high, v4->_startMachTimestamp, v6);
    [(OSActivityEvent *)v5 fillFromStreamEntry:a3 eventMessage:__str persisted:1];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

@end