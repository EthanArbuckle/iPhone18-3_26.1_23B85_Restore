@interface MCMAnalytics
+ (MCMAnalytics)sharedInstance;
- (void)recordAmbiguousPersonaRequestWithIdentifier:(id)a3 proxiedIdentifier:(id)a4 proximateIdentifier:(id)a5 explicitPersonaType:(int)a6 legacyPersonaPolicy:(BOOL)a7 propagationFailed:(BOOL)a8 containerClass:(unint64_t)a9;
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

- (void)recordAmbiguousPersonaRequestWithIdentifier:(id)a3 proxiedIdentifier:(id)a4 proximateIdentifier:(id)a5 explicitPersonaType:(int)a6 legacyPersonaPolicy:(BOOL)a7 propagationFailed:(BOOL)a8 containerClass:(unint64_t)a9
{
  v22 = a7;
  if (a3)
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
  v21 = self;
  sub_1DF2E2F1C(v12, v14, v15, v17, v18, v20, a6, v22, a8, a9);
}

@end