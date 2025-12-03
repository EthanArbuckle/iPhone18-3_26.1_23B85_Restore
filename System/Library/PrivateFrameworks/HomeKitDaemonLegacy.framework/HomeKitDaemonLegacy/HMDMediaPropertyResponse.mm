@interface HMDMediaPropertyResponse
+ (id)groupedProfileResponses:(id)responses;
+ (id)propertyResponsesFromRequests:(id)requests error:(id)error;
+ (id)responseWithRequest:(id)request error:(id)error;
+ (id)responseWithRequest:(id)request value:(id)value updatedTime:(id)time;
+ (id)responsesFromSerializedResponse:(id)response requests:(id)requests home:(id)home;
+ (id)serializeResponses:(id)responses;
- (HMDMediaPropertyResponse)initWithRequest:(id)request error:(id)error;
- (HMDMediaPropertyResponse)initWithRequest:(id)request value:(id)value updatedTime:(id)time;
- (id)description;
@end

@implementation HMDMediaPropertyResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  request = [(HMDMediaPropertyResponse *)self request];
  value = [(HMDMediaPropertyResponse *)self value];
  error = [(HMDMediaPropertyResponse *)self error];
  v7 = [v3 stringWithFormat:@"<MPRes: %@ (val: %@, err: %@)>", request, value, error];

  return v7;
}

- (HMDMediaPropertyResponse)initWithRequest:(id)request value:(id)value updatedTime:(id)time
{
  requestCopy = request;
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = HMDMediaPropertyResponse;
  v10 = [(HMDMediaPropertyResponse *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_request, request);
    objc_storeStrong(&v11->_value, value);
    valueUpdatedTime = v11->_valueUpdatedTime;
    if (valueUpdatedTime)
    {
      date = valueUpdatedTime;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    v14 = v11->_valueUpdatedTime;
    v11->_valueUpdatedTime = date;
  }

  return v11;
}

- (HMDMediaPropertyResponse)initWithRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = HMDMediaPropertyResponse;
  v9 = [(HMDMediaPropertyResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_error, error);
  }

  return v10;
}

+ (id)responseWithRequest:(id)request value:(id)value updatedTime:(id)time
{
  timeCopy = time;
  valueCopy = value;
  requestCopy = request;
  v11 = [[self alloc] initWithRequest:requestCopy value:valueCopy updatedTime:timeCopy];

  return v11;
}

+ (id)responseWithRequest:(id)request error:(id)error
{
  errorCopy = error;
  requestCopy = request;
  v8 = [[self alloc] initWithRequest:requestCopy error:errorCopy];

  return v8;
}

