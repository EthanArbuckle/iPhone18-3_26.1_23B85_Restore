@interface CHSFontSpecificationFontFeature
- (BOOL)isEqual:(id)a3;
- (CHSFontSpecificationFontFeature)initWithBSXPCCoder:(id)a3;
- (CHSFontSpecificationFontFeature)initWithType:(int64_t)a3 selector:(int64_t)a4;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation CHSFontSpecificationFontFeature

- (CHSFontSpecificationFontFeature)initWithType:(int64_t)a3 selector:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = CHSFontSpecificationFontFeature;
  result = [(CHSFontSpecificationFontFeature *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_selector = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_type == v4->_type && self->_selector == v4->_selector;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendInteger:self->_type];
  v5 = [v3 appendInteger:self->_selector];
  v6 = [v3 hash];

  return v6;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:self->_type forKey:@"type"];
  [v4 encodeInt64:self->_selector forKey:@"selector"];
}

- (CHSFontSpecificationFontFeature)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(CHSFontSpecificationFontFeature *)self init];
  if (v5)
  {
    v5->_type = [v4 decodeInt64ForKey:@"type"];
    v5->_selector = [v4 decodeInt64ForKey:@"selector"];
  }

  return v5;
}

@end