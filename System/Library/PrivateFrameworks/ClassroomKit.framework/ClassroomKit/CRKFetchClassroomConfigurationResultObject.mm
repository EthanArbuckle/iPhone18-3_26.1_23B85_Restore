@interface CRKFetchClassroomConfigurationResultObject
- (CRKFetchClassroomConfigurationResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchClassroomConfigurationResultObject

- (CRKFetchClassroomConfigurationResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CRKFetchClassroomConfigurationResultObject;
  v5 = [(CATTaskResultObject *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodePropertyListForKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = [v4 decodePropertyListForKey:@"configurationsByType"];
    configurationsByType = v5->_configurationsByType;
    v5->_configurationsByType = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKFetchClassroomConfigurationResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v7 encodeWithCoder:v4];
  v5 = [(CRKFetchClassroomConfigurationResultObject *)self configuration:v7.receiver];
  [v4 encodeObject:v5 forKey:@"configuration"];

  v6 = [(CRKFetchClassroomConfigurationResultObject *)self configurationsByType];
  [v4 encodeObject:v6 forKey:@"configurationsByType"];
}

@end