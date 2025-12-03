@interface HPSHomeProxy
- (HPSHomeProxy)initWithAccessoryName:(id)name validHome:(BOOL)home;
- (HPSHomeProxy)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HPSHomeProxy

- (HPSHomeProxy)initWithAccessoryName:(id)name validHome:(BOOL)home
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = HPSHomeProxy;
  v8 = [(HPSHomeProxy *)&v10 self];

  if (v8)
  {
    objc_storeStrong(&v8->_accesoryName, name);
    v8->_hasValidHomeLoaded = home;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accesoryName = [(HPSHomeProxy *)self accesoryName];
  [coderCopy encodeObject:accesoryName forKey:@"HPSHomeProxyEncodedNameKey"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HPSHomeProxy hasValidHomeLoaded](self, "hasValidHomeLoaded")}];
  [coderCopy encodeObject:v6 forKey:@"HPSHomeProxyEncodedValidHomeKey"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HPSHomeProxy minimumMediaUserPrivilege](self, "minimumMediaUserPrivilege")}];
  [coderCopy encodeObject:v7 forKey:@"HPSHomeProxyEncodedMinimumMediaUserPrivilegeKey"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HPSHomeProxy isMediaPeerToPeerEnabled](self, "isMediaPeerToPeerEnabled")}];
  [coderCopy encodeObject:v8 forKey:@"HPSHomeProxyEncodedMediaPeerToPeerEnabledKey"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HPSHomeProxy isAutoSUEnabled](self, "isAutoSUEnabled")}];
  [coderCopy encodeObject:v9 forKey:@"HPSHomeProxyEncodedAutoSUEnabledKey"];
}

- (HPSHomeProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HPSHomeProxy;
  v5 = [(HPSHomeProxy *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HPSHomeProxyEncodedNameKey"];
    accesoryName = v5->_accesoryName;
    v5->_accesoryName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HPSHomeProxyEncodedValidHomeKey"];
    v5->_hasValidHomeLoaded = [v8 BOOLValue];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HPSHomeProxyEncodedMinimumMediaUserPrivilegeKey"];
    v5->_minimumMediaUserPrivilege = [v9 integerValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HPSHomeProxyEncodedMediaPeerToPeerEnabledKey"];
    v5->_isMediaPeerToPeerEnabled = [v10 BOOLValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HPSHomeProxyEncodedAutoSUEnabledKey"];
    v5->_isAutoSUEnabled = [v11 BOOLValue];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  accesoryName = [(HPSHomeProxy *)self accesoryName];
  v5 = [v3 stringWithFormat:@"AccessoryName:%@, HasValidHome:%d, minimumMediaUserPrivilege:%lu, isMediaPeerToPeerEnabled:%d isAutoSUEnabled: %d", accesoryName, -[HPSHomeProxy hasValidHomeLoaded](self, "hasValidHomeLoaded"), -[HPSHomeProxy minimumMediaUserPrivilege](self, "minimumMediaUserPrivilege"), -[HPSHomeProxy isMediaPeerToPeerEnabled](self, "isMediaPeerToPeerEnabled"), -[HPSHomeProxy isAutoSUEnabled](self, "isAutoSUEnabled")];

  return v5;
}

@end