@interface NMGenericMessageLogAction
+ (id)logActionWithMessage:(id)a3;
- (NMGenericMessageLogAction)initWithMessage:(id)a3;
@end

@implementation NMGenericMessageLogAction

+ (id)logActionWithMessage:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithMessage:v4];

  return v5;
}

- (NMGenericMessageLogAction)initWithMessage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NMGenericMessageLogAction;
  v6 = [(NMGenericMessageLogAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, a3);
  }

  return v7;
}

@end