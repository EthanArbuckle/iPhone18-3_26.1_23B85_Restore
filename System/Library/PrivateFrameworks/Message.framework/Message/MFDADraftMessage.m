@interface MFDADraftMessage
- (MFDADraftMessage)initWithMailMessage:(id)a3 clientID:(unint64_t)a4;
- (id)clientID;
- (id)serverID;
- (id)subject;
@end

@implementation MFDADraftMessage

- (MFDADraftMessage)initWithMailMessage:(id)a3 clientID:(unint64_t)a4
{
  v7 = a3;
  v16.receiver = self;
  v16.super_class = MFDADraftMessage;
  v8 = [(MFDADraftMessage *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_message, a3);
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = [(MFMailMessage *)v9->_message messageData];
    v12 = [v10 initWithData:v11 encoding:4];
    bodyData = v9->_bodyData;
    v9->_bodyData = v12;

    v9->_clientID = a4;
    v14 = v9;
  }

  return v9;
}

- (id)subject
{
  v2 = [(MFMailMessage *)self->_message subject];
  v3 = [v2 subjectString];

  return v3;
}

- (id)clientID
{
  clientID = self->_clientID;
  if (clientID)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", clientID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)serverID
{
  if (([(MFMailMessage *)self->_message messageFlags]& 0x100000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v3 = [(MFMailMessage *)self->_message remoteID];
    v4 = [v3 copy];
  }

  return v4;
}

@end