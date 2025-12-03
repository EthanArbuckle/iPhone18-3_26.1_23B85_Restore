@interface CRKFetchSupportedDevicePropertiesResultObject
- (CRKFetchSupportedDevicePropertiesResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchSupportedDevicePropertiesResultObject

- (CRKFetchSupportedDevicePropertiesResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CRKFetchSupportedDevicePropertiesResultObject;
  v5 = [(CATTaskResultObject *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"staticProperties"];
    staticProperties = v5->_staticProperties;
    v5->_staticProperties = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"liveProperties"];
    liveProperties = v5->_liveProperties;
    v5->_liveProperties = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKFetchSupportedDevicePropertiesResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchSupportedDevicePropertiesResultObject *)self staticProperties:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"staticProperties"];

  liveProperties = [(CRKFetchSupportedDevicePropertiesResultObject *)self liveProperties];
  [coderCopy encodeObject:liveProperties forKey:@"liveProperties"];
}

@end