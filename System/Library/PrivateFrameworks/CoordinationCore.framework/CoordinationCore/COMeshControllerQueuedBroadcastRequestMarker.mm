@interface COMeshControllerQueuedBroadcastRequestMarker
- (COMeshControllerQueuedBroadcastRequestMarker)initWithRequest:(id)a3 includeSelf:(BOOL)a4 recipientBlock:(id)a5 completionHandler:(id)a6;
@end

@implementation COMeshControllerQueuedBroadcastRequestMarker

- (COMeshControllerQueuedBroadcastRequestMarker)initWithRequest:(id)a3 includeSelf:(BOOL)a4 recipientBlock:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = COMeshControllerQueuedBroadcastRequestMarker;
  v14 = [(COMeshControllerQueuedBroadcastRequestMarker *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_request, a3);
    v15->_includeSelfInBroadcast = a4;
    v16 = MEMORY[0x245D5FF10](v12);
    recipientCallback = v15->_recipientCallback;
    v15->_recipientCallback = v16;

    v18 = MEMORY[0x245D5FF10](v13);
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v18;
  }

  return v15;
}

@end