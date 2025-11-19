@interface DMFFetchProfilesRequest
- (DMFFetchProfilesRequest)init;
- (DMFFetchProfilesRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchProfilesRequest

- (DMFFetchProfilesRequest)init
{
  v3.receiver = self;
  v3.super_class = DMFFetchProfilesRequest;
  result = [(CATTaskRequest *)&v3 init];
  if (result)
  {
    result->_filterFlags = 0;
  }

  return result;
}

- (DMFFetchProfilesRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DMFFetchProfilesRequest;
  v5 = [(CATTaskRequest *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filterFlags"];
    v5->_filterFlags = [v6 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFFetchProfilesRequest;
  v4 = a3;
  [(CATTaskRequest *)&v6 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFFetchProfilesRequest filterFlags](self, "filterFlags", v6.receiver, v6.super_class)}];
  [v4 encodeObject:v5 forKey:@"filterFlags"];
}

@end