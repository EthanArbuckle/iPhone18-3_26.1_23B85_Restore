@interface FlexSongAssetProvider_V1
- (FlexSongAssetProvider_V1)initWithFolderPath:(id)a3;
- (id)urlToAudioContainerForSegmentType:(unint64_t)a3;
- (id)urlToAudioForSegment:(id)a3;
- (id)urlToRoot;
@end

@implementation FlexSongAssetProvider_V1

- (FlexSongAssetProvider_V1)initWithFolderPath:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = FlexSongAssetProvider_V1;
  v6 = [(FlexSongAssetProvider_V1 *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootFolderPath, a3);
    audioFileExtension = v7->_audioFileExtension;
    v7->_audioFileExtension = @"m4a";
  }

  return v7;
}

- (id)urlToRoot
{
  v5 = MEMORY[0x277CBEBC0];
  v6 = objc_msgSend_rootFolderPath(self, a2, v2, v3, v4);
  v10 = objc_msgSend_fileURLWithPath_(v5, v7, v6, v8, v9);

  return v10;
}

- (id)urlToAudioContainerForSegmentType:(unint64_t)a3
{
  v5 = MEMORY[0x277CBEBC0];
  v6 = objc_msgSend_rootFolderPath(self, a2, a3, v3, v4);
  v10 = objc_msgSend_fileURLWithPath_(v5, v7, v6, v8, v9);

  return v10;
}

- (id)urlToAudioForSegment:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v9 = objc_msgSend_rootFolderPath(self, v5, v6, v7, v8);
    v14 = objc_msgSend_name(v4, v10, v11, v12, v13);

    v18 = objc_msgSend_stringByAppendingPathComponent_(v9, v15, v14, v16, v17);
    v23 = objc_msgSend_audioFileExtension(self, v19, v20, v21, v22);
    v27 = objc_msgSend_stringByAppendingPathExtension_(v18, v24, v23, v25, v26);

    v31 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v28, v27, v29, v30);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

@end