@interface PKPaymentNotificationActionRequest
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKPaymentNotificationActionRequest

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v21 = @"devices";
  v22 = identifierCopy;
  v23 = @"notificationAction";
  v9 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  lCopy = l;
  v12 = [v9 arrayWithObjects:&v21 count:3];
  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v12 queryParameters:0 appleAccountInformation:informationCopy, v21, v22, v23, v24];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15 = dictionary;
  action = self->_action;
  if (action)
  {
    [dictionary setObject:action forKey:@"action"];
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