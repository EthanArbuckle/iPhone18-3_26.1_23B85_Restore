@interface HKBaseBlockCoordinateList
@end

@implementation HKBaseBlockCoordinateList

void __108___HKBaseBlockCoordinateList__enumerateCoordinatesWithTransform_chartableValueRange_roundToViewScale_block___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (*(a1 + 32))
  {
    [v5 startXValue];
    v8 = v7 > *(a1 + 64);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    [v6 endXValue];
    LODWORD(v9) = v10 < *(a1 + 72);
  }

  if (((v8 | v9) & 1) == 0)
  {
    v11 = v6;
    v12 = *(a1 + 96);
    *&v18.a = *(a1 + 80);
    *&v18.c = v12;
    *&v18.tx = *(a1 + 112);
    v13 = v11;
    if (!CGAffineTransformIsIdentity(&v18))
    {
      v14 = *(a1 + 128);
      v15 = *(a1 + 96);
      *&v18.a = *(a1 + 80);
      *&v18.c = v15;
      *&v18.tx = *(a1 + 112);
      v13 = [v11 copyWithTransform:&v18 roundToViewScale:v14];
    }

    v16 = *(a1 + 56);
    v17 = *(*(a1 + 48) + 32);
    *&v18.a = *(*(a1 + 48) + 16);
    v18.c = v17;
    *&v18.d = a3;
    (*(v16 + 16))(v16, v13, &v18, v11);
  }
}

@end