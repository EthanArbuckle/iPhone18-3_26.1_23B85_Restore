@interface PKAccountWebServiceAccountTransactionAnswerRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKAccountWebServiceAccountTransactionAnswerRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!PKRunningInPassd())
  {
    v23 = 0;
    goto LABEL_31;
  }

  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v21 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    *buf = 138543618;
    v44 = v25;
    v45 = 2082;
    v46 = "_baseURL";
LABEL_28:
    _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_29;
  }

  if (!v4)
  {
    v21 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v26 = objc_opt_class();
    v25 = NSStringFromClass(v26);
    *buf = 138543618;
    v44 = v25;
    v45 = 2082;
    v46 = "appleAccountInformation";
    goto LABEL_28;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v21 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v27 = objc_opt_class();
    v25 = NSStringFromClass(v27);
    *buf = 138543618;
    v44 = v25;
    v45 = 2082;
    v46 = "_accountIdentifier";
    goto LABEL_28;
  }

  transactionIdentifier = self->_transactionIdentifier;
  if (!transactionIdentifier)
  {
    v21 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v28 = objc_opt_class();
    v25 = NSStringFromClass(v28);
    *buf = 138543618;
    v44 = v25;
    v45 = 2082;
    v46 = "_transactionIdentifier";
    goto LABEL_28;
  }

  if (self->_answers)
  {
    v42[0] = @"accounts";
    v42[1] = accountIdentifier;
    v42[2] = @"transactions";
    v42[3] = transactionIdentifier;
    v42[4] = @"answer";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:5];
    v33 = v4;
    v9 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v8 queryParameters:0 appleAccountInformation:v4];

    [v9 setHTTPMethod:@"POST"];
    v32 = v9;
    [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSDictionary count](self->_answers, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = self->_answers;
    v11 = [(NSDictionary *)obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          v39[0] = @"question";
          v16 = PKPaymentTransactionQuestionTypeToString([v15 integerValue]);
          v39[1] = @"answer";
          v40[0] = v16;
          v17 = [(NSDictionary *)self->_answers objectForKey:v15];
          v40[1] = v17;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
          v19 = v18 = self;
          [v10 addObject:v19];

          self = v18;
        }

        v12 = [(NSDictionary *)obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v12);
    }

    v20 = v31;
    [v31 setObject:v10 forKeyedSubscript:@"answers"];
    [v31 setObject:self->_accountUserAltDSID forKeyedSubscript:@"accountUserAltDSID"];
    v21 = v32;
    if (v31)
    {
      v22 = [objc_opt_class() _HTTPBodyWithDictionary:v31];
      [v32 setHTTPBody:v22];
    }

    v23 = [v32 copy];

    v4 = v33;
    goto LABEL_30;
  }

  v21 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v29 = objc_opt_class();
    v25 = NSStringFromClass(v29);
    *buf = 138543618;
    v44 = v25;
    v45 = 2082;
    v46 = "_answers";
    goto LABEL_28;
  }

LABEL_29:
  v23 = 0;
LABEL_30:

LABEL_31:

  return v23;
}

@end