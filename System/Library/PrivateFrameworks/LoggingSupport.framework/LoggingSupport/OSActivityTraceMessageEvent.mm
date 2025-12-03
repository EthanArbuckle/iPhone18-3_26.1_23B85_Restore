@interface OSActivityTraceMessageEvent
- (OSActivityTraceMessageEvent)initWithEntry:(os_activity_stream_entry_s *)entry;
- (void)_addProperties:(id)properties;
@end

@implementation OSActivityTraceMessageEvent

- (void)_addProperties:(id)properties
{
  v8.receiver = self;
  v8.super_class = OSActivityTraceMessageEvent;
  propertiesCopy = properties;
  [(OSActivityEvent *)&v8 _addProperties:propertiesCopy];
  v5 = [(OSActivityTraceMessageEvent *)self messageType:v8.receiver];
  if (v5 <= 1)
  {
    if (!v5)
    {
      v6 = @"Default";
      goto LABEL_13;
    }

    if (v5 == 1)
    {
      v6 = @"Info";
      goto LABEL_13;
    }

LABEL_12:
    v6 = @"Unknown";
    goto LABEL_13;
  }

  if (v5 == 2)
  {
    v6 = @"Debug";
    goto LABEL_13;
  }

  if (v5 == 16)
  {
    v6 = @"Error";
    goto LABEL_13;
  }

  if (v5 != 17)
  {
    goto LABEL_12;
  }

  v6 = @"Fault";
LABEL_13:
  [propertiesCopy setObject:v6 forKey:@"messageType"];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[OSActivityTraceMessageEvent senderProgramCounter](self, "senderProgramCounter")}];
  [propertiesCopy setObject:v7 forKey:@"senderProgramCounter"];
}

- (OSActivityTraceMessageEvent)initWithEntry:(os_activity_stream_entry_s *)entry
{
  v9.receiver = self;
  v9.super_class = OSActivityTraceMessageEvent;
  v4 = [(OSActivityTraceMessageEvent *)&v9 init];
  if (v4)
  {
    v5 = *(&entry->var7 + 4);
    v6 = os_trace_copy_formatted_message(&entry->var7 + 4);
    if (v6)
    {
      v7 = v6;
      [(OSActivityEvent *)v4 fillFromStreamEntry:entry eventMessage:v6 persisted:0];
      [(OSActivityEventMessage *)v4 fillEventData:*(&entry->var8.var12.var10 + 4) length:*(&entry->var8.var12.var11 + 4) privateBuffer:0 length:0];
      objc_storeStrong(&v4->_payload, *(&entry->var8.var12.var12 + 4));
      v4->_senderProgramCounter = *&entry->var8.var12.var6.tz_dsttime;
      v4->_messageType = BYTE1(v5);
      free(v7);
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

@end