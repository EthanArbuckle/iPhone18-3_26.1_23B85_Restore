@interface BDSServiceNotificationInfo
- (BDSServiceNotificationInfo)initWithCoder:(id)coder;
- (BDSServiceNotificationInfo)initWithName:(id)name changeToken:(int64_t)token;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSServiceNotificationInfo

- (BDSServiceNotificationInfo)initWithName:(id)name changeToken:(int64_t)token
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = BDSServiceNotificationInfo;
  v8 = [(BDSServiceNotificationInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v9->_changeToken = token;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(BDSServiceNotificationInfo *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [coderCopy encodeInteger:-[BDSServiceNotificationInfo changeToken](self forKey:{"changeToken"), @"changeToken"}];
}

- (BDSServiceNotificationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BDSServiceNotificationInfo;
  v5 = [(BDSServiceNotificationInfo *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_changeToken = [coderCopy decodeIntegerForKey:@"changeToken"];
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  name = [(BDSServiceNotificationInfo *)self name];
  v6 = [NSString stringWithFormat:@"<%@:%p name=%@ changeToken=%ld>", v4, self, name, [(BDSServiceNotificationInfo *)self changeToken]];

  return v6;
}

@end