+ (id)responsesFromSerializedResponse:(id)response requests:(id)requests home:(id)home
{
  v70 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  requestsCopy = requests;
  homeCopy = home;
  array = [MEMORY[0x277CBEB18] array];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v37 = responseCopy;
  obj = [responseCopy allKeys];
  v40 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v40)
  {
    v38 = *v60;
    *&v8 = 138543618;
    v35 = v8;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v60 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v59 + 1) + 8 * i);
        v50 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
        v43 = [homeCopy mediaProfileWithUUID:?];
        if (v43)
        {
          v41 = i;
          v11 = [v37 objectForKeyedSubscript:v10];
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          allKeys = [v11 allKeys];
          v48 = [allKeys countByEnumeratingWithState:&v55 objects:v64 count:16];
          if (v48)
          {
            v46 = *v56;
            v47 = v11;
            do
            {
              v12 = 0;
              do
              {
                if (*v56 != v46)
                {
                  objc_enumerationMutation(allKeys);
                }

                v49 = v12;
                v13 = *(*(&v55 + 1) + 8 * v12);
                v51 = 0u;
                v52 = 0u;
                v53 = 0u;
                v54 = 0u;
                v14 = requestsCopy;
                v15 = [v14 countByEnumeratingWithState:&v51 objects:v63 count:16];
                if (v15)
                {
                  v16 = v15;
                  v17 = *v52;
LABEL_14:
                  v18 = 0;
                  while (1)
                  {
                    if (*v52 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v51 + 1) + 8 * v18);
                    mediaProfile = [v19 mediaProfile];
                    uniqueIdentifier = [mediaProfile uniqueIdentifier];
                    if ([uniqueIdentifier isEqual:v50])
                    {
                      property = [v19 property];
                      v23 = [v13 isEqual:property];

                      if (v23)
                      {
                        v24 = v19;

                        if (v24)
                        {
                          goto LABEL_26;
                        }

                        goto LABEL_25;
                      }
                    }

                    else
                    {
                    }

                    if (v16 == ++v18)
                    {
                      v16 = [v14 countByEnumeratingWithState:&v51 objects:v63 count:16];
                      if (v16)
                      {
                        goto LABEL_14;
                      }

                      break;
                    }
                  }
                }

LABEL_25:
                v24 = [HMDMediaPropertyRequest requestWithProperty:v13 mediaProfile:v43, v35];
LABEL_26:
                v11 = v47;
                v25 = [v47 errorFromDataForKey:v13];
                if (v25)
                {
                  v26 = [HMDMediaPropertyResponse responseWithRequest:v24 error:v25];
                }

                else
                {
                  v27 = [v47 objectForKeyedSubscript:v13];
                  date = [MEMORY[0x277CBEAA8] date];
                  v26 = [HMDMediaPropertyResponse responseWithRequest:v24 value:v27 updatedTime:date];
                }

                [array addObject:v26];

                v12 = v49 + 1;
              }

              while (v49 + 1 != v48);
              v48 = [allKeys countByEnumeratingWithState:&v55 objects:v64 count:16];
            }

            while (v48);
          }

          i = v41;
        }

        else
        {
          v29 = objc_autoreleasePoolPush();
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = HMFGetLogIdentifier();
            *buf = v35;
            v66 = v31;
            v67 = 2112;
            v68 = v10;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@deserializeMediaResponse: Cannot find mediaProfile with identifier %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
        }
      }

      v40 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v40);
  }

  v32 = [HMDMediaPropertyResponse groupedProfileResponses:array];

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (id)serializeResponses:(id)responses
{
  v50 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  v34 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(responsesCopy, "count")}];
  v37 = responsesCopy;
  [HMDMediaPropertyResponse groupedProfileResponses:responsesCopy];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v47 = 0u;
  v38 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v38)
  {
    v36 = *v45;
    v33 = *MEMORY[0x277CD0910];
    do
    {
      v4 = 0;
      do
      {
        if (*v45 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v39 = v4;
        v5 = *(*(&v44 + 1) + 8 * v4);
        v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v37, "count")}];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v7 = v5;
        v8 = [v7 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v8)
        {
          v9 = v8;
          mediaProfile = 0;
          v11 = *v41;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v41 != v11)
              {
                objc_enumerationMutation(v7);
              }

              v13 = *(*(&v40 + 1) + 8 * i);
              request = [v13 request];
              v15 = request;
              if (!mediaProfile)
              {
                mediaProfile = [request mediaProfile];
              }

              error = [v13 error];

              if (error)
              {
                v17 = MEMORY[0x277CCAAB0];
                error2 = [v13 error];
                value = [v17 archivedDataWithRootObject:error2 requiringSecureCoding:1 error:0];
              }

              else
              {
                value = [v13 value];
              }

              property = [v15 property];
              [v6 setObject:value forKeyedSubscript:property];
            }

            v9 = [v7 countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v9);
        }

        else
        {
          mediaProfile = 0;
        }

        if ([v6 count])
        {
          v21 = mediaProfile == 0;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          uniqueIdentifier = [mediaProfile uniqueIdentifier];
          uUIDString = [uniqueIdentifier UUIDString];

          if (uUIDString)
          {
            mediaSession = [mediaProfile mediaSession];
            sessionIdentifier = [mediaSession sessionIdentifier];
            v26 = sessionIdentifier;
            if (sessionIdentifier)
            {
              v27 = sessionIdentifier;
            }

            else
            {
              v27 = uUIDString;
            }

            v28 = v27;

            [v6 setObject:v28 forKeyedSubscript:v33];
            v29 = [v6 copy];
            [v34 setObject:v29 forKeyedSubscript:uUIDString];
          }
        }

        v4 = v39 + 1;
      }

      while (v39 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v38);
  }

  v30 = [v34 copy];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

+ (id)groupedProfileResponses:(id)responses
{
  v27 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = responsesCopy;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        request = [v10 request];
        mediaProfile = [request mediaProfile];
        uniqueIdentifier = [mediaProfile uniqueIdentifier];
        v14 = [uniqueIdentifier isEqual:v7];

        if ((v14 & 1) == 0)
        {
          array2 = [MEMORY[0x277CBEB18] array];

          [array addObject:array2];
          uniqueIdentifier2 = [mediaProfile uniqueIdentifier];

          v6 = array2;
          v7 = uniqueIdentifier2;
        }

        [v6 addObject:v10];
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v17 = [array copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)propertyResponsesFromRequests:(id)requests error:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  errorCopy = error;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(requestsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = requestsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [HMDMediaPropertyResponse responseWithRequest:*(*(&v17 + 1) + 8 * i) error:errorCopy, v17];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end