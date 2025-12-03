@interface CEKApertureStops
+ (BOOL)isValidApertureIndex:(unint64_t)index;
+ (id)closestValidValueForAperture:(double)aperture;
+ (id)validApertureValues;
+ (unint64_t)firstFullStopIndexAfterOrIncludingIndex:(unint64_t)index;
+ (unint64_t)indexOfClosestValidValueForAperture:(double)aperture;
@end

@implementation CEKApertureStops

void __39__CEKApertureStops_validApertureValues__block_invoke()
{
  v0 = validApertureValues_apertureValues;
  validApertureValues_apertureValues = &unk_1F2FE0260;
}

+ (id)validApertureValues
{
  if (validApertureValues_onceToken != -1)
  {
    +[CEKApertureStops validApertureValues];
  }

  v3 = validApertureValues_apertureValues;

  return v3;
}

+ (unint64_t)firstFullStopIndexAfterOrIncludingIndex:(unint64_t)index
{
  v3 = ((index + 1) % 3) ^ 3;
  if (!((index + 1) % 3))
  {
    v3 = 0;
  }

  return v3 + index;
}

+ (BOOL)isValidApertureIndex:(unint64_t)index
{
  validApertureValues = [objc_opt_class() validApertureValues];
  LOBYTE(index) = [validApertureValues count] > index;

  return index;
}

+ (unint64_t)indexOfClosestValidValueForAperture:(double)aperture
{
  validApertureValues = [objc_opt_class() validApertureValues];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0x7FEFFFFFFFFFFFFFLL;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__CEKApertureStops_indexOfClosestValidValueForAperture___block_invoke;
  v7[3] = &unk_1E7CC6C28;
  *&v7[6] = aperture;
  v7[4] = v8;
  v7[5] = &v9;
  [validApertureValues enumerateObjectsUsingBlock:v7];
  v5 = v10[3];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);

  return v5;
}

uint64_t __56__CEKApertureStops_indexOfClosestValidValueForAperture___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 doubleValue];
  v9 = vabdd_f64(v8, *(a1 + 48));
  v10 = *(*(a1 + 32) + 8);
  if (v9 >= *(v10 + 24))
  {
    *a4 = 1;
  }

  else
  {
    *(v10 + 24) = v9;
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  return result;
}

+ (id)closestValidValueForAperture:(double)aperture
{
  validApertureValues = [objc_opt_class() validApertureValues];
  v5 = [validApertureValues objectAtIndexedSubscript:{objc_msgSend(objc_opt_class(), "indexOfClosestValidValueForAperture:", aperture)}];

  return v5;
}

@end