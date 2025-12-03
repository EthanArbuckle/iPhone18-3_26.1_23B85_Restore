@interface IMCTRCSUtilities
+ (BOOL)IMCarrierRequiresFirstTimeOnAlert;
+ (BOOL)IMRCSEnabledForPhoneNumber:(id)number simID:(id)d;
+ (int64_t)IMRCSGroupMessagingMaxGroupSizeForPhoneNumber:(id)number simID:(id)d;
- (IMCTRCSUtilities)init;
@end

@implementation IMCTRCSUtilities

+ (BOOL)IMCarrierRequiresFirstTimeOnAlert
{
  sharedManager = [objc_opt_self() sharedManager];
  carrierRequiresFirstTimeOnAlert = [sharedManager carrierRequiresFirstTimeOnAlert];

  return carrierRequiresFirstTimeOnAlert;
}

+ (int64_t)IMRCSGroupMessagingMaxGroupSizeForPhoneNumber:(id)number simID:(id)d
{
  if (d)
  {
    sub_1A88C82E8();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_opt_self();
  numberCopy = number;
  sharedManager = [v7 sharedManager];
  if (v6)
  {
    v10 = sub_1A88C82A8();
  }

  else
  {
    v10 = 0;
  }

  v11 = [sharedManager groupMessagingMaxGroupSizeForPhoneNumber:numberCopy simID:v10];

  return v11;
}

+ (BOOL)IMRCSEnabledForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  if (!number)
  {
    v5 = 0;
    v7 = 0;
    if (d)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v5 = sub_1A88C82E8();
  v7 = v6;
  if (!dCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_1A88C82E8();
  dCopy = v9;
LABEL_6:
  v10 = sub_1A8722AB4(v5, v7, v8, dCopy);

  return v10 & 1;
}

- (IMCTRCSUtilities)init
{
  v3.receiver = self;
  v3.super_class = IMCTRCSUtilities;
  return [(IMCTRCSUtilities *)&v3 init];
}

@end