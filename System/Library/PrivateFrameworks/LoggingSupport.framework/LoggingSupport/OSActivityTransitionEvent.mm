@interface OSActivityTransitionEvent
- (OSActivityTransitionEvent)initWithEntry:(os_activity_stream_entry_s *)a3;
- (void)_addProperties:(id)a3;
@end

@implementation OSActivityTransitionEvent

- (void)_addProperties:(id)a3
{
  v6.receiver = self;
  v6.super_class = OSActivityTransitionEvent;
  v4 = a3;
  [(OSActivityEvent *)&v6 _addProperties:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSActivityTransitionEvent transitionToActivityID](self, "transitionToActivityID", v6.receiver, v6.super_class)}];
  [v4 setObject:v5 forKey:@"transitionToActivityID"];
}

- (OSActivityTransitionEvent)initWithEntry:(os_activity_stream_entry_s *)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = OSActivityTransitionEvent;
  v4 = [(OSActivityTransitionEvent *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = *(&a3->var8.var12.var9 + 1);
    v4->_transitionToActivityID = v6;
    snprintf(__str, 0x80uLL, "Transition to 0x%llx", v6 & 0xFFFFFFFFFFFFFFLL);
    [(OSActivityEvent *)v5 fillFromStreamEntry:a3 eventMessage:__str persisted:0];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

@end