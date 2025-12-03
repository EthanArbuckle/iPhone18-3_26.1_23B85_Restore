@interface FMDEraseOptions
- (FMDEraseOptions)initWithCoder:(id)coder;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDEraseOptions

- (void)encodeWithCoder:(id)coder
{
  useObliteration = self->_useObliteration;
  coderCopy = coder;
  [coderCopy encodeBool:useObliteration forKey:@"useObliteration"];
  [coderCopy encodeBool:self->_brickDevice forKey:@"brickDevice"];
  [coderCopy encodeDouble:@"customDelay" forKey:self->_customDelay];
  [coderCopy encodeDouble:@"maxDelayInterval" forKey:self->_maxDelayInterval];
  [coderCopy encodeBool:self->_hasBridgeCoProcessor forKey:@"hasBridgeCoProcessor"];
}

- (FMDEraseOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FMDEraseOptions;
  v5 = [(FMDEraseOptions *)&v9 init];
  if (v5)
  {
    v5->_useObliteration = [coderCopy decodeBoolForKey:@"useObliteration"];
    v5->_brickDevice = [coderCopy decodeBoolForKey:@"brickDevice"];
    [coderCopy decodeDoubleForKey:@"customDelay"];
    v5->_customDelay = v6;
    [coderCopy decodeDoubleForKey:@"maxDelayInterval"];
    v5->_maxDelayInterval = v7;
    v5->_hasBridgeCoProcessor = [coderCopy decodeBoolForKey:@"hasBridgeCoProcessor"];
  }

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  useObliteration = [(FMDEraseOptions *)self useObliteration];
  brickDevice = [(FMDEraseOptions *)self brickDevice];
  [(FMDEraseOptions *)self maxDelayInterval];
  v8 = v7;
  [(FMDEraseOptions *)self customDelay];
  return [v3 stringWithFormat:@"<%@: %p> useObliteration: %i, brickDevice - %i, maxDelay - %f, customDelay - %f, hasBridgeCoProcessor - %i", v4, self, useObliteration, brickDevice, v8, v9, -[FMDEraseOptions hasBridgeCoProcessor](self, "hasBridgeCoProcessor")];
}

@end