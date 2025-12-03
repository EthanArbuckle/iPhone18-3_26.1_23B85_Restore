@interface DEDRequestRecord
- (DEDRequestRecord)initWithRequest:(id)request response:(id)response session:(id)session cookies:(id)cookies body:(id)body error:(id)error;
- (DEDRequestRecord)initWithURL:(id)l httpMethod:(id)method responseData:(id)data;
- (id)formattedBody:(id)body error:(id)error;
- (id)formattedRequestHeader:(id)header session:(id)session cookies:(id)cookies;
- (id)formattedResponseHeader:(id)header;
@end

@implementation DEDRequestRecord

- (DEDRequestRecord)initWithURL:(id)l httpMethod:(id)method responseData:(id)data
{
  lCopy = l;
  methodCopy = method;
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = DEDRequestRecord;
  v11 = [(DEDRequestRecord *)&v16 init];
  if (v11)
  {
    path = [lCopy path];
    [(DEDRequestRecord *)v11 setURL:path];

    date = [MEMORY[0x277CBEAA8] date];
    [(DEDRequestRecord *)v11 setDate:date];

    [(DEDRequestRecord *)v11 setMethod:methodCopy];
    [(DEDRequestRecord *)v11 setIsFailure:0];
    v14 = [(DEDRequestRecord *)v11 formattedBody:dataCopy error:0];
    [(DEDRequestRecord *)v11 setResponseBody:v14];
  }

  return v11;
}

- (DEDRequestRecord)initWithRequest:(id)request response:(id)response session:(id)session cookies:(id)cookies body:(id)body error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  v46.receiver = self;
  v46.super_class = DEDRequestRecord;
  bodyCopy = body;
  cookiesCopy = cookies;
  sessionCopy = session;
  responseCopy = response;
  v19 = [(DEDRequestRecord *)&v46 init];
  v20 = [requestCopy URL];
  query = [v20 query];

  v22 = [requestCopy URL];
  path = [v22 path];
  v24 = path;
  if (query)
  {
    v25 = [requestCopy URL];
    query2 = [v25 query];
    v27 = [v24 stringByAppendingFormat:@"%@%@", @"?", query2];
    URL = v19->_URL;
    v19->_URL = v27;
  }

  else
  {
    v29 = v19->_URL;
    v19->_URL = path;
    v24 = v29;
  }

  date = [MEMORY[0x277CBEAA8] date];
  date = v19->_date;
  v19->_date = date;

  hTTPMethod = [requestCopy HTTPMethod];
  method = v19->_method;
  v19->_method = hTTPMethod;

  v19->_isFailure = errorCopy != 0;
  v34 = [(DEDRequestRecord *)v19 formattedRequestHeader:requestCopy session:sessionCopy cookies:cookiesCopy];

  requestHeader = v19->_requestHeader;
  v19->_requestHeader = v34;

  hTTPBody = [requestCopy HTTPBody];

  if (hTTPBody)
  {
    hTTPBody2 = [requestCopy HTTPBody];
    v38 = [(DEDRequestRecord *)v19 formattedBody:hTTPBody2 error:errorCopy];
    requestBody = v19->_requestBody;
    v19->_requestBody = v38;
  }

  else
  {
    hTTPBody2 = v19->_requestBody;
    v19->_requestBody = &stru_285B72378;
  }

  v40 = [(DEDRequestRecord *)v19 formattedResponseHeader:responseCopy];

  responseHeader = v19->_responseHeader;
  v19->_responseHeader = v40;

  v42 = [(DEDRequestRecord *)v19 formattedBody:bodyCopy error:errorCopy];

  responseBody = v19->_responseBody;
  v19->_responseBody = v42;

  return v19;
}

- (id)formattedResponseHeader:(id)header
{
  v24 = *MEMORY[0x277D85DE8];
  headerCopy = header;
  v4 = MEMORY[0x277CCAB68];
  statusCode = [headerCopy statusCode];
  v6 = [MEMORY[0x277CCAA40] localizedStringForStatusCode:{objc_msgSend(headerCopy, "statusCode")}];
  v7 = [v4 stringWithFormat:@"%ld %@\n", statusCode, v6];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allHeaderFields = [headerCopy allHeaderFields];
  v9 = [allHeaderFields countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(allHeaderFields);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        allHeaderFields2 = [headerCopy allHeaderFields];
        v15 = [allHeaderFields2 objectForKeyedSubscript:v13];
        [v7 appendFormat:@"%@: %@\n", v13, v15];
      }

      v10 = [allHeaderFields countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v7];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)formattedRequestHeader:(id)header session:(id)session cookies:(id)cookies
{
  v62 = *MEMORY[0x277D85DE8];
  headerCopy = header;
  sessionCopy = session;
  cookiesCopy = cookies;
  v9 = MEMORY[0x277CCAB68];
  hTTPMethod = [headerCopy HTTPMethod];
  v11 = [headerCopy URL];
  v12 = [v11 debugDescription];
  v13 = [v9 stringWithFormat:@"%@ %@\n", hTTPMethod, v12];

  v45 = headerCopy;
  v14 = [headerCopy URL];
  host = [v14 host];
  [v13 appendFormat:@"Host: %@\n", host];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v46 = sessionCopy;
  configuration = [sessionCopy configuration];
  hTTPAdditionalHeaders = [configuration HTTPAdditionalHeaders];

  v18 = [hTTPAdditionalHeaders countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v56;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v56 != v20)
        {
          objc_enumerationMutation(hTTPAdditionalHeaders);
        }

        v22 = *(*(&v55 + 1) + 8 * i);
        configuration2 = [v46 configuration];
        hTTPAdditionalHeaders2 = [configuration2 HTTPAdditionalHeaders];
        v25 = [hTTPAdditionalHeaders2 objectForKeyedSubscript:v22];
        [v13 appendFormat:@"%@: %@\n", v22, v25];
      }

      v19 = [hTTPAdditionalHeaders countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v19);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v26 = cookiesCopy;
  v27 = [v26 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v52;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v52 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v51 + 1) + 8 * j);
        name = [v31 name];
        value = [v31 value];
        [v13 appendFormat:@"%@: %@\n", name, value];
      }

      v28 = [v26 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v28);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  allHTTPHeaderFields = [v45 allHTTPHeaderFields];
  v35 = [allHTTPHeaderFields countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v48;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v48 != v37)
        {
          objc_enumerationMutation(allHTTPHeaderFields);
        }

        v39 = *(*(&v47 + 1) + 8 * k);
        v40 = [v45 valueForHTTPHeaderField:v39];
        [v13 appendFormat:@"%@: %@\n", v39, v40];
      }

      v36 = [allHTTPHeaderFields countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v36);
  }

  v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v13];

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)formattedBody:(id)body error:(id)error
{
  bodyCopy = body;
  errorCopy = error;
  if (errorCopy)
  {
    v7 = errorCopy;
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:bodyCopy encoding:4];
    goto LABEL_9;
  }

  v15 = 0;
  v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:bodyCopy options:0 error:&v15];
  v7 = v15;
  if (!v9)
  {
    v10 = bodyCopy;
    goto LABEL_7;
  }

  v14 = 0;
  v10 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v9 options:1 error:&v14];
  v11 = v14;
  if (!v11)
  {
LABEL_7:
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];
    goto LABEL_8;
  }

  v12 = v11;
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:bodyCopy encoding:4];

LABEL_8:
LABEL_9:

  return v8;
}

@end