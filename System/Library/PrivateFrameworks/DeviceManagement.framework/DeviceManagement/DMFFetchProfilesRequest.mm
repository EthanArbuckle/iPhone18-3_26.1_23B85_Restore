@interface DMFFetchProfilesRequest
- (DMFFetchProfilesRequest)init;
- (DMFFetchProfilesRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (DMFFetchProfilesRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = DMFFetchProfilesRequest;
  v5 = [(CATTaskRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filterFlags"];
    v5->_filterFlags = [v6 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchProfilesRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFFetchProfilesRequest filterFlags](self, "filterFlags", v6.receiver, v6.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"filterFlags"];
}

@end