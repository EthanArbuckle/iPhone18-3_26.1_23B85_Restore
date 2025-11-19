@interface NSSExternalAnalyticsRequest
- (NSSExternalAnalyticsRequest)initWithCoder:(id)a3;
- (NSSExternalAnalyticsRequest)initWithURL:(id)a3 metadata:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSSExternalAnalyticsRequest

- (NSSExternalAnalyticsRequest)initWithURL:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = NSSExternalAnalyticsRequest;
  v8 = [(NSSExternalAnalyticsRequest *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    URL = v8->_URL;
    v8->_URL = v9;

    objc_storeStrong(&v8->_metadata, a4);
  }

  return v8;
}

- (NSSExternalAnalyticsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"URL"];
  v6 = [v4 decodeObjectForKey:@"metadata"];

  v7 = [(NSSExternalAnalyticsRequest *)self initWithURL:v5 metadata:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NSSExternalAnalyticsRequest *)self URL];
  [v4 encodeObject:v5 forKey:@"URL"];

  v6 = [(NSSExternalAnalyticsRequest *)self metadata];
  [v4 encodeObject:v6 forKey:@"metadata"];
}

@end