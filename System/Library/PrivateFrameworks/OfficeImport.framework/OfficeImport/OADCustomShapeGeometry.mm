@interface OADCustomShapeGeometry
- (CsRect<int>)geometryCoordSpace;
- (OADCustomShapeGeometry)init;
- (id)description;
- (void)dealloc;
- (void)setGeometryCoordSpace:(CsRect<int>)a3;
- (void)setLimo:(CsPoint<int>)a3;
@end

@implementation OADCustomShapeGeometry

- (OADCustomShapeGeometry)init
{
  v3.receiver = self;
  v3.super_class = OADCustomShapeGeometry;
  if ([(OADShapeGeometry *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  mGeometryCoordSpace = self->mGeometryCoordSpace;
  if (mGeometryCoordSpace)
  {
    MEMORY[0x25F897000](mGeometryCoordSpace, 0x1000C40451B5BE8);
  }

  mLimo = self->mLimo;
  if (mLimo)
  {
    MEMORY[0x25F897000](mLimo, 0x1000C4000313F17);
  }

  v5.receiver = self;
  v5.super_class = OADCustomShapeGeometry;
  [(OADCustomShapeGeometry *)&v5 dealloc];
}

- (CsRect<int>)geometryCoordSpace
{
  *v2 = *self->mGeometryCoordSpace;
  *&result.var0[2] = a2;
  *result.var0 = self;
  return result;
}

- (void)setGeometryCoordSpace:(CsRect<int>)a3
{
  mGeometryCoordSpace = self->mGeometryCoordSpace;
  *mGeometryCoordSpace = **a3.var0;
  mGeometryCoordSpace[1] = *(*a3.var0 + 4);
  mGeometryCoordSpace[2] = *(*a3.var0 + 8);
  mGeometryCoordSpace[3] = *(*a3.var0 + 12);
}

- (void)setLimo:(CsPoint<int>)a3
{
  mLimo = self->mLimo;
  *mLimo = *a3.var0[0];
  mLimo[1] = *(*&a3 + 4);
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADCustomShapeGeometry;
  v2 = [(OADShapeGeometry *)&v4 description];

  return v2;
}

@end