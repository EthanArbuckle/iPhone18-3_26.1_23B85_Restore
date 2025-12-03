@interface COMeshControllerQueuedBroadcastRequestMarker
- (COMeshControllerQueuedBroadcastRequestMarker)initWithRequest:(id)request includeSelf:(BOOL)self recipientBlock:(id)block completionHandler:(id)handler;
@end

@implementation COMeshControllerQueuedBroadcastRequestMarker

- (COMeshControllerQueuedBroadcastRequestMarker)initWithRequest:(id)request includeSelf:(BOOL)self recipientBlock:(id)block completionHandler:(id)handler
{
  requestCopy = request;
  blockCopy = block;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = COMeshControllerQueuedBroadcastRequestMarker;
  v14 = [(COMeshControllerQueuedBroadcastRequestMarker *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_request, request);
    v15->_includeSelfInBroadcast = self;
    v16 = MEMORY[0x245D5FF10](blockCopy);
    recipientCallback = v15->_recipientCallback;
    v15->_recipientCallback = v16;

    v18 = MEMORY[0x245D5FF10](handlerCopy);
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v18;
  }

  return v15;
}

@end