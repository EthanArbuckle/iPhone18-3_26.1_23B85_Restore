@interface HKFHIRRequestTaskEndStates
- (BOOL)isEqual:(id)a3;
- (HKFHIRRequestTaskEndStates)init;
- (HKFHIRRequestTaskEndStates)initWithCoder:(id)a3;
- (HKFHIRRequestTaskEndStates)initWithEndState:(id)a3;
- (HKFHIRRequestTaskEndStates)initWithEndStates:(id)a3;
@end

@implementation HKFHIRRequestTaskEndStates

- (HKFHIRRequestTaskEndStates)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKFHIRRequestTaskEndStates)initWithEndStates:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKFHIRRequestTaskEndStates;
  v5 = [(HKFHIRRequestTaskEndStates *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    objects = v5->_objects;
    v5->_objects = v6;
  }

  return v5;
}

- (HKFHIRRequestTaskEndStates)initWithEndState:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [(HKFHIRRequestTaskEndStates *)a2 initWithEndState:?];
  }

  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [(HKFHIRRequestTaskEndStates *)self initWithEndStates:v6];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objects = self->_objects;
      v8 = [(HKFHIRRequestTaskEndStates *)v6 objects];
      if (objects == v8)
      {
        v12 = 1;
      }

      else
      {
        v9 = [(HKFHIRRequestTaskEndStates *)v6 objects];
        if (v9)
        {
          v10 = self->_objects;
          v11 = [(HKFHIRRequestTaskEndStates *)v6 objects];
          v12 = [(NSArray *)v10 isEqualToArray:v11];
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (HKFHIRRequestTaskEndStates)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"objects"];
  if (v6)
  {
    self = [(HKFHIRRequestTaskEndStates *)self initWithEndStates:v6];
    v7 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v7 = 0;
  }

  return v7;
}

- (void)initWithEndState:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKFHIRRequestTaskEndState.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"endState"}];
}

@end