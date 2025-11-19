@interface IDSStewieProvisionInfoResponse
- (IDSStewieProvisionInfoResponse)initWithRequest:(id)a3 responseCode:(int64_t)a4 failureMessage:(id)a5 additionalInfo:(id)a6;
@end

@implementation IDSStewieProvisionInfoResponse

- (IDSStewieProvisionInfoResponse)initWithRequest:(id)a3 responseCode:(int64_t)a4 failureMessage:(id)a5 additionalInfo:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = IDSStewieProvisionInfoResponse;
  v14 = [(IDSStewieProvisionInfoResponse *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_request, a3);
    v15->_responseCode = a4;
    objc_storeStrong(&v15->_failureMessage, a5);
    objc_storeStrong(&v15->_additionalInfo, a6);
  }

  return v15;
}

@end