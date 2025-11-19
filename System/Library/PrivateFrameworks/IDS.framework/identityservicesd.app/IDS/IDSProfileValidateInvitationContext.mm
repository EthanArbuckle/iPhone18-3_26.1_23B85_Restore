@interface IDSProfileValidateInvitationContext
- (IDSProfileValidateInvitationContext)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation IDSProfileValidateInvitationContext

- (IDSProfileValidateInvitationContext)init
{
  v5.receiver = self;
  v5.super_class = IDSProfileValidateInvitationContext;
  v2 = [(IDSProfileMessage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IDSProfileValidateInvitationContext *)v2 setTimeout:120.0];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = IDSProfileValidateInvitationContext;
  v4 = [(IDSProfileMessage *)&v11 copyWithZone:a3];
  v5 = [(IDSProfileValidateInvitationContext *)self basePhoneNumber];
  [v4 setBasePhoneNumber:v5];

  v6 = [(IDSProfileValidateInvitationContext *)self regionID];
  [v4 setRegionID:v6];

  v7 = [(IDSProfileValidateInvitationContext *)self responseBasePhoneNumber];
  [v4 setResponseBasePhoneNumber:v7];

  v8 = [(IDSProfileValidateInvitationContext *)self responseRegionID];
  [v4 setResponseRegionID:v8];

  v9 = [(IDSProfileValidateInvitationContext *)self responseExtraInfo];
  [v4 setResponseExtraInfo:v9];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:@"base-phone-number"];
  [v2 addObject:@"region-id"];

  return v2;
}

- (id)messageBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(IDSProfileValidateInvitationContext *)self basePhoneNumber];
  if (v4)
  {
    CFDictionarySetValue(v3, @"base-phone-number", v4);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091FBDC();
  }

  v5 = [(IDSProfileValidateInvitationContext *)self regionID];
  if (v5)
  {
    CFDictionarySetValue(v3, @"region-id", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091FC78();
  }

  return v3;
}

- (void)handleResponseDictionary:(id)a3
{
  v8.receiver = self;
  v8.super_class = IDSProfileValidateInvitationContext;
  v4 = a3;
  [(IDSProfileMessage *)&v8 handleResponseDictionary:v4];
  v5 = [v4 objectForKey:{@"region-id", v8.receiver, v8.super_class}];
  [(IDSProfileValidateInvitationContext *)self setResponseRegionID:v5];

  v6 = [v4 objectForKey:@"base-phone-number"];
  [(IDSProfileValidateInvitationContext *)self setResponseBasePhoneNumber:v6];

  v7 = [v4 objectForKey:@"extra"];

  [(IDSProfileValidateInvitationContext *)self setResponseExtraInfo:v7];
}

@end