@interface _CDSizeMetricFamily
+ (id)sizeMetricFamilyWithName:(uint64_t)a1;
- (id)description;
- (id)sizeMetricWithName:(void *)a3 string:(uint64_t)a4 scale:;
- (void)initWithName:(void *)a1;
@end

@implementation _CDSizeMetricFamily

+ (id)sizeMetricFamilyWithName:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__29;
  v14 = __Block_byref_object_dispose__29;
  v15 = 0;
  if (_CDSizeMetricInitialized != -1)
  {
    +[_CDSizeMetricFamily sizeMetricFamilyWithName:];
  }

  v3 = _CDSizeMetricQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48___CDSizeMetricFamily_sizeMetricFamilyWithName___block_invoke;
  v7[3] = &unk_1E7367398;
  v8 = v2;
  v9 = &v10;
  v4 = v2;
  dispatch_sync(v3, v7);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v6 = NSStringFromClass(v4);
  if (self)
  {
    v7 = objc_getProperty(self, v5, 8, 1);
    v8 = MEMORY[0x1E696AD98];
    Property = objc_getProperty(self, v9, 16, 1);
  }

  else
  {
    v7 = 0;
    Property = 0;
    v8 = MEMORY[0x1E696AD98];
  }

  v11 = Property;
  v12 = [v8 numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
  v13 = [v3 stringWithFormat:@"%@: { name=%@, metrics.count=%@ }", v6, v7, v12];

  return v13;
}

- (void)initWithName:(void *)a1
{
  v4 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = _CDSizeMetricFamily;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = objc_opt_new();
      v7 = a1[2];
      a1[2] = v6;
    }
  }

  return a1;
}

- (id)sizeMetricWithName:(void *)a3 string:(uint64_t)a4 scale:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    OUTLINED_FUNCTION_3_22();
    v27 = v9;
    OUTLINED_FUNCTION_2_22();
    v28 = v10;
    v29 = 0;
    v11 = _CDSizeMetricQueue;
    OUTLINED_FUNCTION_1_30();
    v16 = 3221225472;
    v17 = __55___CDSizeMetricFamily_sizeMetricWithName_string_scale___block_invoke;
    v18 = &unk_1E736ADA0;
    v22 = v12;
    v19 = a1;
    v20 = v7;
    v21 = v8;
    v23 = a4;
    dispatch_sync(v11, block);
    v13 = v25[5];

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end