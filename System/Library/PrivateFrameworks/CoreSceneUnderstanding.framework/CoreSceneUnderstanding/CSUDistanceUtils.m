@interface CSUDistanceUtils
+ (void)computeCosineDistanceFromBuffer:(id)a3 FromArray:(id)a4 distanceComputed:(float *)a5 error:(id *)a6;
+ (void)computeL1DistanceFromBuffer:(id)a3 FromArray:(id)a4 distanceComputed:(float *)a5 error:(id *)a6 withDistanceType:(int64_t)a7;
@end

@implementation CSUDistanceUtils

+ (void)computeCosineDistanceFromBuffer:(id)a3 FromArray:(id)a4 distanceComputed:(float *)a5 error:(id *)a6
{
  v9 = a4;
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
  v19 = a6;
  v20 = a5;
  v10 = v9;
  v15 = v10;
  v16 = &v29;
  v17 = &v25;
  v18 = &v21;
  objc_msgSend_accessDataUsingBlock_(a3, v11, v14, v12, v13);
  if (!a6 || !*a6)
  {
    *a5 = 1.0 - (v30[6] / (sqrtf(v26[6]) * sqrtf(v22[6])));
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
}

+ (void)computeL1DistanceFromBuffer:(id)a3 FromArray:(id)a4 distanceComputed:(float *)a5 error:(id *)a6 withDistanceType:(int64_t)a7
{
  v11 = a4;
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
  v22 = a6;
  v23 = a5;
  v12 = v11;
  v18 = v12;
  v20 = &v29;
  v21 = &v33;
  v24 = a7;
  objc_msgSend_accessDataUsingBlock_(a3, v13, v17, v14, v15);
  if (!a6 || !*a6)
  {
    if (a7 == 1)
    {
      v16 = v30[6] / (v26[3] + 0.0001);
    }

    else
    {
      v16 = v34[6];
    }

    *a5 = v16;
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
}

@end