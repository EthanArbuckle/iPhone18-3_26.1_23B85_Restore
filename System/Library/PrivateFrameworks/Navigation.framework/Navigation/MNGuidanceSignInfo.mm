@interface MNGuidanceSignInfo
- (MNGuidanceSignInfo)initWithCoder:(id)coder;
- (MNGuidanceSignInfo)initWithPrimarySign:(id)sign secondarySign:(id)secondarySign stepIndex:(unint64_t)index primaryDistance:(double)distance secondaryDistance:(double)secondaryDistance timeUntilPrimarySign:(double)primarySign timeUntilSecondarySign:(double)untilSecondarySign;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  primarySign = self->_primarySign;
  coderCopy = coder;
  [coderCopy encodeObject:primarySign forKey:@"_primarySign"];
  [coderCopy encodeObject:self->_secondarySign forKey:@"_secondarySign"];
  [coderCopy encodeInteger:self->_stepIndex forKey:@"_stepIndex"];
  [coderCopy encodeDouble:@"_primaryDistance_SIRI_USE_ONLY" forKey:self->_primaryDistance_SIRI_USE_ONLY];
  [coderCopy encodeDouble:@"_secondaryDistance_SIRI_USE_ONLY" forKey:self->_secondaryDistance_SIRI_USE_ONLY];
  [coderCopy encodeDouble:@"_timeUntilPrimarySign_SIRI_USE_ONLY" forKey:self->_timeUntilPrimarySign_SIRI_USE_ONLY];
  [coderCopy encodeDouble:@"_timeUntilSecondarySign_SIRI_USE_ONLY" forKey:self->_timeUntilSecondarySign_SIRI_USE_ONLY];
}

- (MNGuidanceSignInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MNGuidanceSignInfo;
  v5 = [(MNGuidanceSignInfo *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_primarySign"];
    primarySign = v5->_primarySign;
    v5->_primarySign = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_secondarySign"];
    secondarySign = v5->_secondarySign;
    v5->_secondarySign = v8;

    v5->_stepIndex = [coderCopy decodeIntegerForKey:@"_stepIndex"];
    [coderCopy decodeDoubleForKey:@"_primaryDistance_SIRI_USE_ONLY"];
    v5->_primaryDistance_SIRI_USE_ONLY = v10;
    [coderCopy decodeDoubleForKey:@"_secondaryDistance_SIRI_USE_ONLY"];
    v5->_secondaryDistance_SIRI_USE_ONLY = v11;
    [coderCopy decodeDoubleForKey:@"_timeUntilPrimarySign_SIRI_USE_ONLY"];
    v5->_timeUntilPrimarySign_SIRI_USE_ONLY = v12;
    [coderCopy decodeDoubleForKey:@"_timeUntilSecondarySign_SIRI_USE_ONLY"];
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

- (MNGuidanceSignInfo)initWithPrimarySign:(id)sign secondarySign:(id)secondarySign stepIndex:(unint64_t)index primaryDistance:(double)distance secondaryDistance:(double)secondaryDistance timeUntilPrimarySign:(double)primarySign timeUntilSecondarySign:(double)untilSecondarySign
{
  signCopy = sign;
  secondarySignCopy = secondarySign;
  v22.receiver = self;
  v22.super_class = MNGuidanceSignInfo;
  v19 = [(MNGuidanceSignInfo *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_primarySign, sign);
    objc_storeStrong(&v20->_secondarySign, secondarySign);
    v20->_stepIndex = index;
    v20->_primaryDistance_SIRI_USE_ONLY = distance;
    v20->_secondaryDistance_SIRI_USE_ONLY = secondaryDistance;
    v20->_timeUntilPrimarySign_SIRI_USE_ONLY = primarySign;
    v20->_timeUntilSecondarySign_SIRI_USE_ONLY = untilSecondarySign;
  }

  return v20;
}

@end