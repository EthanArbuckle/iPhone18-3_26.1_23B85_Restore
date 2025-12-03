@interface MCMAnalytics
+ (MCMAnalytics)sharedInstance;
- (void)recordAmbiguousPersonaRequestWithIdentifier:(id)identifier proxiedIdentifier:(id)proxiedIdentifier proximateIdentifier:(id)proximateIdentifier explicitPersonaType:(int)type legacyPersonaPolicy:(BOOL)policy propagationFailed:(BOOL)failed containerClass:(unint64_t)class;
@end

@implementation MCMAnalytics

+ (MCMAnalytics)sharedInstance
{
  if (qword_1EE172DF0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE172DF8;

  return v3;
}

- (void)recordAmbiguousPersonaRequestWithIdentifier:(id)identifier proxiedIdentifier:(id)proxiedIdentifier proximateIdentifier:(id)proximateIdentifier explicitPersonaType:(int)type legacyPersonaPolicy:(BOOL)policy propagationFailed:(BOOL)failed containerClass:(unint64_t)class
{
  policyCopy = policy;
  if (identifier)
  {
    v12 = sub_1DF3B0DCC();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = sub_1DF3B0DCC();
  v17 = v16;
  v18 = sub_1DF3B0DCC();
  v20 = v19;
  selfCopy = self;
  sub_1DF2E2F1C(v12, v14, v15, v17, v18, v20, type, policyCopy, failed, class);
}

@end