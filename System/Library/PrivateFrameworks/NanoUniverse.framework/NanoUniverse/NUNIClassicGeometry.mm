@interface NUNIClassicGeometry
- (int)addIndices:(const unsigned __int16 *)indices count:(int)count vbase:(int)vbase;
- (int)addVertices:(const NUNIClassicVertex *)vertices count:(int)count;
- (void)dealloc;
@end

@implementation NUNIClassicGeometry

- (void)dealloc
{
  free(self->_vertices);
  free(self->_indices);
  v3.receiver = self;
  v3.super_class = NUNIClassicGeometry;
  [(NUNIClassicGeometry *)&v3 dealloc];
}

- (int)addVertices:(const NUNIClassicVertex *)vertices count:(int)count
{
  vcount = self->_vcount;
  v8 = malloc_type_realloc(self->_vertices, 32 * (vcount + count), 0x10000406D1CE384uLL);
  self->_vertices = v8;
  memcpy(v8 + 32 * vcount, vertices, 32 * count);
  self->_vcount += count;
  return vcount;
}

- (int)addIndices:(const unsigned __int16 *)indices count:(int)count vbase:(int)vbase
{
  vbaseCopy = vbase;
  icount = self->_icount;
  v10 = malloc_type_realloc(self->_indices, 2 * (icount + count), 0x1000040BDFB0063uLL);
  self->_indices = v10;
  if (count >= 1)
  {
    countCopy = count;
    v12 = &v10[icount];
    do
    {
      v13 = *indices++;
      *v12++ = v13 + vbaseCopy;
      --countCopy;
    }

    while (countCopy);
  }

  self->_icount += count;
  return icount;
}

@end