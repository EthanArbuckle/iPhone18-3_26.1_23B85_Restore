@interface _CDEventStream
+ (id)eventStreamWithProperties:(id)a3;
- (_CDEventStream)initWithProperties:(id)a3;
- (id)description;
@end

@implementation _CDEventStream

+ (id)eventStreamWithProperties:(id)a3
{
  v3 = a3;
  v4 = [[_CDEventStream alloc] initWithProperties:v3];

  return v4;
}

- (_CDEventStream)initWithProperties:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _CDEventStream;
  v6 = [(_CDEventStream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->eventStreamProperties, a3);
  }

  return v7;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(_CDEventStream *)self eventStreamProperties];
  v4 = [v2 stringWithFormat:@"Event Stream Properties: %@ \n", v3];

  return v4;
}

@end