@interface GTReplayProfileRequest
- (GTReplayProfileRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTReplayProfileRequest

- (GTReplayProfileRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GTReplayProfileRequest;
  v5 = [(GTReplayRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"profileData"];
    profileData = v5->_profileData;
    v5->_profileData = v6;

    v5->_profileDataVersion = [v4 decodeInt32ForKey:@"profileDataVersion"];
    v5->_priority = [v4 decodeInt32ForKey:@"priority"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GTReplayProfileRequest;
  v4 = a3;
  [(GTReplayRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_profileData forKey:{@"profileData", v5.receiver, v5.super_class}];
  [v4 encodeInt32:self->_profileDataVersion forKey:@"profileDataVersion"];
  [v4 encodeInt32:self->_priority forKey:@"priority"];
}

@end