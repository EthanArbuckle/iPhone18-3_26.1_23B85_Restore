@interface HMFHTTPRequestInternal
- (HMFHTTPRequestInternal)init;
- (NSDictionary)headerFields;
- (id)responseWithStatusCode:(int64_t)code;
@end

@implementation HMFHTTPRequestInternal

- (HMFHTTPRequestInternal)init
{
  v8.receiver = self;
  v8.super_class = HMFHTTPRequestInternal;
  v2 = [(HMFHTTPRequestInternal *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    headerFields = v2->_headerFields;
    v2->_headerFields = dictionary;

    v5 = [[HMFActivity alloc] initWithName:@"HTTPRequest"];
    activity = v2->_activity;
    v2->_activity = v5;
  }

  return v2;
}

- (NSDictionary)headerFields
{
  v2 = [(NSMutableDictionary *)self->_headerFields copy];

  return v2;
}

- (id)responseWithStatusCode:(int64_t)code
{
  v5 = [HMFActivity alloc];
  activity = [(HMFHTTPRequestInternal *)self activity];
  v7 = [(HMFActivity *)v5 initWithName:@"HTTPResponse" parent:activity];

  v8 = [HMFHTTPResponseInternal alloc];
  v9 = [(HMFHTTPResponseInternal *)v8 initWithStatusCode:code headerFields:MEMORY[0x277CBEC10] body:0 activity:v7];

  return v9;
}

@end