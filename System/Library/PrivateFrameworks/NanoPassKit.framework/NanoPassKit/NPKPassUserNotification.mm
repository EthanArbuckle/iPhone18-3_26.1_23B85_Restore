@interface NPKPassUserNotification
- (NPKPassUserNotification)initWithPass:(id)pass;
- (NSArray)identifierHashComponents;
@end

@implementation NPKPassUserNotification

- (NPKPassUserNotification)initWithPass:(id)pass
{
  passCopy = pass;
  v9.receiver = self;
  v9.super_class = NPKPassUserNotification;
  v6 = [(NPKPassUserNotification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, pass);
  }

  return v7;
}

- (NSArray)identifierHashComponents
{
  v8.receiver = self;
  v8.super_class = NPKPassUserNotification;
  identifierHashComponents = [(NPKUserNotification *)&v8 identifierHashComponents];
  v4 = [identifierHashComponents mutableCopy];

  pass = [(NPKPassUserNotification *)self pass];
  uniqueID = [pass uniqueID];
  [v4 safelyAddObject:uniqueID];

  return v4;
}

@end