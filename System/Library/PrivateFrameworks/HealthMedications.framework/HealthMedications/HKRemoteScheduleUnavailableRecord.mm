@interface HKRemoteScheduleUnavailableRecord
+ (id)_createDevicesByIdentifier:(uint64_t)identifier;
- (BOOL)isEqual:(id)equal;
- (HKRemoteScheduleUnavailableRecord)init;
- (HKRemoteScheduleUnavailableRecord)initWithCoder:(id)coder;
- (HKRemoteScheduleUnavailableRecord)initWithMedication:(id)medication schedule:(id)schedule devices:(id)devices;
- (id)description;
- (id)dismissedRecord;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKRemoteScheduleUnavailableRecord

- (HKRemoteScheduleUnavailableRecord)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKRemoteScheduleUnavailableRecord)initWithMedication:(id)medication schedule:(id)schedule devices:(id)devices
{
  medicationCopy = medication;
  scheduleCopy = schedule;
  devicesCopy = devices;
  if (medicationCopy)
  {
    if (scheduleCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [HKRemoteScheduleUnavailableRecord initWithMedication:schedule:devices:];
    if (devicesCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [HKRemoteScheduleUnavailableRecord initWithMedication:schedule:devices:];
  if (!scheduleCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (devicesCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [HKRemoteScheduleUnavailableRecord initWithMedication:schedule:devices:];
LABEL_4:
  v17.receiver = self;
  v17.super_class = HKRemoteScheduleUnavailableRecord;
  v12 = [(HKRemoteScheduleUnavailableRecord *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_medication, medication);
    objc_storeStrong(&v13->_schedule, schedule);
    objc_storeStrong(&v13->_devices, devices);
    v14 = [HKRemoteScheduleUnavailableRecord _createDevicesByIdentifier:devicesCopy];
    devicesByIdentifier = v13->_devicesByIdentifier;
    v13->_devicesByIdentifier = v14;
  }

  return v13;
}

+ (id)_createDevicesByIdentifier:(uint64_t)identifier
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 hk_mapToDictionary:&__block_literal_global_321];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  firstConceptIdentifier = [(HKMedicationUserDomainConcept *)self->_medication firstConceptIdentifier];
  rawIdentifier = [firstConceptIdentifier rawIdentifier];
  v7 = HKStringFromMedicationScheduleType([(HKMedicationSchedule *)self->_schedule scheduleType]);
  v8 = [v3 stringWithFormat:@"<%@:%p (Concept ID: %ld, Schedule Type: %@, Schedule Compatibility Version: v%ld, Devices: %@)>", v4, self, rawIdentifier, v7, -[HKMedicationSchedule compatibilityRange](self->_schedule, "compatibilityRange"), self->_devices];

  return v8;
}

- (id)dismissedRecord
{
  v3 = [(NSArray *)self->_devices hk_map:&__block_literal_global_5];
  v4 = [HKDismissedRemoteScheduleUnavailableRecord alloc];
  semanticIdentifier = [(HKMedicationUserDomainConcept *)self->_medication semanticIdentifier];
  stringValue = [semanticIdentifier stringValue];
  scheduleType = [(HKMedicationSchedule *)self->_schedule scheduleType];
  compatibilityRange = [(HKMedicationSchedule *)self->_schedule compatibilityRange];
  date = [MEMORY[0x277CBEAA8] date];
  v10 = [(HKDismissedRemoteScheduleUnavailableRecord *)v4 _initWithMedicationIdentifier:stringValue scheduleType:scheduleType scheduleCompatibilityVersion:compatibilityRange deviceIdentifiers:v3 creationDate:date];

  return v10;
}

void __64__HKRemoteScheduleUnavailableRecord__createDevicesByIdentifier___block_invoke(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 hardwareIdentifier];
  (a3)[2](v5, v7, v6);
}

- (unint64_t)hash
{
  v3 = [(HKMedicationUserDomainConcept *)self->_medication hash];
  v4 = [(HKMedicationSchedule *)self->_schedule hash]^ v3;
  return v4 ^ [(NSArray *)self->_devices hash];
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
      medication = self->_medication;
      v7 = v5->_medication;
      if (medication != v7 && (!v7 || ![(HKMedicationUserDomainConcept *)medication isEqual:?]))
      {
        goto LABEL_14;
      }

      schedule = self->_schedule;
      v9 = v5->_schedule;
      if (schedule != v9 && (!v9 || ![(HKMedicationSchedule *)schedule isEqual:?]))
      {
        goto LABEL_14;
      }

      devices = self->_devices;
      v11 = v5->_devices;
      if (devices == v11)
      {
        v12 = 1;
        goto LABEL_15;
      }

      if (v11)
      {
        v12 = [(NSArray *)devices isEqualToArray:?];
      }

      else
      {
LABEL_14:
        v12 = 0;
      }

LABEL_15:

      goto LABEL_16;
    }

    v12 = 0;
  }

LABEL_16:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  medication = self->_medication;
  coderCopy = coder;
  [coderCopy encodeObject:medication forKey:@"Medication"];
  [coderCopy encodeObject:self->_schedule forKey:@"Schedule"];
  [coderCopy encodeObject:self->_devices forKey:@"Devices"];
}

- (HKRemoteScheduleUnavailableRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HKRemoteScheduleUnavailableRecord;
  v5 = [(HKRemoteScheduleUnavailableRecord *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Medication"];
    medication = v5->_medication;
    v5->_medication = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Schedule"];
    schedule = v5->_schedule;
    v5->_schedule = v8;

    v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"Devices"];
    devices = v5->_devices;
    v5->_devices = v10;

    if (!v5->_medication)
    {
      [HKRemoteScheduleUnavailableRecord initWithCoder:];
    }

    if (!v5->_schedule)
    {
      [HKRemoteScheduleUnavailableRecord initWithCoder:];
    }

    if (!v5->_devices)
    {
      [HKRemoteScheduleUnavailableRecord initWithCoder:];
    }
  }

  return v5;
}

- (void)initWithMedication:schedule:devices:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"medication != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithMedication:schedule:devices:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"schedule != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithMedication:schedule:devices:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"devices != nil" object:? file:? lineNumber:? description:?];
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