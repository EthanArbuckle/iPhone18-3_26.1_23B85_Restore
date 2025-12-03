@interface IMServiceReachabilityFinalUnreachableResultPrecondition
+ (id)preconditionWithDictionary:(id)dictionary;
- (unint64_t)evaluateWithLatestResults:(id)results requestedServices:(id)services;
@end

@implementation IMServiceReachabilityFinalUnreachableResultPrecondition

+ (id)preconditionWithDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"FinalUnreachableResult"];
  if (v3)
  {
    v4 = objc_alloc_init(IMServiceReachabilityFinalUnreachableResultPrecondition);
    [(IMServiceReachabilityFinalUnreachableResultPrecondition *)v4 setServiceName:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)evaluateWithLatestResults:(id)results requestedServices:(id)services
{
  v26 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  servicesCopy = services;
  serviceName = [(IMServiceReachabilityFinalUnreachableResultPrecondition *)self serviceName];
  v9 = [servicesCopy containsObject:serviceName];

  if (v9)
  {
    serviceName2 = [(IMServiceReachabilityFinalUnreachableResultPrecondition *)self serviceName];
    v11 = [(IMServiceReachabilityPrecondition *)self _latestResultsForServiceName:serviceName2 fromLatestResults:resultsCopy];

    if ([v11 count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v16 = *v22;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v21 + 1) + 8 * i);
            if ([v18 isFinal])
            {
              if ([v18 allAreReachable] && !objc_msgSend(v18, "error"))
              {

                v19 = 2;
                goto LABEL_19;
              }
            }

            else
            {
              v15 = 1;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v14);

        v19 = ~v15 & 1;
      }

      else
      {

        v19 = 1;
      }
    }

    else
    {
      v19 = 0;
    }

LABEL_19:
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

@end