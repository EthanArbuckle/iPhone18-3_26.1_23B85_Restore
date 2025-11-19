@interface MusicKit_SoftLinking_MPRequestResponseController
- (BOOL)controller:(id)a3 shouldRetryFailedRequestWithError:(id)a4;
- (MusicKit_SoftLinking_MPCPlayerRequest)request;
- (MusicKit_SoftLinking_MPRequestResponseController)init;
- (MusicKit_SoftLinking_MPRequestResponseController)initWithUnderlyingRequestResponseController:(id)a3;
- (void)controller:(id)a3 defersResponseReplacement:(id)a4;
- (void)setRequest:(id)a3;
@end

@implementation MusicKit_SoftLinking_MPRequestResponseController

- (MusicKit_SoftLinking_MPRequestResponseController)init
{
  v8.receiver = self;
  v8.super_class = MusicKit_SoftLinking_MPRequestResponseController;
  v2 = [(MusicKit_SoftLinking_MPRequestResponseController *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getMPRequestResponseControllerClass_softClass;
    v13 = getMPRequestResponseControllerClass_softClass;
    if (!getMPRequestResponseControllerClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getMPRequestResponseControllerClass_block_invoke;
      v9[3] = &unk_1E84C3838;
      v9[4] = &v10;
      __getMPRequestResponseControllerClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    underlyingRequestResponseController = v2->_underlyingRequestResponseController;
    v2->_underlyingRequestResponseController = v5;

    [(MPRequestResponseController *)v2->_underlyingRequestResponseController setDelegate:v2];
  }

  return v2;
}

- (MusicKit_SoftLinking_MPRequestResponseController)initWithUnderlyingRequestResponseController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPRequestResponseController;
  v6 = [(MusicKit_SoftLinking_MPRequestResponseController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingRequestResponseController, a3);
  }

  return v7;
}

- (MusicKit_SoftLinking_MPCPlayerRequest)request
{
  v3 = [MusicKit_SoftLinking_MPCPlayerRequest alloc];
  v4 = [(MPRequestResponseController *)self->_underlyingRequestResponseController request];
  v5 = [(MusicKit_SoftLinking_MPCPlayerRequest *)v3 initWithUnderlyingPlayerRequest:v4];

  return v5;
}

- (void)setRequest:(id)a3
{
  underlyingRequestResponseController = self->_underlyingRequestResponseController;
  v4 = [a3 _underlyingPlayerRequest];
  [(MPRequestResponseController *)underlyingRequestResponseController setRequest:v4];
}

- (void)controller:(id)a3 defersResponseReplacement:(id)a4
{
  v7 = a3;
  (*(a4 + 2))(a4);
  if (self->_responseHandler)
  {
    v6 = [v7 response];
    (*(self->_responseHandler + 2))();
  }
}

- (BOOL)controller:(id)a3 shouldRetryFailedRequestWithError:(id)a4
{
  shouldRetryFailedRequestWithErrorHandler = self->_shouldRetryFailedRequestWithErrorHandler;
  if (shouldRetryFailedRequestWithErrorHandler)
  {
    return shouldRetryFailedRequestWithErrorHandler[2](shouldRetryFailedRequestWithErrorHandler, a4);
  }

  else
  {
    return 1;
  }
}

@end