@interface CRKFetchConfigurationTypeResultObject
- (CRKFetchConfigurationTypeResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchConfigurationTypeResultObject

- (CRKFetchConfigurationTypeResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CRKFetchConfigurationTypeResultObject;
  v5 = [(CATTaskResultObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configurationType"];
    v5->_configurationType = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signedInToStudentMAID"];
    v5->_signedInToStudentMAID = [v7 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKFetchConfigurationTypeResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKFetchConfigurationTypeResultObject configurationType](self, "configurationType", v7.receiver, v7.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"configurationType"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKFetchConfigurationTypeResultObject isSignedInToStudentMAID](self, "isSignedInToStudentMAID")}];
  [coderCopy encodeObject:v6 forKey:@"signedInToStudentMAID"];
}

@end