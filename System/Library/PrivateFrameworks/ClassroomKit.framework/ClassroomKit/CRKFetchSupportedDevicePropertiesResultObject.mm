@interface CRKFetchSupportedDevicePropertiesResultObject
- (CRKFetchSupportedDevicePropertiesResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchSupportedDevicePropertiesResultObject

- (CRKFetchSupportedDevicePropertiesResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CRKFetchSupportedDevicePropertiesResultObject;
  v5 = [(CATTaskResultObject *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"staticProperties"];
    staticProperties = v5->_staticProperties;
    v5->_staticProperties = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"liveProperties"];
    liveProperties = v5->_liveProperties;
    v5->_liveProperties = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKFetchSupportedDevicePropertiesResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v7 encodeWithCoder:v4];
  v5 = [(CRKFetchSupportedDevicePropertiesResultObject *)self staticProperties:v7.receiver];
  [v4 encodeObject:v5 forKey:@"staticProperties"];

  v6 = [(CRKFetchSupportedDevicePropertiesResultObject *)self liveProperties];
  [v4 encodeObject:v6 forKey:@"liveProperties"];
}

@end