@interface HNScreenTimeCategory
+ (id)categoryForBundleId:(id)id;
@end

@implementation HNScreenTimeCategory

+ (id)categoryForBundleId:(id)id
{
  idCopy = id;
  v4 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2546B525C;
  v16 = sub_2546B526C;
  v17 = 0;
  mEMORY[0x277CF9650] = [MEMORY[0x277CF9650] sharedCategories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2546B5274;
  v9[3] = &unk_2797805F0;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [mEMORY[0x277CF9650] categoryForBundleID:idCopy completionHandler:v9];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

@end