@interface OITSUMutableRetainedPointerSet
- (OITSUMutableRetainedPointerSet)init;
- (OITSUMutableRetainedPointerSet)initWithCapacity:(unint64_t)capacity;
- (id)allObjects;
@end

@implementation OITSUMutableRetainedPointerSet

- (OITSUMutableRetainedPointerSet)init
{
  if ([(OITSUMutableRetainedPointerSet *)self isMemberOfClass:objc_opt_class()])
  {

    return [(OITSUMutableRetainedPointerSet *)self initWithCapacity:0];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = OITSUMutableRetainedPointerSet;
    return [(OITSUMutablePointerSet *)&v4 init];
  }
}

- (OITSUMutableRetainedPointerSet)initWithCapacity:(unint64_t)capacity
{
  v8.receiver = self;
  v8.super_class = OITSUMutableRetainedPointerSet;
  v4 = [(OITSUMutablePointerSet *)&v8 init];
  if (v4)
  {
    v7.version = 0;
    *&v7.retain = *(MEMORY[0x277CBF158] + 8);
    v5 = *(MEMORY[0x277CBF158] + 24);
    v7.equal = 0;
    v7.hash = 0;
    v7.copyDescription = v5;
    v4->super.mSet = CFSetCreateMutable(0, capacity, &v7);
  }

  return v4;
}

- (id)allObjects
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(OITSUMutablePointerSet *)self count];
  v4 = v3;
  if (v3 >= 0x41)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  v6 = v9 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 >= 0x41)
  {
    v6 = malloc_type_malloc(8 * v3, 0x80040B8603338uLL);
    if (!v6)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:{@"*** attempt to create a temporary id buffer of length (%lu) failed", v4}];
    }
  }

  [(OITSUMutablePointerSet *)self getObjects:v6];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:v4];
  if (v4 >= 0x41)
  {
    free(v6);
  }

  return v7;
}

@end