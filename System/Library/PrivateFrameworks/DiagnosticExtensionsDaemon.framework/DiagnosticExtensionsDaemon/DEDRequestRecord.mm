@interface DEDRequestRecord
- (DEDRequestRecord)initWithRequest:(id)a3 response:(id)a4 session:(id)a5 cookies:(id)a6 body:(id)a7 error:(id)a8;
- (DEDRequestRecord)initWithURL:(id)a3 httpMethod:(id)a4 responseData:(id)a5;
- (id)formattedBody:(id)a3 error:(id)a4;
- (id)formattedRequestHeader:(id)a3 session:(id)a4 cookies:(id)a5;
- (id)formattedResponseHeader:(id)a3;
@end

@implementation DEDRequestRecord

- (DEDRequestRecord)initWithURL:(id)a3 httpMethod:(id)a4 responseData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = DEDRequestRecord;
  v11 = [(DEDRequestRecord *)&v16 init];
  if (v11)
  {
    v12 = [v8 path];
    [(DEDRequestRecord *)v11 setURL:v12];

    v13 = [MEMORY[0x277CBEAA8] date];
    [(DEDRequestRecord *)v11 setDate:v13];

    [(DEDRequestRecord *)v11 setMethod:v9];
    [(DEDRequestRecord *)v11 setIsFailure:0];
    v14 = [(DEDRequestRecord *)v11 formattedBody:v10 error:0];
    [(DEDRequestRecord *)v11 setResponseBody:v14];
  }

  return v11;
}

- (DEDRequestRecord)initWithRequest:(id)a3 response:(id)a4 session:(id)a5 cookies:(id)a6 body:(id)a7 error:(id)a8
{
  v14 = a3;
  v15 = a8;
  v46.receiver = self;
  v46.super_class = DEDRequestRecord;
  v45 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = [(DEDRequestRecord *)&v46 init];
  v20 = [v14 URL];
  v21 = [v20 query];

  v22 = [v14 URL];
  v23 = [v22 path];
  v24 = v23;
  if (v21)
  {
    v25 = [v14 URL];
    v26 = [v25 query];
    v27 = [v24 stringByAppendingFormat:@"%@%@", @"?", v26];
    URL = v19->_URL;
    v19->_URL = v27;
  }

  else
  {
    v29 = v19->_URL;
    v19->_URL = v23;
    v24 = v29;
  }

  v30 = [MEMORY[0x277CBEAA8] date];
  date = v19->_date;
  v19->_date = v30;

  v32 = [v14 HTTPMethod];
  method = v19->_method;
  v19->_method = v32;

  v19->_isFailure = v15 != 0;
  v34 = [(DEDRequestRecord *)v19 formattedRequestHeader:v14 session:v17 cookies:v16];

  requestHeader = v19->_requestHeader;
  v19->_requestHeader = v34;

  v36 = [v14 HTTPBody];

  if (v36)
  {
    v37 = [v14 HTTPBody];
    v38 = [(DEDRequestRecord *)v19 formattedBody:v37 error:v15];
    requestBody = v19->_requestBody;
    v19->_requestBody = v38;
  }

  else
  {
    v37 = v19->_requestBody;
    v19->_requestBody = &stru_285B72378;
  }

  v40 = [(DEDRequestRecord *)v19 formattedResponseHeader:v18];

  responseHeader = v19->_responseHeader;
  v19->_responseHeader = v40;

  v42 = [(DEDRequestRecord *)v19 formattedBody:v45 error:v15];

  responseBody = v19->_responseBody;
  v19->_responseBody = v42;

  return v19;
}

- (id)formattedResponseHeader:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CCAB68];
  v5 = [v3 statusCode];
  v6 = [MEMORY[0x277CCAA40] localizedStringForStatusCode:{objc_msgSend(v3, "statusCode")}];
  v7 = [v4 stringWithFormat:@"%ld %@\n", v5, v6];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v3 allHeaderFields];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v3 allHeaderFields];
        v15 = [v14 objectForKeyedSubscript:v13];
        [v7 appendFormat:@"%@: %@\n", v13, v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v7];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)formattedRequestHeader:(id)a3 session:(id)a4 cookies:(id)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v44 = a5;
  v9 = MEMORY[0x277CCAB68];
  v10 = [v7 HTTPMethod];
  v11 = [v7 URL];
  v12 = [v11 debugDescription];
  v13 = [v9 stringWithFormat:@"%@ %@\n", v10, v12];

  v45 = v7;
  v14 = [v7 URL];
  v15 = [v14 host];
  [v13 appendFormat:@"Host: %@\n", v15];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v46 = v8;
  v16 = [v8 configuration];
  v17 = [v16 HTTPAdditionalHeaders];

  v18 = [v17 countByEnumeratingWithState:&v55 objects:v61 count:16];
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
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v55 + 1) + 8 * i);
        v23 = [v46 configuration];
        v24 = [v23 HTTPAdditionalHeaders];
        v25 = [v24 objectForKeyedSubscript:v22];
        [v13 appendFormat:@"%@: %@\n", v22, v25];
      }

      v19 = [v17 countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v19);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v26 = v44;
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
        v32 = [v31 name];
        v33 = [v31 value];
        [v13 appendFormat:@"%@: %@\n", v32, v33];
      }

      v28 = [v26 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v28);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v34 = [v45 allHTTPHeaderFields];
  v35 = [v34 countByEnumeratingWithState:&v47 objects:v59 count:16];
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
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v47 + 1) + 8 * k);
        v40 = [v45 valueForHTTPHeaderField:v39];
        [v13 appendFormat:@"%@: %@\n", v39, v40];
      }

      v36 = [v34 countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v36);
  }

  v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v13];

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)formattedBody:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
    goto LABEL_9;
  }

  v15 = 0;
  v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v15];
  v7 = v15;
  if (!v9)
  {
    v10 = v5;
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
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];

LABEL_8:
LABEL_9:

  return v8;
}

@end