@interface DTTapMessageHandler
- (DTTapMessageHandler)initWithConfig:(id)config;
- (id)messageReceived:(id)received;
@end

@implementation DTTapMessageHandler

- (DTTapMessageHandler)initWithConfig:(id)config
{
  configCopy = config;
  v9.receiver = self;
  v9.super_class = DTTapMessageHandler;
  v6 = [(DTTapMessageHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (!configCopy)
    {
      sub_24802EE6C();
    }

    objc_storeStrong(&v6->_config, config);
  }

  return v7;
}

- (id)messageReceived:(id)received
{
  if (!received)
  {
    v14 = 0;
    goto LABEL_10;
  }

  v3 = MEMORY[0x277CBEB98];
  receivedCopy = received;
  v5 = [v3 setWithObject:objc_opt_class()];
  v6 = [receivedCopy objectWithAllowedClasses:v5];

  if (!v6)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v6;
      v16 = [DTTapHeartbeatMemo alloc];
      heartbeatTime = [v15 heartbeatTime];

      v13 = [(DTTapHeartbeatMemo *)v16 initWithTimestamp:heartbeatTime];
      goto LABEL_9;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [DTTapStatusMemo alloc];
  status = [v7 status];
  notice = [v7 notice];
  info = [v7 info];
  timestamp = [v7 timestamp];

  v13 = [(DTTapStatusMemo *)v8 initWithStatus:status notice:notice info:info timestamp:timestamp];
LABEL_9:
  v14 = v13;

LABEL_10:

  return v14;
}

@end