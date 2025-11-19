@interface MDMRequestClearRestrictionsPasswordCommand
+ (id)request;
+ (unint64_t)requiredAccessRights;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
- (void)processRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation MDMRequestClearRestrictionsPasswordCommand

+ (unint64_t)requiredAccessRights
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___MDMRequestClearRestrictionsPasswordCommand;
  return objc_msgSendSuper2(&v3, sel_requiredAccessRights);
}

+ (id)request
{
  v2 = objc_opt_new();

  return v2;
}

- (id)serializeWithType:(signed __int16)a3
{
  v3 = objc_opt_new();
  v4 = [v3 copy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = MDMRequestClearRestrictionsPasswordCommand;
  return [(RMModelPayloadBase *)&v4 copyWithZone:a3];
}

- (void)processRequest:(id)a3 completionHandler:(id)a4
{
  v4 = a4;
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
  v4[2](v4, v9);
}

@end