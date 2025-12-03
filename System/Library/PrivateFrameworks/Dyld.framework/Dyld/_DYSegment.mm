@interface _DYSegment
- (BOOL)withSegmentData:(id)data;
- (NSString)name;
- (_DYSegment)init;
- (unint64_t)address;
- (unint64_t)permissions;
- (unint64_t)preferredLoadAddress;
- (unint64_t)vmsize;
- (void)getFastPathData:(_DYSegmentFastPathData *)data;
@end

@implementation _DYSegment

- (NSString)name
{
  selfCopy = self;
  sub_1AE4E1B8C(selfCopy, v3, v4, v5);

  v6 = sub_1AE4EAD30();

  return v6;
}

- (unint64_t)permissions
{
  if (*(self + OBJC_IVAR____DYSegment_impl))
  {
    selfCopy = self;

    sub_1AE4CC184(v3);

    sub_1AE4DFD48(v3);
    return v3[7];
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (unint64_t)vmsize
{
  if (*(self + OBJC_IVAR____DYSegment_impl))
  {
    selfCopy = self;

    sub_1AE4CC184(v3);

    sub_1AE4DFD48(v3);
    return v3[3];
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (unint64_t)address
{
  if (*(self + OBJC_IVAR____DYSegment_impl))
  {
    selfCopy = self;

    sub_1AE4CC184(v3);

    sub_1AE4DFD48(v3);
    return v3[6];
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (unint64_t)preferredLoadAddress
{
  if (*(self + OBJC_IVAR____DYSegment_impl))
  {
    selfCopy = self;

    sub_1AE4CC184(v3);

    sub_1AE4DFD48(v3);
    return v3[5];
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)getFastPathData:(_DYSegmentFastPathData *)data
{
  selfCopy = self;
  sub_1AE4E1E28(data);
}

- (BOOL)withSegmentData:(id)data
{
  v4 = _Block_copy(data);
  v5 = v4;
  if (*(&self->super.isa + OBJC_IVAR____DYSegment_impl))
  {
    _Block_copy(v4);
    _Block_copy(v5);
    selfCopy = self;

    sub_1AE4CDFCC(v7, v5, &v9);

    _Block_release(v5);

    _Block_release(v5);
    return 1;
  }

  else
  {
    _Block_release(v4);
    __break(1u);
  }

  return result;
}

- (_DYSegment)init
{
  *(&self->super.isa + OBJC_IVAR____DYSegment_impl) = 0;
  result = sub_1AE4EB140();
  __break(1u);
  return result;
}

@end