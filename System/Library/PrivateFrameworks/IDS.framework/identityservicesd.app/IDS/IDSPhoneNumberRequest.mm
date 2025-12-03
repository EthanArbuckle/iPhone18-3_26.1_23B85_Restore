@interface IDSPhoneNumberRequest
- (IDSPhoneNumberRequest)initWithService:(int64_t)service labelID:(id)d completion:(id)completion;
@end

@implementation IDSPhoneNumberRequest

- (IDSPhoneNumberRequest)initWithService:(int64_t)service labelID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = IDSPhoneNumberRequest;
  v11 = [(IDSPhoneNumberRequest *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_serviceType = service;
    objc_storeStrong(&v11->_labelID, d);
    v13 = objc_retainBlock(completionCopy);
    completion = v12->_completion;
    v12->_completion = v13;
  }

  return v12;
}

@end