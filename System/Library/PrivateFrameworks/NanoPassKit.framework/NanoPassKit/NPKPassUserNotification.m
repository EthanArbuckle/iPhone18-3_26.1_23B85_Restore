@interface NPKPassUserNotification
- (NPKPassUserNotification)initWithPass:(id)a3;
- (NSArray)identifierHashComponents;
@end

@implementation NPKPassUserNotification

- (NPKPassUserNotification)initWithPass:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NPKPassUserNotification;
  v6 = [(NPKPassUserNotification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, a3);
  }

  return v7;
}

- (NSArray)identifierHashComponents
{
  v8.receiver = self;
  v8.super_class = NPKPassUserNotification;
  v3 = [(NPKUserNotification *)&v8 identifierHashComponents];
  v4 = [v3 mutableCopy];

  v5 = [(NPKPassUserNotification *)self pass];
  v6 = [v5 uniqueID];
  [v4 safelyAddObject:v6];

  return v4;
}

@end