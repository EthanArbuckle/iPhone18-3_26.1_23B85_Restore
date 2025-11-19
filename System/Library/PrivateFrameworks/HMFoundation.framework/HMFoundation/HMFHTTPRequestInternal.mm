@interface HMFHTTPRequestInternal
- (HMFHTTPRequestInternal)init;
- (NSDictionary)headerFields;
- (id)responseWithStatusCode:(int64_t)a3;
@end

@implementation HMFHTTPRequestInternal

- (HMFHTTPRequestInternal)init
{
  v8.receiver = self;
  v8.super_class = HMFHTTPRequestInternal;
  v2 = [(HMFHTTPRequestInternal *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    headerFields = v2->_headerFields;
    v2->_headerFields = v3;

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

- (id)responseWithStatusCode:(int64_t)a3
{
  v5 = [HMFActivity alloc];
  v6 = [(HMFHTTPRequestInternal *)self activity];
  v7 = [(HMFActivity *)v5 initWithName:@"HTTPResponse" parent:v6];

  v8 = [HMFHTTPResponseInternal alloc];
  v9 = [(HMFHTTPResponseInternal *)v8 initWithStatusCode:a3 headerFields:MEMORY[0x277CBEC10] body:0 activity:v7];

  return v9;
}

@end