@interface CRKFetchConfigurationTypeResultObject
- (CRKFetchConfigurationTypeResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchConfigurationTypeResultObject

- (CRKFetchConfigurationTypeResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKFetchConfigurationTypeResultObject;
  v5 = [(CATTaskResultObject *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configurationType"];
    v5->_configurationType = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signedInToStudentMAID"];
    v5->_signedInToStudentMAID = [v7 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKFetchConfigurationTypeResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v7 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKFetchConfigurationTypeResultObject configurationType](self, "configurationType", v7.receiver, v7.super_class)}];
  [v4 encodeObject:v5 forKey:@"configurationType"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKFetchConfigurationTypeResultObject isSignedInToStudentMAID](self, "isSignedInToStudentMAID")}];
  [v4 encodeObject:v6 forKey:@"signedInToStudentMAID"];
}

@end