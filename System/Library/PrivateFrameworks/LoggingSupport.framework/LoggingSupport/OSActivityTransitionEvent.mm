@interface OSActivityTransitionEvent
- (OSActivityTransitionEvent)initWithEntry:(os_activity_stream_entry_s *)entry;
- (void)_addProperties:(id)properties;
@end

@implementation OSActivityTransitionEvent

- (void)_addProperties:(id)properties
{
  v6.receiver = self;
  v6.super_class = OSActivityTransitionEvent;
  propertiesCopy = properties;
  [(OSActivityEvent *)&v6 _addProperties:propertiesCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[OSActivityTransitionEvent transitionToActivityID](self, "transitionToActivityID", v6.receiver, v6.super_class)}];
  [propertiesCopy setObject:v5 forKey:@"transitionToActivityID"];
}

- (OSActivityTransitionEvent)initWithEntry:(os_activity_stream_entry_s *)entry
{
  v11 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = OSActivityTransitionEvent;
  v4 = [(OSActivityTransitionEvent *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = *(&entry->var8.var12.var9 + 1);
    v4->_transitionToActivityID = v6;
    snprintf(__str, 0x80uLL, "Transition to 0x%llx", v6 & 0xFFFFFFFFFFFFFFLL);
    [(OSActivityEvent *)v5 fillFromStreamEntry:entry eventMessage:__str persisted:0];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

@end