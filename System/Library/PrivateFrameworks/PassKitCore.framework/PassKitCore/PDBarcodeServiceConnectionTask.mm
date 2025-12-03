@interface PDBarcodeServiceConnectionTask
- (PDBarcodeServiceConnectionTask)initWithCoder:(id)coder;
- (id)headerFields;
- (id)request;
- (void)encodeWithCoder:(id)coder;
- (void)handleResponse:(id)response data:(id)data;
@end

@implementation PDBarcodeServiceConnectionTask

- (PDBarcodeServiceConnectionTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PDBarcodeServiceConnectionTask;
  v5 = [(PDNetworkTask *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"barcodeServiceURL"];
    barcodeServiceURL = v5->_barcodeServiceURL;
    v5->_barcodeServiceURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PDBarcodeServiceConnectionTask;
  coderCopy = coder;
  [(PDNetworkTask *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_barcodeServiceURL forKey:{@"barcodeServiceURL", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_passUniqueIdentifier forKey:@"passUniqueIdentifier"];
}

- (id)headerFields
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[NSDate date];
  v4 = PKRFC1123StringForDate();
  [v2 setObject:v4 forKeyedSubscript:@"Date"];

  v5 = [v2 copy];

  return v5;
}

- (id)request
{
  barcodeServiceURL = [(PDBarcodeServiceConnectionTask *)self barcodeServiceURL];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  endpointComponents = [(PDBarcodeServiceConnectionTask *)self endpointComponents];
  v5 = [endpointComponents countByEnumeratingWithState:&v63 objects:v75 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v64;
    do
    {
      v8 = 0;
      v9 = barcodeServiceURL;
      do
      {
        if (*v64 != v7)
        {
          objc_enumerationMutation(endpointComponents);
        }

        v10 = *(*(&v63 + 1) + 8 * v8);
        v11 = +[NSCharacterSet URLPathAllowedCharacterSet];
        v12 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:v11];
        barcodeServiceURL = [v9 URLByAppendingPathComponent:v12];

        v8 = v8 + 1;
        v9 = barcodeServiceURL;
      }

      while (v6 != v8);
      v6 = [endpointComponents countByEnumeratingWithState:&v63 objects:v75 count:16];
    }

    while (v6);
  }

  selfCopy = self;
  queryFields = [(PDBarcodeServiceConnectionTask *)self queryFields];
  +[NSMutableString string];
  v53 = v52 = queryFields;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = [queryFields allKeys];
  v14 = [obj countByEnumeratingWithState:&v59 objects:v74 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v60;
    v17 = @"?";
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v60 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v59 + 1) + 8 * i);
        v20 = +[NSCharacterSet URLQueryAllowedCharacterSet];
        v21 = [v19 stringByAddingPercentEncodingWithAllowedCharacters:v20];

        v22 = [v52 objectForKey:v19];
        v23 = +[NSCharacterSet URLQueryAllowedCharacterSet];
        v24 = [v22 stringByAddingPercentEncodingWithAllowedCharacters:v23];

        [v53 appendFormat:@"%@%@=%@", v17, v21, v24];
        v17 = @"&";
      }

      v15 = [obj countByEnumeratingWithState:&v59 objects:v74 count:16];
    }

    while (v15);
  }

  absoluteString = [barcodeServiceURL absoluteString];
  v26 = [absoluteString stringByAppendingString:v53];
  v27 = [NSURL URLWithString:v26];

  v28 = [[NSMutableURLRequest alloc] initWithURL:v27];
  method = [(PDBarcodeServiceConnectionTask *)selfCopy method];
  [v28 setHTTPMethod:method];

  [v28 setHTTPShouldHandleCookies:0];
  [v28 setCachePolicy:1];
  headerFields = [(PDBarcodeServiceConnectionTask *)selfCopy headerFields];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  allKeys = [headerFields allKeys];
  v32 = [allKeys countByEnumeratingWithState:&v55 objects:v73 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v56;
    do
    {
      for (j = 0; j != v33; j = j + 1)
      {
        if (*v56 != v34)
        {
          objc_enumerationMutation(allKeys);
        }

        v36 = *(*(&v55 + 1) + 8 * j);
        v37 = [headerFields objectForKey:v36];
        [v28 setValue:v37 forHTTPHeaderField:v36];
      }

      v33 = [allKeys countByEnumeratingWithState:&v55 objects:v73 count:16];
    }

    while (v33);
  }

  bodyDictionary = [(PDBarcodeServiceConnectionTask *)selfCopy bodyDictionary];
  if (bodyDictionary)
  {
    v54 = 0;
    v39 = [NSJSONSerialization dataWithJSONObject:bodyDictionary options:0 error:&v54];
    v40 = v54;
    if (v39)
    {
      [v28 setHTTPBody:v39];
      [v28 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
      [v28 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    }

    else
    {
      v41 = v27;
      v42 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v68 = selfCopy;
        v69 = 2112;
        v70 = v40;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Could not create body data task for task %@: %@", buf, 0x16u);
      }

      v28 = 0;
      v27 = v41;
    }
  }

  v43 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [v28 URL];
    allHTTPHeaderFields = [v28 allHTTPHeaderFields];
    [allHTTPHeaderFields debugDescription];
    v47 = v46 = v27;
    v48 = [bodyDictionary debugDescription];
    *buf = 138412802;
    v68 = v44;
    v69 = 2112;
    v70 = v47;
    v71 = 2112;
    v72 = v48;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Auxiliary capability connection request:\n%@\n%@\n%@\n", buf, 0x20u);

    v27 = v46;
  }

  return v28;
}

- (void)handleResponse:(id)response data:(id)data
{
  responseCopy = response;
  v6 = [NSJSONSerialization JSONObjectWithData:data options:0 error:0];
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [responseCopy URL];
    statusCode = [responseCopy statusCode];
    allHeaderFields = [responseCopy allHeaderFields];
    v11 = [allHeaderFields debugDescription];
    v12 = [v6 debugDescription];
    v13 = 138413058;
    v14 = v8;
    v15 = 2048;
    v16 = statusCode;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Auxiliary capability connection response:\n%@ %ld\n%@\n%@\n", &v13, 0x2Au);
  }
}

@end