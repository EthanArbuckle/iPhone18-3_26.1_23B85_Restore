@interface FAPushDetailRequest
- (id)urlRequest;
- (id)urlString;
@end

@implementation FAPushDetailRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  v3 = [v2 getFamilyPushDetailsURL];

  return v3;
}

- (id)urlRequest
{
  v11.receiver = self;
  v11.super_class = FAPushDetailRequest;
  v3 = [(FAPushDetailRequest *)&v11 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  v5 = [(NSDictionary *)self->_pushPayload mutableCopy];
  [v5 removeObjectForKey:@"aps"];
  v10 = 0;
  v6 = [NSJSONSerialization dataWithJSONObject:v5 options:0 error:&v10];
  v7 = v10;
  if (v7)
  {
    v8 = _FALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100078558(v7, v5, v8);
    }
  }

  else
  {
    [v4 setHTTPBody:v6];
  }

  [v4 addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

  return v4;
}

@end