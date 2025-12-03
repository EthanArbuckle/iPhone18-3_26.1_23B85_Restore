@interface CRKFetchClassroomConfigurationResultObject
- (CRKFetchClassroomConfigurationResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchClassroomConfigurationResultObject

- (CRKFetchClassroomConfigurationResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CRKFetchClassroomConfigurationResultObject;
  v5 = [(CATTaskResultObject *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodePropertyListForKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = [coderCopy decodePropertyListForKey:@"configurationsByType"];
    configurationsByType = v5->_configurationsByType;
    v5->_configurationsByType = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKFetchClassroomConfigurationResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchClassroomConfigurationResultObject *)self configuration:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"configuration"];

  configurationsByType = [(CRKFetchClassroomConfigurationResultObject *)self configurationsByType];
  [coderCopy encodeObject:configurationsByType forKey:@"configurationsByType"];
}

@end