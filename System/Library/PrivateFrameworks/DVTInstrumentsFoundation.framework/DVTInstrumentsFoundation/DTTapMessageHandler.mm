@interface DTTapMessageHandler
- (DTTapMessageHandler)initWithConfig:(id)a3;
- (id)messageReceived:(id)a3;
@end

@implementation DTTapMessageHandler

- (DTTapMessageHandler)initWithConfig:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DTTapMessageHandler;
  v6 = [(DTTapMessageHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (!v5)
    {
      sub_24802EE6C();
    }

    objc_storeStrong(&v6->_config, a3);
  }

  return v7;
}

- (id)messageReceived:(id)a3
{
  if (!a3)
  {
    v14 = 0;
    goto LABEL_10;
  }

  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = [v3 setWithObject:objc_opt_class()];
  v6 = [v4 objectWithAllowedClasses:v5];

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
      v17 = [v15 heartbeatTime];

      v13 = [(DTTapHeartbeatMemo *)v16 initWithTimestamp:v17];
      goto LABEL_9;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [DTTapStatusMemo alloc];
  v9 = [v7 status];
  v10 = [v7 notice];
  v11 = [v7 info];
  v12 = [v7 timestamp];

  v13 = [(DTTapStatusMemo *)v8 initWithStatus:v9 notice:v10 info:v11 timestamp:v12];
LABEL_9:
  v14 = v13;

LABEL_10:

  return v14;
}

@end