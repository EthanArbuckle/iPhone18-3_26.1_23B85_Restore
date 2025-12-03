@interface LKLogEvent
- (BOOL)containsMessage:(id)message;
- (BOOL)loggedByFramework:(id)framework;
- (BOOL)loggedByProcess:(id)process;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionary;
- (void)setActivityIdentifier:(unint64_t)identifier;
- (void)setComposedMessage:(id)message;
- (void)setDate:(id)date;
- (void)setProcess:(id)process;
- (void)setSenderImagePath:(id)path;
@end

@implementation LKLogEvent

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  process = [(LKLogEvent *)self process];
  v6 = [process copy];
  [v4 setProcess:v6];

  date = [(LKLogEvent *)self date];
  v8 = [date copy];
  [v4 setDate:v8];

  senderImagePath = [(LKLogEvent *)self senderImagePath];
  v10 = [senderImagePath copy];
  [v4 setSenderImagePath:v10];

  [v4 setActivityIdentifier:{-[LKLogEvent activityIdentifier](self, "activityIdentifier")}];
  composedMessage = [(LKLogEvent *)self composedMessage];
  v12 = [composedMessage copy];
  [v4 setComposedMessage:v12];

  return v4;
}

- (void)setProcess:(id)process
{
  processCopy = process;
  process = self->_process;
  p_process = &self->_process;
  if (process != processCopy)
  {
    v8 = processCopy;
    objc_storeStrong(p_process, process);
    processCopy = v8;
  }
}

- (void)setDate:(id)date
{
  dateCopy = date;
  date = self->_date;
  p_date = &self->_date;
  if (date != dateCopy)
  {
    v8 = dateCopy;
    objc_storeStrong(p_date, date);
    dateCopy = v8;
  }
}

- (void)setComposedMessage:(id)message
{
  messageCopy = message;
  composedMessage = self->_composedMessage;
  p_composedMessage = &self->_composedMessage;
  if (composedMessage != messageCopy)
  {
    v8 = messageCopy;
    objc_storeStrong(p_composedMessage, message);
    messageCopy = v8;
  }
}

- (void)setSenderImagePath:(id)path
{
  pathCopy = path;
  senderImagePath = self->_senderImagePath;
  p_senderImagePath = &self->_senderImagePath;
  if (senderImagePath != pathCopy)
  {
    v8 = pathCopy;
    objc_storeStrong(p_senderImagePath, path);
    pathCopy = v8;
  }
}

- (void)setActivityIdentifier:(unint64_t)identifier
{
  if (self->_activityIdentifier != identifier)
  {
    self->_activityIdentifier = identifier;
  }
}

- (id)dictionary
{
  v3 = objc_opt_new();
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS"];
  process = [(LKLogEvent *)self process];
  if (process)
  {
    [v3 setObject:process forKeyedSubscript:@"process"];
  }

  else
  {
    v6 = objc_opt_new();
    [v3 setObject:v6 forKeyedSubscript:@"process"];
  }

  date = [(LKLogEvent *)self date];
  v8 = [v4 stringFromDate:date];
  if (v8)
  {
    [v3 setObject:v8 forKeyedSubscript:@"date"];
  }

  else
  {
    v9 = objc_opt_new();
    [v3 setObject:v9 forKeyedSubscript:@"date"];
  }

  composedMessage = [(LKLogEvent *)self composedMessage];
  if (composedMessage)
  {
    [v3 setObject:composedMessage forKeyedSubscript:@"composedMessage"];
  }

  else
  {
    v11 = objc_opt_new();
    [v3 setObject:v11 forKeyedSubscript:@"composedMessage"];
  }

  senderImagePath = [(LKLogEvent *)self senderImagePath];
  if (senderImagePath)
  {
    [v3 setObject:senderImagePath forKeyedSubscript:@"sender"];
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

- (BOOL)loggedByProcess:(id)process
{
  processCopy = process;
  process = [(LKLogEvent *)self process];
  v6 = [process isEqualToString:processCopy];

  return v6;
}

- (BOOL)loggedByFramework:(id)framework
{
  frameworkCopy = framework;
  senderImagePath = [(LKLogEvent *)self senderImagePath];
  v6 = [senderImagePath isEqualToString:frameworkCopy];

  return v6;
}

- (BOOL)containsMessage:(id)message
{
  messageCopy = message;
  composedMessage = [(LKLogEvent *)self composedMessage];
  v6 = [composedMessage containsString:messageCopy];

  return v6;
}

@end