@interface DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject
- (DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject

- (DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject;
  v5 = [(CATTaskResultObject *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"deviceUDID"];
    deviceUDID = v5->_deviceUDID;
    v5->_deviceUDID = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"modelIdentifier"];
    modelIdentifier = v5->_modelIdentifier;
    v5->_modelIdentifier = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"modelName"];
    modelName = v5->_modelName;
    v5->_modelName = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v9 encodeWithCoder:coderCopy];
  v5 = [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject *)self serialNumber:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"serialNumber"];

  deviceUDID = [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject *)self deviceUDID];
  [coderCopy encodeObject:deviceUDID forKey:@"deviceUDID"];

  modelIdentifier = [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject *)self modelIdentifier];
  [coderCopy encodeObject:modelIdentifier forKey:@"modelIdentifier"];

  modelName = [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject *)self modelName];
  [coderCopy encodeObject:modelName forKey:@"modelName"];
}

@end