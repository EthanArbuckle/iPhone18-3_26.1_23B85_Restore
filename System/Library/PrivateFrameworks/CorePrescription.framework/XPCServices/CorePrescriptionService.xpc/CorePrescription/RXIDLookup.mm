@interface RXIDLookup
+ (unint64_t)axis:(unint64_t)axis toAxisID:(unint64_t *)d;
+ (unint64_t)axisID:(unint64_t)d toAxis:(unint64_t *)axis;
+ (unint64_t)bestValidRXID:(unint64_t *)d andSphere:(float *)sphere matchingCylinder:(float)cylinder nearSphere:(float)nearSphere;
+ (unint64_t)rxID:(unint64_t)d toSphere:(float *)sphere cylinder:(float *)cylinder;
+ (unint64_t)sphere:(float)sphere cylinder:(float)cylinder toRXID:(unint64_t *)d;
@end

@implementation RXIDLookup

+ (unint64_t)axisID:(unint64_t)d toAxis:(unint64_t *)axis
{
  __key = d;
  v5 = bsearch(&__key, &unk_1000896C8, 0x2DuLL, 8uLL, sub_10007C1D0);
  if (!v5)
  {
    return 5;
  }

  v6 = v5;
  result = 0;
  *axis = 4 * v6[1];
  return result;
}

+ (unint64_t)axis:(unint64_t)axis toAxisID:(unint64_t *)d
{
  if (axis > 0xB4)
  {
    return 3;
  }

  result = 0;
  v5 = (axis + 2) >> 2;
  if (axis >= 0xB2)
  {
    v5 -= 45;
  }

  *d = dword_100089830[v5];
  return result;
}

+ (unint64_t)sphere:(float)sphere cylinder:(float)cylinder toRXID:(unint64_t *)d
{
  __key = (sphere * 100.0);
  v7 = bsearch(&__key, &unk_1000898E8, 0x49uLL, 0xCuLL, sub_10007C1D0);
  if (!v7)
  {
    return 1;
  }

  __key = (cylinder * 100.0);
  v8 = bsearch(&__key, &unk_100089C54 + 8 * v7[1], v7[2], 8uLL, sub_10007C1D0);
  if (!v8)
  {
    return 2;
  }

  v9 = v8;
  result = 0;
  *d = v9[1];
  return result;
}

+ (unint64_t)rxID:(unint64_t)d toSphere:(float *)sphere cylinder:(float *)cylinder
{
  __key = d;
  v7 = bsearch(&__key, &unk_10008BEDC, 0x451uLL, 0xCuLL, sub_10007C1D0);
  if (!v7)
  {
    return 4;
  }

  v8 = v7;
  result = 0;
  *sphere = v8[1] / 100.0;
  *cylinder = v8[2] / 100.0;
  return result;
}

+ (unint64_t)bestValidRXID:(unint64_t *)d andSphere:(float *)sphere matchingCylinder:(float)cylinder nearSphere:(float)nearSphere
{
  v6 = (nearSphere * 100.0);
  v7 = &dword_10008F2B0;
  v8 = 19;
  while (*(v7 - 2) != (cylinder * 100.0))
  {
    v7 += 3;
    if (!--v8)
    {
      return 2;
    }
  }

  v10 = *(v7 - 1);
  if (v10 <= v6)
  {
    v11 = *v7;
    if (v11 >= v6)
    {
      v10 = (nearSphere * 100.0);
    }

    else
    {
      v10 = v11;
    }
  }

  *sphere = v10 / 100.0;
  return [self sphere:d cylinder:? toRXID:?];
}

@end