@interface _MRUButtonEventConsumer
- (_MRUButtonEventConsumer)initWithConsumer:(id)a3;
- (void)consumeSinglePressDownForButtonKind:(int64_t)a3;
- (void)consumeSinglePressUpForButtonKind:(int64_t)a3;
@end

@implementation _MRUButtonEventConsumer

- (_MRUButtonEventConsumer)initWithConsumer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _MRUButtonEventConsumer;
  v6 = [(_MRUButtonEventConsumer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_consumer, a3);
  }

  return v7;
}

- (void)consumeSinglePressDownForButtonKind:(int64_t)a3
{
  if (a3 == 4)
  {
    v3 = 1;
  }

  else
  {
    if (a3 != 3)
    {
      return;
    }

    v3 = 0;
  }

  [(MRUHardwareButtonEventConsuming *)self->_consumer consumeEvent:0 forButtonOfKind:v3];
}

- (void)consumeSinglePressUpForButtonKind:(int64_t)a3
{
  if (a3 == 4)
  {
    v3 = 1;
  }

  else
  {
    if (a3 != 3)
    {
      return;
    }

    v3 = 0;
  }

  [(MRUHardwareButtonEventConsuming *)self->_consumer consumeEvent:1 forButtonOfKind:v3];
}

@end