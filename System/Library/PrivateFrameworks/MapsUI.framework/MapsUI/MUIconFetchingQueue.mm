@interface MUIconFetchingQueue
@end

@implementation MUIconFetchingQueue

uint64_t ___MUIconFetchingQueue_block_invoke()
{
  v0 = geo_dispatch_queue_create_with_qos();
  v1 = _MUIconFetchingQueue_iconFetchQueue;
  _MUIconFetchingQueue_iconFetchQueue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end