@interface GTReplayProfileRequest
- (GTReplayProfileRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTReplayProfileRequest

- (GTReplayProfileRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = GTReplayProfileRequest;
  v5 = [(GTReplayRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"profileData"];
    profileData = v5->_profileData;
    v5->_profileData = v6;

    v5->_profileDataVersion = [coderCopy decodeInt32ForKey:@"profileDataVersion"];
    v5->_priority = [coderCopy decodeInt32ForKey:@"priority"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTReplayProfileRequest;
  coderCopy = coder;
  [(GTReplayRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_profileData forKey:{@"profileData", v5.receiver, v5.super_class}];
  [coderCopy encodeInt32:self->_profileDataVersion forKey:@"profileDataVersion"];
  [coderCopy encodeInt32:self->_priority forKey:@"priority"];
}

@end