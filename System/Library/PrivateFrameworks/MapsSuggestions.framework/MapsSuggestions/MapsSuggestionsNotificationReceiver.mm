@interface MapsSuggestionsNotificationReceiver
- (MapsSuggestionsNotificationReceiver)initWithDarwinNotification:(const char *)notification block:(id)block;
- (MapsSuggestionsNotificationReceiver)initWithDarwinNotification:(const char *)notification queue:(id)queue block:(id)block;
- (void)dealloc;
@end

@implementation MapsSuggestionsNotificationReceiver

- (MapsSuggestionsNotificationReceiver)initWithDarwinNotification:(const char *)notification queue:(id)queue block:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = MapsSuggestionsNotificationReceiver;
  if ([(MapsSuggestionsNotificationReceiver *)&v11 init])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__MapsSuggestionsNotificationReceiver_initWithDarwinNotification_queue_block___block_invoke;
    v10[3] = &unk_1E8203B98;
    v10[4] = blockCopy;
    _Block_copy(v10);
    operator new();
  }

  return 0;
}

void __78__MapsSuggestionsNotificationReceiver_initWithDarwinNotification_queue_block___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [[MapsSuggestionsNotification alloc] initWithCppNotification:a2];
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (MapsSuggestionsNotificationReceiver)initWithDarwinNotification:(const char *)notification block:(id)block
{
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  blockCopy = block;
  v9 = dispatch_queue_create("MapsSuggestionsNotificationReceiver", v7);
  v10 = [(MapsSuggestionsNotificationReceiver *)self initWithDarwinNotification:notification queue:v9 block:blockCopy];

  return v10;
}

- (void)dealloc
{
  std::unique_ptr<MSg::NotificationReceiver>::reset[abi:ne200100](&self->_receiver, 0);
  v3.receiver = self;
  v3.super_class = MapsSuggestionsNotificationReceiver;
  [(MapsSuggestionsNotificationReceiver *)&v3 dealloc];
}

@end