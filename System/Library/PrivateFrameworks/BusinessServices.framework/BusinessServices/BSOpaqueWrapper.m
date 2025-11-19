@interface BSOpaqueWrapper
+ (id)wrapperFor:(id)a3;
- (BSOpaqueWrapper)initWithThing:(id)a3;
- (id)wrappedThing;
@end

@implementation BSOpaqueWrapper

- (id)wrappedThing
{
  if (self)
  {
    self = self->_opaqueWrapper;
  }

  return [(BSOpaqueWrapper *)self wrappedThing];
}

+ (id)wrapperFor:(id)a3
{
  v3 = a3;
  v4 = [[BSOpaqueWrapper alloc] initWithThing:v3];

  return v4;
}

- (BSOpaqueWrapper)initWithThing:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BSOpaqueWrapper;
  v5 = [(BSOpaqueWrapper *)&v9 init];
  if (v5)
  {
    v6 = [[_BSOpaqueWrapper alloc] init:v4];
    opaqueWrapper = v5->_opaqueWrapper;
    v5->_opaqueWrapper = v6;
  }

  return v5;
}

@end