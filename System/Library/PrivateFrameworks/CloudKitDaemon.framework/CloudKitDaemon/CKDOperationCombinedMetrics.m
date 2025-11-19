@interface CKDOperationCombinedMetrics
- (CKDOperationCombinedMetrics)initWithCloudKitMetrics:(id)a3 andMMCSMetrics:(id)a4;
- (CKDOperationCombinedMetrics)initWithCoder:(id)a3;
- (id)CKPropertiesDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKDOperationCombinedMetrics

- (CKDOperationCombinedMetrics)initWithCloudKitMetrics:(id)a3 andMMCSMetrics:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = CKDOperationCombinedMetrics;
  v8 = [(CKDOperationCombinedMetrics *)&v19 init];
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v12 = objc_msgSend_copy(v6, v10, v11);
    cloudKitMetrics = v8->_cloudKitMetrics;
    v8->_cloudKitMetrics = v12;

    v16 = objc_msgSend_copy(v7, v14, v15);
    MMCSMetrics = v8->_MMCSMetrics;
    v8->_MMCSMetrics = v16;

    objc_autoreleasePoolPop(v9);
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_MMCSMetrics(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v13, v8, v7, @"MMCSMetrics");

  v11 = objc_msgSend_cloudKitMetrics(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v13, v12, v11, @"CloudKitMetrics");

  objc_autoreleasePoolPop(v4);
}

- (CKDOperationCombinedMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CKDOperationCombinedMetrics;
  v5 = [(CKDOperationCombinedMetrics *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"MMCSMetrics");
    MMCSMetrics = v5->_MMCSMetrics;
    v5->_MMCSMetrics = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"CloudKitMetrics");
    cloudKitMetrics = v5->_cloudKitMetrics;
    v5->_cloudKitMetrics = v12;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CKDOperationCombinedMetrics);
  v7 = objc_msgSend_cloudKitMetrics(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  cloudKitMetrics = v4->_cloudKitMetrics;
  v4->_cloudKitMetrics = v10;

  v14 = objc_msgSend_MMCSMetrics(self, v12, v13);
  v17 = objc_msgSend_copy(v14, v15, v16);
  MMCSMetrics = v4->_MMCSMetrics;
  v4->_MMCSMetrics = v17;

  return v4;
}

- (id)CKPropertiesDescription
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_cloudKitMetrics(self, v4, v5);

  if (v6)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = objc_msgSend_cloudKitMetrics(self, v7, v8);
    v12 = objc_msgSend_stringWithFormat_(v9, v11, @"cloudKitMetrics=%@", v10);
    objc_msgSend_addObject_(v3, v13, v12);
  }

  v14 = objc_msgSend_MMCSMetrics(self, v7, v8);

  if (v14)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = objc_msgSend_MMCSMetrics(self, v15, v16);
    v20 = objc_msgSend_stringWithFormat_(v17, v19, @"MMCSMetrics=%@", v18);
    objc_msgSend_addObject_(v3, v21, v20);
  }

  v22 = objc_msgSend_componentsJoinedByString_(v3, v15, @", ");

  return v22;
}

@end