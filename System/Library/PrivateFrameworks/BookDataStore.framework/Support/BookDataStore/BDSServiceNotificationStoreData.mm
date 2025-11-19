@interface BDSServiceNotificationStoreData
- (BDSServiceNotificationStoreData)initWithCoder:(id)a3;
- (BDSServiceNotificationStoreData)initWithNotificationInfos:(id)a3 changeToken:(int64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSServiceNotificationStoreData

- (BDSServiceNotificationStoreData)initWithNotificationInfos:(id)a3 changeToken:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = BDSServiceNotificationStoreData;
  v8 = [(BDSServiceNotificationStoreData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notificationInfos, a3);
    v9->_changeToken = a4;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(BDSServiceNotificationStoreData *)self notificationInfos];
  [v5 encodeObject:v4 forKey:@"notificationInfos"];

  [v5 encodeInteger:-[BDSServiceNotificationStoreData changeToken](self forKey:{"changeToken"), @"changeToken"}];
}

- (BDSServiceNotificationStoreData)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BDSServiceNotificationStoreData;
  v5 = [(BDSServiceNotificationStoreData *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"notificationInfos"];
    notificationInfos = v5->_notificationInfos;
    v5->_notificationInfos = v8;

    v5->_changeToken = [v4 decodeIntegerForKey:@"changeToken"];
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BDSServiceNotificationStoreData *)self notificationInfos];
  v6 = [NSString stringWithFormat:@"<%@:%p notificationInfos=%@ changeToken=%ld>", v4, self, v5, [(BDSServiceNotificationStoreData *)self changeToken]];

  return v6;
}

@end