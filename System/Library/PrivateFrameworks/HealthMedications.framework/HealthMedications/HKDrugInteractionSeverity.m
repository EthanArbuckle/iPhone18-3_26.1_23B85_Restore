@interface HKDrugInteractionSeverity
- (BOOL)isEqual:(id)a3;
- (HKDrugInteractionSeverity)init;
- (HKDrugInteractionSeverity)initWithCoder:(id)a3;
- (HKDrugInteractionSeverity)initWithSeverityLevel:(unint64_t)a3 validRegionCodes:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKDrugInteractionSeverity

- (HKDrugInteractionSeverity)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKDrugInteractionSeverity)initWithSeverityLevel:(unint64_t)a3 validRegionCodes:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HKDrugInteractionSeverity;
  v7 = [(HKDrugInteractionSeverity *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_severityLevel = a3;
    v9 = [v6 copy];
    validRegionCodes = v8->_validRegionCodes;
    v8->_validRegionCodes = v9;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = HKStringFromDrugInteractionSeverityLevel(self->_severityLevel);
  v6 = [(NSSet *)self->_validRegionCodes allObjects];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [v3 stringWithFormat:@"<%@:%p severity level:%@, valid region codes:[%@]", v4, self, v5, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (self->_severityLevel != v5->_severityLevel)
      {
        goto LABEL_9;
      }

      validRegionCodes = self->_validRegionCodes;
      v7 = v5->_validRegionCodes;
      if (validRegionCodes == v7)
      {
        v8 = 1;
        goto LABEL_11;
      }

      if (v7)
      {
        v8 = [(NSSet *)validRegionCodes isEqualToSet:?];
      }

      else
      {
LABEL_9:
        v8 = 0;
      }

LABEL_11:

      goto LABEL_12;
    }

    v8 = 0;
  }

LABEL_12:

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  severityLevel = self->_severityLevel;
  v5 = a3;
  [v5 encodeInteger:severityLevel forKey:@"SeverityLevel"];
  [v5 encodeObject:self->_validRegionCodes forKey:@"ValidRegionCodes"];
}

- (HKDrugInteractionSeverity)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKDrugInteractionSeverity;
  v5 = [(HKDrugInteractionSeverity *)&v10 init];
  if (v5)
  {
    v5->_severityLevel = [v4 decodeIntegerForKey:@"SeverityLevel"];
    v6 = [MEMORY[0x277CBEB98] hk_typesForSetOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"ValidRegionCodes"];
    validRegionCodes = v5->_validRegionCodes;
    v5->_validRegionCodes = v7;
  }

  return v5;
}

@end