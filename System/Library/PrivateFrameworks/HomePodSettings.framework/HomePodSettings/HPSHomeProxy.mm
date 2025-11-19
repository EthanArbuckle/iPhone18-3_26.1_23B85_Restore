@interface HPSHomeProxy
- (HPSHomeProxy)initWithAccessoryName:(id)a3 validHome:(BOOL)a4;
- (HPSHomeProxy)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HPSHomeProxy

- (HPSHomeProxy)initWithAccessoryName:(id)a3 validHome:(BOOL)a4
{
  v7 = a3;
  v10.receiver = self;
  v10.super_class = HPSHomeProxy;
  v8 = [(HPSHomeProxy *)&v10 self];

  if (v8)
  {
    objc_storeStrong(&v8->_accesoryName, a3);
    v8->_hasValidHomeLoaded = a4;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HPSHomeProxy *)self accesoryName];
  [v4 encodeObject:v5 forKey:@"HPSHomeProxyEncodedNameKey"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HPSHomeProxy hasValidHomeLoaded](self, "hasValidHomeLoaded")}];
  [v4 encodeObject:v6 forKey:@"HPSHomeProxyEncodedValidHomeKey"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HPSHomeProxy minimumMediaUserPrivilege](self, "minimumMediaUserPrivilege")}];
  [v4 encodeObject:v7 forKey:@"HPSHomeProxyEncodedMinimumMediaUserPrivilegeKey"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HPSHomeProxy isMediaPeerToPeerEnabled](self, "isMediaPeerToPeerEnabled")}];
  [v4 encodeObject:v8 forKey:@"HPSHomeProxyEncodedMediaPeerToPeerEnabledKey"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HPSHomeProxy isAutoSUEnabled](self, "isAutoSUEnabled")}];
  [v4 encodeObject:v9 forKey:@"HPSHomeProxyEncodedAutoSUEnabledKey"];
}

- (HPSHomeProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HPSHomeProxy;
  v5 = [(HPSHomeProxy *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HPSHomeProxyEncodedNameKey"];
    accesoryName = v5->_accesoryName;
    v5->_accesoryName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HPSHomeProxyEncodedValidHomeKey"];
    v5->_hasValidHomeLoaded = [v8 BOOLValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HPSHomeProxyEncodedMinimumMediaUserPrivilegeKey"];
    v5->_minimumMediaUserPrivilege = [v9 integerValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HPSHomeProxyEncodedMediaPeerToPeerEnabledKey"];
    v5->_isMediaPeerToPeerEnabled = [v10 BOOLValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HPSHomeProxyEncodedAutoSUEnabledKey"];
    v5->_isAutoSUEnabled = [v11 BOOLValue];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HPSHomeProxy *)self accesoryName];
  v5 = [v3 stringWithFormat:@"AccessoryName:%@, HasValidHome:%d, minimumMediaUserPrivilege:%lu, isMediaPeerToPeerEnabled:%d isAutoSUEnabled: %d", v4, -[HPSHomeProxy hasValidHomeLoaded](self, "hasValidHomeLoaded"), -[HPSHomeProxy minimumMediaUserPrivilege](self, "minimumMediaUserPrivilege"), -[HPSHomeProxy isMediaPeerToPeerEnabled](self, "isMediaPeerToPeerEnabled"), -[HPSHomeProxy isAutoSUEnabled](self, "isAutoSUEnabled")];

  return v5;
}

@end