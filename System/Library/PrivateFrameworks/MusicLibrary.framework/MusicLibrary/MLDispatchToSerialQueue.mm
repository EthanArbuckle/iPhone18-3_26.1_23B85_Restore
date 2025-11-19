@interface MLDispatchToSerialQueue
@end

@implementation MLDispatchToSerialQueue

uint64_t ___MLDispatchToSerialQueue_block_invoke()
{
  __ML3LogSerialQueue = dispatch_queue_create(0, 0);

  return MEMORY[0x2821F96F8]();
}

@end