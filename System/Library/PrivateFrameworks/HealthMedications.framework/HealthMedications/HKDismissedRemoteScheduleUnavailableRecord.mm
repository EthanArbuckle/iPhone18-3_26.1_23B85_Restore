@interface HKDismissedRemoteScheduleUnavailableRecord
- (BOOL)isEqual:(id)equal;
- (HKDismissedRemoteScheduleUnavailableRecord)init;
- (HKDismissedRemoteScheduleUnavailableRecord)initWithCoder:(id)coder;
- (id)_initWithMedicationIdentifier:(id)identifier scheduleType:(int64_t)type scheduleCompatibilityVersion:(int64_t)version deviceIdentifiers:(id)identifiers creationDate:(id)date;
- (id)description;
- (id)deviceIdentifiersDatabaseString;
- (id)deviceIdentifiersDescriptionString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKDismissedRemoteScheduleUnavailableRecord

- (HKDismissedRemoteScheduleUnavailableRecord)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)_initWithMedicationIdentifier:(id)identifier scheduleType:(int64_t)type scheduleCompatibilityVersion:(int64_t)version deviceIdentifiers:(id)identifiers creationDate:(id)date
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  dateCopy = date;
  if (!identifierCopy)
  {
    [HKDismissedRemoteScheduleUnavailableRecord _initWithMedicationIdentifier:scheduleType:scheduleCompatibilityVersion:deviceIdentifiers:creationDate:];
  }

  v15 = HKAllMedicationScheduleTypes();
  firstObject = [v15 firstObject];
  integerValue = [firstObject integerValue];

  v18 = HKAllMedicationScheduleTypes();
  lastObject = [v18 lastObject];
  integerValue2 = [lastObject integerValue];

  if (integerValue > type)
  {
    [HKDismissedRemoteScheduleUnavailableRecord _initWithMedicationIdentifier:scheduleType:scheduleCompatibilityVersion:deviceIdentifiers:creationDate:];
  }

  if (integerValue2 < type)
  {
    [HKDismissedRemoteScheduleUnavailableRecord _initWithMedicationIdentifier:scheduleType:scheduleCompatibilityVersion:deviceIdentifiers:creationDate:];
  }

  if (version > -2)
  {
    if (identifiersCopy)
    {
      goto LABEL_9;
    }

LABEL_14:
    [HKDismissedRemoteScheduleUnavailableRecord _initWithMedicationIdentifier:scheduleType:scheduleCompatibilityVersion:deviceIdentifiers:creationDate:];
    if (dateCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  [HKDismissedRemoteScheduleUnavailableRecord _initWithMedicationIdentifier:scheduleType:scheduleCompatibilityVersion:deviceIdentifiers:creationDate:];
  if (!identifiersCopy)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (dateCopy)
  {
    goto LABEL_10;
  }

LABEL_15:
  [HKDismissedRemoteScheduleUnavailableRecord _initWithMedicationIdentifier:scheduleType:scheduleCompatibilityVersion:deviceIdentifiers:creationDate:];
LABEL_10:
  v29.receiver = self;
  v29.super_class = HKDismissedRemoteScheduleUnavailableRecord;
  v21 = [(HKDismissedRemoteScheduleUnavailableRecord *)&v29 init];
  if (v21)
  {
    v22 = [identifierCopy copy];
    medicationIdentifier = v21->_medicationIdentifier;
    v21->_medicationIdentifier = v22;

    v21->_scheduleType = type;
    v21->_scheduleCompatibilityVersion = version;
    v24 = [identifiersCopy copy];
    deviceIdentifiers = v21->_deviceIdentifiers;
    v21->_deviceIdentifiers = v24;

    v26 = [dateCopy copy];
    creationDate = v21->_creationDate;
    v21->_creationDate = v26;
  }

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  medicationIdentifier = self->_medicationIdentifier;
  v6 = HKStringFromMedicationScheduleType(self->_scheduleType);
  v7 = [v3 stringWithFormat:@"<%@:%p (Medication: %ld, Schedule Type: %@, Schedule Compatibility Version: v%ld, Creation Date: %@, Devices: %@)>", v4, self, medicationIdentifier, v6, self->_scheduleCompatibilityVersion, self->_creationDate, self->_deviceIdentifiers];

  return v7;
}

- (id)deviceIdentifiersDatabaseString
{
  v2 = [(NSArray *)self->_deviceIdentifiers hk_map:&__block_literal_global_3];
  v3 = [v2 componentsJoinedByString:@"|$|"];

  return v3;
}

- (id)deviceIdentifiersDescriptionString
{
  v2 = [(NSArray *)self->_deviceIdentifiers hk_map:&__block_literal_global_329];
  v3 = [v2 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

- (unint64_t)hash
{
  v3 = self->_scheduleType ^ [(NSString *)self->_medicationIdentifier hash]^ (self->_scheduleCompatibilityVersion << 16);
  v4 = [(NSArray *)self->_deviceIdentifiers hash];
  return v3 ^ v4 ^ [(NSDate *)self->_creationDate hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      medicationIdentifier = self->_medicationIdentifier;
      v7 = v5->_medicationIdentifier;
      if (medicationIdentifier != v7 && (!v7 || ![(NSString *)medicationIdentifier isEqual:?]))
      {
        goto LABEL_16;
      }

      if (self->_scheduleType != v5->_scheduleType)
      {
        goto LABEL_16;
      }

      if (self->_scheduleCompatibilityVersion != v5->_scheduleCompatibilityVersion)
      {
        goto LABEL_16;
      }

      deviceIdentifiers = self->_deviceIdentifiers;
      v9 = v5->_deviceIdentifiers;
      if (deviceIdentifiers != v9 && (!v9 || ![(NSArray *)deviceIdentifiers isEqualToArray:?]))
      {
        goto LABEL_16;
      }

      creationDate = self->_creationDate;
      v11 = v5->_creationDate;
      if (creationDate == v11)
      {
        v12 = 1;
        goto LABEL_17;
      }

      if (v11)
      {
        v12 = [(NSDate *)creationDate isEqualToDate:?];
      }

      else
      {
LABEL_16:
        v12 = 0;
      }

LABEL_17:

      goto LABEL_18;
    }

    v12 = 0;
  }

LABEL_18:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  medicationIdentifier = self->_medicationIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:medicationIdentifier forKey:@"MedicationIdentifier"];
  [coderCopy encodeInteger:self->_scheduleType forKey:@"ScheduleType"];
  [coderCopy encodeInteger:self->_scheduleCompatibilityVersion forKey:@"ScheduleCompatibilityVersion"];
  [coderCopy encodeObject:self->_deviceIdentifiers forKey:@"DeviceIdentifiers"];
  [coderCopy encodeObject:self->_creationDate forKey:@"CreationDate"];
}

- (HKDismissedRemoteScheduleUnavailableRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = HKDismissedRemoteScheduleUnavailableRecord;
  v5 = [(HKDismissedRemoteScheduleUnavailableRecord *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MedicationIdentifier"];
    medicationIdentifier = v5->_medicationIdentifier;
    v5->_medicationIdentifier = v6;

    v5->_scheduleType = [coderCopy decodeIntegerForKey:@"ScheduleType"];
    v5->_scheduleCompatibilityVersion = [coderCopy decodeIntegerForKey:@"ScheduleCompatibilityVersion"];
    v8 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"DeviceIdentifiers"];
    deviceIdentifiers = v5->_deviceIdentifiers;
    v5->_deviceIdentifiers = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v11;

    if (!v5->_medicationIdentifier)
    {
      [HKDismissedRemoteScheduleUnavailableRecord initWithCoder:];
    }

    if (!v5->_deviceIdentifiers)
    {
      [HKDismissedRemoteScheduleUnavailableRecord initWithCoder:];
    }

    if (!v5->_creationDate)
    {
      [HKDismissedRemoteScheduleUnavailableRecord initWithCoder:];
    }
  }

  return v5;
}

- (void)_initWithMedicationIdentifier:scheduleType:scheduleCompatibilityVersion:deviceIdentifiers:creationDate:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"medicationIdentifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithMedicationIdentifier:scheduleType:scheduleCompatibilityVersion:deviceIdentifiers:creationDate:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"scheduleType >= lowerScheduleTypeBound" object:? file:? lineNumber:? description:?];
}

- (void)_initWithMedicationIdentifier:scheduleType:scheduleCompatibilityVersion:deviceIdentifiers:creationDate:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"scheduleType <= upperScheduleTypeBound" object:? file:? lineNumber:? description:?];
}

- (void)_initWithMedicationIdentifier:scheduleType:scheduleCompatibilityVersion:deviceIdentifiers:creationDate:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"scheduleCompatibilityVersion >= HKMedicationScheduleCompatibilityUnsupported" object:? file:? lineNumber:? description:?];
}

- (void)_initWithMedicationIdentifier:scheduleType:scheduleCompatibilityVersion:deviceIdentifiers:creationDate:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"deviceIdentifiers != nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithMedicationIdentifier:scheduleType:scheduleCompatibilityVersion:deviceIdentifiers:creationDate:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"creationDate != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end