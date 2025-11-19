@interface ExampleEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ExampleEvent)initWithFoo:(id)a3;
@end

@implementation ExampleEvent

- (ExampleEvent)initWithFoo:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ExampleEvent;
  v5 = [(ExampleEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    foo = v5->_foo;
    v5->_foo = v6;
  }

  return v5;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithFoo:v5];

  return v6;
}

@end