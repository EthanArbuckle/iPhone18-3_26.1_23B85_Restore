@interface _MFDAMessageHeaderFetchConsumer
- (void)handleResponse:(id)response error:(id)error;
@end

@implementation _MFDAMessageHeaderFetchConsumer

- (void)handleResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  if (errorCopy)
  {
    objc_storeStrong(&self->_error, error);
    self->_succeeded = 0;
  }

  else
  {
    changedItem = [responseCopy changedItem];
    v8 = [[MFDAMessage alloc] initWithDAMailMessage:changedItem mailbox:0];
    [(MFDAMessage *)v8 setMessageStore:self->_store];
    headers = [(MFDAMessage *)v8 headers];
    data = [headers data];
    data = self->_data;
    self->_data = data;

    self->_succeeded = 1;
  }
}

@end