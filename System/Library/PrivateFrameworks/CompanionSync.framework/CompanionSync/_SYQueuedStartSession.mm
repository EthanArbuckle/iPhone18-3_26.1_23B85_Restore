@interface _SYQueuedStartSession
- (_SYQueuedStartSession)initWithRequest:(id)a3 completion:(id)a4;
@end

@implementation _SYQueuedStartSession

- (_SYQueuedStartSession)initWithRequest:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = _SYQueuedStartSession;
  v9 = [(_SYQueuedStartSession *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    v11 = [v8 copy];
    completion = v10->_completion;
    v10->_completion = v11;

    v13 = v10;
  }

  return v10;
}

@end