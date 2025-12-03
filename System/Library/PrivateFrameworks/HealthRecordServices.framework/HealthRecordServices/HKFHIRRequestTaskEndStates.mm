@interface HKFHIRRequestTaskEndStates
- (BOOL)isEqual:(id)equal;
- (HKFHIRRequestTaskEndStates)init;
- (HKFHIRRequestTaskEndStates)initWithCoder:(id)coder;
- (HKFHIRRequestTaskEndStates)initWithEndState:(id)state;
- (HKFHIRRequestTaskEndStates)initWithEndStates:(id)states;
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

- (HKFHIRRequestTaskEndStates)initWithEndStates:(id)states
{
  statesCopy = states;
  v9.receiver = self;
  v9.super_class = HKFHIRRequestTaskEndStates;
  v5 = [(HKFHIRRequestTaskEndStates *)&v9 init];
  if (v5)
  {
    v6 = [statesCopy copy];
    objects = v5->_objects;
    v5->_objects = v6;
  }

  return v5;
}

- (HKFHIRRequestTaskEndStates)initWithEndState:(id)state
{
  v10[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (!stateCopy)
  {
    [(HKFHIRRequestTaskEndStates *)a2 initWithEndState:?];
  }

  v10[0] = stateCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v7 = [(HKFHIRRequestTaskEndStates *)self initWithEndStates:v6];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objects = self->_objects;
      objects = [(HKFHIRRequestTaskEndStates *)v6 objects];
      if (objects == objects)
      {
        v12 = 1;
      }

      else
      {
        objects2 = [(HKFHIRRequestTaskEndStates *)v6 objects];
        if (objects2)
        {
          v10 = self->_objects;
          objects3 = [(HKFHIRRequestTaskEndStates *)v6 objects];
          v12 = [(NSArray *)v10 isEqualToArray:objects3];
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

- (HKFHIRRequestTaskEndStates)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"objects"];
  if (v6)
  {
    self = [(HKFHIRRequestTaskEndStates *)self initWithEndStates:v6];
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)initWithEndState:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKFHIRRequestTaskEndState.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"endState"}];
}

@end