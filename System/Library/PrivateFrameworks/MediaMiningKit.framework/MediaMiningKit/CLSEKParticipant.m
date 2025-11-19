@interface CLSEKParticipant
- (BOOL)isEqual:(id)a3;
- (CLSEKParticipant)initWithCoder:(id)a3;
- (CLSEKParticipant)initWithEKParticipant:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLSEKParticipant

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CLSEKParticipant *)self hash];
      v6 = v5 == [(CLSEKParticipant *)v4 hash];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  URL = self->_URL;
  v5 = a3;
  [v5 encodeObject:URL forKey:@"URL"];
  [v5 encodeInteger:self->_participantStatus forKey:@"participantStatus"];
  [v5 encodeObject:self->_emailAddress forKey:@"emailAddress"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeBool:self->_isCurrentUser forKey:@"isCurrentUser"];
  [v5 encodeInteger:self->_participantType forKey:@"participantType"];
}

- (CLSEKParticipant)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CLSEKParticipant;
  v5 = [(CLSEKParticipant *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v5->_participantStatus = [v4 decodeIntegerForKey:@"participantStatus"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"emailAddress"];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v10;

    v5->_isCurrentUser = [v4 decodeBoolForKey:@"isCurrentUser"];
    v5->_participantType = [v4 decodeIntegerForKey:@"participantType"];
  }

  return v5;
}

- (CLSEKParticipant)initWithEKParticipant:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v14.receiver = self;
    v14.super_class = CLSEKParticipant;
    v5 = [(CLSEKParticipant *)&v14 init];
    if (v5)
    {
      v6 = [v4 URL];
      URL = v5->_URL;
      v5->_URL = v6;

      v5->_participantStatus = [v4 participantStatus];
      v8 = [v4 emailAddress];
      emailAddress = v5->_emailAddress;
      v5->_emailAddress = v8;

      v10 = [v4 name];
      name = v5->_name;
      v5->_name = v10;

      v5->_isCurrentUser = [v4 isCurrentUser];
      v5->_participantType = [v4 participantType];
    }

    self = v5;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end