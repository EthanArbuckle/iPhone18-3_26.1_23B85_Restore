@interface _DYEventHandlerToken
- (_DYEventHandlerToken)init;
- (_DYEventHandlerToken)initWithValue:(unsigned int)value;
- (unsigned)value;
@end

@implementation _DYEventHandlerToken

- (unsigned)value
{
  if (*(&self->super.isa + OBJC_IVAR____DYEventHandlerToken__value + 4))
  {
    __break(1u);
  }

  else
  {
    LODWORD(self) = *(&self->super.isa + OBJC_IVAR____DYEventHandlerToken__value);
  }

  return self;
}

- (_DYEventHandlerToken)init
{
  v2 = self + OBJC_IVAR____DYEventHandlerToken__value;
  *v2 = 0;
  v2[4] = 1;
  v4.receiver = self;
  v4.super_class = _DYEventHandlerToken;
  return [(_DYEventHandlerToken *)&v4 init];
}

- (_DYEventHandlerToken)initWithValue:(unsigned int)value
{
  v3 = self + OBJC_IVAR____DYEventHandlerToken__value;
  *v3 = value;
  v3[4] = 0;
  v5.receiver = self;
  v5.super_class = _DYEventHandlerToken;
  return [(_DYEventHandlerToken *)&v5 init];
}

@end