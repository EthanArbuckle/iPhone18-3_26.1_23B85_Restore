@interface BDSServiceNotificationInfo
- (BDSServiceNotificationInfo)initWithCoder:(id)a3;
- (BDSServiceNotificationInfo)initWithName:(id)a3 changeToken:(int64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSServiceNotificationInfo

- (BDSServiceNotificationInfo)initWithName:(id)a3 changeToken:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = BDSServiceNotificationInfo;
  v8 = [(BDSServiceNotificationInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v9->_changeToken = a4;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(BDSServiceNotificationInfo *)self name];
  [v5 encodeObject:v4 forKey:@"name"];

  [v5 encodeInteger:-[BDSServiceNotificationInfo changeToken](self forKey:{"changeToken"), @"changeToken"}];
}

- (BDSServiceNotificationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BDSServiceNotificationInfo;
  v5 = [(BDSServiceNotificationInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_changeToken = [v4 decodeIntegerForKey:@"changeToken"];
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BDSServiceNotificationInfo *)self name];
  v6 = [NSString stringWithFormat:@"<%@:%p name=%@ changeToken=%ld>", v4, self, v5, [(BDSServiceNotificationInfo *)self changeToken]];

  return v6;
}

@end