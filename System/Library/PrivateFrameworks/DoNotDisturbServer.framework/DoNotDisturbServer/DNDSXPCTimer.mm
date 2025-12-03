@interface DNDSXPCTimer
- (DNDSXPCTimer)initWithFireDate:(id)date serviceIdentifier:(id)identifier userVisible:(BOOL)visible;
@end

@implementation DNDSXPCTimer

- (DNDSXPCTimer)initWithFireDate:(id)date serviceIdentifier:(id)identifier userVisible:(BOOL)visible
{
  dateCopy = date;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = DNDSXPCTimer;
  v11 = [(DNDSXPCTimer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_date, date);
    objc_storeStrong(&v12->_serviceIdentifier, identifier);
    v12->_userVisible = visible;
  }

  return v12;
}

@end