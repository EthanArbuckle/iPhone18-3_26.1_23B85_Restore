@interface GDScreenTimeCategory
+ (id)categoryForBundleId:(id)id;
@end

@implementation GDScreenTimeCategory

+ (id)categoryForBundleId:(id)id
{
  idCopy = id;
  v4 = dispatch_semaphore_create(0);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1C4EF8ECC;
  v20 = sub_1C4EF8EDC;
  v21 = 0;
  v8 = objc_msgSend_sharedCategories(MEMORY[0x1E6993B98], v5, v6, v7);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1C4EF8EE4;
  v13[3] = &unk_1E81EFBE8;
  v15 = &v16;
  v9 = v4;
  v14 = v9;
  objc_msgSend_categoryForBundleID_completionHandler_(v8, v10, idCopy, v13);

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

@end