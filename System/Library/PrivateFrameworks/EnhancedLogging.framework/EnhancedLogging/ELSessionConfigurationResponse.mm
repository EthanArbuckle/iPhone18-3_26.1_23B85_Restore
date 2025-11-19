@interface ELSessionConfigurationResponse
- (ELSessionConfigurationResponse)initWithStatusCode:(int64_t)a3 data:(id)a4;
@end

@implementation ELSessionConfigurationResponse

- (ELSessionConfigurationResponse)initWithStatusCode:(int64_t)a3 data:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ELSessionConfigurationResponse;
  v8 = [(ELSessionConfigurationResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_statusCode = a3;
    objc_storeStrong(&v8->_data, a4);
  }

  return v9;
}

@end