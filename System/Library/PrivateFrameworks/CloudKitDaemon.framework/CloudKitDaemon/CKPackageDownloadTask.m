@interface CKPackageDownloadTask
- (CKPackageDownloadTask)initWithPackage:(id)a3 trackProgress:(BOOL)a4;
- (void)cancel;
- (void)setManifestAsset:(id)a3;
- (void)setSectionAssets:(id)a3;
@end

@implementation CKPackageDownloadTask

- (CKPackageDownloadTask)initWithPackage:(id)a3 trackProgress:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v34.receiver = self;
  v34.super_class = CKPackageDownloadTask;
  v8 = [(CKPackageDownloadTask *)&v34 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_package, a3);
    if (v4)
    {
      v10 = objc_alloc(MEMORY[0x277CCACA8]);
      v13 = objc_msgSend_recordKey(v7, v11, v12);
      v16 = objc_msgSend_record(v7, v14, v15);
      v19 = objc_msgSend_recordID(v16, v17, v18);
      v22 = objc_msgSend_recordName(v19, v20, v21);
      v24 = objc_msgSend_initWithFormat_(v10, v23, @"down|%@|%@", v13, v22);

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

- (void)setManifestAsset:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6 = v4;
  manifestAsset = self->_manifestAsset;
  if (manifestAsset)
  {
    v8 = manifestAsset == v4;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    progressTracker = self->_progressTracker;
    v18[0] = self->_manifestAsset;
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

  v15 = self->_manifestAsset;
  self->_manifestAsset = v6;

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setSectionAssets:(id)a3
{
  v4 = a3;
  v6 = v4;
  sectionAssets = self->_sectionAssets;
  if (sectionAssets)
  {
    v8 = sectionAssets == v4;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    objc_msgSend_stopTrackingItems_(self->_progressTracker, v5, sectionAssets);
  }

  if (v6)
  {
    objc_msgSend_startTrackingItems_(self->_progressTracker, v5, v6);
  }

  v9 = self->_sectionAssets;
  self->_sectionAssets = v6;
}

- (void)cancel
{
  v5 = objc_msgSend_cancelTokens(self, a2, v2);
  objc_msgSend_cancel(v5, v3, v4);
}

@end