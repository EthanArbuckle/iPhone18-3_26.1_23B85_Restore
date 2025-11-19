@interface CNClientLoggingIdentifier
+ (id)loggingIdentifierForAuditToken:(id)a3;
+ (id)loggingIdentifierForCurrentProcess;
- (CNClientLoggingIdentifier)init;
@end

@implementation CNClientLoggingIdentifier

+ (id)loggingIdentifierForAuditToken:(id)a3
{
  v3 = a3;
  sub_185A74DB4(v3);

  v4 = sub_185A7E904();

  return v4;
}

+ (id)loggingIdentifierForCurrentProcess
{
  _s18ContactsFoundation23ClientLoggingIdentifierC07loggingE17ForCurrentProcessSSyFZ_0();
  v2 = sub_185A7E904();

  return v2;
}

- (CNClientLoggingIdentifier)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClientLoggingIdentifier();
  return [(CNClientLoggingIdentifier *)&v3 init];
}

@end