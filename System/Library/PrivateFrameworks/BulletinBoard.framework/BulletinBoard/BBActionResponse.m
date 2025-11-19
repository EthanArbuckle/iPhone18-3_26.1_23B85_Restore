@interface BBActionResponse
+ (id)actionResponseForResponse:(id)a3 bulletinRequest:(id)a4;
- (BBActionResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBActionResponse

+ (id)actionResponseForResponse:(id)a3 bulletinRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  v9 = [v7 actionID];
  [v8 setActionID:v9];

  v10 = [v7 actionLaunchURL];
  [v8 setActionLaunchURL:v10];

  [v8 setActionType:{objc_msgSend(v7, "actionType")}];
  [v8 setActionActivationMode:{objc_msgSend(v7, "actionActivationMode")}];
  [v8 setActionBehavior:{objc_msgSend(v7, "actionBehavior")}];
  [v8 setDidOpenApplication:{objc_msgSend(v7, "didOpenApplication")}];
  v11 = [v6 context];
  [v8 setBulletinContext:v11];

  v12 = [v7 buttonID];
  [v8 setBulletinButtonID:v12];

  v13 = [v6 recordID];
  [v8 setBulletinRecordID:v13];

  v14 = [v6 publisherBulletinID];

  [v8 setBulletinPublisherID:v14];
  v15 = [v7 context];
  [v8 setContext:v15];

  v16 = [v7 originID];
  [v8 setOriginID:v16];

  v17 = [v7 endpoint];

  [v8 setEndpoint:v17];

  return v8;
}

- (id)description
{
  v17 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v15 = [(BBActionResponse *)self actionType];
  v14 = [(BBActionResponse *)self actionActivationMode];
  v3 = [(BBActionResponse *)self actionBehavior];
  v4 = [(BBActionResponse *)self actionID];
  v5 = [(BBActionResponse *)self actionLaunchURL];
  v6 = [(BBActionResponse *)self didOpenApplication];
  v7 = [(BBActionResponse *)self bulletinButtonID];
  v8 = [(BBActionResponse *)self originID];
  v9 = [(BBActionResponse *)self endpoint];
  v10 = [(BBActionResponse *)self bulletinRecordID];
  v11 = [(BBActionResponse *)self bulletinPublisherID];
  v12 = [v17 stringWithFormat:@"<%@: %p type = %ld; activationMode = %ld behavior = %ld actionID = %@; actionLaunchURL = %@; activated: %ld buttonID = %@; originID = %@; endpoint = %@; recordID = %@; publisherID = %@>", v16, self, v15, v14, v3, v4, v5, v6, v7, v8, v9, v10, v11];;

  return v12;
}

- (BBActionResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = BBActionResponse;
  v5 = [(BBActionResponse *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionID"];
    [(BBActionResponse *)v5 setActionID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionLaunchURL"];
    [(BBActionResponse *)v5 setActionLaunchURL:v7];

    -[BBActionResponse setActionType:](v5, "setActionType:", [v4 decodeIntegerForKey:@"actionType"]);
    -[BBActionResponse setActionActivationMode:](v5, "setActionActivationMode:", [v4 decodeIntegerForKey:@"actionActiviationMode"]);
    -[BBActionResponse setActionBehavior:](v5, "setActionBehavior:", [v4 decodeIntegerForKey:@"actionBehavior"]);
    -[BBActionResponse setDidOpenApplication:](v5, "setDidOpenApplication:", [v4 decodeBoolForKey:@"didOpenApplication"]);
    v8 = BBAllowedClasses();
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"bulletinContext"];
    [(BBActionResponse *)v5 setBulletinContext:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bulletinButtonID"];
    [(BBActionResponse *)v5 setBulletinButtonID:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bulletinRecordID"];
    [(BBActionResponse *)v5 setBulletinRecordID:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bulletinPublisherID"];
    [(BBActionResponse *)v5 setBulletinPublisherID:v12];

    v13 = BBAllowedClasses();
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"context"];
    [(BBActionResponse *)v5 setContext:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originID"];
    [(BBActionResponse *)v5 setOriginID:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
    [(BBActionResponse *)v5 setEndpoint:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BBActionResponse *)self actionID];
  [v4 encodeObject:v5 forKey:@"actionID"];

  v6 = [(BBActionResponse *)self actionLaunchURL];
  [v4 encodeObject:v6 forKey:@"actionLaunchURL"];

  [v4 encodeInteger:-[BBActionResponse actionType](self forKey:{"actionType"), @"actionType"}];
  [v4 encodeInteger:-[BBActionResponse actionActivationMode](self forKey:{"actionActivationMode"), @"actionActiviationMode"}];
  [v4 encodeInteger:-[BBActionResponse actionBehavior](self forKey:{"actionBehavior"), @"actionBehavior"}];
  [v4 encodeBool:-[BBActionResponse didOpenApplication](self forKey:{"didOpenApplication"), @"didOpenApplication"}];
  v7 = [(BBActionResponse *)self bulletinContext];
  [v4 encodeObject:v7 forKey:@"bulletinContext"];

  v8 = [(BBActionResponse *)self bulletinButtonID];
  [v4 encodeObject:v8 forKey:@"bulletinButtonID"];

  v9 = [(BBActionResponse *)self bulletinRecordID];
  [v4 encodeObject:v9 forKey:@"bulletinRecordID"];

  v10 = [(BBActionResponse *)self bulletinPublisherID];
  [v4 encodeObject:v10 forKey:@"bulletinPublisherID"];

  v11 = [(BBActionResponse *)self context];
  [v4 encodeObject:v11 forKey:@"context"];

  v12 = [(BBActionResponse *)self originID];
  [v4 encodeObject:v12 forKey:@"originID"];

  v13 = [(BBActionResponse *)self endpoint];
  [v4 encodeObject:v13 forKey:@"endpoint"];
}

@end