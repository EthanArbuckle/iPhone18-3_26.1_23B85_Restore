@interface _DKTemporalNumericState
- (_DKTemporalNumericState)initWithCoder:(id)coder;
- (_DKTemporalNumericState)initWithState:(id)state timestamp:(id)timestamp;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DKTemporalNumericState

- (_DKTemporalNumericState)initWithState:(id)state timestamp:(id)timestamp
{
  stateCopy = state;
  timestampCopy = timestamp;
  v12.receiver = self;
  v12.super_class = _DKTemporalNumericState;
  v9 = [(_DKTemporalNumericState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_state, state);
    objc_storeStrong(&v10->_timestamp, timestamp);
  }

  return v10;
}

- (_DKTemporalNumericState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _DKTemporalNumericState;
  v5 = [(_DKTemporalNumericState *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = v5->_state;
    v5->_state = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  state = self->_state;
  coderCopy = coder;
  [coderCopy encodeObject:state forKey:@"state"];
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
}

@end