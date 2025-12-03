@interface OITSURetainedPointerSet
- (OITSURetainedPointerSet)initWithObjects:(const void *)objects count:(unint64_t)count;
- (id)allObjects;
@end

@implementation OITSURetainedPointerSet

- (OITSURetainedPointerSet)initWithObjects:(const void *)objects count:(unint64_t)count
{
  v10.receiver = self;
  v10.super_class = OITSURetainedPointerSet;
  v6 = [(OITSURetainedPointerSet *)&v10 init];
  if (v6)
  {
    v9.version = 0;
    *&v9.retain = *(MEMORY[0x277CBF158] + 8);
    v7 = *(MEMORY[0x277CBF158] + 24);
    v9.equal = 0;
    v9.hash = 0;
    v9.copyDescription = v7;
    v6->super.mSet = CFSetCreate(0, objects, count, &v9);
  }

  return v6;
}

- (id)allObjects
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(OITSUPointerSet *)self count];
  if (v3)
  {
    v4 = v3;
    if (v3 >= 0x41)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3;
    }

    v6 = v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v3 >= 0x41)
    {
      v6 = malloc_type_malloc(8 * v3, 0x80040B8603338uLL);
      if (!v6)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:{@"*** attempt to create a temporary id buffer of length (%lu) failed", v4}];
      }
    }

    [(OITSUPointerSet *)self getObjects:v6];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:v4];
    if (v4 >= 0x41)
    {
      free(v6);
    }

    return v7;
  }

  else
  {
    v9 = MEMORY[0x277CBEA60];

    return [v9 array];
  }
}

@end