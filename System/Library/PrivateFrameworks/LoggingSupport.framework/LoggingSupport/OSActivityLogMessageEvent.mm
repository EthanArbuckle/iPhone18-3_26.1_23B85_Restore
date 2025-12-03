@interface OSActivityLogMessageEvent
- (OSActivityLogMessageEvent)initWithEntry:(os_activity_stream_entry_s *)entry;
- (void)_addProperties:(id)properties;
@end

@implementation OSActivityLogMessageEvent

- (void)_addProperties:(id)properties
{
  propertiesCopy = properties;
  v12.receiver = self;
  v12.super_class = OSActivityLogMessageEvent;
  [(OSActivityEvent *)&v12 _addProperties:propertiesCopy];
  messageType = [(OSActivityLogMessageEvent *)self messageType];
  if (messageType <= 1)
  {
    if (!messageType)
    {
      v6 = @"Default";
      goto LABEL_13;
    }

    if (messageType == 1)
    {
      v6 = @"Info";
      goto LABEL_13;
    }
  }

  else
  {
    switch(messageType)
    {
      case 2:
        v6 = @"Debug";
        goto LABEL_13;
      case 16:
        v6 = @"Error";
        goto LABEL_13;
      case 17:
        v6 = @"Fault";
        goto LABEL_13;
    }
  }

  v6 = @"Unknown";
LABEL_13:
  subsystem = [(OSActivityLogMessageEvent *)self subsystem];

  if (subsystem)
  {
    subsystem2 = [(OSActivityLogMessageEvent *)self subsystem];
    [propertiesCopy setObject:subsystem2 forKey:@"subsystem"];
  }

  category = [(OSActivityLogMessageEvent *)self category];

  if (category)
  {
    category2 = [(OSActivityLogMessageEvent *)self category];
    [propertiesCopy setObject:category2 forKey:@"category"];
  }

  [propertiesCopy setObject:v6 forKey:@"messageType"];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[OSActivityLogMessageEvent senderProgramCounter](self, "senderProgramCounter")}];
  [propertiesCopy setObject:v11 forKey:@"senderProgramCounter"];
}

- (OSActivityLogMessageEvent)initWithEntry:(os_activity_stream_entry_s *)entry
{
  v13.receiver = self;
  v13.super_class = OSActivityLogMessageEvent;
  v4 = [(OSActivityLogMessageEvent *)&v13 init];
  if (v4)
  {
    v5 = *(&entry->var7 + 4);
    v6 = os_log_copy_formatted_message(&entry->var7 + 4);
    if (v6)
    {
      v7 = v6;
      [(OSActivityEvent *)v4 fillFromStreamEntry:entry eventMessage:v6 persisted:*(&entry->var8.var12 + 145)];
      free(v7);
      [(OSActivityEventMessage *)v4 fillEventData:*(&entry->var8.var12.var10 + 4) length:*(&entry->var8.var12.var11 + 4) privateBuffer:*(&entry->var8.var12.var12 + 4) length:*(&entry->var8.var12.var13 + 4)];
      if (*(&entry->var8.var12 + 132))
      {
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
        category = v4->_category;
        v4->_category = v8;
      }

      if (*(&entry->var8.var12 + 124))
      {
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
        subsystem = v4->_subsystem;
        v4->_subsystem = v10;
      }

      v4->_senderProgramCounter = *&entry->var8.var12.var6.tz_dsttime;
      v4->_messageType = BYTE1(v5);
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

@end