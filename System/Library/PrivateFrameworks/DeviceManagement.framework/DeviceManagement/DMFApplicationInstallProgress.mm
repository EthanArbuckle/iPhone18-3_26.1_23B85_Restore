@interface DMFApplicationInstallProgress
- (BOOL)isEqual:(id)equal;
- (DMFApplicationInstallProgress)initWithCoder:(id)coder;
- (DMFApplicationInstallProgress)initWithState:(unint64_t)state phase:(unint64_t)phase fractionCompleted:(double)completed;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFApplicationInstallProgress

- (DMFApplicationInstallProgress)initWithState:(unint64_t)state phase:(unint64_t)phase fractionCompleted:(double)completed
{
  v9.receiver = self;
  v9.super_class = DMFApplicationInstallProgress;
  result = [(DMFApplicationInstallProgress *)&v9 init];
  if (result)
  {
    result->_state = state;
    result->_phase = phase;
    result->_fractionCompleted = completed;
  }

  return result;
}

- (DMFApplicationInstallProgress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DMFApplicationInstallProgress;
  v5 = [(DMFApplicationInstallProgress *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    v5->_state = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phase"];
    v5->_phase = [v7 unsignedIntegerValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fractionCompleted"];
    [v8 doubleValue];
    v5->_fractionCompleted = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[DMFApplicationInstallProgress state](self, "state")}];
  [coderCopy encodeObject:v6 forKey:@"state"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFApplicationInstallProgress phase](self, "phase")}];
  [coderCopy encodeObject:v7 forKey:@"phase"];

  v8 = MEMORY[0x1E696AD98];
  [(DMFApplicationInstallProgress *)self fractionCompleted];
  v9 = [v8 numberWithDouble:?];
  [coderCopy encodeObject:v9 forKey:@"fractionCompleted"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      state = [(DMFApplicationInstallProgress *)self state];
      if (state == [(DMFApplicationInstallProgress *)v5 state]&& (v7 = [(DMFApplicationInstallProgress *)self phase], v7 == [(DMFApplicationInstallProgress *)v5 phase]))
      {
        [(DMFApplicationInstallProgress *)self fractionCompleted];
        v9 = v8;
        [(DMFApplicationInstallProgress *)v5 fractionCompleted];
        v11 = v9 == v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@:%p {\nState              : ", objc_opt_class(), self];
  state = [(DMFApplicationInstallProgress *)self state];
  if (state <= 5)
  {
    [v3 appendString:off_1E8616030[state]];
  }

  [v3 appendString:@"\nPhase              : "];
  phase = [(DMFApplicationInstallProgress *)self phase];
  if (phase <= 3)
  {
    [v3 appendString:off_1E8616060[phase]];
  }

  [(DMFApplicationInstallProgress *)self fractionCompleted];
  [v3 appendFormat:@"\nFraction Completed : %f\n}>", v6];
  v7 = [v3 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  state = [(DMFApplicationInstallProgress *)self state];
  phase = [(DMFApplicationInstallProgress *)self phase];
  [(DMFApplicationInstallProgress *)self fractionCompleted];

  return [v4 initWithState:state phase:phase fractionCompleted:?];
}

@end