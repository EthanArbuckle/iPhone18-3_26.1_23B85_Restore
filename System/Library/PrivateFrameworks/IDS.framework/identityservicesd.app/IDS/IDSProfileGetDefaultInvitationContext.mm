@interface IDSProfileGetDefaultInvitationContext
- (IDSProfileGetDefaultInvitationContext)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = IDSProfileGetDefaultInvitationContext;
  v4 = [(IDSProfileMessage *)&v9 copyWithZone:zone];
  responseBasePhoneNumber = [(IDSProfileGetDefaultInvitationContext *)self responseBasePhoneNumber];
  [v4 setResponseBasePhoneNumber:responseBasePhoneNumber];

  responseRegionID = [(IDSProfileGetDefaultInvitationContext *)self responseRegionID];
  [v4 setResponseRegionID:responseRegionID];

  responseExtraInfo = [(IDSProfileGetDefaultInvitationContext *)self responseExtraInfo];
  [v4 setResponseExtraInfo:responseExtraInfo];

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

- (void)handleResponseDictionary:(id)dictionary
{
  v9.receiver = self;
  v9.super_class = IDSProfileGetDefaultInvitationContext;
  dictionaryCopy = dictionary;
  [(IDSProfileMessage *)&v9 handleResponseDictionary:dictionaryCopy];
  v5 = [dictionaryCopy objectForKey:{@"region-id", v9.receiver, v9.super_class}];
  [(IDSProfileGetDefaultInvitationContext *)self setResponseRegionID:v5];

  v6 = [dictionaryCopy objectForKey:@"base-phone-number"];
  [(IDSProfileGetDefaultInvitationContext *)self setResponseBasePhoneNumber:v6];

  v7 = [dictionaryCopy objectForKey:@"extra"];
  [(IDSProfileGetDefaultInvitationContext *)self setResponseExtraInfo:v7];

  v8 = [dictionaryCopy objectForKey:@"validated"];

  -[IDSProfileGetDefaultInvitationContext setResponseValidated:](self, "setResponseValidated:", [v8 intValue] != 0);
}

@end