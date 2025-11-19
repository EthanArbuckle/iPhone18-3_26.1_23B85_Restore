@interface _OSIBLMitigation
- (_OSIBLMitigation)initWithCoder:(id)a3;
- (_OSIBLMitigation)initWithLevel:(int64_t)a3 decisionMaker:(int64_t)a4 decisionMakerString:(id)a5 confidence:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _OSIBLMitigation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  level = self->_level;
  decisionMaker = self->_decisionMaker;
  decisionMakerString = self->_decisionMakerString;
  confidence = self->_confidence;

  return [v4 initWithLevel:level decisionMaker:decisionMaker decisionMakerString:decisionMakerString confidence:confidence];
}

- (_OSIBLMitigation)initWithLevel:(int64_t)a3 decisionMaker:(int64_t)a4 decisionMakerString:(id)a5 confidence:(double)a6
{
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _OSIBLMitigation;
  v12 = [(_OSIBLMitigation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_level = a3;
    v12->_decisionMaker = a4;
    v12->_confidence = a6;
    objc_storeStrong(&v12->_decisionMakerString, a5);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  level = self->_level;
  v5 = a3;
  [v5 encodeInteger:level forKey:@"level"];
  [v5 encodeInteger:self->_decisionMaker forKey:@"decisionMaker"];
  [v5 encodeObject:self->_decisionMakerString forKey:@"decisionMakerString"];
  [v5 encodeDouble:@"confidence" forKey:self->_confidence];
}

- (_OSIBLMitigation)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _OSIBLMitigation;
  v5 = [(_OSIBLMitigation *)&v11 init];
  if (v5)
  {
    v5->_level = [v4 decodeIntegerForKey:@"level"];
    v5->_decisionMaker = [v4 decodeIntegerForKey:@"decisionMaker"];
    v6 = [v4 decodeObjectForKey:@"decisionMakerString"];
    decisionMakerString = v5->_decisionMakerString;
    v5->_decisionMakerString = v6;

    [v4 decodeDoubleForKey:@"confidence"];
    v5->_confidence = v8;
    v9 = v5;
  }

  return v5;
}

@end