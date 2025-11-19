@interface HKMedicationClusterQueryConfiguration
- (HKMedicationClusterQueryConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicationClusterQueryConfiguration

- (HKMedicationClusterQueryConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HKMedicationClusterQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v17 initWithCoder:v4];
  if (v5)
  {
    v5->_queryType = [v4 decodeIntegerForKey:@"QueryType"];
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"ScanResult"];
    scanResult = v5->_scanResult;
    v5->_scanResult = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MachineReadableCode"];
    machineReadableCode = v5->_machineReadableCode;
    v5->_machineReadableCode = v8;

    v5->_codeAttributeType = [v4 decodeIntForKey:@"CodeAttributeType"];
    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"TextSearchTokens"];
    textSearchTokens = v5->_textSearchTokens;
    v5->_textSearchTokens = v10;

    v12 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"ExistingMedications"];
    existingMedications = v5->_existingMedications;
    v5->_existingMedications = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SinceDate"];
    sinceDate = v5->_sinceDate;
    v5->_sinceDate = v14;

    v5->_limit = [v4 decodeIntegerForKey:@"Limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKMedicationClusterQueryConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_queryType forKey:{@"QueryType", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_scanResult forKey:@"ScanResult"];
  [v4 encodeObject:self->_machineReadableCode forKey:@"MachineReadableCode"];
  [v4 encodeInteger:self->_codeAttributeType forKey:@"CodeAttributeType"];
  [v4 encodeObject:self->_textSearchTokens forKey:@"TextSearchTokens"];
  [v4 encodeObject:self->_existingMedications forKey:@"ExistingMedications"];
  [v4 encodeObject:self->_sinceDate forKey:@"SinceDate"];
  [v4 encodeInteger:self->_limit forKey:@"Limit"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = HKMedicationClusterQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v11 copyWithZone:a3];
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