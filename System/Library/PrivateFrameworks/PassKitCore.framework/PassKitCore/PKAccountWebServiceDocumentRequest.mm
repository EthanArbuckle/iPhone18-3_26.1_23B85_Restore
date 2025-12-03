@interface PKAccountWebServiceDocumentRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKAccountWebServiceDocumentRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v29 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = informationCopy;
  if (!self->_baseURL)
  {
    dictionary = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    *buf = 138543618;
    v26 = v20;
    v27 = 2082;
    v28 = "_baseURL";
LABEL_22:
    _os_log_impl(&dword_1AD337000, dictionary, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_23;
  }

  if (!informationCopy)
  {
    dictionary = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    *buf = 138543618;
    v26 = v20;
    v27 = 2082;
    v28 = "appleAccountInformation";
    goto LABEL_22;
  }

  if (!self->_accountIdentifier)
  {
    dictionary = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v20 = NSStringFromClass(v22);
      *buf = 138543618;
      v26 = v20;
      v27 = 2082;
      v28 = "_accountIdentifier";
      goto LABEL_22;
    }

LABEL_23:
    v18 = 0;
    goto LABEL_24;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  type = self->_type;
  v8 = @"statement";
  if (type != 1)
  {
    v8 = 0;
  }

  if (type == 2)
  {
    v9 = @"taxForm";
  }

  else
  {
    v9 = v8;
  }

  v10 = v9;
  if (v10)
  {
    [dictionary setObject:v10 forKey:@"documentType"];
  }

  beginDate = self->_beginDate;
  if (beginDate)
  {
    v12 = PKISO8601DateStringFromDate(beginDate);
    [dictionary setObject:v12 forKey:@"beginDate"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    v14 = PKISO8601DateStringFromDate(endDate);
    [dictionary setObject:v14 forKey:@"endDate"];
  }

  accountIdentifier = self->_accountIdentifier;
  v24[0] = @"accounts";
  v24[1] = accountIdentifier;
  v24[2] = @"documents";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v17 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:self->_baseURL endpointComponents:v16 queryParameters:dictionary appleAccountInformation:v5];
  [v17 setHTTPMethod:@"GET"];
  [v17 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v18 = [v17 copy];

LABEL_24:

  return v18;
}

@end