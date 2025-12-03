@interface _SYQueuedStartSession
- (_SYQueuedStartSession)initWithRequest:(id)request completion:(id)completion;
@end

@implementation _SYQueuedStartSession

- (_SYQueuedStartSession)initWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v15.receiver = self;
  v15.super_class = _SYQueuedStartSession;
  v9 = [(_SYQueuedStartSession *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    v11 = [completionCopy copy];
    completion = v10->_completion;
    v10->_completion = v11;

    v13 = v10;
  }

  return v10;
}

@end