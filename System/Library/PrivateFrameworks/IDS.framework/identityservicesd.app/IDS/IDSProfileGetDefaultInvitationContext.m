@interface IDSProfileGetDefaultInvitationContext
- (IDSProfileGetDefaultInvitationContext)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation IDSProfileGetDefaultInvitationContext

- (IDSProfileGetDefaultInvitationContext)init
{
  v5.receiver = self;
  v5.super_class = IDSProfileGetDefaultInvitationContext;
  v2 = [(IDSProfileMessage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IDSProfileGetDefaultInvitationContext *)v2 setTimeout:240.0];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = IDSProfileGetDefaultInvitationContext;
  v4 = [(IDSProfileMessage *)&v9 copyWithZone:a3];
  v5 = [(IDSProfileGetDefaultInvitationContext *)self responseBasePhoneNumber];
  [v4 setResponseBasePhoneNumber:v5];

  v6 = [(IDSProfileGetDefaultInvitationContext *)self responseRegionID];
  [v4 setResponseRegionID:v6];

  v7 = [(IDSProfileGetDefaultInvitationContext *)self responseExtraInfo];
  [v4 setResponseExtraInfo:v7];

  [v4 setResponseValidated:{-[IDSProfileGetDefaultInvitationContext responseValidated](self, "responseValidated")}];
  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);

  return v2;
}

- (id)messageBody
{
  v2 = objc_alloc_init(NSMutableDictionary);

  return v2;
}

- (void)handleResponseDictionary:(id)a3
{
  v9.receiver = self;
  v9.super_class = IDSProfileGetDefaultInvitationContext;
  v4 = a3;
  [(IDSProfileMessage *)&v9 handleResponseDictionary:v4];
  v5 = [v4 objectForKey:{@"region-id", v9.receiver, v9.super_class}];
  [(IDSProfileGetDefaultInvitationContext *)self setResponseRegionID:v5];

  v6 = [v4 objectForKey:@"base-phone-number"];
  [(IDSProfileGetDefaultInvitationContext *)self setResponseBasePhoneNumber:v6];

  v7 = [v4 objectForKey:@"extra"];
  [(IDSProfileGetDefaultInvitationContext *)self setResponseExtraInfo:v7];

  v8 = [v4 objectForKey:@"validated"];

  -[IDSProfileGetDefaultInvitationContext setResponseValidated:](self, "setResponseValidated:", [v8 intValue] != 0);
}

@end