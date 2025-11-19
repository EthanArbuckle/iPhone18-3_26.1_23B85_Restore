@interface OSActivityLogMessageEvent
- (OSActivityLogMessageEvent)initWithEntry:(os_activity_stream_entry_s *)a3;
- (void)_addProperties:(id)a3;
@end

@implementation OSActivityLogMessageEvent

- (void)_addProperties:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = OSActivityLogMessageEvent;
  [(OSActivityEvent *)&v12 _addProperties:v4];
  v5 = [(OSActivityLogMessageEvent *)self messageType];
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
  }

  else
  {
    switch(v5)
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
  v7 = [(OSActivityLogMessageEvent *)self subsystem];

  if (v7)
  {
    v8 = [(OSActivityLogMessageEvent *)self subsystem];
    [v4 setObject:v8 forKey:@"subsystem"];
  }

  v9 = [(OSActivityLogMessageEvent *)self category];

  if (v9)
  {
    v10 = [(OSActivityLogMessageEvent *)self category];
    [v4 setObject:v10 forKey:@"category"];
  }

  [v4 setObject:v6 forKey:@"messageType"];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[OSActivityLogMessageEvent senderProgramCounter](self, "senderProgramCounter")}];
  [v4 setObject:v11 forKey:@"senderProgramCounter"];
}

- (OSActivityLogMessageEvent)initWithEntry:(os_activity_stream_entry_s *)a3
{
  v13.receiver = self;
  v13.super_class = OSActivityLogMessageEvent;
  v4 = [(OSActivityLogMessageEvent *)&v13 init];
  if (v4)
  {
    v5 = *(&a3->var7 + 4);
    v6 = os_log_copy_formatted_message(&a3->var7 + 4);
    if (v6)
    {
      v7 = v6;
      [(OSActivityEvent *)v4 fillFromStreamEntry:a3 eventMessage:v6 persisted:*(&a3->var8.var12 + 145)];
      free(v7);
      [(OSActivityEventMessage *)v4 fillEventData:*(&a3->var8.var12.var10 + 4) length:*(&a3->var8.var12.var11 + 4) privateBuffer:*(&a3->var8.var12.var12 + 4) length:*(&a3->var8.var12.var13 + 4)];
      if (*(&a3->var8.var12 + 132))
      {
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
        category = v4->_category;
        v4->_category = v8;
      }

      if (*(&a3->var8.var12 + 124))
      {
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
        subsystem = v4->_subsystem;
        v4->_subsystem = v10;
      }

      v4->_senderProgramCounter = *&a3->var8.var12.var6.tz_dsttime;
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