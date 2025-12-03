@interface CKDPackageUploadTask
- (CKDPackageUploadTask)initWithPackage:(id)package trackProgress:(BOOL)progress;
- (NSString)recordKey;
- (id)activityCreate;
- (int64_t)storageGroupingPolicy;
- (int64_t)uploadRank;
- (void)cancel;
- (void)setMMCSManifestItem:(id)item;
- (void)setMMCSSectionItems:(id)items;
@end

@implementation CKDPackageUploadTask

- (CKDPackageUploadTask)initWithPackage:(id)package trackProgress:(BOOL)progress
{
  progressCopy = progress;
  packageCopy = package;
  v34.receiver = self;
  v34.super_class = CKDPackageUploadTask;
  v8 = [(CKDPackageUploadTask *)&v34 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_package, package);
    if (progressCopy)
    {
      v10 = objc_alloc(MEMORY[0x277CCACA8]);
      v13 = objc_msgSend_recordKey(packageCopy, v11, v12);
      v16 = objc_msgSend_record(packageCopy, v14, v15);
      v19 = objc_msgSend_recordID(v16, v17, v18);
      v22 = objc_msgSend_recordName(v19, v20, v21);
      v24 = objc_msgSend_initWithFormat_(v10, v23, @"up|%@|%@", v13, v22);

      v25 = [CKDProgressTracker alloc];
      v27 = objc_msgSend_initWithTrackingID_(v25, v26, v24);
      progressTracker = v9->_progressTracker;
      v9->_progressTracker = v27;
    }

    v29 = dispatch_group_create();
    group = v9->_group;
    v9->_group = v29;

    v31 = objc_alloc_init(CKDCancelTokenGroup);
    cancelTokens = v9->_cancelTokens;
    v9->_cancelTokens = v31;
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/upload-assets", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (int64_t)storageGroupingPolicy
{
  v3 = objc_msgSend_package(self, a2, v2);
  v6 = objc_msgSend_storageGroupingPolicy(v3, v4, v5);

  return v6;
}

- (int64_t)uploadRank
{
  v3 = objc_msgSend_package(self, a2, v2);
  v6 = objc_msgSend_uploadRank(v3, v4, v5);

  return v6;
}

- (NSString)recordKey
{
  v3 = objc_msgSend_package(self, a2, v2);
  v6 = objc_msgSend_recordKey(v3, v4, v5);

  return v6;
}

- (void)setMMCSManifestItem:(id)item
{
  v18[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v6 = itemCopy;
  MMCSManifestItem = self->_MMCSManifestItem;
  if (MMCSManifestItem)
  {
    v8 = MMCSManifestItem == itemCopy;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    progressTracker = self->_progressTracker;
    v18[0] = self->_MMCSManifestItem;
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, v18, 1);
    objc_msgSend_stopTrackingItems_(progressTracker, v11, v10);
  }

  if (v6)
  {
    v12 = self->_progressTracker;
    v17 = v6;
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v5, &v17, 1);
    objc_msgSend_startTrackingItems_(v12, v14, v13);
  }

  v15 = self->_MMCSManifestItem;
  self->_MMCSManifestItem = v6;

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setMMCSSectionItems:(id)items
{
  itemsCopy = items;
  v6 = itemsCopy;
  MMCSSectionItems = self->_MMCSSectionItems;
  if (MMCSSectionItems)
  {
    v8 = MMCSSectionItems == itemsCopy;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    objc_msgSend_stopTrackingItems_(self->_progressTracker, v5, MMCSSectionItems);
  }

  if (v6)
  {
    objc_msgSend_startTrackingItems_(self->_progressTracker, v5, v6);
  }

  v9 = self->_MMCSSectionItems;
  self->_MMCSSectionItems = v6;
}

- (void)cancel
{
  v5 = objc_msgSend_cancelTokens(self, a2, v2);
  objc_msgSend_cancel(v5, v3, v4);
}

@end