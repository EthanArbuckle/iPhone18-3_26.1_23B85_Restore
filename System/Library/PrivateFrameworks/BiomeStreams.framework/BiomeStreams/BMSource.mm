@interface BMSource
- (BMSource)initWithIdentifier:(id)a3;
- (id)description;
- (void)sendEvent:(id)a3 date:(id)a4;
@end

@implementation BMSource

- (BMSource)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BMSource;
  v5 = [(BMSource *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)sendEvent:(id)a3 date:(id)a4
{
  v6 = a3;
  [a4 timeIntervalSinceReferenceDate];
  [(BMSource *)self sendEvent:v6 timestamp:?];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMSource;
  v4 = [(BMSource *)&v8 description];
  v5 = [(BMSource *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end