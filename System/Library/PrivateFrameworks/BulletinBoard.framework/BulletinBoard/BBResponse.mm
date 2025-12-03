@interface BBResponse
- (BBResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)send;
@end

@implementation BBResponse

- (void)send
{
  if (!self->_sent)
  {
    sendBlock = [(BBResponse *)self sendBlock];
    if (sendBlock)
    {
      v5 = sendBlock;
      (sendBlock)[2](sendBlock, self);
      sendBlock = v5;
      self->_sent = 1;
    }
  }
}

- (BBResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = BBResponse;
  v5 = [(BBResponse *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bulletinID"];
    [(BBResponse *)v5 setBulletinID:v6];

    -[BBResponse setActionActivationMode:](v5, "setActionActivationMode:", [coderCopy decodeIntegerForKey:@"actionActivationMode"]);
    -[BBResponse setActionBehavior:](v5, "setActionBehavior:", [coderCopy decodeIntegerForKey:@"actionBehavior"]);
    -[BBResponse setActionType:](v5, "setActionType:", [coderCopy decodeIntegerForKey:@"actionType"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replyText"];
    [(BBResponse *)v5 setReplyText:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buttonID"];
    [(BBResponse *)v5 setButtonID:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionID"];
    [(BBResponse *)v5 setActionID:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionLaunchURL"];
    [(BBResponse *)v5 setActionLaunchURL:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originID"];
    [(BBResponse *)v5 setOriginID:v11];

    v12 = BBAllowedClasses();
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"context"];
    [(BBResponse *)v5 setContext:v13];

    -[BBResponse setActivated:](v5, "setActivated:", [coderCopy decodeBoolForKey:@"activated"]);
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
    [(BBResponse *)v5 setEndpoint:v14];

    -[BBResponse setDidOpenApplication:](v5, "setDidOpenApplication:", [coderCopy decodeBoolForKey:@"didOpenApplication"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bulletinID = [(BBResponse *)self bulletinID];
  [coderCopy encodeObject:bulletinID forKey:@"bulletinID"];

  [coderCopy encodeInteger:-[BBResponse actionActivationMode](self forKey:{"actionActivationMode"), @"actionActivationMode"}];
  [coderCopy encodeInteger:-[BBResponse actionBehavior](self forKey:{"actionBehavior"), @"actionBehavior"}];
  [coderCopy encodeInteger:-[BBResponse actionType](self forKey:{"actionType"), @"actionType"}];
  replyText = [(BBResponse *)self replyText];
  [coderCopy encodeObject:replyText forKey:@"replyText"];

  buttonID = [(BBResponse *)self buttonID];
  [coderCopy encodeObject:buttonID forKey:@"buttonID"];

  actionID = [(BBResponse *)self actionID];
  [coderCopy encodeObject:actionID forKey:@"actionID"];

  actionLaunchURL = [(BBResponse *)self actionLaunchURL];
  [coderCopy encodeObject:actionLaunchURL forKey:@"actionLaunchURL"];

  originID = [(BBResponse *)self originID];
  [coderCopy encodeObject:originID forKey:@"originID"];

  context = [(BBResponse *)self context];
  [coderCopy encodeObject:context forKey:@"context"];

  [coderCopy encodeBool:-[BBResponse activated](self forKey:{"activated"), @"activated"}];
  endpoint = [(BBResponse *)self endpoint];
  [coderCopy encodeObject:endpoint forKey:@"endpoint"];

  [coderCopy encodeBool:-[BBResponse didOpenApplication](self forKey:{"didOpenApplication"), @"didOpenApplication"}];
}

@end