@interface NUNIClassicGeometry
- (int)addIndices:(const unsigned __int16 *)a3 count:(int)a4 vbase:(int)a5;
- (int)addVertices:(const NUNIClassicVertex *)a3 count:(int)a4;
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

- (int)addVertices:(const NUNIClassicVertex *)a3 count:(int)a4
{
  vcount = self->_vcount;
  v8 = malloc_type_realloc(self->_vertices, 32 * (vcount + a4), 0x10000406D1CE384uLL);
  self->_vertices = v8;
  memcpy(v8 + 32 * vcount, a3, 32 * a4);
  self->_vcount += a4;
  return vcount;
}

- (int)addIndices:(const unsigned __int16 *)a3 count:(int)a4 vbase:(int)a5
{
  v5 = a5;
  icount = self->_icount;
  v10 = malloc_type_realloc(self->_indices, 2 * (icount + a4), 0x1000040BDFB0063uLL);
  self->_indices = v10;
  if (a4 >= 1)
  {
    v11 = a4;
    v12 = &v10[icount];
    do
    {
      v13 = *a3++;
      *v12++ = v13 + v5;
      --v11;
    }

    while (v11);
  }

  self->_icount += a4;
  return icount;
}

@end