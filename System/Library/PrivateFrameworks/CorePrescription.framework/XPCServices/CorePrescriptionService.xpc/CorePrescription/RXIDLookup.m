@interface RXIDLookup
+ (unint64_t)axis:(unint64_t)a3 toAxisID:(unint64_t *)a4;
+ (unint64_t)axisID:(unint64_t)a3 toAxis:(unint64_t *)a4;
+ (unint64_t)bestValidRXID:(unint64_t *)a3 andSphere:(float *)a4 matchingCylinder:(float)a5 nearSphere:(float)a6;
+ (unint64_t)rxID:(unint64_t)a3 toSphere:(float *)a4 cylinder:(float *)a5;
+ (unint64_t)sphere:(float)a3 cylinder:(float)a4 toRXID:(unint64_t *)a5;
@end

@implementation RXIDLookup

+ (unint64_t)axisID:(unint64_t)a3 toAxis:(unint64_t *)a4
{
  __key = a3;
  v5 = bsearch(&__key, &unk_1000896C8, 0x2DuLL, 8uLL, sub_10007C1D0);
  if (!v5)
  {
    return 5;
  }

  v6 = v5;
  result = 0;
  *a4 = 4 * v6[1];
  return result;
}

+ (unint64_t)axis:(unint64_t)a3 toAxisID:(unint64_t *)a4
{
  if (a3 > 0xB4)
  {
    return 3;
  }

  result = 0;
  v5 = (a3 + 2) >> 2;
  if (a3 >= 0xB2)
  {
    v5 -= 45;
  }

  *a4 = dword_100089830[v5];
  return result;
}

+ (unint64_t)sphere:(float)a3 cylinder:(float)a4 toRXID:(unint64_t *)a5
{
  __key = (a3 * 100.0);
  v7 = bsearch(&__key, &unk_1000898E8, 0x49uLL, 0xCuLL, sub_10007C1D0);
  if (!v7)
  {
    return 1;
  }

  __key = (a4 * 100.0);
  v8 = bsearch(&__key, &unk_100089C54 + 8 * v7[1], v7[2], 8uLL, sub_10007C1D0);
  if (!v8)
  {
    return 2;
  }

  v9 = v8;
  result = 0;
  *a5 = v9[1];
  return result;
}

+ (unint64_t)rxID:(unint64_t)a3 toSphere:(float *)a4 cylinder:(float *)a5
{
  __key = a3;
  v7 = bsearch(&__key, &unk_10008BEDC, 0x451uLL, 0xCuLL, sub_10007C1D0);
  if (!v7)
  {
    return 4;
  }

  v8 = v7;
  result = 0;
  *a4 = v8[1] / 100.0;
  *a5 = v8[2] / 100.0;
  return result;
}

+ (unint64_t)bestValidRXID:(unint64_t *)a3 andSphere:(float *)a4 matchingCylinder:(float)a5 nearSphere:(float)a6
{
  v6 = (a6 * 100.0);
  v7 = &dword_10008F2B0;
  v8 = 19;
  while (*(v7 - 2) != (a5 * 100.0))
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
      v10 = (a6 * 100.0);
    }

    else
    {
      v10 = v11;
    }
  }

  *a4 = v10 / 100.0;
  return [a1 sphere:a3 cylinder:? toRXID:?];
}

@end