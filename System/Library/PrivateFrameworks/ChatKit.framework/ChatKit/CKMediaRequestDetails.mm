@interface CKMediaRequestDetails
- (CKMediaRequestDetails)initWithRequestID:(int64_t)d transferGUID:(id)iD resultHandler:(id)handler;
@end

@implementation CKMediaRequestDetails

- (CKMediaRequestDetails)initWithRequestID:(int64_t)d transferGUID:(id)iD resultHandler:(id)handler
{
  iDCopy = iD;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = CKMediaRequestDetails;
  v11 = [(CKMediaRequestDetails *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_requestID = d;
    v13 = _Block_copy(handlerCopy);
    resultHandler = v12->_resultHandler;
    v12->_resultHandler = v13;

    objc_storeStrong(&v12->_transferGUID, iD);
  }

  return v12;
}

@end