@interface MRIDSCompanionMessage
- (BOOL)replyWithData:(id)data priority:(int64_t)priority;
- (MRIDSCompanionMessage)initWithID:(id)d data:(id)data;
@end

@implementation MRIDSCompanionMessage

- (MRIDSCompanionMessage)initWithID:(id)d data:(id)data
{
  dCopy = d;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = MRIDSCompanionMessage;
  v8 = [(MRIDSCompanionMessage *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    messageID = v8->_messageID;
    v8->_messageID = v9;

    v11 = [dataCopy copy];
    data = v8->_data;
    v8->_data = v11;
  }

  return v8;
}

- (BOOL)replyWithData:(id)data priority:(int64_t)priority
{
  dataCopy = data;
  v7 = +[MRIDSCompanionConnection sharedManager];
  LOBYTE(priority) = [v7 _sendMessage:dataCopy type:0 destination:0 session:0 options:0 priority:priority replyID:self->_messageID response:0];

  return priority;
}

@end