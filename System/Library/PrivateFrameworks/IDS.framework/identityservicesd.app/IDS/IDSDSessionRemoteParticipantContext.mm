@interface IDSDSessionRemoteParticipantContext
- (IDSDSessionRemoteParticipantContext)initWithtimeStamp:(double)a3 updateType:(unint64_t)a4;
- (id)IDSGroupSessionMessageParticipantUpdateTypeString:(unint64_t)a3;
- (id)description;
@end

@implementation IDSDSessionRemoteParticipantContext

- (IDSDSessionRemoteParticipantContext)initWithtimeStamp:(double)a3 updateType:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = IDSDSessionRemoteParticipantContext;
  result = [(IDSDSessionRemoteParticipantContext *)&v7 init];
  if (result)
  {
    if (a3 != 0.0)
    {
      result->_timeStamp = a3;
    }

    if (a4)
    {
      result->_updateType = a4;
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

- (id)IDSGroupSessionMessageParticipantUpdateTypeString:(unint64_t)a3
{
  if (a3 > 5)
  {
    return 0;
  }

  else
  {
    return off_100BDCBF8[a3];
  }
}

@end