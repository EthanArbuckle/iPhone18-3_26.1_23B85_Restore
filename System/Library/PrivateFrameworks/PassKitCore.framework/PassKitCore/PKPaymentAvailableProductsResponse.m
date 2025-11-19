@interface PKPaymentAvailableProductsResponse
- (NSDate)expiry;
- (NSNumber)timestamp;
@end

@implementation PKPaymentAvailableProductsResponse

- (NSDate)expiry
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [(PKWebServiceResponse *)self headers];
  v5 = [v4 PKStringForKey:@"Cache-Control"];
  v6 = [v5 componentsSeparatedByString:@"="];

  if ([v6 count] == 2 && (objc_msgSend(v6, "objectAtIndex:", 0), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasPrefix:", @"max-age"), v7, v8))
  {
    v9 = [v6 objectAtIndex:1];
    [v9 doubleValue];
    v11 = v10;

    v12 = [v3 dateByAddingTimeInterval:v11];
  }

  else
  {
    v13 = [v4 PKDateForKey:@"Expires"];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v3 dateByAddingTimeInterval:86400.0];
    }

    v12 = v15;
  }

  return v12;
}

- (NSNumber)timestamp
{
  v2 = [(PKWebServiceResponse *)self JSONObject];
  v3 = [v2 PKNumberForKey:@"timestamp"];

  return v3;
}

@end