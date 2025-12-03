@interface ExampleEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ExampleEvent)initWithFoo:(id)foo;
@end

@implementation ExampleEvent

- (ExampleEvent)initWithFoo:(id)foo
{
  fooCopy = foo;
  v9.receiver = self;
  v9.super_class = ExampleEvent;
  v5 = [(ExampleEvent *)&v9 init];
  if (v5)
  {
    v6 = [fooCopy copy];
    foo = v5->_foo;
    v5->_foo = v6;
  }

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithFoo:dataCopy];

  return v6;
}

@end