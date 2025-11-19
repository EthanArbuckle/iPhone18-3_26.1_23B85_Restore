@interface DKNotableUserDataAppleCare
- (DKNotableUserDataAppleCare)initWithTitle:(id)a3 subtitle:(id)a4;
@end

@implementation DKNotableUserDataAppleCare

- (DKNotableUserDataAppleCare)initWithTitle:(id)a3 subtitle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DKNotableUserDataAppleCare;
  v9 = [(DKNotableUserDataAppleCare *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_subtitle, a4);
  }

  return v10;
}

@end