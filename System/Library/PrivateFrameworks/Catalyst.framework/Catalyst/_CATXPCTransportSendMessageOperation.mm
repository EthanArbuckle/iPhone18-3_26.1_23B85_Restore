@interface _CATXPCTransportSendMessageOperation
- (CATXPCTransport)transport;
- (void)didFailWithError:(id)error;
- (void)didProcessMessage;
- (void)main;
@end

@implementation _CATXPCTransportSendMessageOperation

- (void)main
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  transport = [(_CATXPCTransportSendMessageOperation *)self transport];
  if (transport && ![(CATOperation *)self isCanceled])
  {
    message = [(_CATXPCTransportSendMessageOperation *)self message];
    [transport transportSendMessageOperation:self processMessage:message];
  }

  else
  {
    message = CATErrorWithCodeAndUserInfo(404, 0);
    [(CATOperation *)self endOperationWithError:message];
  }
}

- (void)didProcessMessage
{
  if ([(CATOperation *)self isExecuting])
  {

    [(CATOperation *)self endOperationWithResultObject:0];
  }
}

- (void)didFailWithError:(id)error
{
  errorCopy = error;
  if ([(CATOperation *)self isExecuting])
  {
    [(CATOperation *)self endOperationWithError:errorCopy];
  }
}

- (CATXPCTransport)transport
{
  WeakRetained = objc_loadWeakRetained(&self->_transport);

  return WeakRetained;
}

@end