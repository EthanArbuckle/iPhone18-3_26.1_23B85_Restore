@interface FMDEraseOptions
- (FMDEraseOptions)initWithCoder:(id)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDEraseOptions

- (void)encodeWithCoder:(id)a3
{
  useObliteration = self->_useObliteration;
  v5 = a3;
  [v5 encodeBool:useObliteration forKey:@"useObliteration"];
  [v5 encodeBool:self->_brickDevice forKey:@"brickDevice"];
  [v5 encodeDouble:@"customDelay" forKey:self->_customDelay];
  [v5 encodeDouble:@"maxDelayInterval" forKey:self->_maxDelayInterval];
  [v5 encodeBool:self->_hasBridgeCoProcessor forKey:@"hasBridgeCoProcessor"];
}

- (FMDEraseOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FMDEraseOptions;
  v5 = [(FMDEraseOptions *)&v9 init];
  if (v5)
  {
    v5->_useObliteration = [v4 decodeBoolForKey:@"useObliteration"];
    v5->_brickDevice = [v4 decodeBoolForKey:@"brickDevice"];
    [v4 decodeDoubleForKey:@"customDelay"];
    v5->_customDelay = v6;
    [v4 decodeDoubleForKey:@"maxDelayInterval"];
    v5->_maxDelayInterval = v7;
    v5->_hasBridgeCoProcessor = [v4 decodeBoolForKey:@"hasBridgeCoProcessor"];
  }

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FMDEraseOptions *)self useObliteration];
  v6 = [(FMDEraseOptions *)self brickDevice];
  [(FMDEraseOptions *)self maxDelayInterval];
  v8 = v7;
  [(FMDEraseOptions *)self customDelay];
  return [v3 stringWithFormat:@"<%@: %p> useObliteration: %i, brickDevice - %i, maxDelay - %f, customDelay - %f, hasBridgeCoProcessor - %i", v4, self, v5, v6, v8, v9, -[FMDEraseOptions hasBridgeCoProcessor](self, "hasBridgeCoProcessor")];
}

@end