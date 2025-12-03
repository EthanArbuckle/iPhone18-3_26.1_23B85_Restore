@interface HKClinicalIngestionOutcome
- (BOOL)isEqual:(id)equal;
- (HKClinicalIngestionOutcome)init;
- (HKClinicalIngestionOutcome)initWithCoder:(id)coder;
- (HKClinicalIngestionOutcome)initWithTaskSuccess:(BOOL)success taskError:(id)error taskRuntime:(double)runtime perAccountOutcomes:(id)outcomes analyticsString:(id)string;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalIngestionOutcome

- (HKClinicalIngestionOutcome)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalIngestionOutcome)initWithTaskSuccess:(BOOL)success taskError:(id)error taskRuntime:(double)runtime perAccountOutcomes:(id)outcomes analyticsString:(id)string
{
  errorCopy = error;
  outcomesCopy = outcomes;
  stringCopy = string;
  v26.receiver = self;
  v26.super_class = HKClinicalIngestionOutcome;
  v15 = [(HKClinicalIngestionOutcome *)&v26 init];
  v16 = v15;
  if (v15)
  {
    v15->_taskSuccess = success;
    v17 = [errorCopy copy];
    taskError = v16->_taskError;
    v16->_taskError = v17;

    v19 = [MEMORY[0x277CCABB0] numberWithDouble:runtime];
    taskRuntime = v16->_taskRuntime;
    v16->_taskRuntime = v19;

    v21 = [outcomesCopy copy];
    perAccountOutcomes = v16->_perAccountOutcomes;
    v16->_perAccountOutcomes = v21;

    v23 = [stringCopy copy];
    analyticsString = v16->_analyticsString;
    v16->_analyticsString = v23;
  }

  return v16;
}

