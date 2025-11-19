@interface LKLogEvent
- (BOOL)containsMessage:(id)a3;
- (BOOL)loggedByFramework:(id)a3;
- (BOOL)loggedByProcess:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionary;
- (void)setActivityIdentifier:(unint64_t)a3;
- (void)setComposedMessage:(id)a3;
- (void)setDate:(id)a3;
- (void)setProcess:(id)a3;
- (void)setSenderImagePath:(id)a3;
@end

@implementation LKLogEvent

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(LKLogEvent *)self process];
  v6 = [v5 copy];
  [v4 setProcess:v6];

  v7 = [(LKLogEvent *)self date];
  v8 = [v7 copy];
  [v4 setDate:v8];

  v9 = [(LKLogEvent *)self senderImagePath];
  v10 = [v9 copy];
  [v4 setSenderImagePath:v10];

  [v4 setActivityIdentifier:{-[LKLogEvent activityIdentifier](self, "activityIdentifier")}];
  v11 = [(LKLogEvent *)self composedMessage];
  v12 = [v11 copy];
  [v4 setComposedMessage:v12];

  return v4;
}

- (void)setProcess:(id)a3
{
  v5 = a3;
  process = self->_process;
  p_process = &self->_process;
  if (process != v5)
  {
    v8 = v5;
    objc_storeStrong(p_process, a3);
    v5 = v8;
  }
}

- (void)setDate:(id)a3
{
  v5 = a3;
  date = self->_date;
  p_date = &self->_date;
  if (date != v5)
  {
    v8 = v5;
    objc_storeStrong(p_date, a3);
    v5 = v8;
  }
}

- (void)setComposedMessage:(id)a3
{
  v5 = a3;
  composedMessage = self->_composedMessage;
  p_composedMessage = &self->_composedMessage;
  if (composedMessage != v5)
  {
    v8 = v5;
    objc_storeStrong(p_composedMessage, a3);
    v5 = v8;
  }
}

- (void)setSenderImagePath:(id)a3
{
  v5 = a3;
  senderImagePath = self->_senderImagePath;
  p_senderImagePath = &self->_senderImagePath;
  if (senderImagePath != v5)
  {
    v8 = v5;
    objc_storeStrong(p_senderImagePath, a3);
    v5 = v8;
  }
}

- (void)setActivityIdentifier:(unint64_t)a3
{
  if (self->_activityIdentifier != a3)
  {
    self->_activityIdentifier = a3;
  }
}

- (id)dictionary
{
  v3 = objc_opt_new();
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS"];
  v5 = [(LKLogEvent *)self process];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"process"];
  }

  else
  {
    v6 = objc_opt_new();
    [v3 setObject:v6 forKeyedSubscript:@"process"];
  }

  v7 = [(LKLogEvent *)self date];
  v8 = [v4 stringFromDate:v7];
  if (v8)
  {
    [v3 setObject:v8 forKeyedSubscript:@"date"];
  }

  else
  {
    v9 = objc_opt_new();
    [v3 setObject:v9 forKeyedSubscript:@"date"];
  }

  v10 = [(LKLogEvent *)self composedMessage];
  if (v10)
  {
    [v3 setObject:v10 forKeyedSubscript:@"composedMessage"];
  }

  else
  {
    v11 = objc_opt_new();
    [v3 setObject:v11 forKeyedSubscript:@"composedMessage"];
  }

  v12 = [(LKLogEvent *)self senderImagePath];
  if (v12)
  {
    [v3 setObject:v12 forKeyedSubscript:@"sender"];
  }

  else
  {
    v13 = objc_opt_new();
    [v3 setObject:v13 forKeyedSubscript:@"sender"];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[LKLogEvent activityIdentifier](self, "activityIdentifier")}];
  if (v14)
  {
    [v3 setObject:v14 forKeyedSubscript:@"activityIdentifier"];
  }

  else
  {
    v15 = objc_opt_new();
    [v3 setObject:v15 forKeyedSubscript:@"activityIdentifier"];
  }

  v16 = [v3 copy];

  return v16;
}

- (BOOL)loggedByProcess:(id)a3
{
  v4 = a3;
  v5 = [(LKLogEvent *)self process];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

- (BOOL)loggedByFramework:(id)a3
{
  v4 = a3;
  v5 = [(LKLogEvent *)self senderImagePath];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

- (BOOL)containsMessage:(id)a3
{
  v4 = a3;
  v5 = [(LKLogEvent *)self composedMessage];
  v6 = [v5 containsString:v4];

  return v6;
}

@end