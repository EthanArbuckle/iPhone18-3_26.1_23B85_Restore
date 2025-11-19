@interface IDSPhoneNumberRequest
- (IDSPhoneNumberRequest)initWithService:(int64_t)a3 labelID:(id)a4 completion:(id)a5;
@end

@implementation IDSPhoneNumberRequest

- (IDSPhoneNumberRequest)initWithService:(int64_t)a3 labelID:(id)a4 completion:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = IDSPhoneNumberRequest;
  v11 = [(IDSPhoneNumberRequest *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_serviceType = a3;
    objc_storeStrong(&v11->_labelID, a4);
    v13 = objc_retainBlock(v10);
    completion = v12->_completion;
    v12->_completion = v13;
  }

  return v12;
}

@end