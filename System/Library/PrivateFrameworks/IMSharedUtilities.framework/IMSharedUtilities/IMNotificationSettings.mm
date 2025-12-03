@interface IMNotificationSettings
+ (BOOL)hidePromotionalMessages;
+ (BOOL)hideTransactionalMessages;
+ (BOOL)hideUnknownSenders;
+ (BOOL)isTextMessageExtensionEnabled;
+ (NSArray)excludedFilterActions;
+ (NSNumber)filteringKeySet;
- (IMNotificationSettings)init;
@end

@implementation IMNotificationSettings

+ (NSNumber)filteringKeySet
{
  swift_getObjCClassMetadata();
  v2 = sub_1A88906D0();

  return v2;
}

+ (NSArray)excludedFilterActions
{
  swift_getObjCClassMetadata();
  sub_1A85F1D94();
  sub_1A85E9718(0, &qword_1ED8C9450);
  v2 = sub_1A88C85E8();

  return v2;
}

+ (BOOL)isTextMessageExtensionEnabled
{
  isFilterUnknownSendersEnabled = [self isFilterUnknownSendersEnabled];
  if (isFilterUnknownSendersEnabled)
  {
    v3 = sub_1A88C82A8();
    v4 = sub_1A88C82A8();
    v5 = IMGetDomainBoolForKey();

    LOBYTE(isFilterUnknownSendersEnabled) = v5;
  }

  return isFilterUnknownSendersEnabled;
}

+ (BOOL)hideUnknownSenders
{
  v2 = sub_1A88C82A8();
  v3 = sub_1A88C82A8();
  v4 = IMGetDomainBoolForKey();

  return v4;
}

+ (BOOL)hidePromotionalMessages
{
  v2 = sub_1A88C82A8();
  v3 = sub_1A88C82A8();
  v4 = IMGetDomainBoolForKey();

  return v4;
}

+ (BOOL)hideTransactionalMessages
{
  v2 = sub_1A88C82A8();
  v3 = sub_1A88C82A8();
  v4 = IMGetDomainBoolForKey();

  return v4;
}

- (IMNotificationSettings)init
{
  v3.receiver = self;
  v3.super_class = IMNotificationSettings;
  return [(IMNotificationSettings *)&v3 init];
}

@end