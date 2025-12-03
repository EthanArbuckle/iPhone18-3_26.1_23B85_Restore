@interface IRContextInspection
- (IRContextInspection)initWithDate:(id)date policies:(id)policies foregroundApp:(id)app;
@end

@implementation IRContextInspection

- (IRContextInspection)initWithDate:(id)date policies:(id)policies foregroundApp:(id)app
{
  dateCopy = date;
  policiesCopy = policies;
  appCopy = app;
  v15.receiver = self;
  v15.super_class = IRContextInspection;
  v12 = [(IRContextInspection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_date, date);
    objc_storeStrong(&v13->_policies, policies);
    objc_storeStrong(&v13->_foregroundApp, app);
  }

  return v13;
}

@end