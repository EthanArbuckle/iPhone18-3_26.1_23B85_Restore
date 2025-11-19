@interface HKCompoundBlockCoordinateList
@end

@implementation HKCompoundBlockCoordinateList

uint64_t __112___HKCompoundBlockCoordinateList__enumerateCoordinatesWithTransform_chartableValueRange_roundToViewScale_block___block_invoke(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  result = v8(v7, a2, v11, a4);
  *a5 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

void __80___HKCompoundBlockCoordinateList_firstCoordinateWithTransform_roundToViewScale___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = *(a1 + 88);
  v7 = *(a1 + 56);
  v11[0] = *(a1 + 40);
  v11[1] = v7;
  v11[2] = *(a1 + 72);
  v8 = [a2 firstCoordinateWithTransform:v11 roundToViewScale:v6];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

void __79___HKCompoundBlockCoordinateList_lastCoordinateWithTransform_roundToViewScale___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v6 = *(a1 + 88);
  v7 = *(a1 + 56);
  v11[0] = *(a1 + 40);
  v11[1] = v7;
  v11[2] = *(a1 + 72);
  v8 = [a2 lastCoordinateWithTransform:v11 roundToViewScale:v6];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *a4 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

@end