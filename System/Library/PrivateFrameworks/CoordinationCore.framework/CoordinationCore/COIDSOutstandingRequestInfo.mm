@interface COIDSOutstandingRequestInfo
- (COIDSOutstandingRequestInfo)initWithRequest:(id)a3 at:(unint64_t)a4 callback:(id)a5 activity:(id)a6;
@end

@implementation COIDSOutstandingRequestInfo

- (COIDSOutstandingRequestInfo)initWithRequest:(id)a3 at:(unint64_t)a4 callback:(id)a5 activity:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = COIDSOutstandingRequestInfo;
  v14 = [(COIDSOutstandingRequestInfo *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_request, a3);
    v15->_enqeueStart = a4;
    v16 = MEMORY[0x245D5FF10](v12);
    callback = v15->_callback;
    v15->_callback = v16;

    objc_storeStrong(&v15->_activity, a6);
  }

  return v15;
}

@end