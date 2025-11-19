@interface _CATXPCTransportSendMessageOperation
- (CATXPCTransport)transport;
- (void)didFailWithError:(id)a3;
- (void)didProcessMessage;
- (void)main;
@end

@implementation _CATXPCTransportSendMessageOperation

- (void)main
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v5 = [(_CATXPCTransportSendMessageOperation *)self transport];
  if (v5 && ![(CATOperation *)self isCanceled])
  {
    v4 = [(_CATXPCTransportSendMessageOperation *)self message];
    [v5 transportSendMessageOperation:self processMessage:v4];
  }

  else
  {
    v4 = CATErrorWithCodeAndUserInfo(404, 0);
    [(CATOperation *)self endOperationWithError:v4];
  }
}

- (void)didProcessMessage
{
  if ([(CATOperation *)self isExecuting])
  {

    [(CATOperation *)self endOperationWithResultObject:0];
  }
}

- (void)didFailWithError:(id)a3
{
  v4 = a3;
  if ([(CATOperation *)self isExecuting])
  {
    [(CATOperation *)self endOperationWithError:v4];
  }
}

- (CATXPCTransport)transport
{
  WeakRetained = objc_loadWeakRetained(&self->_transport);

  return WeakRetained;
}

@end