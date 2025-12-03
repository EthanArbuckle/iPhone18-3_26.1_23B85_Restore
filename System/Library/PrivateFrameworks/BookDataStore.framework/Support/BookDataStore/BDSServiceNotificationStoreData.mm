@interface BDSServiceNotificationStoreData
- (BDSServiceNotificationStoreData)initWithCoder:(id)coder;
- (BDSServiceNotificationStoreData)initWithNotificationInfos:(id)infos changeToken:(int64_t)token;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSServiceNotificationStoreData

- (BDSServiceNotificationStoreData)initWithNotificationInfos:(id)infos changeToken:(int64_t)token
{
  infosCopy = infos;
  v11.receiver = self;
  v11.super_class = BDSServiceNotificationStoreData;
  v8 = [(BDSServiceNotificationStoreData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notificationInfos, infos);
    v9->_changeToken = token;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  notificationInfos = [(BDSServiceNotificationStoreData *)self notificationInfos];
  [coderCopy encodeObject:notificationInfos forKey:@"notificationInfos"];

  [coderCopy encodeInteger:-[BDSServiceNotificationStoreData changeToken](self forKey:{"changeToken"), @"changeToken"}];
}

- (BDSServiceNotificationStoreData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = BDSServiceNotificationStoreData;
  v5 = [(BDSServiceNotificationStoreData *)&v11 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"notificationInfos"];
    notificationInfos = v5->_notificationInfos;
    v5->_notificationInfos = v8;

    v5->_changeToken = [coderCopy decodeIntegerForKey:@"changeToken"];
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  notificationInfos = [(BDSServiceNotificationStoreData *)self notificationInfos];
  v6 = [NSString stringWithFormat:@"<%@:%p notificationInfos=%@ changeToken=%ld>", v4, self, notificationInfos, [(BDSServiceNotificationStoreData *)self changeToken]];

  return v6;
}

@end