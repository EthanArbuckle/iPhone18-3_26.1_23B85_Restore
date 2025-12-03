@interface MDMRequestClearRestrictionsPasswordCommand
+ (id)request;
+ (unint64_t)requiredAccessRights;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)processRequest:(id)request completionHandler:(id)handler;
@end

@implementation MDMRequestClearRestrictionsPasswordCommand

+ (unint64_t)requiredAccessRights
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___MDMRequestClearRestrictionsPasswordCommand;
  return objc_msgSendSuper2(&v3, sel_requiredAccessRights);
}

+ (id)request
{
  v2 = objc_opt_new();

  return v2;
}

- (id)serializeWithType:(signed __int16)type
{
  v3 = objc_opt_new();
  v4 = [v3 copy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = MDMRequestClearRestrictionsPasswordCommand;
  return [(RMModelPayloadBase *)&v4 copyWithZone:zone];
}

- (void)processRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_opt_new();
  v6 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v11 = 0;
  v7 = [v5 clearRestrictionsPasscodeWithError:&v11];
  v8 = v11;
  if (v7)
  {
LABEL_5:
    v9 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    goto LABEL_6;
  }

  v9 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v8];
LABEL_6:
  v10 = v9;
  handlerCopy[2](handlerCopy, v9);
}

@end