@interface _OSIBLMitigation
- (_OSIBLMitigation)initWithCoder:(id)coder;
- (_OSIBLMitigation)initWithLevel:(int64_t)level decisionMaker:(int64_t)maker decisionMakerString:(id)string confidence:(double)confidence;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _OSIBLMitigation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  level = self->_level;
  decisionMaker = self->_decisionMaker;
  decisionMakerString = self->_decisionMakerString;
  confidence = self->_confidence;

  return [v4 initWithLevel:level decisionMaker:decisionMaker decisionMakerString:decisionMakerString confidence:confidence];
}

- (_OSIBLMitigation)initWithLevel:(int64_t)level decisionMaker:(int64_t)maker decisionMakerString:(id)string confidence:(double)confidence
{
  stringCopy = string;
  v15.receiver = self;
  v15.super_class = _OSIBLMitigation;
  v12 = [(_OSIBLMitigation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_level = level;
    v12->_decisionMaker = maker;
    v12->_confidence = confidence;
    objc_storeStrong(&v12->_decisionMakerString, string);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  level = self->_level;
  coderCopy = coder;
  [coderCopy encodeInteger:level forKey:@"level"];
  [coderCopy encodeInteger:self->_decisionMaker forKey:@"decisionMaker"];
  [coderCopy encodeObject:self->_decisionMakerString forKey:@"decisionMakerString"];
  [coderCopy encodeDouble:@"confidence" forKey:self->_confidence];
}

- (_OSIBLMitigation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _OSIBLMitigation;
  v5 = [(_OSIBLMitigation *)&v11 init];
  if (v5)
  {
    v5->_level = [coderCopy decodeIntegerForKey:@"level"];
    v5->_decisionMaker = [coderCopy decodeIntegerForKey:@"decisionMaker"];
    v6 = [coderCopy decodeObjectForKey:@"decisionMakerString"];
    decisionMakerString = v5->_decisionMakerString;
    v5->_decisionMakerString = v6;

    [coderCopy decodeDoubleForKey:@"confidence"];
    v5->_confidence = v8;
    v9 = v5;
  }

  return v5;
}

@end