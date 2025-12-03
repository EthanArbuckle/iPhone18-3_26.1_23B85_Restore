@interface HKMedicationClusterQueryConfiguration
- (HKMedicationClusterQueryConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationClusterQueryConfiguration

- (HKMedicationClusterQueryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = HKMedicationClusterQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_queryType = [coderCopy decodeIntegerForKey:@"QueryType"];
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"ScanResult"];
    scanResult = v5->_scanResult;
    v5->_scanResult = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MachineReadableCode"];
    machineReadableCode = v5->_machineReadableCode;
    v5->_machineReadableCode = v8;

    v5->_codeAttributeType = [coderCopy decodeIntForKey:@"CodeAttributeType"];
    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"TextSearchTokens"];
    textSearchTokens = v5->_textSearchTokens;
    v5->_textSearchTokens = v10;

    v12 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"ExistingMedications"];
    existingMedications = v5->_existingMedications;
    v5->_existingMedications = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SinceDate"];
    sinceDate = v5->_sinceDate;
    v5->_sinceDate = v14;

    v5->_limit = [coderCopy decodeIntegerForKey:@"Limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKMedicationClusterQueryConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_queryType forKey:{@"QueryType", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_scanResult forKey:@"ScanResult"];
  [coderCopy encodeObject:self->_machineReadableCode forKey:@"MachineReadableCode"];
  [coderCopy encodeInteger:self->_codeAttributeType forKey:@"CodeAttributeType"];
  [coderCopy encodeObject:self->_textSearchTokens forKey:@"TextSearchTokens"];
  [coderCopy encodeObject:self->_existingMedications forKey:@"ExistingMedications"];
  [coderCopy encodeObject:self->_sinceDate forKey:@"SinceDate"];
  [coderCopy encodeInteger:self->_limit forKey:@"Limit"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = HKMedicationClusterQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v11 copyWithZone:zone];
  [v4 setQueryType:self->_queryType];
  v5 = [(NSArray *)self->_scanResult copy];
  [v4 setScanResult:v5];

  v6 = [(NSString *)self->_machineReadableCode copy];
  [v4 setMachineReadableCode:v6];

  [v4 setCodeAttributeType:self->_codeAttributeType];
  v7 = [(NSArray *)self->_textSearchTokens copy];
  [v4 setTextSearchTokens:v7];

  v8 = [(NSArray *)self->_existingMedications copy];
  [v4 setExistingMedications:v8];

  v9 = [(NSDate *)self->_sinceDate copy];
  [v4 setSinceDate:v9];

  [v4 setLimit:self->_limit];
  return v4;
}

@end