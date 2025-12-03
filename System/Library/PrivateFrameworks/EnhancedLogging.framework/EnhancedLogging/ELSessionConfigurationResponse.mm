@interface ELSessionConfigurationResponse
- (ELSessionConfigurationResponse)initWithStatusCode:(int64_t)code data:(id)data;
@end

@implementation ELSessionConfigurationResponse

- (ELSessionConfigurationResponse)initWithStatusCode:(int64_t)code data:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = ELSessionConfigurationResponse;
  v8 = [(ELSessionConfigurationResponse *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_statusCode = code;
    objc_storeStrong(&v8->_data, data);
  }

  return v9;
}

@end