@interface IDSHashPersistenceAWDLogging
+ (id)sharedInstance;
- (IDSHashPersistenceAWDLogging)init;
- (void)_submitAWDMetric:(id)metric withContainer:(id)container;
- (void)dealloc;
- (void)duplicateMessageEncounted;
@end

@implementation IDSHashPersistenceAWDLogging

+ (id)sharedInstance
{
  if (qword_2814138A0 != -1)
  {
    sub_25473A8B4();
  }

  v3 = qword_281413890;

  return v3;
}

- (IDSHashPersistenceAWDLogging)init
{
  v10.receiver = self;
  v10.super_class = IDSHashPersistenceAWDLogging;
  v2 = [(IDSHashPersistenceAWDLogging *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x259C17E80](@"AWDServerConnection" @"WirelessDiagnostics"))];
    AWDServerConnection = v2->_AWDServerConnection;
    v2->_AWDServerConnection = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_get_global_queue(-32768, 0);
    v7 = dispatch_queue_create_with_target_V2("com.apple.IDS.AWDLogging", v5, v6);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    self->_queue = 0;
  }

  v4.receiver = self;
  v4.super_class = IDSHashPersistenceAWDLogging;
  [(IDSHashPersistenceAWDLogging *)&v4 dealloc];
}

- (void)_submitAWDMetric:(id)metric withContainer:(id)container
{
  if (metric && container)
  {
    containerCopy = container;
    [containerCopy setMetric:metric];
    [self->_AWDServerConnection submitMetric:containerCopy];
  }
}

- (void)duplicateMessageEncounted
{
  queue = self->_queue;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = sub_254738174;
  v10 = &unk_279782230;
  selfCopy = self;
  v3 = queue;
  v4 = &v7;
  if (v3)
  {
    v5 = [IDSHashPersistenceAWDLogging sharedInstance:v7];
    shouldSubmit = [v5 shouldSubmit];

    if (shouldSubmit)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_254738240;
      block[3] = &unk_279782258;
      v13 = v4;
      dispatch_async(v3, block);
    }
  }
}

@end