@interface CLSEKParticipant
- (BOOL)isEqual:(id)equal;
- (CLSEKParticipant)initWithCoder:(id)coder;
- (CLSEKParticipant)initWithEKParticipant:(id)participant;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSEKParticipant

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CLSEKParticipant *)self hash];
      v6 = v5 == [(CLSEKParticipant *)equalCopy hash];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  URL = self->_URL;
  coderCopy = coder;
  [coderCopy encodeObject:URL forKey:@"URL"];
  [coderCopy encodeInteger:self->_participantStatus forKey:@"participantStatus"];
  [coderCopy encodeObject:self->_emailAddress forKey:@"emailAddress"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeBool:self->_isCurrentUser forKey:@"isCurrentUser"];
  [coderCopy encodeInteger:self->_participantType forKey:@"participantType"];
}

- (CLSEKParticipant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CLSEKParticipant;
  v5 = [(CLSEKParticipant *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v5->_participantStatus = [coderCopy decodeIntegerForKey:@"participantStatus"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"emailAddress"];
    emailAddress = v5->_emailAddress;
    v5->_emailAddress = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v10;

    v5->_isCurrentUser = [coderCopy decodeBoolForKey:@"isCurrentUser"];
    v5->_participantType = [coderCopy decodeIntegerForKey:@"participantType"];
  }

  return v5;
}

- (CLSEKParticipant)initWithEKParticipant:(id)participant
{
  participantCopy = participant;
  if (participantCopy)
  {
    v14.receiver = self;
    v14.super_class = CLSEKParticipant;
    v5 = [(CLSEKParticipant *)&v14 init];
    if (v5)
    {
      v6 = [participantCopy URL];
      URL = v5->_URL;
      v5->_URL = v6;

      v5->_participantStatus = [participantCopy participantStatus];
      emailAddress = [participantCopy emailAddress];
      emailAddress = v5->_emailAddress;
      v5->_emailAddress = emailAddress;

      name = [participantCopy name];
      name = v5->_name;
      v5->_name = name;

      v5->_isCurrentUser = [participantCopy isCurrentUser];
      v5->_participantType = [participantCopy participantType];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end