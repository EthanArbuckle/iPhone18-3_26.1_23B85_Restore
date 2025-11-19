@interface CKMediaRequestDetails
- (CKMediaRequestDetails)initWithRequestID:(int64_t)a3 transferGUID:(id)a4 resultHandler:(id)a5;
@end

@implementation CKMediaRequestDetails

- (CKMediaRequestDetails)initWithRequestID:(int64_t)a3 transferGUID:(id)a4 resultHandler:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CKMediaRequestDetails;
  v11 = [(CKMediaRequestDetails *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_requestID = a3;
    v13 = _Block_copy(v10);
    resultHandler = v12->_resultHandler;
    v12->_resultHandler = v13;

    objc_storeStrong(&v12->_transferGUID, a4);
  }

  return v12;
}

@end