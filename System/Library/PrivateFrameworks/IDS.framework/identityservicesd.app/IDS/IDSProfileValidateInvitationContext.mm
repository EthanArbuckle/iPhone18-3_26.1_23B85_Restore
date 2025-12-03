@interface IDSProfileValidateInvitationContext
- (IDSProfileValidateInvitationContext)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = IDSProfileValidateInvitationContext;
  v4 = [(IDSProfileMessage *)&v11 copyWithZone:zone];
  basePhoneNumber = [(IDSProfileValidateInvitationContext *)self basePhoneNumber];
  [v4 setBasePhoneNumber:basePhoneNumber];

  regionID = [(IDSProfileValidateInvitationContext *)self regionID];
  [v4 setRegionID:regionID];

  responseBasePhoneNumber = [(IDSProfileValidateInvitationContext *)self responseBasePhoneNumber];
  [v4 setResponseBasePhoneNumber:responseBasePhoneNumber];

  responseRegionID = [(IDSProfileValidateInvitationContext *)self responseRegionID];
  [v4 setResponseRegionID:responseRegionID];

  responseExtraInfo = [(IDSProfileValidateInvitationContext *)self responseExtraInfo];
  [v4 setResponseExtraInfo:responseExtraInfo];

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
  basePhoneNumber = [(IDSProfileValidateInvitationContext *)self basePhoneNumber];
  if (basePhoneNumber)
  {
    CFDictionarySetValue(v3, @"base-phone-number", basePhoneNumber);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091FBDC();
  }

  regionID = [(IDSProfileValidateInvitationContext *)self regionID];
  if (regionID)
  {
    CFDictionarySetValue(v3, @"region-id", regionID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091FC78();
  }

  return v3;
}

- (void)handleResponseDictionary:(id)dictionary
{
  v8.receiver = self;
  v8.super_class = IDSProfileValidateInvitationContext;
  dictionaryCopy = dictionary;
  [(IDSProfileMessage *)&v8 handleResponseDictionary:dictionaryCopy];
  v5 = [dictionaryCopy objectForKey:{@"region-id", v8.receiver, v8.super_class}];
  [(IDSProfileValidateInvitationContext *)self setResponseRegionID:v5];

  v6 = [dictionaryCopy objectForKey:@"base-phone-number"];
  [(IDSProfileValidateInvitationContext *)self setResponseBasePhoneNumber:v6];

  v7 = [dictionaryCopy objectForKey:@"extra"];

  [(IDSProfileValidateInvitationContext *)self setResponseExtraInfo:v7];
}

@end