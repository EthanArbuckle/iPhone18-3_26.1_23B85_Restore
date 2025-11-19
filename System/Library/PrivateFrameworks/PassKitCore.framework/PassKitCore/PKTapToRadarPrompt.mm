@interface PKTapToRadarPrompt
- (PKTapToRadarPrompt)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKTapToRadarPrompt

- (PKTapToRadarPrompt)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKTapToRadarPrompt;
  v5 = [(PKTapToRadarPrompt *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastPromptDate"];
    lastPromptDate = v5->_lastPromptDate;
    v5->_lastPromptDate = v8;

    v5->_promptCount = [v4 decodeIntegerForKey:@"promptCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  reason = self->_reason;
  v5 = a3;
  [v5 encodeObject:reason forKey:@"reason"];
  [v5 encodeObject:self->_lastPromptDate forKey:@"lastPromptDate"];
  [v5 encodeInteger:self->_promptCount forKey:@"promptCount"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"reason: '%@'; ", self->_reason];
  [v3 appendFormat:@"lastPromptDate: '%@'; ", self->_lastPromptDate];
  [v3 appendFormat:@"promptCount: '%ld'; ", self->_promptCount];
  [v3 appendFormat:@">"];

  return v3;
}

@end