@interface IMCTRCSUtilities
+ (BOOL)IMCarrierRequiresFirstTimeOnAlert;
+ (BOOL)IMRCSEnabledForPhoneNumber:(id)a3 simID:(id)a4;
+ (int64_t)IMRCSGroupMessagingMaxGroupSizeForPhoneNumber:(id)a3 simID:(id)a4;
- (IMCTRCSUtilities)init;
@end

@implementation IMCTRCSUtilities

+ (BOOL)IMCarrierRequiresFirstTimeOnAlert
{
  v2 = [objc_opt_self() sharedManager];
  v3 = [v2 carrierRequiresFirstTimeOnAlert];

  return v3;
}

+ (int64_t)IMRCSGroupMessagingMaxGroupSizeForPhoneNumber:(id)a3 simID:(id)a4
{
  if (a4)
  {
    sub_1A88C82E8();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_opt_self();
  v8 = a3;
  v9 = [v7 sharedManager];
  if (v6)
  {
    v10 = sub_1A88C82A8();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v9 groupMessagingMaxGroupSizeForPhoneNumber:v8 simID:v10];

  return v11;
}

+ (BOOL)IMRCSEnabledForPhoneNumber:(id)a3 simID:(id)a4
{
  v4 = a4;
  if (!a3)
  {
    v5 = 0;
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v5 = sub_1A88C82E8();
  v7 = v6;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_1A88C82E8();
  v4 = v9;
LABEL_6:
  v10 = sub_1A8722AB4(v5, v7, v8, v4);

  return v10 & 1;
}

- (IMCTRCSUtilities)init
{
  v3.receiver = self;
  v3.super_class = IMCTRCSUtilities;
  return [(IMCTRCSUtilities *)&v3 init];
}

@end