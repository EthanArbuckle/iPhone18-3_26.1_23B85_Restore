@interface _CDEventStream
+ (id)eventStreamWithProperties:(id)properties;
- (_CDEventStream)initWithProperties:(id)properties;
- (id)description;
@end

@implementation _CDEventStream

+ (id)eventStreamWithProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [[_CDEventStream alloc] initWithProperties:propertiesCopy];

  return v4;
}

- (_CDEventStream)initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v9.receiver = self;
  v9.super_class = _CDEventStream;
  v6 = [(_CDEventStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->eventStreamProperties, properties);
  }

  return v7;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  eventStreamProperties = [(_CDEventStream *)self eventStreamProperties];
  v4 = [v2 stringWithFormat:@"Event Stream Properties: %@ \n", eventStreamProperties];

  return v4;
}

@end