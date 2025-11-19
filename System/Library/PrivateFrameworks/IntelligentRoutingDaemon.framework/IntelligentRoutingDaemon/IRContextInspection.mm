@interface IRContextInspection
- (IRContextInspection)initWithDate:(id)a3 policies:(id)a4 foregroundApp:(id)a5;
@end

@implementation IRContextInspection

- (IRContextInspection)initWithDate:(id)a3 policies:(id)a4 foregroundApp:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IRContextInspection;
  v12 = [(IRContextInspection *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_date, a3);
    objc_storeStrong(&v13->_policies, a4);
    objc_storeStrong(&v13->_foregroundApp, a5);
  }

  return v13;
}

@end