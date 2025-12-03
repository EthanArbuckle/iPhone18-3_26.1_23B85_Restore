@interface TUDialRequest(ContactsUICore)
- (id)cn_initWithProvider:()ContactsUICore;
- (id)cn_initWithURL:()ContactsUICore;
- (void)cn_configureForUserActions:()ContactsUICore;
@end

@implementation TUDialRequest(ContactsUICore)

- (id)cn_initWithProvider:()ContactsUICore
{
  selfCopy = self;
  v5 = [selfCopy initWithProvider:a3];
  [selfCopy cn_configureForUserActions:v5];

  return v5;
}

- (id)cn_initWithURL:()ContactsUICore
{
  selfCopy = self;
  v5 = [selfCopy initWithURL:a3];
  if (v5)
  {
    [selfCopy cn_configureForUserActions:v5];
    v6 = v5;
  }

  return v5;
}

- (void)cn_configureForUserActions:()ContactsUICore
{
  v5 = a3;
  provider = [v5 provider];
  isTelephonyProvider = [provider isTelephonyProvider];

  if (isTelephonyProvider)
  {
    [v5 setPreferDefaultApp:0];
  }
}

@end