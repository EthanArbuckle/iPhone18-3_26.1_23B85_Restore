@interface _DYSnapshot
- (_DYEnvironment)environment;
- (_DYSharedCache)sharedCache;
- (_DYSnapshot)init;
- (_DYSnapshot)initWithData:(id)a3 error:(id *)a4;
- (int)pid;
- (int64_t)pageSize;
- (unint64_t)initialImageCount;
- (unint64_t)platform;
- (unint64_t)timestamp;
- (unsigned)state;
- (void)setSharedCache:(id)a3;
@end

@implementation _DYSnapshot

- (_DYSharedCache)sharedCache
{
  v2 = self;
  v3 = sub_1AE4B4A50();

  return v3;
}

- (unint64_t)timestamp
{
  v2 = self;
  v6 = sub_1AE4BADDC(1701669236, v3, v4, v5);

  return v6;
}

- (unsigned)state
{
  v2 = self;
  v6 = sub_1AE4BD01C(v2, v3, v4, v5);

  return v6;
}

- (unint64_t)initialImageCount
{
  v2 = self;
  v6 = sub_1AE4BADDC(1953066601, v3, v4, v5);

  return v6;
}

- (_DYEnvironment)environment
{
  v2 = self;
  v6 = sub_1AE4BD5C4(v2, v3, v4, v5);

  return v6;
}

- (unint64_t)platform
{
  v2 = self;
  v6 = sub_1AE4BADDC(1952541808, v3, v4, v5);

  return v6;
}

- (int)pid
{
  v2 = self;
  v6 = sub_1AE4E3F90(v2, v3, v4, v5);

  return v6;
}

- (int64_t)pageSize
{
  v2 = *(self + OBJC_IVAR____DYSnapshot_impl);
  if (v2)
  {
    if (*(v2 + 80))
    {
      return 4096;
    }

    else
    {
      return 0x4000;
    }
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)setSharedCache:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____DYSnapshot____lazy_storage___sharedCache);
  *(&self->super.isa + OBJC_IVAR____DYSnapshot____lazy_storage___sharedCache) = a3;
  v5 = a3;
  v6 = self;
  sub_1AE4B51C8(v4);
}

- (_DYSnapshot)init
{
  *(&self->super.isa + OBJC_IVAR____DYSnapshot____lazy_storage___sharedCache) = 1;
  v2 = (&self->super.isa + OBJC_IVAR____DYSnapshot_impl);
  *v2 = 0;
  v2[1] = 0;
  result = sub_1AE4EB140();
  __break(1u);
  return result;
}

- (_DYSnapshot)initWithData:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = sub_1AE4EAA80();
  v7 = v6;

  return sub_1AE4E4358(v5, v7);
}

@end