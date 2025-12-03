@interface BSOpaqueWrapper
+ (id)wrapperFor:(id)for;
- (BSOpaqueWrapper)initWithThing:(id)thing;
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

+ (id)wrapperFor:(id)for
{
  forCopy = for;
  v4 = [[BSOpaqueWrapper alloc] initWithThing:forCopy];

  return v4;
}

- (BSOpaqueWrapper)initWithThing:(id)thing
{
  thingCopy = thing;
  v9.receiver = self;
  v9.super_class = BSOpaqueWrapper;
  v5 = [(BSOpaqueWrapper *)&v9 init];
  if (v5)
  {
    v6 = [[_BSOpaqueWrapper alloc] init:thingCopy];
    opaqueWrapper = v5->_opaqueWrapper;
    v5->_opaqueWrapper = v6;
  }

  return v5;
}

@end