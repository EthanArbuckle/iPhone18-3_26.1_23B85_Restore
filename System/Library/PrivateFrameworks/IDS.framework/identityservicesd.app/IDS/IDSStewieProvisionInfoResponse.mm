@interface IDSStewieProvisionInfoResponse
- (IDSStewieProvisionInfoResponse)initWithRequest:(id)request responseCode:(int64_t)code failureMessage:(id)message additionalInfo:(id)info;
@end

@implementation IDSStewieProvisionInfoResponse

- (IDSStewieProvisionInfoResponse)initWithRequest:(id)request responseCode:(int64_t)code failureMessage:(id)message additionalInfo:(id)info
{
  requestCopy = request;
  messageCopy = message;
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = IDSStewieProvisionInfoResponse;
  v14 = [(IDSStewieProvisionInfoResponse *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_request, request);
    v15->_responseCode = code;
    objc_storeStrong(&v15->_failureMessage, message);
    objc_storeStrong(&v15->_additionalInfo, info);
  }

  return v15;
}

@end