@interface HMFMutableHTTPResponse
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBody:(id)body;
- (void)setHeaderValue:(id)value forHeaderKey:(id)key;
@end

@implementation HMFMutableHTTPResponse

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMFHTTPResponse allocWithZone:zone];
  request = [(HMFHTTPResponse *)self request];
  internal = [(HMFHTTPResponse *)self internal];
  v7 = [internal copy];
  v8 = [(HMFHTTPResponse *)v4 initWithRequest:request internalResponse:v7];

  return v8;
}

- (void)setBody:(id)body
{
  bodyCopy = body;
  internal = [(HMFHTTPResponse *)self internal];
  [internal setBody:bodyCopy];
}

- (void)setHeaderValue:(id)value forHeaderKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  internal = [(HMFHTTPResponse *)self internal];
  [internal setHeaderValue:valueCopy forHeaderKey:keyCopy];
}

@end