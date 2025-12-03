@interface IDSDSessionRemoteParticipantContext
- (IDSDSessionRemoteParticipantContext)initWithtimeStamp:(double)stamp updateType:(unint64_t)type;
- (id)IDSGroupSessionMessageParticipantUpdateTypeString:(unint64_t)string;
- (id)description;
@end

@implementation IDSDSessionRemoteParticipantContext

- (IDSDSessionRemoteParticipantContext)initWithtimeStamp:(double)stamp updateType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = IDSDSessionRemoteParticipantContext;
  result = [(IDSDSessionRemoteParticipantContext *)&v7 init];
  if (result)
  {
    if (stamp != 0.0)
    {
      result->_timeStamp = stamp;
    }

    if (type)
    {
      result->_updateType = type;
    }
  }

  return result;
}

- (id)description
{
  timeStamp = self->_timeStamp;
  v4 = [(IDSDSessionRemoteParticipantContext *)self IDSGroupSessionMessageParticipantUpdateTypeString:self->_updateType];
  v5 = [NSString stringWithFormat:@"<%p> - timeStamp: %f, state: %@", self, *&timeStamp, v4];

  return v5;
}

- (id)IDSGroupSessionMessageParticipantUpdateTypeString:(unint64_t)string
{
  if (string > 5)
  {
    return 0;
  }

  else
  {
    return off_100BDCBF8[string];
  }
}

@end