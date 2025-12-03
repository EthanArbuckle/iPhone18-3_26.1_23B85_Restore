@interface HKDrugInteractionSeverity
- (BOOL)isEqual:(id)equal;
- (HKDrugInteractionSeverity)init;
- (HKDrugInteractionSeverity)initWithCoder:(id)coder;
- (HKDrugInteractionSeverity)initWithSeverityLevel:(unint64_t)level validRegionCodes:(id)codes;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (HKDrugInteractionSeverity)initWithSeverityLevel:(unint64_t)level validRegionCodes:(id)codes
{
  codesCopy = codes;
  v12.receiver = self;
  v12.super_class = HKDrugInteractionSeverity;
  v7 = [(HKDrugInteractionSeverity *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_severityLevel = level;
    v9 = [codesCopy copy];
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
  allObjects = [(NSSet *)self->_validRegionCodes allObjects];
  v7 = [allObjects componentsJoinedByString:{@", "}];
  v8 = [v3 stringWithFormat:@"<%@:%p severity level:%@, valid region codes:[%@]", v4, self, v5, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  severityLevel = self->_severityLevel;
  coderCopy = coder;
  [coderCopy encodeInteger:severityLevel forKey:@"SeverityLevel"];
  [coderCopy encodeObject:self->_validRegionCodes forKey:@"ValidRegionCodes"];
}

- (HKDrugInteractionSeverity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKDrugInteractionSeverity;
  v5 = [(HKDrugInteractionSeverity *)&v10 init];
  if (v5)
  {
    v5->_severityLevel = [coderCopy decodeIntegerForKey:@"SeverityLevel"];
    v6 = [MEMORY[0x277CBEB98] hk_typesForSetOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"ValidRegionCodes"];
    validRegionCodes = v5->_validRegionCodes;
    v5->_validRegionCodes = v7;
  }

  return v5;
}

@end