- (unint64_t)hash
{
  taskSuccess = self->_taskSuccess;
  v4 = [(NSError *)self->_taskError hash]^ taskSuccess;
  v5 = [(NSNumber *)self->_taskRuntime hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_perAccountOutcomes hash];
  return v6 ^ [(NSString *)self->_analyticsString hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self != equalCopy)
  {
    v7 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (taskSuccess = self->_taskSuccess, taskSuccess != [(HKClinicalIngestionOutcome *)v7 taskSuccess]))
    {
      LOBYTE(taskRuntime2) = 0;
LABEL_43:

      goto LABEL_44;
    }

    taskError = self->_taskError;
    taskError = [(HKClinicalIngestionOutcome *)v7 taskError];
    if (taskError != taskError)
    {
      taskError2 = [(HKClinicalIngestionOutcome *)v7 taskError];
      if (!taskError2)
      {
        LOBYTE(taskRuntime2) = 0;
        goto LABEL_42;
      }

      v3 = taskError2;
      v12 = self->_taskError;
      taskError3 = [(HKClinicalIngestionOutcome *)v7 taskError];
      if (![(NSError *)v12 isEqual:taskError3])
      {
        LOBYTE(taskRuntime2) = 0;
LABEL_41:

        goto LABEL_42;
      }

      v42 = taskError3;
    }

    taskRuntime = self->_taskRuntime;
    taskRuntime = [(HKClinicalIngestionOutcome *)v7 taskRuntime];
    if (taskRuntime == taskRuntime)
    {
      v41 = taskRuntime;
    }

    else
    {
      taskRuntime2 = [(HKClinicalIngestionOutcome *)v7 taskRuntime];
      if (!taskRuntime2)
      {
        goto LABEL_39;
      }

      v41 = taskRuntime;
      v17 = self->_taskRuntime;
      taskRuntime3 = [(HKClinicalIngestionOutcome *)v7 taskRuntime];
      if (([(NSNumber *)v17 isEqual:taskRuntime3]& 1) == 0)
      {

        LOBYTE(taskRuntime2) = 0;
        goto LABEL_40;
      }

      v38 = taskRuntime3;
      v39 = taskRuntime2;
    }

    perAccountOutcomes = self->_perAccountOutcomes;
    perAccountOutcomes = [(HKClinicalIngestionOutcome *)v7 perAccountOutcomes];
    if (perAccountOutcomes == perAccountOutcomes)
    {
      v37 = v3;
    }

    else
    {
      taskRuntime2 = [(HKClinicalIngestionOutcome *)v7 perAccountOutcomes];
      if (!taskRuntime2)
      {
        v31 = v38;
        v32 = v39;
        v30 = perAccountOutcomes;
        goto LABEL_31;
      }

      v20 = self->_perAccountOutcomes;
      perAccountOutcomes2 = [(HKClinicalIngestionOutcome *)v7 perAccountOutcomes];
      v22 = v20;
      v23 = perAccountOutcomes2;
      if (![(NSArray *)v22 isEqualToArray:perAccountOutcomes2])
      {

        LOBYTE(taskRuntime2) = 0;
        v29 = v41 == taskRuntime;
        goto LABEL_34;
      }

      v34 = v23;
      v36 = taskRuntime2;
      v37 = v3;
    }

    analyticsString = self->_analyticsString;
    analyticsString = [(HKClinicalIngestionOutcome *)v7 analyticsString];
    LOBYTE(taskRuntime2) = analyticsString == analyticsString;
    if (analyticsString != analyticsString)
    {
      analyticsString2 = [(HKClinicalIngestionOutcome *)v7 analyticsString];
      if (analyticsString2)
      {
        v27 = analyticsString2;
        taskRuntime2 = self->_analyticsString;
        analyticsString3 = [(HKClinicalIngestionOutcome *)v7 analyticsString];
        LOBYTE(taskRuntime2) = [taskRuntime2 isEqualToString:analyticsString3];

        if (perAccountOutcomes != perAccountOutcomes)
        {
        }

        v29 = v41 == taskRuntime;
        v3 = v37;
LABEL_34:
        v32 = v39;
        if (!v29)
        {

LABEL_38:
        }

LABEL_39:

LABEL_40:
        taskError3 = v42;
        if (taskError != taskError)
        {
          goto LABEL_41;
        }

LABEL_42:

        goto LABEL_43;
      }
    }

    v30 = perAccountOutcomes;
    if (perAccountOutcomes == perAccountOutcomes)
    {

      v3 = v37;
      v31 = v38;
      v32 = v39;
      if (v41 == taskRuntime)
      {
        goto LABEL_39;
      }

LABEL_37:

      goto LABEL_38;
    }

    v3 = v37;
    v31 = v38;
    v32 = v39;
LABEL_31:

    if (v41 == taskRuntime)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  LOBYTE(taskRuntime2) = 1;
LABEL_44:

  return taskRuntime2;
}

- (HKClinicalIngestionOutcome)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"TaskSuccess"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TaskError"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TaskRuntime"];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"PerAccountOutcomes"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AnalyticsString"];

  if (v7)
  {
    [v7 doubleValue];
    self = [(HKClinicalIngestionOutcome *)self initWithTaskSuccess:v5 taskError:v6 taskRuntime:v11 perAccountOutcomes:v12 analyticsString:?];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_taskSuccess forKey:@"TaskSuccess"];
  taskError = self->_taskError;
  if (taskError)
  {
    [coderCopy encodeObject:taskError forKey:@"TaskError"];
  }

  [coderCopy encodeObject:self->_taskRuntime forKey:@"TaskRuntime"];
  perAccountOutcomes = self->_perAccountOutcomes;
  if (perAccountOutcomes)
  {
    [coderCopy encodeObject:perAccountOutcomes forKey:@"PerAccountOutcomes"];
  }

  analyticsString = self->_analyticsString;
  if (analyticsString)
  {
    [coderCopy encodeObject:analyticsString forKey:@"AnalyticsString"];
  }
}

@end