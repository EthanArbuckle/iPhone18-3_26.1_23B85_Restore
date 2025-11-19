@interface _MFDAMessageHeaderFetchConsumer
- (void)handleResponse:(id)a3 error:(id)a4;
@end

@implementation _MFDAMessageHeaderFetchConsumer

- (void)handleResponse:(id)a3 error:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (v6)
  {
    objc_storeStrong(&self->_error, a4);
    self->_succeeded = 0;
  }

  else
  {
    v7 = [v12 changedItem];
    v8 = [[MFDAMessage alloc] initWithDAMailMessage:v7 mailbox:0];
    [(MFDAMessage *)v8 setMessageStore:self->_store];
    v9 = [(MFDAMessage *)v8 headers];
    v10 = [v9 data];
    data = self->_data;
    self->_data = v10;

    self->_succeeded = 1;
  }
}

@end