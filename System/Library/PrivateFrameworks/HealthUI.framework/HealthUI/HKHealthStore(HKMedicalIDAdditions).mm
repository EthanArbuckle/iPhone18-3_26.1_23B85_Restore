@interface HKHealthStore(HKMedicalIDAdditions)
- (id)createMedicalIDData;
@end

@implementation HKHealthStore(HKMedicalIDAdditions)

- (id)createMedicalIDData
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  v2 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__HKHealthStore_HKMedicalIDAdditions__createMedicalIDData__block_invoke;
  v9[3] = &unk_1E81B7D48;
  v11 = &v12;
  v3 = v2;
  v10 = v3;
  [self fetchMedicalIDDataCreateIfNecessary:1 withCompletion:v9];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v4 = v13[5];
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696C648]);
    v6 = v13[5];
    v13[5] = v5;

    v4 = v13[5];
  }

  v7 = v4;

  _Block_object_dispose(&v12, 8);

  return v7;
}

@end