@interface _DYImage
- (NSArray)segments;
- (NSUUID)uuid;
- (_DYImage)init;
- (_DYSharedCache)sharedCache;
- (unint64_t)address;
- (unint64_t)pointerSize;
- (unint64_t)preferredLoadAddress;
- (void)getFastPathData:(_DYImageFastPathData *)a3;
@end

@implementation _DYImage

- (void)getFastPathData:(_DYImageFastPathData *)a3
{
  v4 = self;
  sub_1AE4B82C4(a3);
}

- (NSUUID)uuid
{
  v3 = type metadata accessor for Image.Info(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v18 - v10;
  if (*(&self->super.isa + OBJC_IVAR____DYImage_impl))
  {
    v12 = self;

    sub_1AE4B55F8(v6);

    sub_1AE4BA820(v6, v11);
    sub_1AE4BA56C(v6);
    v13 = sub_1AE4EAB10();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v11, 1, v13);
    v16 = 0;
    if (v15 != 1)
    {
      v17 = sub_1AE4EAAD0();
      (*(v14 + 8))(v11, v13);
      v16 = v17;
    }

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (unint64_t)address
{
  if (*(self + OBJC_IVAR____DYImage_impl))
  {
    v2 = self;

    v3 = sub_1AE4BA6DC();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (unint64_t)pointerSize
{
  v2 = *(self + OBJC_IVAR____DYImage_impl);
  if (v2)
  {
    return *(*(v2 + OBJC_IVAR____TtCV4Dyld5Image4Impl_context) + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_pointerSize);
  }

  __break(1u);
  return self;
}

- (unint64_t)preferredLoadAddress
{
  v3 = type metadata accessor for Image.Info(0);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(&self->super.isa + OBJC_IVAR____DYImage_impl))
  {
    v8 = self;

    sub_1AE4B55F8(v7);

    v9 = &v7[*(v3 + 28)];
    v10 = *v9;
    v11 = v9[8];
    sub_1AE4BA56C(v7);
    if (v11)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_DYSharedCache)sharedCache
{
  v2 = self;
  sub_1AE4E24FC();
  v4 = v3;

  return v4;
}

- (NSArray)segments
{
  v2 = self;
  sub_1AE4E2604();

  type metadata accessor for _DYSegment(v3);
  v4 = sub_1AE4EAE70();

  return v4;
}

- (_DYImage)init
{
  *(&self->super.isa + OBJC_IVAR____DYImage____lazy_storage___segments) = 0;
  *(&self->super.isa + OBJC_IVAR____DYImage_impl) = 0;
  result = sub_1AE4EB140();
  __break(1u);
  return result;
}

@end