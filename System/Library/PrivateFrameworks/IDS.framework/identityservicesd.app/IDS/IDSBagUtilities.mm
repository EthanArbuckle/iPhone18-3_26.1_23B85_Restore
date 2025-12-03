@interface IDSBagUtilities
+ (double)timeToCacheNegativeResultsForService:(id)service;
+ (double)timeToCacheResultsForIDStatus:(unsigned int)status forService:(id)service;
+ (double)timeToCacheUnknownResultsForService:(id)service;
@end

@implementation IDSBagUtilities

+ (double)timeToCacheNegativeResultsForService:(id)service
{
  serviceCopy = service;
  if (![serviceCopy length] || (+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"md-peer-lookup-negative-cache-time-%@", serviceCopy), v4 = objc_claimAutoreleasedReturnValue(), +[IDSServerBag sharedInstanceForBagType:](IDSServerBag, "sharedInstanceForBagType:", 1), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKey:", v4), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "doubleValue"), v8 = v7, v6, v5, v4, v8 <= 0.0))
  {
    v9 = [IDSServerBag sharedInstanceForBagType:1];
    v10 = [v9 objectForKey:@"md-peer-lookup-negative-cache-time"];
    [v10 doubleValue];
    v8 = v11;

    if (v8 <= 0.0)
    {
      v8 = 120.0;
    }
  }

  return v8;
}

+ (double)timeToCacheUnknownResultsForService:(id)service
{
  serviceCopy = service;
  if (![serviceCopy length] || (+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"md-peer-lookup-unknown-cache-time-%@", serviceCopy), v4 = objc_claimAutoreleasedReturnValue(), +[IDSServerBag sharedInstanceForBagType:](IDSServerBag, "sharedInstanceForBagType:", 1), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKey:", v4), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "doubleValue"), v8 = v7, v6, v5, v4, v8 <= 0.0))
  {
    v9 = [IDSServerBag sharedInstanceForBagType:1];
    v10 = [v9 objectForKey:@"md-peer-lookup-unknown-cache-time"];
    [v10 doubleValue];
    v8 = v11;

    if (v8 <= 0.0)
    {
      v8 = 60.0;
    }
  }

  return v8;
}

+ (double)timeToCacheResultsForIDStatus:(unsigned int)status forService:(id)service
{
  serviceCopy = service;
  if (status == 2)
  {
    [self timeToCacheNegativeResultsForService:serviceCopy];
  }

  else
  {
    [self timeToCacheUnknownResultsForService:serviceCopy];
  }

  v8 = v7;

  return v8;
}

@end