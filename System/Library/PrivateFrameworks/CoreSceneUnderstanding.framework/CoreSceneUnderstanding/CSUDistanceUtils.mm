@interface CSUDistanceUtils
+ (void)computeCosineDistanceFromBuffer:(id)buffer FromArray:(id)array distanceComputed:(float *)computed error:(id *)error;
+ (void)computeL1DistanceFromBuffer:(id)buffer FromArray:(id)array distanceComputed:(float *)computed error:(id *)error withDistanceType:(int64_t)type;
@end

@implementation CSUDistanceUtils

+ (void)computeCosineDistanceFromBuffer:(id)buffer FromArray:(id)array distanceComputed:(float *)computed error:(id *)error
{
  arrayCopy = array;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1AC06DFAC;
  v14[3] = &unk_1E7967D70;
  errorCopy = error;
  computedCopy = computed;
  v10 = arrayCopy;
  v15 = v10;
  v16 = &v29;
  v17 = &v25;
  v18 = &v21;
  objc_msgSend_accessDataUsingBlock_(buffer, v11, v14, v12, v13);
  if (!error || !*error)
  {
    *computed = 1.0 - (v30[6] / (sqrtf(v26[6]) * sqrtf(v22[6])));
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
}

+ (void)computeL1DistanceFromBuffer:(id)buffer FromArray:(id)array distanceComputed:(float *)computed error:(id *)error withDistanceType:(int64_t)type
{
  arrayCopy = array;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = -971227136;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1AC06E2C8;
  v17[3] = &unk_1E7967D98;
  v19 = &v25;
  errorCopy = error;
  computedCopy = computed;
  v12 = arrayCopy;
  v18 = v12;
  v20 = &v29;
  v21 = &v33;
  typeCopy = type;
  objc_msgSend_accessDataUsingBlock_(buffer, v13, v17, v14, v15);
  if (!error || !*error)
  {
    if (type == 1)
    {
      v16 = v30[6] / (v26[3] + 0.0001);
    }

    else
    {
      v16 = v34[6];
    }

    *computed = v16;
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
}

@end