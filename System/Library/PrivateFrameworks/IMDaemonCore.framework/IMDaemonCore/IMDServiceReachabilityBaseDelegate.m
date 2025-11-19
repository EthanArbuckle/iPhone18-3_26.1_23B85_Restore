@interface IMDServiceReachabilityBaseDelegate
- (BOOL)hasValidDowngradeRequestForHandleID:(id)a3;
- (BOOL)isInternationalSpamFilteringEnabled;
- (BOOL)isMMSEnabledForContext:(id)a3;
- (BOOL)isMessagesTheDefaultTextApp;
- (BOOL)isSMSEnabledForContext:(id)a3;
- (BOOL)isUsableForSending;
- (BOOL)networkDataAvailable;
- (BOOL)shouldDowngradeToRecipient:(id)a3 fromSender:(id)a4 withContext:(id)a5;
- (IMDServiceReachabilityBaseDelegate)init;
- (IMDServiceReachabilityBaseDelegate)initWithServiceSession:(id)a3;
- (IMDServiceSession)serviceSession;
- (NSArray)idsRegisteredSIMIDs;
- (NSArray)phoneNumbersOfActiveSubscriptions;
- (NSString)internalServiceName;
- (id)phoneNumberOnSubscriptionWithSIMID:(id)a3;
@end

@implementation IMDServiceReachabilityBaseDelegate

- (IMDServiceSession)serviceSession
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (IMDServiceReachabilityBaseDelegate)initWithServiceSession:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = IMDServiceReachabilityBaseDelegate;
  return [(IMDServiceReachabilityBaseDelegate *)&v5 init];
}

- (BOOL)networkDataAvailable
{
  v2 = [objc_opt_self() sharedAccountController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 networkDataAvailable];

    LOBYTE(v2) = v4;
  }

  else
  {
    __break(1u);
  }

  return v2;
}

- (BOOL)isUsableForSending
{
  v2 = self;
  v3 = [(IMDServiceReachabilityBaseDelegate *)v2 serviceSession];
  if (v3)
  {
    v4 = v3;
    v5 = [(IMDServiceSession *)v3 isActive];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)idsRegisteredSIMIDs
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 registeredSIMIDs];

  if (!v3)
  {
    sub_22B7DB918();
    v4 = sub_22B7DB8F8();

    v3 = v4;
  }

  return v3;
}

- (NSString)internalServiceName
{
  v2 = self;
  result = [(IMDServiceReachabilityBaseDelegate *)v2 serviceSession];
  if (result)
  {
    v4 = result;
    v5 = [(NSString *)result service];

    v6 = [v5 internalName];
    if (!v6)
    {
      sub_22B7DB6A8();
      v6 = sub_22B7DB678();
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)phoneNumberOnSubscriptionWithSIMID:(id)a3
{
  sub_22B7DB6A8();
  v4 = self;
  sub_22B7C7E44();
  v6 = v5;

  if (v6)
  {
    v7 = sub_22B7DB678();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)phoneNumbersOfActiveSubscriptions
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 sharedInstance];
  v6 = [v5 ctSubscriptionInfo];

  if (v6)
  {
    v7 = [v6 phoneNumbersOfActiveSubscriptions];

    sub_22B7DB918();
    v4 = v7;
  }

  v8 = sub_22B7DB8F8();

  return v8;
}

- (BOOL)hasValidDowngradeRequestForHandleID:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(IMDServiceReachabilityBaseDelegate *)v5 serviceSession];
  if (v6)
  {
    v7 = v6;
    v8 = [(IMDServiceSession *)v6 hasValidDowngradeRequestForHandleID:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (IMDServiceReachabilityBaseDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isMessagesTheDefaultTextApp
{
  v2 = objc_opt_self();

  return [v2 isMessagesTheDefaultTextApp];
}

- (BOOL)isSMSEnabledForContext:(id)a3
{
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 supportsSMS];

    if (v8)
    {
      v9 = 1;
    }

    else
    {
      sub_22B7C8040();
      v9 = v10;
    }

    LOBYTE(v6) = v9 & 1;
  }

  else
  {
    __break(1u);
  }

  return v6;
}

- (BOOL)isMMSEnabledForContext:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  v6 = [v5 senderLastAddressedHandle];
  v7 = [v5 senderLastAddressedSIMID];
  LOBYTE(v4) = [v4 IMMMSEnabledForPhoneNumber:v6 simID:v7];

  return v4;
}

- (BOOL)shouldDowngradeToRecipient:(id)a3 fromSender:(id)a4 withContext:(id)a5
{
  v7 = sub_22B7DB6A8();
  v9 = v8;
  v10 = sub_22B7DB6A8();
  v12 = v11;
  v13 = a5;
  v14 = self;
  LOBYTE(v10) = sub_22B7C7C04(v7, v9, v10, v12, v13);

  return v10 & 1;
}

- (BOOL)isInternationalSpamFilteringEnabled
{
  v2 = objc_opt_self();

  return [v2 isInternationalSpamFilteringEnabled];
}

@end