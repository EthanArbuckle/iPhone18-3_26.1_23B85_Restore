@interface NETRBNetworkGetServiceQueue
@end

@implementation NETRBNetworkGetServiceQueue

dispatch_queue_t ____NETRBNetworkGetServiceQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.netrb.network.sq", 0);
  __NETRBNetworkGetServiceQueue___networkServiceQueue = result;
  return result;
}

@end