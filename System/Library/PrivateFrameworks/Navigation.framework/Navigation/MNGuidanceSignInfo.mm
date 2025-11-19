@interface MNGuidanceSignInfo
- (MNGuidanceSignInfo)initWithCoder:(id)a3;
- (MNGuidanceSignInfo)initWithPrimarySign:(id)a3 secondarySign:(id)a4 stepIndex:(unint64_t)a5 primaryDistance:(double)a6 secondaryDistance:(double)a7 timeUntilPrimarySign:(double)a8 timeUntilSecondarySign:(double)a9;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNGuidanceSignInfo

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  if (self->_stepIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Step %d", self->_stepIndex];
    [v3 addObject:v4];
  }

  if (self->_primarySign)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@]", self->_primarySign];
    [v3 addObject:v5];
  }

  if (self->_secondarySign)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@]", self->_secondarySign];
    [v3 addObject:v6];
  }

  v7 = [v3 componentsJoinedByString:{@", "}];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  primarySign = self->_primarySign;
  v5 = a3;
  [v5 encodeObject:primarySign forKey:@"_primarySign"];
  [v5 encodeObject:self->_secondarySign forKey:@"_secondarySign"];
  [v5 encodeInteger:self->_stepIndex forKey:@"_stepIndex"];
  [v5 encodeDouble:@"_primaryDistance_SIRI_USE_ONLY" forKey:self->_primaryDistance_SIRI_USE_ONLY];
  [v5 encodeDouble:@"_secondaryDistance_SIRI_USE_ONLY" forKey:self->_secondaryDistance_SIRI_USE_ONLY];
  [v5 encodeDouble:@"_timeUntilPrimarySign_SIRI_USE_ONLY" forKey:self->_timeUntilPrimarySign_SIRI_USE_ONLY];
  [v5 encodeDouble:@"_timeUntilSecondarySign_SIRI_USE_ONLY" forKey:self->_timeUntilSecondarySign_SIRI_USE_ONLY];
}

- (MNGuidanceSignInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MNGuidanceSignInfo;
  v5 = [(MNGuidanceSignInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_primarySign"];
    primarySign = v5->_primarySign;
    v5->_primarySign = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_secondarySign"];
    secondarySign = v5->_secondarySign;
    v5->_secondarySign = v8;

    v5->_stepIndex = [v4 decodeIntegerForKey:@"_stepIndex"];
    [v4 decodeDoubleForKey:@"_primaryDistance_SIRI_USE_ONLY"];
    v5->_primaryDistance_SIRI_USE_ONLY = v10;
    [v4 decodeDoubleForKey:@"_secondaryDistance_SIRI_USE_ONLY"];
    v5->_secondaryDistance_SIRI_USE_ONLY = v11;
    [v4 decodeDoubleForKey:@"_timeUntilPrimarySign_SIRI_USE_ONLY"];
    v5->_timeUntilPrimarySign_SIRI_USE_ONLY = v12;
    [v4 decodeDoubleForKey:@"_timeUntilSecondarySign_SIRI_USE_ONLY"];
    v5->_timeUntilSecondarySign_SIRI_USE_ONLY = v13;
  }

  return v5;
}

- (id)debugDescription
{
  primarySign = self->_primarySign;
  if (primarySign)
  {
    v4 = [(MNGuidanceSignDescription *)primarySign debugDescription];
    v5 = [&stru_1F4EB6B70 stringByAppendingFormat:@"primary sign: %@", v4];
  }

  else
  {
    v5 = &stru_1F4EB6B70;
  }

  secondarySign = self->_secondarySign;
  if (secondarySign)
  {
    v7 = [(MNGuidanceSignDescription *)secondarySign debugDescription];
    v8 = [(__CFString *)v5 stringByAppendingFormat:@"secondary sign: %@", v7];

    v5 = v8;
  }

  return v5;
}

- (MNGuidanceSignInfo)initWithPrimarySign:(id)a3 secondarySign:(id)a4 stepIndex:(unint64_t)a5 primaryDistance:(double)a6 secondaryDistance:(double)a7 timeUntilPrimarySign:(double)a8 timeUntilSecondarySign:(double)a9
{
  v17 = a3;
  v18 = a4;
  v22.receiver = self;
  v22.super_class = MNGuidanceSignInfo;
  v19 = [(MNGuidanceSignInfo *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_primarySign, a3);
    objc_storeStrong(&v20->_secondarySign, a4);
    v20->_stepIndex = a5;
    v20->_primaryDistance_SIRI_USE_ONLY = a6;
    v20->_secondaryDistance_SIRI_USE_ONLY = a7;
    v20->_timeUntilPrimarySign_SIRI_USE_ONLY = a8;
    v20->_timeUntilSecondarySign_SIRI_USE_ONLY = a9;
  }

  return v20;
}

@end