@interface HKClinicalIngestionOutcome
- (BOOL)isEqual:(id)a3;
- (HKClinicalIngestionOutcome)init;
- (HKClinicalIngestionOutcome)initWithCoder:(id)a3;
- (HKClinicalIngestionOutcome)initWithTaskSuccess:(BOOL)a3 taskError:(id)a4 taskRuntime:(double)a5 perAccountOutcomes:(id)a6 analyticsString:(id)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HKClinicalIngestionOutcome)initWithTaskSuccess:(BOOL)a3 taskError:(id)a4 taskRuntime:(double)a5 perAccountOutcomes:(id)a6 analyticsString:(id)a7
{
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v26.receiver = self;
  v26.super_class = HKClinicalIngestionOutcome;
  v15 = [(HKClinicalIngestionOutcome *)&v26 init];
  v16 = v15;
  if (v15)
  {
    v15->_taskSuccess = a3;
    v17 = [v12 copy];
    taskError = v16->_taskError;
    v16->_taskError = v17;

    v19 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
    taskRuntime = v16->_taskRuntime;
    v16->_taskRuntime = v19;

    v21 = [v13 copy];
    perAccountOutcomes = v16->_perAccountOutcomes;
    v16->_perAccountOutcomes = v21;

    v23 = [v14 copy];
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self != v5)
  {
    v7 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (taskSuccess = self->_taskSuccess, taskSuccess != [(HKClinicalIngestionOutcome *)v7 taskSuccess]))
    {
      LOBYTE(v14) = 0;
LABEL_43:

      goto LABEL_44;
    }

    taskError = self->_taskError;
    v10 = [(HKClinicalIngestionOutcome *)v7 taskError];
    if (taskError != v10)
    {
      v11 = [(HKClinicalIngestionOutcome *)v7 taskError];
      if (!v11)
      {
        LOBYTE(v14) = 0;
        goto LABEL_42;
      }

      v3 = v11;
      v12 = self->_taskError;
      v13 = [(HKClinicalIngestionOutcome *)v7 taskError];
      if (![(NSError *)v12 isEqual:v13])
      {
        LOBYTE(v14) = 0;
LABEL_41:

        goto LABEL_42;
      }

      v42 = v13;
    }

    taskRuntime = self->_taskRuntime;
    v16 = [(HKClinicalIngestionOutcome *)v7 taskRuntime];
    if (taskRuntime == v16)
    {
      v41 = taskRuntime;
    }

    else
    {
      v14 = [(HKClinicalIngestionOutcome *)v7 taskRuntime];
      if (!v14)
      {
        goto LABEL_39;
      }

      v41 = taskRuntime;
      v17 = self->_taskRuntime;
      v18 = [(HKClinicalIngestionOutcome *)v7 taskRuntime];
      if (([(NSNumber *)v17 isEqual:v18]& 1) == 0)
      {

        LOBYTE(v14) = 0;
        goto LABEL_40;
      }

      v38 = v18;
      v39 = v14;
    }

    perAccountOutcomes = self->_perAccountOutcomes;
    v40 = [(HKClinicalIngestionOutcome *)v7 perAccountOutcomes];
    if (perAccountOutcomes == v40)
    {
      v37 = v3;
    }

    else
    {
      v14 = [(HKClinicalIngestionOutcome *)v7 perAccountOutcomes];
      if (!v14)
      {
        v31 = v38;
        v32 = v39;
        v30 = v40;
        goto LABEL_31;
      }

      v20 = self->_perAccountOutcomes;
      v21 = [(HKClinicalIngestionOutcome *)v7 perAccountOutcomes];
      v22 = v20;
      v23 = v21;
      if (![(NSArray *)v22 isEqualToArray:v21])
      {

        LOBYTE(v14) = 0;
        v29 = v41 == v16;
        goto LABEL_34;
      }

      v34 = v23;
      v36 = v14;
      v37 = v3;
    }

    analyticsString = self->_analyticsString;
    v25 = [(HKClinicalIngestionOutcome *)v7 analyticsString];
    LOBYTE(v14) = analyticsString == v25;
    if (analyticsString != v25)
    {
      v26 = [(HKClinicalIngestionOutcome *)v7 analyticsString];
      if (v26)
      {
        v27 = v26;
        v14 = self->_analyticsString;
        v28 = [(HKClinicalIngestionOutcome *)v7 analyticsString];
        LOBYTE(v14) = [v14 isEqualToString:v28];

        if (perAccountOutcomes != v40)
        {
        }

        v29 = v41 == v16;
        v3 = v37;
LABEL_34:
        v32 = v39;
        if (!v29)
        {

LABEL_38:
        }

LABEL_39:

LABEL_40:
        v13 = v42;
        if (taskError != v10)
        {
          goto LABEL_41;
        }

LABEL_42:

        goto LABEL_43;
      }
    }

    v30 = v40;
    if (perAccountOutcomes == v40)
    {

      v3 = v37;
      v31 = v38;
      v32 = v39;
      if (v41 == v16)
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

    if (v41 == v16)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  LOBYTE(v14) = 1;
LABEL_44:

  return v14;
}

- (HKClinicalIngestionOutcome)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"TaskSuccess"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TaskError"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TaskRuntime"];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"PerAccountOutcomes"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AnalyticsString"];

  if (v7)
  {
    [v7 doubleValue];
    self = [(HKClinicalIngestionOutcome *)self initWithTaskSuccess:v5 taskError:v6 taskRuntime:v11 perAccountOutcomes:v12 analyticsString:?];
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeBool:self->_taskSuccess forKey:@"TaskSuccess"];
  taskError = self->_taskError;
  if (taskError)
  {
    [v7 encodeObject:taskError forKey:@"TaskError"];
  }

  [v7 encodeObject:self->_taskRuntime forKey:@"TaskRuntime"];
  perAccountOutcomes = self->_perAccountOutcomes;
  if (perAccountOutcomes)
  {
    [v7 encodeObject:perAccountOutcomes forKey:@"PerAccountOutcomes"];
  }

  analyticsString = self->_analyticsString;
  if (analyticsString)
  {
    [v7 encodeObject:analyticsString forKey:@"AnalyticsString"];
  }
}

@end