@interface BBActionResponse
+ (id)actionResponseForResponse:(id)response bulletinRequest:(id)request;
- (BBActionResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBActionResponse

+ (id)actionResponseForResponse:(id)response bulletinRequest:(id)request
{
  requestCopy = request;
  responseCopy = response;
  v8 = objc_alloc_init(self);
  actionID = [responseCopy actionID];
  [v8 setActionID:actionID];

  actionLaunchURL = [responseCopy actionLaunchURL];
  [v8 setActionLaunchURL:actionLaunchURL];

  [v8 setActionType:{objc_msgSend(responseCopy, "actionType")}];
  [v8 setActionActivationMode:{objc_msgSend(responseCopy, "actionActivationMode")}];
  [v8 setActionBehavior:{objc_msgSend(responseCopy, "actionBehavior")}];
  [v8 setDidOpenApplication:{objc_msgSend(responseCopy, "didOpenApplication")}];
  context = [requestCopy context];
  [v8 setBulletinContext:context];

  buttonID = [responseCopy buttonID];
  [v8 setBulletinButtonID:buttonID];

  recordID = [requestCopy recordID];
  [v8 setBulletinRecordID:recordID];

  publisherBulletinID = [requestCopy publisherBulletinID];

  [v8 setBulletinPublisherID:publisherBulletinID];
  context2 = [responseCopy context];
  [v8 setContext:context2];

  originID = [responseCopy originID];
  [v8 setOriginID:originID];

  endpoint = [responseCopy endpoint];

  [v8 setEndpoint:endpoint];

  return v8;
}

- (id)description
{
  v17 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  actionType = [(BBActionResponse *)self actionType];
  actionActivationMode = [(BBActionResponse *)self actionActivationMode];
  actionBehavior = [(BBActionResponse *)self actionBehavior];
  actionID = [(BBActionResponse *)self actionID];
  actionLaunchURL = [(BBActionResponse *)self actionLaunchURL];
  didOpenApplication = [(BBActionResponse *)self didOpenApplication];
  bulletinButtonID = [(BBActionResponse *)self bulletinButtonID];
  originID = [(BBActionResponse *)self originID];
  endpoint = [(BBActionResponse *)self endpoint];
  bulletinRecordID = [(BBActionResponse *)self bulletinRecordID];
  bulletinPublisherID = [(BBActionResponse *)self bulletinPublisherID];
  v12 = [v17 stringWithFormat:@"<%@: %p type = %ld; activationMode = %ld behavior = %ld actionID = %@; actionLaunchURL = %@; activated: %ld buttonID = %@; originID = %@; endpoint = %@; recordID = %@; publisherID = %@>", v16, self, actionType, actionActivationMode, actionBehavior, actionID, actionLaunchURL, didOpenApplication, bulletinButtonID, originID, endpoint, bulletinRecordID, bulletinPublisherID];;

  return v12;
}

- (BBActionResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = BBActionResponse;
  v5 = [(BBActionResponse *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionID"];
    [(BBActionResponse *)v5 setActionID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionLaunchURL"];
    [(BBActionResponse *)v5 setActionLaunchURL:v7];

    -[BBActionResponse setActionType:](v5, "setActionType:", [coderCopy decodeIntegerForKey:@"actionType"]);
    -[BBActionResponse setActionActivationMode:](v5, "setActionActivationMode:", [coderCopy decodeIntegerForKey:@"actionActiviationMode"]);
    -[BBActionResponse setActionBehavior:](v5, "setActionBehavior:", [coderCopy decodeIntegerForKey:@"actionBehavior"]);
    -[BBActionResponse setDidOpenApplication:](v5, "setDidOpenApplication:", [coderCopy decodeBoolForKey:@"didOpenApplication"]);
    v8 = BBAllowedClasses();
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"bulletinContext"];
    [(BBActionResponse *)v5 setBulletinContext:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bulletinButtonID"];
    [(BBActionResponse *)v5 setBulletinButtonID:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bulletinRecordID"];
    [(BBActionResponse *)v5 setBulletinRecordID:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bulletinPublisherID"];
    [(BBActionResponse *)v5 setBulletinPublisherID:v12];

    v13 = BBAllowedClasses();
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"context"];
    [(BBActionResponse *)v5 setContext:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originID"];
    [(BBActionResponse *)v5 setOriginID:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
    [(BBActionResponse *)v5 setEndpoint:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actionID = [(BBActionResponse *)self actionID];
  [coderCopy encodeObject:actionID forKey:@"actionID"];

  actionLaunchURL = [(BBActionResponse *)self actionLaunchURL];
  [coderCopy encodeObject:actionLaunchURL forKey:@"actionLaunchURL"];

  [coderCopy encodeInteger:-[BBActionResponse actionType](self forKey:{"actionType"), @"actionType"}];
  [coderCopy encodeInteger:-[BBActionResponse actionActivationMode](self forKey:{"actionActivationMode"), @"actionActiviationMode"}];
  [coderCopy encodeInteger:-[BBActionResponse actionBehavior](self forKey:{"actionBehavior"), @"actionBehavior"}];
  [coderCopy encodeBool:-[BBActionResponse didOpenApplication](self forKey:{"didOpenApplication"), @"didOpenApplication"}];
  bulletinContext = [(BBActionResponse *)self bulletinContext];
  [coderCopy encodeObject:bulletinContext forKey:@"bulletinContext"];

  bulletinButtonID = [(BBActionResponse *)self bulletinButtonID];
  [coderCopy encodeObject:bulletinButtonID forKey:@"bulletinButtonID"];

  bulletinRecordID = [(BBActionResponse *)self bulletinRecordID];
  [coderCopy encodeObject:bulletinRecordID forKey:@"bulletinRecordID"];

  bulletinPublisherID = [(BBActionResponse *)self bulletinPublisherID];
  [coderCopy encodeObject:bulletinPublisherID forKey:@"bulletinPublisherID"];

  context = [(BBActionResponse *)self context];
  [coderCopy encodeObject:context forKey:@"context"];

  originID = [(BBActionResponse *)self originID];
  [coderCopy encodeObject:originID forKey:@"originID"];

  endpoint = [(BBActionResponse *)self endpoint];
  [coderCopy encodeObject:endpoint forKey:@"endpoint"];
}

@end