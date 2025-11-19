@interface BBResponse
- (BBResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)send;
@end

@implementation BBResponse

- (void)send
{
  if (!self->_sent)
  {
    v4 = [(BBResponse *)self sendBlock];
    if (v4)
    {
      v5 = v4;
      (v4)[2](v4, self);
      v4 = v5;
      self->_sent = 1;
    }
  }
}

- (BBResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = BBResponse;
  v5 = [(BBResponse *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bulletinID"];
    [(BBResponse *)v5 setBulletinID:v6];

    -[BBResponse setActionActivationMode:](v5, "setActionActivationMode:", [v4 decodeIntegerForKey:@"actionActivationMode"]);
    -[BBResponse setActionBehavior:](v5, "setActionBehavior:", [v4 decodeIntegerForKey:@"actionBehavior"]);
    -[BBResponse setActionType:](v5, "setActionType:", [v4 decodeIntegerForKey:@"actionType"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"replyText"];
    [(BBResponse *)v5 setReplyText:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buttonID"];
    [(BBResponse *)v5 setButtonID:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionID"];
    [(BBResponse *)v5 setActionID:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionLaunchURL"];
    [(BBResponse *)v5 setActionLaunchURL:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originID"];
    [(BBResponse *)v5 setOriginID:v11];

    v12 = BBAllowedClasses();
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"context"];
    [(BBResponse *)v5 setContext:v13];

    -[BBResponse setActivated:](v5, "setActivated:", [v4 decodeBoolForKey:@"activated"]);
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
    [(BBResponse *)v5 setEndpoint:v14];

    -[BBResponse setDidOpenApplication:](v5, "setDidOpenApplication:", [v4 decodeBoolForKey:@"didOpenApplication"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(BBResponse *)self bulletinID];
  [v12 encodeObject:v4 forKey:@"bulletinID"];

  [v12 encodeInteger:-[BBResponse actionActivationMode](self forKey:{"actionActivationMode"), @"actionActivationMode"}];
  [v12 encodeInteger:-[BBResponse actionBehavior](self forKey:{"actionBehavior"), @"actionBehavior"}];
  [v12 encodeInteger:-[BBResponse actionType](self forKey:{"actionType"), @"actionType"}];
  v5 = [(BBResponse *)self replyText];
  [v12 encodeObject:v5 forKey:@"replyText"];

  v6 = [(BBResponse *)self buttonID];
  [v12 encodeObject:v6 forKey:@"buttonID"];

  v7 = [(BBResponse *)self actionID];
  [v12 encodeObject:v7 forKey:@"actionID"];

  v8 = [(BBResponse *)self actionLaunchURL];
  [v12 encodeObject:v8 forKey:@"actionLaunchURL"];

  v9 = [(BBResponse *)self originID];
  [v12 encodeObject:v9 forKey:@"originID"];

  v10 = [(BBResponse *)self context];
  [v12 encodeObject:v10 forKey:@"context"];

  [v12 encodeBool:-[BBResponse activated](self forKey:{"activated"), @"activated"}];
  v11 = [(BBResponse *)self endpoint];
  [v12 encodeObject:v11 forKey:@"endpoint"];

  [v12 encodeBool:-[BBResponse didOpenApplication](self forKey:{"didOpenApplication"), @"didOpenApplication"}];
}

@end