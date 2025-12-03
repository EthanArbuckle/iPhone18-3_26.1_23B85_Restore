@interface NMSOutgoingResponse
- (NMSIncomingRequest)request;
- (NMSOutgoingResponse)init;
- (void)send;
- (void)setPbResponse:(id)response;
@end

@implementation NMSOutgoingResponse

- (NMSOutgoingResponse)init
{
  v6.receiver = self;
  v6.super_class = NMSOutgoingResponse;
  v2 = [(NMSOutgoingResponse *)&v6 init];
  if (v2)
  {
    v3 = os_transaction_create();
    transaction = v2->_transaction;
    v2->_transaction = v3;
  }

  return v2;
}

- (void)send
{
  WeakRetained = objc_loadWeakRetained(&self->_request);
  messageCenter = [WeakRetained messageCenter];

  [messageCenter _sendResponse:self];
}

- (void)setPbResponse:(id)response
{
  responseCopy = response;
  WeakRetained = objc_loadWeakRetained(&self->_request);
  messageCenter = [WeakRetained messageCenter];
  v7 = [messageCenter _pbMappingForMessageID:{objc_msgSend(WeakRetained, "messageID")}];
  [v7 responseClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v8 = NSStringFromClass([v7 responseClass]);
      [NSException raise:@"NMSMisuseException" format:@"pbResponse needs to be of type %@", v8];
    }

    else
    {
      v9 = sub_1000145AC();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_100024F2C(v7);
      }
    }
  }

  pbResponse = self->_pbResponse;
  self->_pbResponse = responseCopy;
  v11 = responseCopy;

  data = [self->_pbResponse data];
  data = self->_data;
  self->_data = data;
}

- (NMSIncomingRequest)request
{
  WeakRetained = objc_loadWeakRetained(&self->_request);

  return WeakRetained;
}

@end