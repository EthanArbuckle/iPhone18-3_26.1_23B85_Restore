@interface DNDSXPCTimer
- (DNDSXPCTimer)initWithFireDate:(id)a3 serviceIdentifier:(id)a4 userVisible:(BOOL)a5;
@end

@implementation DNDSXPCTimer

- (DNDSXPCTimer)initWithFireDate:(id)a3 serviceIdentifier:(id)a4 userVisible:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = DNDSXPCTimer;
  v11 = [(DNDSXPCTimer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_date, a3);
    objc_storeStrong(&v12->_serviceIdentifier, a4);
    v12->_userVisible = a5;
  }

  return v12;
}

@end