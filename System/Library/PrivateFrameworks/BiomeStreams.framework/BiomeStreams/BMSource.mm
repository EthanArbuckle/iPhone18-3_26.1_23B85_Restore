@interface BMSource
- (BMSource)initWithIdentifier:(id)identifier;
- (id)description;
- (void)sendEvent:(id)event date:(id)date;
@end

@implementation BMSource

- (BMSource)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = BMSource;
  v5 = [(BMSource *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)sendEvent:(id)event date:(id)date
{
  eventCopy = event;
  [date timeIntervalSinceReferenceDate];
  [(BMSource *)self sendEvent:eventCopy timestamp:?];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMSource;
  v4 = [(BMSource *)&v8 description];
  identifier = [(BMSource *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, identifier];

  return v6;
}

@end