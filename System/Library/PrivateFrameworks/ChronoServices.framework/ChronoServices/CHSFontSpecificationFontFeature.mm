@interface CHSFontSpecificationFontFeature
- (BOOL)isEqual:(id)equal;
- (CHSFontSpecificationFontFeature)initWithBSXPCCoder:(id)coder;
- (CHSFontSpecificationFontFeature)initWithType:(int64_t)type selector:(int64_t)selector;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CHSFontSpecificationFontFeature

- (CHSFontSpecificationFontFeature)initWithType:(int64_t)type selector:(int64_t)selector
{
  v7.receiver = self;
  v7.super_class = CHSFontSpecificationFontFeature;
  result = [(CHSFontSpecificationFontFeature *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_selector = selector;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_type == equalCopy->_type && self->_selector == equalCopy->_selector;
  }

  return v5;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendInteger:self->_type];
  v5 = [builder appendInteger:self->_selector];
  v6 = [builder hash];

  return v6;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_type forKey:@"type"];
  [coderCopy encodeInt64:self->_selector forKey:@"selector"];
}

- (CHSFontSpecificationFontFeature)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CHSFontSpecificationFontFeature *)self init];
  if (v5)
  {
    v5->_type = [coderCopy decodeInt64ForKey:@"type"];
    v5->_selector = [coderCopy decodeInt64ForKey:@"selector"];
  }

  return v5;
}

@end