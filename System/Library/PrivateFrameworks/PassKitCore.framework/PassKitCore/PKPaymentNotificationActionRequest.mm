@interface PKPaymentNotificationActionRequest
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
@end

@implementation PKPaymentNotificationActionRequest

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v21 = @"devices";
  v22 = v8;
  v23 = @"notificationAction";
  v9 = MEMORY[0x1E695DEC8];
  v10 = a5;
  v11 = a3;
  v12 = [v9 arrayWithObjects:&v21 count:3];
  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v11 endpointComponents:v12 queryParameters:0 appleAccountInformation:v10, v21, v22, v23, v24];

  v14 = [MEMORY[0x1E695DF90] dictionary];
  v15 = v14;
  action = self->_action;
  if (action)
  {
    [v14 setObject:action forKey:@"action"];
  }

  requestID = self->_requestID;
  if (requestID)
  {
    [v15 setObject:requestID forKey:@"requestId"];
  }

  v18 = [objc_opt_class() _HTTPBodyWithDictionary:v15];
  [v13 setHTTPBody:v18];

  [v13 setHTTPMethod:@"POST"];
  v19 = [v13 copy];

  return v19;
}

@end