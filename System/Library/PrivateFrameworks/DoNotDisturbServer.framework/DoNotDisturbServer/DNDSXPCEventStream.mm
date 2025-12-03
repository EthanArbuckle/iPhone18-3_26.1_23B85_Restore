@interface DNDSXPCEventStream
- (DNDSXPCEventStream)init;
- (void)registerTimerHandlerWithServiceIdentifier:(id)identifier handler:(id)handler;
- (void)setTimer:(id)timer;
- (void)start;
@end

@implementation DNDSXPCEventStream

- (DNDSXPCEventStream)init
{
  v12.receiver = self;
  v12.super_class = DNDSXPCEventStream;
  v2 = [(DNDSXPCEventStream *)&v12 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    timerHandlersByToken = v2->_timerHandlersByToken;
    v2->_timerHandlersByToken = dictionary;

    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"com.apple.donotdisturb.%@", v7];

    v9 = [DNDSWorkloop serialQueueTargetingSharedWorkloop:v8];
    queue = v2->_queue;
    v2->_queue = v9;
  }

  return v2;
}

- (void)start
{
  objc_initWeak(&location, self);
  v3 = +[DNDSXPCEventInterface sharedInstance];
  queue = self->_queue;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __27__DNDSXPCEventStream_start__block_invoke;
  v9 = &unk_278F8BC80;
  objc_copyWeak(&v10, &location);
  [v3 registerForStream:@"com.apple.alarm" queue:queue handler:&v6];

  v5 = [DNDSXPCEventInterface sharedInstance:v6];
  [v5 registerForStream:@"com.apple.notifyd.matching" queue:self->_queue handler:&__block_literal_global_33];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __27__DNDSXPCEventStream_start__block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430])}];
  v5 = +[DNDSXPCEventInterface sharedInstance];
  [v5 setEvent:0 forKey:v4 onStream:@"com.apple.alarm"];

  v6 = [WeakRetained[1] objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v4, xdict);
  }
}

- (void)registerTimerHandlerWithServiceIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  v7 = _Block_copy(handler);
  [(NSMutableDictionary *)self->_timerHandlersByToken setObject:v7 forKeyedSubscript:identifierCopy];
}

- (void)setTimer:(id)timer
{
  timerCopy = timer;
  date = [timerCopy date];

  if (date)
  {
    date2 = [timerCopy date];
    [date2 timeIntervalSince1970];
    v6 = ceil(v5);

    date = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_date(date, "Date", (v6 * 1000000000.0));
    xpc_dictionary_set_BOOL(date, "UserVisible", 1);
  }

  v7 = +[DNDSXPCEventInterface sharedInstance];
  serviceIdentifier = [timerCopy serviceIdentifier];
  [v7 setEvent:date forKey:serviceIdentifier onStream:@"com.apple.alarm"];
}

@end