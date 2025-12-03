@interface _DYSubCache
- (BOOL)withVMLayoutData:(id)data;
- (_DYSubCache)init;
@end

@implementation _DYSubCache

- (BOOL)withVMLayoutData:(id)data
{
  v4 = _Block_copy(data);
  if (*(&self->super.isa + OBJC_IVAR____DYSubCache_impl))
  {
    v5 = v4;
    _Block_copy(v4);
    selfCopy = self;

    v8 = sub_1AE4DF534(v7, v5);
    _Block_release(v5);

    _Block_release(v5);

    return v8 & 1;
  }

  else
  {
    _Block_release(v4);
    __break(1u);
  }

  return result;
}

- (_DYSubCache)init
{
  *(&self->super.isa + OBJC_IVAR____DYSubCache_impl) = 0;
  result = sub_1AE4EB140();
  __break(1u);
  return result;
}

@end