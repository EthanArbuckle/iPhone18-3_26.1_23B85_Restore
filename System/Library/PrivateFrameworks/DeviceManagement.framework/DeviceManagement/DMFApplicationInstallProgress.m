@interface DMFApplicationInstallProgress
- (BOOL)isEqual:(id)a3;
- (DMFApplicationInstallProgress)initWithCoder:(id)a3;
- (DMFApplicationInstallProgress)initWithState:(unint64_t)a3 phase:(unint64_t)a4 fractionCompleted:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFApplicationInstallProgress

- (DMFApplicationInstallProgress)initWithState:(unint64_t)a3 phase:(unint64_t)a4 fractionCompleted:(double)a5
{
  v9.receiver = self;
  v9.super_class = DMFApplicationInstallProgress;
  result = [(DMFApplicationInstallProgress *)&v9 init];
  if (result)
  {
    result->_state = a3;
    result->_phase = a4;
    result->_fractionCompleted = a5;
  }

  return result;
}

- (DMFApplicationInstallProgress)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DMFApplicationInstallProgress;
  v5 = [(DMFApplicationInstallProgress *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    v5->_state = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phase"];
    v5->_phase = [v7 unsignedIntegerValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fractionCompleted"];
    [v8 doubleValue];
    v5->_fractionCompleted = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[DMFApplicationInstallProgress state](self, "state")}];
  [v5 encodeObject:v6 forKey:@"state"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFApplicationInstallProgress phase](self, "phase")}];
  [v5 encodeObject:v7 forKey:@"phase"];

  v8 = MEMORY[0x1E696AD98];
  [(DMFApplicationInstallProgress *)self fractionCompleted];
  v9 = [v8 numberWithDouble:?];
  [v5 encodeObject:v9 forKey:@"fractionCompleted"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DMFApplicationInstallProgress *)self state];
      if (v6 == [(DMFApplicationInstallProgress *)v5 state]&& (v7 = [(DMFApplicationInstallProgress *)self phase], v7 == [(DMFApplicationInstallProgress *)v5 phase]))
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
  v4 = [(DMFApplicationInstallProgress *)self state];
  if (v4 <= 5)
  {
    [v3 appendString:off_1E8616030[v4]];
  }

  [v3 appendString:@"\nPhase              : "];
  v5 = [(DMFApplicationInstallProgress *)self phase];
  if (v5 <= 3)
  {
    [v3 appendString:off_1E8616060[v5]];
  }

  [(DMFApplicationInstallProgress *)self fractionCompleted];
  [v3 appendFormat:@"\nFraction Completed : %f\n}>", v6];
  v7 = [v3 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(DMFApplicationInstallProgress *)self state];
  v6 = [(DMFApplicationInstallProgress *)self phase];
  [(DMFApplicationInstallProgress *)self fractionCompleted];

  return [v4 initWithState:v5 phase:v6 fractionCompleted:?];
}

@end