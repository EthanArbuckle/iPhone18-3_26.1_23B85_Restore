@interface MFDADraftMessage
- (MFDADraftMessage)initWithMailMessage:(id)message clientID:(unint64_t)d;
- (id)clientID;
- (id)serverID;
- (id)subject;
@end

@implementation MFDADraftMessage

- (MFDADraftMessage)initWithMailMessage:(id)message clientID:(unint64_t)d
{
  messageCopy = message;
  v16.receiver = self;
  v16.super_class = MFDADraftMessage;
  v8 = [(MFDADraftMessage *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_message, message);
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    messageData = [(MFMailMessage *)v9->_message messageData];
    v12 = [v10 initWithData:messageData encoding:4];
    bodyData = v9->_bodyData;
    v9->_bodyData = v12;

    v9->_clientID = d;
    v14 = v9;
  }

  return v9;
}

- (id)subject
{
  subject = [(MFMailMessage *)self->_message subject];
  subjectString = [subject subjectString];

  return subjectString;
}

- (id)clientID
{
  clientID = self->_clientID;
  if (clientID)
  {
    clientID = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", clientID];
  }

  else
  {
    clientID = 0;
  }

  return clientID;
}

- (id)serverID
{
  if (([(MFMailMessage *)self->_message messageFlags]& 0x100000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    remoteID = [(MFMailMessage *)self->_message remoteID];
    v4 = [remoteID copy];
  }

  return v4;
}

@end