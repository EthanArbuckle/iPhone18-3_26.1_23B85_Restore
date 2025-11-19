@interface _DKTemporalNumericState
- (_DKTemporalNumericState)initWithCoder:(id)a3;
- (_DKTemporalNumericState)initWithState:(id)a3 timestamp:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DKTemporalNumericState

- (_DKTemporalNumericState)initWithState:(id)a3 timestamp:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _DKTemporalNumericState;
  v9 = [(_DKTemporalNumericState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_state, a3);
    objc_storeStrong(&v10->_timestamp, a4);
  }

  return v10;
}

- (_DKTemporalNumericState)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _DKTemporalNumericState;
  v5 = [(_DKTemporalNumericState *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = v5->_state;
    v5->_state = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v5 = a3;
  [v5 encodeObject:state forKey:@"state"];
  [v5 encodeObject:self->_timestamp forKey:@"timestamp"];
}

@end