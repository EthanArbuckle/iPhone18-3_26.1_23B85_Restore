@interface DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject
- (DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject

- (DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject;
  v5 = [(CATTaskResultObject *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"deviceUDID"];
    deviceUDID = v5->_deviceUDID;
    v5->_deviceUDID = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"modelIdentifier"];
    modelIdentifier = v5->_modelIdentifier;
    v5->_modelIdentifier = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"modelName"];
    modelName = v5->_modelName;
    v5->_modelName = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v9 encodeWithCoder:v4];
  v5 = [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject *)self serialNumber:v9.receiver];
  [v4 encodeObject:v5 forKey:@"serialNumber"];

  v6 = [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject *)self deviceUDID];
  [v4 encodeObject:v6 forKey:@"deviceUDID"];

  v7 = [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject *)self modelIdentifier];
  [v4 encodeObject:v7 forKey:@"modelIdentifier"];

  v8 = [(DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject *)self modelName];
  [v4 encodeObject:v8 forKey:@"modelName"];
}

@end